#include <lib/x86.h>
#define NPRIO 10
#define MAX_PRIORITY 9
#define READY_QUEUE_BASE NUM_IDS
#define READY_QUEUE(prio) (READY_QUEUE_BASE + prio)

/**
 * The structure for thread queues.
 * The queue structure only needs to record
 * the head and tail index, since we've already implemented
 * the doubly linked list in the TCB structure.
 * This implementation is valid if at any given time, a thread
 * is in at most one thread queue.
 */
struct TQueue {
    unsigned int head;
    unsigned int tail;
};


/**
 * The mCertiKOS kernel needs NUM_IDS + 1 thread queues.
 * The first NUM_IDS thread queues are thread sleep queues for the NUM_IDS threads/processes.
 * A thread can sleep on other thread's sleeping queue, waiting for the other thread
 * to perform some related tasks and wake it up.
 * You may not need these sleeping queues in this lab, but they will be particularly helpful
 * when you implement the inter-process communication protocols later.
 * The last queue with id NUM_IDS is called the ready queue.
 * Any threads that are ready to be scheduled are pushed to the ready queue,
 * and are scheduled in a round-robin manner.
 */

// NUM_IDS sleep queues + 10 priority ready queues
struct TQueue TQueuePool[NUM_IDS + NPRIO];

unsigned int tqueue_get_head(unsigned int chid)
{
    return TQueuePool[chid].head;
}

void tqueue_set_head(unsigned int chid, unsigned int head)
{
    TQueuePool[chid].head = head;
}

unsigned int tqueue_get_tail(unsigned int chid)
{
    return TQueuePool[chid].tail;
}

void tqueue_set_tail(unsigned int chid, unsigned int tail)
{
    TQueuePool[chid].tail = tail;
}

void tqueue_init_at_id(unsigned int chid)
{
    TQueuePool[chid].head = NUM_IDS;
    TQueuePool[chid].tail = NUM_IDS;
}

void ready_enqueue(unsigned int tid, unsigned int priority)
{
    unsigned int qid = READY_QUEUE(priority);

    unsigned int tail = tqueue_get_tail(qid);

    if (tail == NUM_IDS) {
        // queue empty
        tqueue_set_head(qid, tid);
    } else {
        tcb_set_next(tail, tid);
        tcb_set_prev(tid, tail);
    }

    tqueue_set_tail(qid, tid);

    tcb_set_next(tid, NUM_IDS);
}

unsigned int ready_dequeue(void)
{
    for (int prio = MAX_PRIORITY; prio >= 0; prio--) {

        unsigned int qid = READY_QUEUE(prio);
        unsigned int head = tqueue_get_head(qid);

        if (head != NUM_IDS) {

            unsigned int next = tcb_get_next(head);

            tqueue_set_head(qid, next);

            if (next == NUM_IDS)
                tqueue_set_tail(qid, NUM_IDS);
            else
                tcb_set_prev(next, NUM_IDS);

            return head;
        }
    }

    return NUM_IDS; // no runnable thread
}
