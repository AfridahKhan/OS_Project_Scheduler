#include <lib/x86.h>
#include <lib/thread.h>
#include <lib/spinlock.h>
#include <lib/debug.h>
#include <dev/lapic.h>
#include <pcpu/PCPUIntro/export.h>
#include <kern/thread/PTCBIntro/export.h>

#include "import.h"

static spinlock_t sched_lk;

unsigned int sched_ticks[NUM_CPUS];

void thread_init(unsigned int mbi_addr)
{
    unsigned int i;
    for (i = 0; i < NUM_CPUS; i++) {
        sched_ticks[i] = 0;
    }

    spinlock_init(&sched_lk);
    tqueue_init(mbi_addr);
    set_curid(0);
    tcb_set_state(0, TSTATE_RUN);
}

unsigned int thread_spawn(void *entry, unsigned int id, unsigned int quota)
{
    unsigned int pid;

    spinlock_acquire(&sched_lk);

    pid = kctx_new(entry, id, quota);
    tcb_set_state(pid, TSTATE_READY);
    ready_enqueue(pid, tcb_get_priority(pid));  // CHANGED

    spinlock_release(&sched_lk);

    return pid;
}

void thread_yield(void)
{
    unsigned int old_cur_pid;
    unsigned int new_cur_pid;

    spinlock_acquire(&sched_lk);

    old_cur_pid = get_curid();
    tcb_set_state(old_cur_pid, TSTATE_READY);
    ready_enqueue(old_cur_pid, tcb_get_priority(old_cur_pid));  // CHANGED

    new_cur_pid = ready_dequeue();                               // CHANGED
    tcb_set_state(new_cur_pid, TSTATE_RUN);
    set_curid(new_cur_pid);

    if (old_cur_pid != new_cur_pid) {
        spinlock_release(&sched_lk);
        kctx_switch(old_cur_pid, new_cur_pid);
    } else {
        spinlock_release(&sched_lk);
    }
}

void sched_update(void)
{
    spinlock_acquire(&sched_lk);
    sched_ticks[get_pcpu_idx()] += (1000 / LAPIC_TIMER_INTR_FREQ);
    if (sched_ticks[get_pcpu_idx()] > SCHED_SLICE) {
        sched_ticks[get_pcpu_idx()] = 0;
        spinlock_release(&sched_lk);
        thread_yield();
    } else {
        spinlock_release(&sched_lk);
    }
}

void thread_sleep(void *chan, spinlock_t *lk)
{
    unsigned int curid = get_curid();
    unsigned int new_cur_pid;

    if (lk == 0)
        KERN_PANIC("sleep without lock");

    spinlock_acquire(&sched_lk);
    spinlock_release(lk);

    tcb_set_state(curid, TSTATE_SLEEP);
    tcb_set_chan(curid, chan);

    new_cur_pid = ready_dequeue();                               // CHANGED
    tcb_set_state(new_cur_pid, TSTATE_RUN);
    set_curid(new_cur_pid);
    spinlock_release(&sched_lk);
    kctx_switch(curid, new_cur_pid);

    spinlock_acquire(&sched_lk);
    tcb_set_chan(curid, 0);
    spinlock_release(&sched_lk);
    spinlock_acquire(lk);
}

void thread_wakeup(void *chan)
{
    spinlock_acquire(&sched_lk);
    unsigned int pid;
    for (pid = 1; pid < NUM_IDS; ++pid) {
        if (tcb_get_chan(pid) == chan && tcb_get_state(pid) == TSTATE_SLEEP) {
            tcb_set_state(pid, TSTATE_READY);
            tcb_set_chan(pid, 0);
            ready_enqueue(pid, tcb_get_priority(pid));          // CHANGED
        }
    }
    spinlock_release(&sched_lk);
}