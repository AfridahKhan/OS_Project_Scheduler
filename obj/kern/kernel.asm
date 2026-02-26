
obj/kern/kernel:     file format elf32-i386


Disassembly of section .text:

00100000 <video_init>:
  100000:	55                   	push   %ebp
  100001:	89 e5                	mov    %esp,%ebp
  100003:	53                   	push   %ebx
  100004:	83 ec 14             	sub    $0x14,%esp
  100007:	e8 b4 03 00 00       	call   1003c0 <__x86.get_pc_thunk.bx>
  10000c:	81 c3 e8 bf 00 00    	add    $0xbfe8,%ebx
  100012:	c7 45 f4 00 80 0b 00 	movl   $0xb8000,-0xc(%ebp)
  100019:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10001c:	0f b7 00             	movzwl (%eax),%eax
  10001f:	66 89 45 f2          	mov    %ax,-0xe(%ebp)
  100023:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100026:	66 c7 00 5a a5       	movw   $0xa55a,(%eax)
  10002b:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10002e:	0f b7 00             	movzwl (%eax),%eax
  100031:	66 3d 5a a5          	cmp    $0xa55a,%ax
  100035:	74 2c                	je     100063 <video_init+0x63>
  100037:	c7 45 f4 00 00 0b 00 	movl   $0xb0000,-0xc(%ebp)
  10003e:	c7 83 0c 60 00 00 b4 	movl   $0x3b4,0x600c(%ebx)
  100045:	03 00 00 
  100048:	8b 83 0c 60 00 00    	mov    0x600c(%ebx),%eax
  10004e:	83 ec 08             	sub    $0x8,%esp
  100051:	50                   	push   %eax
  100052:	8d 83 0c b0 ff ff    	lea    -0x4ff4(%ebx),%eax
  100058:	50                   	push   %eax
  100059:	e8 0e 2d 00 00       	call   102d6c <dprintf>
  10005e:	83 c4 10             	add    $0x10,%esp
  100061:	eb 2d                	jmp    100090 <video_init+0x90>
  100063:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100066:	0f b7 55 f2          	movzwl -0xe(%ebp),%edx
  10006a:	66 89 10             	mov    %dx,(%eax)
  10006d:	c7 83 0c 60 00 00 d4 	movl   $0x3d4,0x600c(%ebx)
  100074:	03 00 00 
  100077:	8b 83 0c 60 00 00    	mov    0x600c(%ebx),%eax
  10007d:	83 ec 08             	sub    $0x8,%esp
  100080:	50                   	push   %eax
  100081:	8d 83 0c b0 ff ff    	lea    -0x4ff4(%ebx),%eax
  100087:	50                   	push   %eax
  100088:	e8 df 2c 00 00       	call   102d6c <dprintf>
  10008d:	83 c4 10             	add    $0x10,%esp
  100090:	8b 83 0c 60 00 00    	mov    0x600c(%ebx),%eax
  100096:	83 ec 08             	sub    $0x8,%esp
  100099:	6a 0e                	push   $0xe
  10009b:	50                   	push   %eax
  10009c:	e8 78 3a 00 00       	call   103b19 <outb>
  1000a1:	83 c4 10             	add    $0x10,%esp
  1000a4:	8b 83 0c 60 00 00    	mov    0x600c(%ebx),%eax
  1000aa:	83 c0 01             	add    $0x1,%eax
  1000ad:	83 ec 0c             	sub    $0xc,%esp
  1000b0:	50                   	push   %eax
  1000b1:	e8 14 3a 00 00       	call   103aca <inb>
  1000b6:	83 c4 10             	add    $0x10,%esp
  1000b9:	0f b6 c0             	movzbl %al,%eax
  1000bc:	c1 e0 08             	shl    $0x8,%eax
  1000bf:	89 45 ec             	mov    %eax,-0x14(%ebp)
  1000c2:	8b 83 0c 60 00 00    	mov    0x600c(%ebx),%eax
  1000c8:	83 ec 08             	sub    $0x8,%esp
  1000cb:	6a 0f                	push   $0xf
  1000cd:	50                   	push   %eax
  1000ce:	e8 46 3a 00 00       	call   103b19 <outb>
  1000d3:	83 c4 10             	add    $0x10,%esp
  1000d6:	8b 83 0c 60 00 00    	mov    0x600c(%ebx),%eax
  1000dc:	83 c0 01             	add    $0x1,%eax
  1000df:	83 ec 0c             	sub    $0xc,%esp
  1000e2:	50                   	push   %eax
  1000e3:	e8 e2 39 00 00       	call   103aca <inb>
  1000e8:	83 c4 10             	add    $0x10,%esp
  1000eb:	0f b6 c0             	movzbl %al,%eax
  1000ee:	09 45 ec             	or     %eax,-0x14(%ebp)
  1000f1:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1000f4:	89 83 10 60 00 00    	mov    %eax,0x6010(%ebx)
  1000fa:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1000fd:	66 89 83 14 60 00 00 	mov    %ax,0x6014(%ebx)
  100104:	c7 83 18 60 00 00 00 	movl   $0x0,0x6018(%ebx)
  10010b:	00 00 00 
  10010e:	90                   	nop
  10010f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100112:	c9                   	leave
  100113:	c3                   	ret

00100114 <video_putc>:
  100114:	55                   	push   %ebp
  100115:	89 e5                	mov    %esp,%ebp
  100117:	56                   	push   %esi
  100118:	53                   	push   %ebx
  100119:	83 ec 10             	sub    $0x10,%esp
  10011c:	e8 9f 02 00 00       	call   1003c0 <__x86.get_pc_thunk.bx>
  100121:	81 c3 d3 be 00 00    	add    $0xbed3,%ebx
  100127:	8b 45 08             	mov    0x8(%ebp),%eax
  10012a:	3d ff 00 00 00       	cmp    $0xff,%eax
  10012f:	77 07                	ja     100138 <video_putc+0x24>
  100131:	81 4d 08 00 07 00 00 	orl    $0x700,0x8(%ebp)
  100138:	8b 45 08             	mov    0x8(%ebp),%eax
  10013b:	0f b6 c0             	movzbl %al,%eax
  10013e:	83 f8 0d             	cmp    $0xd,%eax
  100141:	0f 84 84 00 00 00    	je     1001cb <video_putc+0xb7>
  100147:	83 f8 0d             	cmp    $0xd,%eax
  10014a:	0f 8f f9 00 00 00    	jg     100249 <video_putc+0x135>
  100150:	83 f8 0a             	cmp    $0xa,%eax
  100153:	74 65                	je     1001ba <video_putc+0xa6>
  100155:	83 f8 0a             	cmp    $0xa,%eax
  100158:	0f 8f eb 00 00 00    	jg     100249 <video_putc+0x135>
  10015e:	83 f8 08             	cmp    $0x8,%eax
  100161:	74 0e                	je     100171 <video_putc+0x5d>
  100163:	83 f8 09             	cmp    $0x9,%eax
  100166:	0f 84 9a 00 00 00    	je     100206 <video_putc+0xf2>
  10016c:	e9 d8 00 00 00       	jmp    100249 <video_putc+0x135>
  100171:	0f b7 83 14 60 00 00 	movzwl 0x6014(%ebx),%eax
  100178:	66 85 c0             	test   %ax,%ax
  10017b:	0f 84 ee 00 00 00    	je     10026f <video_putc+0x15b>
  100181:	0f b7 83 14 60 00 00 	movzwl 0x6014(%ebx),%eax
  100188:	83 e8 01             	sub    $0x1,%eax
  10018b:	66 89 83 14 60 00 00 	mov    %ax,0x6014(%ebx)
  100192:	8b 45 08             	mov    0x8(%ebp),%eax
  100195:	b0 00                	mov    $0x0,%al
  100197:	83 c8 20             	or     $0x20,%eax
  10019a:	89 c1                	mov    %eax,%ecx
  10019c:	8b 83 10 60 00 00    	mov    0x6010(%ebx),%eax
  1001a2:	0f b7 93 14 60 00 00 	movzwl 0x6014(%ebx),%edx
  1001a9:	0f b7 d2             	movzwl %dx,%edx
  1001ac:	01 d2                	add    %edx,%edx
  1001ae:	01 d0                	add    %edx,%eax
  1001b0:	89 ca                	mov    %ecx,%edx
  1001b2:	66 89 10             	mov    %dx,(%eax)
  1001b5:	e9 b5 00 00 00       	jmp    10026f <video_putc+0x15b>
  1001ba:	0f b7 83 14 60 00 00 	movzwl 0x6014(%ebx),%eax
  1001c1:	83 c0 50             	add    $0x50,%eax
  1001c4:	66 89 83 14 60 00 00 	mov    %ax,0x6014(%ebx)
  1001cb:	0f b7 b3 14 60 00 00 	movzwl 0x6014(%ebx),%esi
  1001d2:	0f b7 8b 14 60 00 00 	movzwl 0x6014(%ebx),%ecx
  1001d9:	0f b7 c1             	movzwl %cx,%eax
  1001dc:	69 c0 cd cc 00 00    	imul   $0xcccd,%eax,%eax
  1001e2:	c1 e8 10             	shr    $0x10,%eax
  1001e5:	89 c2                	mov    %eax,%edx
  1001e7:	66 c1 ea 06          	shr    $0x6,%dx
  1001eb:	89 d0                	mov    %edx,%eax
  1001ed:	c1 e0 02             	shl    $0x2,%eax
  1001f0:	01 d0                	add    %edx,%eax
  1001f2:	c1 e0 04             	shl    $0x4,%eax
  1001f5:	29 c1                	sub    %eax,%ecx
  1001f7:	89 ca                	mov    %ecx,%edx
  1001f9:	89 f0                	mov    %esi,%eax
  1001fb:	29 d0                	sub    %edx,%eax
  1001fd:	66 89 83 14 60 00 00 	mov    %ax,0x6014(%ebx)
  100204:	eb 6a                	jmp    100270 <video_putc+0x15c>
  100206:	83 ec 0c             	sub    $0xc,%esp
  100209:	6a 20                	push   $0x20
  10020b:	e8 04 ff ff ff       	call   100114 <video_putc>
  100210:	83 c4 10             	add    $0x10,%esp
  100213:	83 ec 0c             	sub    $0xc,%esp
  100216:	6a 20                	push   $0x20
  100218:	e8 f7 fe ff ff       	call   100114 <video_putc>
  10021d:	83 c4 10             	add    $0x10,%esp
  100220:	83 ec 0c             	sub    $0xc,%esp
  100223:	6a 20                	push   $0x20
  100225:	e8 ea fe ff ff       	call   100114 <video_putc>
  10022a:	83 c4 10             	add    $0x10,%esp
  10022d:	83 ec 0c             	sub    $0xc,%esp
  100230:	6a 20                	push   $0x20
  100232:	e8 dd fe ff ff       	call   100114 <video_putc>
  100237:	83 c4 10             	add    $0x10,%esp
  10023a:	83 ec 0c             	sub    $0xc,%esp
  10023d:	6a 20                	push   $0x20
  10023f:	e8 d0 fe ff ff       	call   100114 <video_putc>
  100244:	83 c4 10             	add    $0x10,%esp
  100247:	eb 27                	jmp    100270 <video_putc+0x15c>
  100249:	8b 8b 10 60 00 00    	mov    0x6010(%ebx),%ecx
  10024f:	0f b7 83 14 60 00 00 	movzwl 0x6014(%ebx),%eax
  100256:	8d 50 01             	lea    0x1(%eax),%edx
  100259:	66 89 93 14 60 00 00 	mov    %dx,0x6014(%ebx)
  100260:	0f b7 c0             	movzwl %ax,%eax
  100263:	01 c0                	add    %eax,%eax
  100265:	01 c8                	add    %ecx,%eax
  100267:	8b 55 08             	mov    0x8(%ebp),%edx
  10026a:	66 89 10             	mov    %dx,(%eax)
  10026d:	eb 01                	jmp    100270 <video_putc+0x15c>
  10026f:	90                   	nop
  100270:	0f b7 83 14 60 00 00 	movzwl 0x6014(%ebx),%eax
  100277:	66 3d cf 07          	cmp    $0x7cf,%ax
  10027b:	76 5d                	jbe    1002da <video_putc+0x1c6>
  10027d:	8b 83 10 60 00 00    	mov    0x6010(%ebx),%eax
  100283:	8d 90 a0 00 00 00    	lea    0xa0(%eax),%edx
  100289:	8b 83 10 60 00 00    	mov    0x6010(%ebx),%eax
  10028f:	83 ec 04             	sub    $0x4,%esp
  100292:	68 00 0f 00 00       	push   $0xf00
  100297:	52                   	push   %edx
  100298:	50                   	push   %eax
  100299:	e8 87 25 00 00       	call   102825 <memmove>
  10029e:	83 c4 10             	add    $0x10,%esp
  1002a1:	c7 45 f4 80 07 00 00 	movl   $0x780,-0xc(%ebp)
  1002a8:	eb 16                	jmp    1002c0 <video_putc+0x1ac>
  1002aa:	8b 83 10 60 00 00    	mov    0x6010(%ebx),%eax
  1002b0:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1002b3:	01 d2                	add    %edx,%edx
  1002b5:	01 d0                	add    %edx,%eax
  1002b7:	66 c7 00 20 07       	movw   $0x720,(%eax)
  1002bc:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1002c0:	81 7d f4 cf 07 00 00 	cmpl   $0x7cf,-0xc(%ebp)
  1002c7:	7e e1                	jle    1002aa <video_putc+0x196>
  1002c9:	0f b7 83 14 60 00 00 	movzwl 0x6014(%ebx),%eax
  1002d0:	83 e8 50             	sub    $0x50,%eax
  1002d3:	66 89 83 14 60 00 00 	mov    %ax,0x6014(%ebx)
  1002da:	8b 83 0c 60 00 00    	mov    0x600c(%ebx),%eax
  1002e0:	83 ec 08             	sub    $0x8,%esp
  1002e3:	6a 0e                	push   $0xe
  1002e5:	50                   	push   %eax
  1002e6:	e8 2e 38 00 00       	call   103b19 <outb>
  1002eb:	83 c4 10             	add    $0x10,%esp
  1002ee:	0f b7 83 14 60 00 00 	movzwl 0x6014(%ebx),%eax
  1002f5:	66 c1 e8 08          	shr    $0x8,%ax
  1002f9:	0f b6 c0             	movzbl %al,%eax
  1002fc:	8b 93 0c 60 00 00    	mov    0x600c(%ebx),%edx
  100302:	83 c2 01             	add    $0x1,%edx
  100305:	83 ec 08             	sub    $0x8,%esp
  100308:	50                   	push   %eax
  100309:	52                   	push   %edx
  10030a:	e8 0a 38 00 00       	call   103b19 <outb>
  10030f:	83 c4 10             	add    $0x10,%esp
  100312:	8b 83 0c 60 00 00    	mov    0x600c(%ebx),%eax
  100318:	83 ec 08             	sub    $0x8,%esp
  10031b:	6a 0f                	push   $0xf
  10031d:	50                   	push   %eax
  10031e:	e8 f6 37 00 00       	call   103b19 <outb>
  100323:	83 c4 10             	add    $0x10,%esp
  100326:	0f b7 83 14 60 00 00 	movzwl 0x6014(%ebx),%eax
  10032d:	0f b6 c0             	movzbl %al,%eax
  100330:	8b 93 0c 60 00 00    	mov    0x600c(%ebx),%edx
  100336:	83 c2 01             	add    $0x1,%edx
  100339:	83 ec 08             	sub    $0x8,%esp
  10033c:	50                   	push   %eax
  10033d:	52                   	push   %edx
  10033e:	e8 d6 37 00 00       	call   103b19 <outb>
  100343:	83 c4 10             	add    $0x10,%esp
  100346:	90                   	nop
  100347:	8d 65 f8             	lea    -0x8(%ebp),%esp
  10034a:	5b                   	pop    %ebx
  10034b:	5e                   	pop    %esi
  10034c:	5d                   	pop    %ebp
  10034d:	c3                   	ret

0010034e <video_set_cursor>:
  10034e:	55                   	push   %ebp
  10034f:	89 e5                	mov    %esp,%ebp
  100351:	e8 66 00 00 00       	call   1003bc <__x86.get_pc_thunk.dx>
  100356:	81 c2 9e bc 00 00    	add    $0xbc9e,%edx
  10035c:	8b 45 08             	mov    0x8(%ebp),%eax
  10035f:	89 c1                	mov    %eax,%ecx
  100361:	89 c8                	mov    %ecx,%eax
  100363:	c1 e0 02             	shl    $0x2,%eax
  100366:	01 c8                	add    %ecx,%eax
  100368:	c1 e0 04             	shl    $0x4,%eax
  10036b:	89 c1                	mov    %eax,%ecx
  10036d:	8b 45 0c             	mov    0xc(%ebp),%eax
  100370:	01 c8                	add    %ecx,%eax
  100372:	66 89 82 14 60 00 00 	mov    %ax,0x6014(%edx)
  100379:	90                   	nop
  10037a:	5d                   	pop    %ebp
  10037b:	c3                   	ret

0010037c <video_clear_screen>:
  10037c:	55                   	push   %ebp
  10037d:	89 e5                	mov    %esp,%ebp
  10037f:	83 ec 10             	sub    $0x10,%esp
  100382:	e8 31 00 00 00       	call   1003b8 <__x86.get_pc_thunk.ax>
  100387:	05 6d bc 00 00       	add    $0xbc6d,%eax
  10038c:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  100393:	eb 16                	jmp    1003ab <video_clear_screen+0x2f>
  100395:	8b 90 10 60 00 00    	mov    0x6010(%eax),%edx
  10039b:	8b 4d fc             	mov    -0x4(%ebp),%ecx
  10039e:	01 c9                	add    %ecx,%ecx
  1003a0:	01 ca                	add    %ecx,%edx
  1003a2:	66 c7 02 20 00       	movw   $0x20,(%edx)
  1003a7:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  1003ab:	81 7d fc cf 07 00 00 	cmpl   $0x7cf,-0x4(%ebp)
  1003b2:	7e e1                	jle    100395 <video_clear_screen+0x19>
  1003b4:	90                   	nop
  1003b5:	90                   	nop
  1003b6:	c9                   	leave
  1003b7:	c3                   	ret

001003b8 <__x86.get_pc_thunk.ax>:
  1003b8:	8b 04 24             	mov    (%esp),%eax
  1003bb:	c3                   	ret

001003bc <__x86.get_pc_thunk.dx>:
  1003bc:	8b 14 24             	mov    (%esp),%edx
  1003bf:	c3                   	ret

001003c0 <__x86.get_pc_thunk.bx>:
  1003c0:	8b 1c 24             	mov    (%esp),%ebx
  1003c3:	c3                   	ret

001003c4 <cons_init>:
  1003c4:	55                   	push   %ebp
  1003c5:	89 e5                	mov    %esp,%ebp
  1003c7:	53                   	push   %ebx
  1003c8:	83 ec 04             	sub    $0x4,%esp
  1003cb:	e8 f0 ff ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1003d0:	81 c3 24 bc 00 00    	add    $0xbc24,%ebx
  1003d6:	83 ec 04             	sub    $0x4,%esp
  1003d9:	68 08 02 00 00       	push   $0x208
  1003de:	6a 00                	push   $0x0
  1003e0:	8d 83 2c 60 00 00    	lea    0x602c(%ebx),%eax
  1003e6:	50                   	push   %eax
  1003e7:	e8 bf 23 00 00       	call   1027ab <memset>
  1003ec:	83 c4 10             	add    $0x10,%esp
  1003ef:	e8 2f 04 00 00       	call   100823 <serial_init>
  1003f4:	e8 07 fc ff ff       	call   100000 <video_init>
  1003f9:	90                   	nop
  1003fa:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1003fd:	c9                   	leave
  1003fe:	c3                   	ret

001003ff <cons_intr>:
  1003ff:	55                   	push   %ebp
  100400:	89 e5                	mov    %esp,%ebp
  100402:	53                   	push   %ebx
  100403:	83 ec 14             	sub    $0x14,%esp
  100406:	e8 b5 ff ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  10040b:	81 c3 e9 bb 00 00    	add    $0xbbe9,%ebx
  100411:	eb 39                	jmp    10044c <cons_intr+0x4d>
  100413:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  100417:	74 32                	je     10044b <cons_intr+0x4c>
  100419:	8b 83 30 62 00 00    	mov    0x6230(%ebx),%eax
  10041f:	8d 50 01             	lea    0x1(%eax),%edx
  100422:	89 93 30 62 00 00    	mov    %edx,0x6230(%ebx)
  100428:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10042b:	88 94 03 2c 60 00 00 	mov    %dl,0x602c(%ebx,%eax,1)
  100432:	8b 83 30 62 00 00    	mov    0x6230(%ebx),%eax
  100438:	3d 00 02 00 00       	cmp    $0x200,%eax
  10043d:	75 0d                	jne    10044c <cons_intr+0x4d>
  10043f:	c7 83 30 62 00 00 00 	movl   $0x0,0x6230(%ebx)
  100446:	00 00 00 
  100449:	eb 01                	jmp    10044c <cons_intr+0x4d>
  10044b:	90                   	nop
  10044c:	8b 45 08             	mov    0x8(%ebp),%eax
  10044f:	ff d0                	call   *%eax
  100451:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100454:	83 7d f4 ff          	cmpl   $0xffffffff,-0xc(%ebp)
  100458:	75 b9                	jne    100413 <cons_intr+0x14>
  10045a:	90                   	nop
  10045b:	90                   	nop
  10045c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10045f:	c9                   	leave
  100460:	c3                   	ret

00100461 <cons_getc>:
  100461:	55                   	push   %ebp
  100462:	89 e5                	mov    %esp,%ebp
  100464:	53                   	push   %ebx
  100465:	83 ec 14             	sub    $0x14,%esp
  100468:	e8 53 ff ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  10046d:	81 c3 87 bb 00 00    	add    $0xbb87,%ebx
  100473:	e8 81 02 00 00       	call   1006f9 <serial_intr>
  100478:	e8 59 06 00 00       	call   100ad6 <keyboard_intr>
  10047d:	8b 93 2c 62 00 00    	mov    0x622c(%ebx),%edx
  100483:	8b 83 30 62 00 00    	mov    0x6230(%ebx),%eax
  100489:	39 c2                	cmp    %eax,%edx
  10048b:	74 39                	je     1004c6 <cons_getc+0x65>
  10048d:	8b 83 2c 62 00 00    	mov    0x622c(%ebx),%eax
  100493:	8d 50 01             	lea    0x1(%eax),%edx
  100496:	89 93 2c 62 00 00    	mov    %edx,0x622c(%ebx)
  10049c:	0f b6 84 03 2c 60 00 	movzbl 0x602c(%ebx,%eax,1),%eax
  1004a3:	00 
  1004a4:	0f be c0             	movsbl %al,%eax
  1004a7:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1004aa:	8b 83 2c 62 00 00    	mov    0x622c(%ebx),%eax
  1004b0:	3d 00 02 00 00       	cmp    $0x200,%eax
  1004b5:	75 0a                	jne    1004c1 <cons_getc+0x60>
  1004b7:	c7 83 2c 62 00 00 00 	movl   $0x0,0x622c(%ebx)
  1004be:	00 00 00 
  1004c1:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1004c4:	eb 05                	jmp    1004cb <cons_getc+0x6a>
  1004c6:	b8 00 00 00 00       	mov    $0x0,%eax
  1004cb:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1004ce:	c9                   	leave
  1004cf:	c3                   	ret

001004d0 <cons_putc>:
  1004d0:	55                   	push   %ebp
  1004d1:	89 e5                	mov    %esp,%ebp
  1004d3:	53                   	push   %ebx
  1004d4:	83 ec 14             	sub    $0x14,%esp
  1004d7:	e8 e4 fe ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1004dc:	81 c3 18 bb 00 00    	add    $0xbb18,%ebx
  1004e2:	8b 45 08             	mov    0x8(%ebp),%eax
  1004e5:	88 45 f4             	mov    %al,-0xc(%ebp)
  1004e8:	0f be 45 f4          	movsbl -0xc(%ebp),%eax
  1004ec:	83 ec 0c             	sub    $0xc,%esp
  1004ef:	50                   	push   %eax
  1004f0:	e8 9d 02 00 00       	call   100792 <serial_putc>
  1004f5:	83 c4 10             	add    $0x10,%esp
  1004f8:	0f be 45 f4          	movsbl -0xc(%ebp),%eax
  1004fc:	83 ec 0c             	sub    $0xc,%esp
  1004ff:	50                   	push   %eax
  100500:	e8 0f fc ff ff       	call   100114 <video_putc>
  100505:	83 c4 10             	add    $0x10,%esp
  100508:	90                   	nop
  100509:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10050c:	c9                   	leave
  10050d:	c3                   	ret

0010050e <getchar>:
  10050e:	55                   	push   %ebp
  10050f:	89 e5                	mov    %esp,%ebp
  100511:	83 ec 18             	sub    $0x18,%esp
  100514:	e8 9f fe ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  100519:	05 db ba 00 00       	add    $0xbadb,%eax
  10051e:	90                   	nop
  10051f:	e8 3d ff ff ff       	call   100461 <cons_getc>
  100524:	88 45 f7             	mov    %al,-0x9(%ebp)
  100527:	80 7d f7 00          	cmpb   $0x0,-0x9(%ebp)
  10052b:	74 f2                	je     10051f <getchar+0x11>
  10052d:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
  100531:	c9                   	leave
  100532:	c3                   	ret

00100533 <putchar>:
  100533:	55                   	push   %ebp
  100534:	89 e5                	mov    %esp,%ebp
  100536:	83 ec 18             	sub    $0x18,%esp
  100539:	e8 7a fe ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  10053e:	05 b6 ba 00 00       	add    $0xbab6,%eax
  100543:	8b 45 08             	mov    0x8(%ebp),%eax
  100546:	88 45 f4             	mov    %al,-0xc(%ebp)
  100549:	0f be 45 f4          	movsbl -0xc(%ebp),%eax
  10054d:	83 ec 0c             	sub    $0xc,%esp
  100550:	50                   	push   %eax
  100551:	e8 7a ff ff ff       	call   1004d0 <cons_putc>
  100556:	83 c4 10             	add    $0x10,%esp
  100559:	90                   	nop
  10055a:	c9                   	leave
  10055b:	c3                   	ret

0010055c <readline>:
  10055c:	55                   	push   %ebp
  10055d:	89 e5                	mov    %esp,%ebp
  10055f:	53                   	push   %ebx
  100560:	83 ec 14             	sub    $0x14,%esp
  100563:	e8 58 fe ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  100568:	81 c3 8c ba 00 00    	add    $0xba8c,%ebx
  10056e:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  100572:	74 15                	je     100589 <readline+0x2d>
  100574:	83 ec 08             	sub    $0x8,%esp
  100577:	ff 75 08             	push   0x8(%ebp)
  10057a:	8d 83 1a b0 ff ff    	lea    -0x4fe6(%ebx),%eax
  100580:	50                   	push   %eax
  100581:	e8 e6 27 00 00       	call   102d6c <dprintf>
  100586:	83 c4 10             	add    $0x10,%esp
  100589:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  100590:	e8 79 ff ff ff       	call   10050e <getchar>
  100595:	88 45 f3             	mov    %al,-0xd(%ebp)
  100598:	80 7d f3 00          	cmpb   $0x0,-0xd(%ebp)
  10059c:	79 21                	jns    1005bf <readline+0x63>
  10059e:	0f be 45 f3          	movsbl -0xd(%ebp),%eax
  1005a2:	83 ec 08             	sub    $0x8,%esp
  1005a5:	50                   	push   %eax
  1005a6:	8d 83 1d b0 ff ff    	lea    -0x4fe3(%ebx),%eax
  1005ac:	50                   	push   %eax
  1005ad:	e8 ba 27 00 00       	call   102d6c <dprintf>
  1005b2:	83 c4 10             	add    $0x10,%esp
  1005b5:	b8 00 00 00 00       	mov    $0x0,%eax
  1005ba:	e9 92 00 00 00       	jmp    100651 <readline+0xf5>
  1005bf:	80 7d f3 08          	cmpb   $0x8,-0xd(%ebp)
  1005c3:	74 06                	je     1005cb <readline+0x6f>
  1005c5:	80 7d f3 7f          	cmpb   $0x7f,-0xd(%ebp)
  1005c9:	75 19                	jne    1005e4 <readline+0x88>
  1005cb:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  1005cf:	7e 13                	jle    1005e4 <readline+0x88>
  1005d1:	83 ec 0c             	sub    $0xc,%esp
  1005d4:	6a 08                	push   $0x8
  1005d6:	e8 58 ff ff ff       	call   100533 <putchar>
  1005db:	83 c4 10             	add    $0x10,%esp
  1005de:	83 6d f4 01          	subl   $0x1,-0xc(%ebp)
  1005e2:	eb 68                	jmp    10064c <readline+0xf0>
  1005e4:	80 7d f3 1f          	cmpb   $0x1f,-0xd(%ebp)
  1005e8:	7e 2f                	jle    100619 <readline+0xbd>
  1005ea:	81 7d f4 fe 03 00 00 	cmpl   $0x3fe,-0xc(%ebp)
  1005f1:	7f 26                	jg     100619 <readline+0xbd>
  1005f3:	0f be 45 f3          	movsbl -0xd(%ebp),%eax
  1005f7:	83 ec 0c             	sub    $0xc,%esp
  1005fa:	50                   	push   %eax
  1005fb:	e8 33 ff ff ff       	call   100533 <putchar>
  100600:	83 c4 10             	add    $0x10,%esp
  100603:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100606:	8d 50 01             	lea    0x1(%eax),%edx
  100609:	89 55 f4             	mov    %edx,-0xc(%ebp)
  10060c:	0f b6 55 f3          	movzbl -0xd(%ebp),%edx
  100610:	88 94 03 4c 62 00 00 	mov    %dl,0x624c(%ebx,%eax,1)
  100617:	eb 33                	jmp    10064c <readline+0xf0>
  100619:	80 7d f3 0a          	cmpb   $0xa,-0xd(%ebp)
  10061d:	74 0a                	je     100629 <readline+0xcd>
  10061f:	80 7d f3 0d          	cmpb   $0xd,-0xd(%ebp)
  100623:	0f 85 67 ff ff ff    	jne    100590 <readline+0x34>
  100629:	83 ec 0c             	sub    $0xc,%esp
  10062c:	6a 0a                	push   $0xa
  10062e:	e8 00 ff ff ff       	call   100533 <putchar>
  100633:	83 c4 10             	add    $0x10,%esp
  100636:	8d 93 4c 62 00 00    	lea    0x624c(%ebx),%edx
  10063c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10063f:	01 d0                	add    %edx,%eax
  100641:	c6 00 00             	movb   $0x0,(%eax)
  100644:	8d 83 4c 62 00 00    	lea    0x624c(%ebx),%eax
  10064a:	eb 05                	jmp    100651 <readline+0xf5>
  10064c:	e9 3f ff ff ff       	jmp    100590 <readline+0x34>
  100651:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100654:	c9                   	leave
  100655:	c3                   	ret

00100656 <delay>:
  100656:	55                   	push   %ebp
  100657:	89 e5                	mov    %esp,%ebp
  100659:	53                   	push   %ebx
  10065a:	83 ec 04             	sub    $0x4,%esp
  10065d:	e8 5e fd ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  100662:	81 c3 92 b9 00 00    	add    $0xb992,%ebx
  100668:	83 ec 0c             	sub    $0xc,%esp
  10066b:	68 84 00 00 00       	push   $0x84
  100670:	e8 55 34 00 00       	call   103aca <inb>
  100675:	83 c4 10             	add    $0x10,%esp
  100678:	83 ec 0c             	sub    $0xc,%esp
  10067b:	68 84 00 00 00       	push   $0x84
  100680:	e8 45 34 00 00       	call   103aca <inb>
  100685:	83 c4 10             	add    $0x10,%esp
  100688:	83 ec 0c             	sub    $0xc,%esp
  10068b:	68 84 00 00 00       	push   $0x84
  100690:	e8 35 34 00 00       	call   103aca <inb>
  100695:	83 c4 10             	add    $0x10,%esp
  100698:	83 ec 0c             	sub    $0xc,%esp
  10069b:	68 84 00 00 00       	push   $0x84
  1006a0:	e8 25 34 00 00       	call   103aca <inb>
  1006a5:	83 c4 10             	add    $0x10,%esp
  1006a8:	90                   	nop
  1006a9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1006ac:	c9                   	leave
  1006ad:	c3                   	ret

001006ae <serial_proc_data>:
  1006ae:	55                   	push   %ebp
  1006af:	89 e5                	mov    %esp,%ebp
  1006b1:	53                   	push   %ebx
  1006b2:	83 ec 04             	sub    $0x4,%esp
  1006b5:	e8 06 fd ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1006ba:	81 c3 3a b9 00 00    	add    $0xb93a,%ebx
  1006c0:	83 ec 0c             	sub    $0xc,%esp
  1006c3:	68 fd 03 00 00       	push   $0x3fd
  1006c8:	e8 fd 33 00 00       	call   103aca <inb>
  1006cd:	83 c4 10             	add    $0x10,%esp
  1006d0:	0f b6 c0             	movzbl %al,%eax
  1006d3:	83 e0 01             	and    $0x1,%eax
  1006d6:	85 c0                	test   %eax,%eax
  1006d8:	75 07                	jne    1006e1 <serial_proc_data+0x33>
  1006da:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  1006df:	eb 13                	jmp    1006f4 <serial_proc_data+0x46>
  1006e1:	83 ec 0c             	sub    $0xc,%esp
  1006e4:	68 f8 03 00 00       	push   $0x3f8
  1006e9:	e8 dc 33 00 00       	call   103aca <inb>
  1006ee:	83 c4 10             	add    $0x10,%esp
  1006f1:	0f b6 c0             	movzbl %al,%eax
  1006f4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1006f7:	c9                   	leave
  1006f8:	c3                   	ret

001006f9 <serial_intr>:
  1006f9:	55                   	push   %ebp
  1006fa:	89 e5                	mov    %esp,%ebp
  1006fc:	53                   	push   %ebx
  1006fd:	83 ec 04             	sub    $0x4,%esp
  100700:	e8 b3 fc ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  100705:	05 ef b8 00 00       	add    $0xb8ef,%eax
  10070a:	0f b6 90 4c 66 00 00 	movzbl 0x664c(%eax),%edx
  100711:	84 d2                	test   %dl,%dl
  100713:	74 14                	je     100729 <serial_intr+0x30>
  100715:	83 ec 0c             	sub    $0xc,%esp
  100718:	8d 90 ba 46 ff ff    	lea    -0xb946(%eax),%edx
  10071e:	52                   	push   %edx
  10071f:	89 c3                	mov    %eax,%ebx
  100721:	e8 d9 fc ff ff       	call   1003ff <cons_intr>
  100726:	83 c4 10             	add    $0x10,%esp
  100729:	90                   	nop
  10072a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10072d:	c9                   	leave
  10072e:	c3                   	ret

0010072f <serial_reformatnewline>:
  10072f:	55                   	push   %ebp
  100730:	89 e5                	mov    %esp,%ebp
  100732:	53                   	push   %ebx
  100733:	83 ec 14             	sub    $0x14,%esp
  100736:	e8 85 fc ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  10073b:	81 c3 b9 b8 00 00    	add    $0xb8b9,%ebx
  100741:	c7 45 f4 0d 00 00 00 	movl   $0xd,-0xc(%ebp)
  100748:	c7 45 f0 0a 00 00 00 	movl   $0xa,-0x10(%ebp)
  10074f:	8b 45 08             	mov    0x8(%ebp),%eax
  100752:	3b 45 f0             	cmp    -0x10(%ebp),%eax
  100755:	75 31                	jne    100788 <serial_reformatnewline+0x59>
  100757:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10075a:	0f b6 c0             	movzbl %al,%eax
  10075d:	83 ec 08             	sub    $0x8,%esp
  100760:	50                   	push   %eax
  100761:	ff 75 0c             	push   0xc(%ebp)
  100764:	e8 b0 33 00 00       	call   103b19 <outb>
  100769:	83 c4 10             	add    $0x10,%esp
  10076c:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10076f:	0f b6 c0             	movzbl %al,%eax
  100772:	83 ec 08             	sub    $0x8,%esp
  100775:	50                   	push   %eax
  100776:	ff 75 0c             	push   0xc(%ebp)
  100779:	e8 9b 33 00 00       	call   103b19 <outb>
  10077e:	83 c4 10             	add    $0x10,%esp
  100781:	b8 01 00 00 00       	mov    $0x1,%eax
  100786:	eb 05                	jmp    10078d <serial_reformatnewline+0x5e>
  100788:	b8 00 00 00 00       	mov    $0x0,%eax
  10078d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100790:	c9                   	leave
  100791:	c3                   	ret

00100792 <serial_putc>:
  100792:	55                   	push   %ebp
  100793:	89 e5                	mov    %esp,%ebp
  100795:	53                   	push   %ebx
  100796:	83 ec 24             	sub    $0x24,%esp
  100799:	e8 22 fc ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  10079e:	81 c3 56 b8 00 00    	add    $0xb856,%ebx
  1007a4:	8b 45 08             	mov    0x8(%ebp),%eax
  1007a7:	88 45 e4             	mov    %al,-0x1c(%ebp)
  1007aa:	0f b6 83 4c 66 00 00 	movzbl 0x664c(%ebx),%eax
  1007b1:	84 c0                	test   %al,%al
  1007b3:	74 68                	je     10081d <serial_putc+0x8b>
  1007b5:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1007bc:	eb 09                	jmp    1007c7 <serial_putc+0x35>
  1007be:	e8 93 fe ff ff       	call   100656 <delay>
  1007c3:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1007c7:	83 ec 0c             	sub    $0xc,%esp
  1007ca:	68 fd 03 00 00       	push   $0x3fd
  1007cf:	e8 f6 32 00 00       	call   103aca <inb>
  1007d4:	83 c4 10             	add    $0x10,%esp
  1007d7:	0f b6 c0             	movzbl %al,%eax
  1007da:	83 e0 20             	and    $0x20,%eax
  1007dd:	85 c0                	test   %eax,%eax
  1007df:	75 09                	jne    1007ea <serial_putc+0x58>
  1007e1:	81 7d f4 ff 31 00 00 	cmpl   $0x31ff,-0xc(%ebp)
  1007e8:	7e d4                	jle    1007be <serial_putc+0x2c>
  1007ea:	0f be 45 e4          	movsbl -0x1c(%ebp),%eax
  1007ee:	83 ec 08             	sub    $0x8,%esp
  1007f1:	68 f8 03 00 00       	push   $0x3f8
  1007f6:	50                   	push   %eax
  1007f7:	e8 33 ff ff ff       	call   10072f <serial_reformatnewline>
  1007fc:	83 c4 10             	add    $0x10,%esp
  1007ff:	85 c0                	test   %eax,%eax
  100801:	75 1b                	jne    10081e <serial_putc+0x8c>
  100803:	0f b6 45 e4          	movzbl -0x1c(%ebp),%eax
  100807:	0f b6 c0             	movzbl %al,%eax
  10080a:	83 ec 08             	sub    $0x8,%esp
  10080d:	50                   	push   %eax
  10080e:	68 f8 03 00 00       	push   $0x3f8
  100813:	e8 01 33 00 00       	call   103b19 <outb>
  100818:	83 c4 10             	add    $0x10,%esp
  10081b:	eb 01                	jmp    10081e <serial_putc+0x8c>
  10081d:	90                   	nop
  10081e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100821:	c9                   	leave
  100822:	c3                   	ret

00100823 <serial_init>:
  100823:	55                   	push   %ebp
  100824:	89 e5                	mov    %esp,%ebp
  100826:	53                   	push   %ebx
  100827:	83 ec 04             	sub    $0x4,%esp
  10082a:	e8 91 fb ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  10082f:	81 c3 c5 b7 00 00    	add    $0xb7c5,%ebx
  100835:	83 ec 08             	sub    $0x8,%esp
  100838:	6a 00                	push   $0x0
  10083a:	68 f9 03 00 00       	push   $0x3f9
  10083f:	e8 d5 32 00 00       	call   103b19 <outb>
  100844:	83 c4 10             	add    $0x10,%esp
  100847:	83 ec 08             	sub    $0x8,%esp
  10084a:	68 80 00 00 00       	push   $0x80
  10084f:	68 fb 03 00 00       	push   $0x3fb
  100854:	e8 c0 32 00 00       	call   103b19 <outb>
  100859:	83 c4 10             	add    $0x10,%esp
  10085c:	83 ec 08             	sub    $0x8,%esp
  10085f:	6a 01                	push   $0x1
  100861:	68 f8 03 00 00       	push   $0x3f8
  100866:	e8 ae 32 00 00       	call   103b19 <outb>
  10086b:	83 c4 10             	add    $0x10,%esp
  10086e:	83 ec 08             	sub    $0x8,%esp
  100871:	6a 00                	push   $0x0
  100873:	68 f9 03 00 00       	push   $0x3f9
  100878:	e8 9c 32 00 00       	call   103b19 <outb>
  10087d:	83 c4 10             	add    $0x10,%esp
  100880:	83 ec 08             	sub    $0x8,%esp
  100883:	6a 03                	push   $0x3
  100885:	68 fb 03 00 00       	push   $0x3fb
  10088a:	e8 8a 32 00 00       	call   103b19 <outb>
  10088f:	83 c4 10             	add    $0x10,%esp
  100892:	83 ec 08             	sub    $0x8,%esp
  100895:	68 c7 00 00 00       	push   $0xc7
  10089a:	68 fa 03 00 00       	push   $0x3fa
  10089f:	e8 75 32 00 00       	call   103b19 <outb>
  1008a4:	83 c4 10             	add    $0x10,%esp
  1008a7:	83 ec 08             	sub    $0x8,%esp
  1008aa:	6a 0b                	push   $0xb
  1008ac:	68 fc 03 00 00       	push   $0x3fc
  1008b1:	e8 63 32 00 00       	call   103b19 <outb>
  1008b6:	83 c4 10             	add    $0x10,%esp
  1008b9:	83 ec 0c             	sub    $0xc,%esp
  1008bc:	68 fd 03 00 00       	push   $0x3fd
  1008c1:	e8 04 32 00 00       	call   103aca <inb>
  1008c6:	83 c4 10             	add    $0x10,%esp
  1008c9:	3c ff                	cmp    $0xff,%al
  1008cb:	0f 95 c0             	setne  %al
  1008ce:	88 83 4c 66 00 00    	mov    %al,0x664c(%ebx)
  1008d4:	83 ec 0c             	sub    $0xc,%esp
  1008d7:	68 fa 03 00 00       	push   $0x3fa
  1008dc:	e8 e9 31 00 00       	call   103aca <inb>
  1008e1:	83 c4 10             	add    $0x10,%esp
  1008e4:	83 ec 0c             	sub    $0xc,%esp
  1008e7:	68 f8 03 00 00       	push   $0x3f8
  1008ec:	e8 d9 31 00 00       	call   103aca <inb>
  1008f1:	83 c4 10             	add    $0x10,%esp
  1008f4:	90                   	nop
  1008f5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1008f8:	c9                   	leave
  1008f9:	c3                   	ret

001008fa <serial_intenable>:
  1008fa:	55                   	push   %ebp
  1008fb:	89 e5                	mov    %esp,%ebp
  1008fd:	53                   	push   %ebx
  1008fe:	83 ec 04             	sub    $0x4,%esp
  100901:	e8 b2 fa ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  100906:	05 ee b6 00 00       	add    $0xb6ee,%eax
  10090b:	0f b6 90 4c 66 00 00 	movzbl 0x664c(%eax),%edx
  100912:	84 d2                	test   %dl,%dl
  100914:	74 19                	je     10092f <serial_intenable+0x35>
  100916:	83 ec 08             	sub    $0x8,%esp
  100919:	6a 01                	push   $0x1
  10091b:	68 f9 03 00 00       	push   $0x3f9
  100920:	89 c3                	mov    %eax,%ebx
  100922:	e8 f2 31 00 00       	call   103b19 <outb>
  100927:	83 c4 10             	add    $0x10,%esp
  10092a:	e8 ca fd ff ff       	call   1006f9 <serial_intr>
  10092f:	90                   	nop
  100930:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100933:	c9                   	leave
  100934:	c3                   	ret

00100935 <kbd_proc_data>:
  100935:	55                   	push   %ebp
  100936:	89 e5                	mov    %esp,%ebp
  100938:	53                   	push   %ebx
  100939:	83 ec 14             	sub    $0x14,%esp
  10093c:	e8 7f fa ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  100941:	81 c3 b3 b6 00 00    	add    $0xb6b3,%ebx
  100947:	83 ec 0c             	sub    $0xc,%esp
  10094a:	6a 64                	push   $0x64
  10094c:	e8 79 31 00 00       	call   103aca <inb>
  100951:	83 c4 10             	add    $0x10,%esp
  100954:	0f b6 c0             	movzbl %al,%eax
  100957:	83 e0 01             	and    $0x1,%eax
  10095a:	85 c0                	test   %eax,%eax
  10095c:	75 0a                	jne    100968 <kbd_proc_data+0x33>
  10095e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  100963:	e9 69 01 00 00       	jmp    100ad1 <kbd_proc_data+0x19c>
  100968:	83 ec 0c             	sub    $0xc,%esp
  10096b:	6a 60                	push   $0x60
  10096d:	e8 58 31 00 00       	call   103aca <inb>
  100972:	83 c4 10             	add    $0x10,%esp
  100975:	88 45 f3             	mov    %al,-0xd(%ebp)
  100978:	80 7d f3 e0          	cmpb   $0xe0,-0xd(%ebp)
  10097c:	75 19                	jne    100997 <kbd_proc_data+0x62>
  10097e:	8b 83 50 66 00 00    	mov    0x6650(%ebx),%eax
  100984:	83 c8 40             	or     $0x40,%eax
  100987:	89 83 50 66 00 00    	mov    %eax,0x6650(%ebx)
  10098d:	b8 00 00 00 00       	mov    $0x0,%eax
  100992:	e9 3a 01 00 00       	jmp    100ad1 <kbd_proc_data+0x19c>
  100997:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
  10099b:	84 c0                	test   %al,%al
  10099d:	79 4b                	jns    1009ea <kbd_proc_data+0xb5>
  10099f:	8b 83 50 66 00 00    	mov    0x6650(%ebx),%eax
  1009a5:	83 e0 40             	and    $0x40,%eax
  1009a8:	85 c0                	test   %eax,%eax
  1009aa:	75 09                	jne    1009b5 <kbd_proc_data+0x80>
  1009ac:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
  1009b0:	83 e0 7f             	and    $0x7f,%eax
  1009b3:	eb 04                	jmp    1009b9 <kbd_proc_data+0x84>
  1009b5:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
  1009b9:	88 45 f3             	mov    %al,-0xd(%ebp)
  1009bc:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
  1009c0:	0f b6 84 03 0c 00 00 	movzbl 0xc(%ebx,%eax,1),%eax
  1009c7:	00 
  1009c8:	83 c8 40             	or     $0x40,%eax
  1009cb:	0f b6 c0             	movzbl %al,%eax
  1009ce:	f7 d0                	not    %eax
  1009d0:	89 c2                	mov    %eax,%edx
  1009d2:	8b 83 50 66 00 00    	mov    0x6650(%ebx),%eax
  1009d8:	21 d0                	and    %edx,%eax
  1009da:	89 83 50 66 00 00    	mov    %eax,0x6650(%ebx)
  1009e0:	b8 00 00 00 00       	mov    $0x0,%eax
  1009e5:	e9 e7 00 00 00       	jmp    100ad1 <kbd_proc_data+0x19c>
  1009ea:	8b 83 50 66 00 00    	mov    0x6650(%ebx),%eax
  1009f0:	83 e0 40             	and    $0x40,%eax
  1009f3:	85 c0                	test   %eax,%eax
  1009f5:	74 13                	je     100a0a <kbd_proc_data+0xd5>
  1009f7:	80 4d f3 80          	orb    $0x80,-0xd(%ebp)
  1009fb:	8b 83 50 66 00 00    	mov    0x6650(%ebx),%eax
  100a01:	83 e0 bf             	and    $0xffffffbf,%eax
  100a04:	89 83 50 66 00 00    	mov    %eax,0x6650(%ebx)
  100a0a:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
  100a0e:	0f b6 84 03 0c 00 00 	movzbl 0xc(%ebx,%eax,1),%eax
  100a15:	00 
  100a16:	0f b6 d0             	movzbl %al,%edx
  100a19:	8b 83 50 66 00 00    	mov    0x6650(%ebx),%eax
  100a1f:	09 d0                	or     %edx,%eax
  100a21:	89 83 50 66 00 00    	mov    %eax,0x6650(%ebx)
  100a27:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
  100a2b:	0f b6 84 03 0c 01 00 	movzbl 0x10c(%ebx,%eax,1),%eax
  100a32:	00 
  100a33:	0f b6 d0             	movzbl %al,%edx
  100a36:	8b 83 50 66 00 00    	mov    0x6650(%ebx),%eax
  100a3c:	31 d0                	xor    %edx,%eax
  100a3e:	89 83 50 66 00 00    	mov    %eax,0x6650(%ebx)
  100a44:	8b 83 50 66 00 00    	mov    0x6650(%ebx),%eax
  100a4a:	83 e0 03             	and    $0x3,%eax
  100a4d:	8b 94 83 0c 05 00 00 	mov    0x50c(%ebx,%eax,4),%edx
  100a54:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
  100a58:	01 d0                	add    %edx,%eax
  100a5a:	0f b6 00             	movzbl (%eax),%eax
  100a5d:	0f b6 c0             	movzbl %al,%eax
  100a60:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100a63:	8b 83 50 66 00 00    	mov    0x6650(%ebx),%eax
  100a69:	83 e0 08             	and    $0x8,%eax
  100a6c:	85 c0                	test   %eax,%eax
  100a6e:	74 22                	je     100a92 <kbd_proc_data+0x15d>
  100a70:	83 7d f4 60          	cmpl   $0x60,-0xc(%ebp)
  100a74:	7e 0c                	jle    100a82 <kbd_proc_data+0x14d>
  100a76:	83 7d f4 7a          	cmpl   $0x7a,-0xc(%ebp)
  100a7a:	7f 06                	jg     100a82 <kbd_proc_data+0x14d>
  100a7c:	83 6d f4 20          	subl   $0x20,-0xc(%ebp)
  100a80:	eb 10                	jmp    100a92 <kbd_proc_data+0x15d>
  100a82:	83 7d f4 40          	cmpl   $0x40,-0xc(%ebp)
  100a86:	7e 0a                	jle    100a92 <kbd_proc_data+0x15d>
  100a88:	83 7d f4 5a          	cmpl   $0x5a,-0xc(%ebp)
  100a8c:	7f 04                	jg     100a92 <kbd_proc_data+0x15d>
  100a8e:	83 45 f4 20          	addl   $0x20,-0xc(%ebp)
  100a92:	8b 83 50 66 00 00    	mov    0x6650(%ebx),%eax
  100a98:	f7 d0                	not    %eax
  100a9a:	83 e0 06             	and    $0x6,%eax
  100a9d:	85 c0                	test   %eax,%eax
  100a9f:	75 2d                	jne    100ace <kbd_proc_data+0x199>
  100aa1:	81 7d f4 e9 00 00 00 	cmpl   $0xe9,-0xc(%ebp)
  100aa8:	75 24                	jne    100ace <kbd_proc_data+0x199>
  100aaa:	83 ec 0c             	sub    $0xc,%esp
  100aad:	8d 83 2d b0 ff ff    	lea    -0x4fd3(%ebx),%eax
  100ab3:	50                   	push   %eax
  100ab4:	e8 b3 22 00 00       	call   102d6c <dprintf>
  100ab9:	83 c4 10             	add    $0x10,%esp
  100abc:	83 ec 08             	sub    $0x8,%esp
  100abf:	6a 03                	push   $0x3
  100ac1:	68 92 00 00 00       	push   $0x92
  100ac6:	e8 4e 30 00 00       	call   103b19 <outb>
  100acb:	83 c4 10             	add    $0x10,%esp
  100ace:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100ad1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100ad4:	c9                   	leave
  100ad5:	c3                   	ret

00100ad6 <keyboard_intr>:
  100ad6:	55                   	push   %ebp
  100ad7:	89 e5                	mov    %esp,%ebp
  100ad9:	53                   	push   %ebx
  100ada:	83 ec 04             	sub    $0x4,%esp
  100add:	e8 d6 f8 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  100ae2:	05 12 b5 00 00       	add    $0xb512,%eax
  100ae7:	83 ec 0c             	sub    $0xc,%esp
  100aea:	8d 90 41 49 ff ff    	lea    -0xb6bf(%eax),%edx
  100af0:	52                   	push   %edx
  100af1:	89 c3                	mov    %eax,%ebx
  100af3:	e8 07 f9 ff ff       	call   1003ff <cons_intr>
  100af8:	83 c4 10             	add    $0x10,%esp
  100afb:	90                   	nop
  100afc:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100aff:	c9                   	leave
  100b00:	c3                   	ret

00100b01 <devinit>:
  100b01:	55                   	push   %ebp
  100b02:	89 e5                	mov    %esp,%ebp
  100b04:	53                   	push   %ebx
  100b05:	83 ec 04             	sub    $0x4,%esp
  100b08:	e8 b3 f8 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  100b0d:	81 c3 e7 b4 00 00    	add    $0xb4e7,%ebx
  100b13:	e8 4c 27 00 00       	call   103264 <seg_init>
  100b18:	e8 f1 2d 00 00       	call   10390e <enable_sse>
  100b1d:	e8 a2 f8 ff ff       	call   1003c4 <cons_init>
  100b22:	83 ec 04             	sub    $0x4,%esp
  100b25:	8d 83 39 b0 ff ff    	lea    -0x4fc7(%ebx),%eax
  100b2b:	50                   	push   %eax
  100b2c:	6a 12                	push   $0x12
  100b2e:	8d 83 4c b0 ff ff    	lea    -0x4fb4(%ebx),%eax
  100b34:	50                   	push   %eax
  100b35:	e8 5f 1f 00 00       	call   102a99 <debug_normal>
  100b3a:	83 c4 10             	add    $0x10,%esp
  100b3d:	ff 75 08             	push   0x8(%ebp)
  100b40:	8d 83 5f b0 ff ff    	lea    -0x4fa1(%ebx),%eax
  100b46:	50                   	push   %eax
  100b47:	6a 13                	push   $0x13
  100b49:	8d 83 4c b0 ff ff    	lea    -0x4fb4(%ebx),%eax
  100b4f:	50                   	push   %eax
  100b50:	e8 44 1f 00 00       	call   102a99 <debug_normal>
  100b55:	83 c4 10             	add    $0x10,%esp
  100b58:	e8 76 1a 00 00       	call   1025d3 <intr_init>
  100b5d:	83 ec 0c             	sub    $0xc,%esp
  100b60:	ff 75 08             	push   0x8(%ebp)
  100b63:	e8 a2 03 00 00       	call   100f0a <pmmap_init>
  100b68:	83 c4 10             	add    $0x10,%esp
  100b6b:	90                   	nop
  100b6c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100b6f:	c9                   	leave
  100b70:	c3                   	ret

00100b71 <pmmap_alloc_slot>:
  100b71:	55                   	push   %ebp
  100b72:	89 e5                	mov    %esp,%ebp
  100b74:	e8 43 f8 ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  100b79:	81 c2 7b b4 00 00    	add    $0xb47b,%edx
  100b7f:	8b 82 6c 70 00 00    	mov    0x706c(%edx),%eax
  100b85:	3d 80 00 00 00       	cmp    $0x80,%eax
  100b8a:	0f 94 c0             	sete   %al
  100b8d:	0f b6 c0             	movzbl %al,%eax
  100b90:	85 c0                	test   %eax,%eax
  100b92:	74 07                	je     100b9b <pmmap_alloc_slot+0x2a>
  100b94:	b8 00 00 00 00       	mov    $0x0,%eax
  100b99:	eb 21                	jmp    100bbc <pmmap_alloc_slot+0x4b>
  100b9b:	8b 8a 6c 70 00 00    	mov    0x706c(%edx),%ecx
  100ba1:	8d 41 01             	lea    0x1(%ecx),%eax
  100ba4:	89 82 6c 70 00 00    	mov    %eax,0x706c(%edx)
  100baa:	89 c8                	mov    %ecx,%eax
  100bac:	c1 e0 02             	shl    $0x2,%eax
  100baf:	01 c8                	add    %ecx,%eax
  100bb1:	c1 e0 02             	shl    $0x2,%eax
  100bb4:	8d 92 6c 66 00 00    	lea    0x666c(%edx),%edx
  100bba:	01 d0                	add    %edx,%eax
  100bbc:	5d                   	pop    %ebp
  100bbd:	c3                   	ret

00100bbe <pmmap_insert>:
  100bbe:	55                   	push   %ebp
  100bbf:	89 e5                	mov    %esp,%ebp
  100bc1:	53                   	push   %ebx
  100bc2:	83 ec 14             	sub    $0x14,%esp
  100bc5:	e8 f6 f7 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  100bca:	81 c3 2a b4 00 00    	add    $0xb42a,%ebx
  100bd0:	e8 9c ff ff ff       	call   100b71 <pmmap_alloc_slot>
  100bd5:	89 45 ec             	mov    %eax,-0x14(%ebp)
  100bd8:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
  100bdc:	75 1b                	jne    100bf9 <pmmap_insert+0x3b>
  100bde:	83 ec 04             	sub    $0x4,%esp
  100be1:	8d 83 78 b0 ff ff    	lea    -0x4f88(%ebx),%eax
  100be7:	50                   	push   %eax
  100be8:	6a 3c                	push   $0x3c
  100bea:	8d 83 95 b0 ff ff    	lea    -0x4f6b(%ebx),%eax
  100bf0:	50                   	push   %eax
  100bf1:	e8 5e 1f 00 00       	call   102b54 <debug_panic>
  100bf6:	83 c4 10             	add    $0x10,%esp
  100bf9:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100bfc:	8b 55 08             	mov    0x8(%ebp),%edx
  100bff:	89 10                	mov    %edx,(%eax)
  100c01:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100c04:	8b 55 0c             	mov    0xc(%ebp),%edx
  100c07:	89 50 04             	mov    %edx,0x4(%eax)
  100c0a:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100c0d:	8b 55 10             	mov    0x10(%ebp),%edx
  100c10:	89 50 08             	mov    %edx,0x8(%eax)
  100c13:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  100c1a:	8b 83 70 70 00 00    	mov    0x7070(%ebx),%eax
  100c20:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100c23:	eb 19                	jmp    100c3e <pmmap_insert+0x80>
  100c25:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100c28:	8b 00                	mov    (%eax),%eax
  100c2a:	39 45 08             	cmp    %eax,0x8(%ebp)
  100c2d:	72 17                	jb     100c46 <pmmap_insert+0x88>
  100c2f:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100c32:	89 45 f0             	mov    %eax,-0x10(%ebp)
  100c35:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100c38:	8b 40 0c             	mov    0xc(%eax),%eax
  100c3b:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100c3e:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  100c42:	75 e1                	jne    100c25 <pmmap_insert+0x67>
  100c44:	eb 01                	jmp    100c47 <pmmap_insert+0x89>
  100c46:	90                   	nop
  100c47:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
  100c4b:	75 17                	jne    100c64 <pmmap_insert+0xa6>
  100c4d:	8b 93 70 70 00 00    	mov    0x7070(%ebx),%edx
  100c53:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100c56:	89 50 0c             	mov    %edx,0xc(%eax)
  100c59:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100c5c:	89 83 70 70 00 00    	mov    %eax,0x7070(%ebx)
  100c62:	eb 15                	jmp    100c79 <pmmap_insert+0xbb>
  100c64:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100c67:	8b 50 0c             	mov    0xc(%eax),%edx
  100c6a:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100c6d:	89 50 0c             	mov    %edx,0xc(%eax)
  100c70:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100c73:	8b 55 ec             	mov    -0x14(%ebp),%edx
  100c76:	89 50 0c             	mov    %edx,0xc(%eax)
  100c79:	90                   	nop
  100c7a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100c7d:	c9                   	leave
  100c7e:	c3                   	ret

00100c7f <pmmap_merge>:
  100c7f:	55                   	push   %ebp
  100c80:	89 e5                	mov    %esp,%ebp
  100c82:	53                   	push   %ebx
  100c83:	83 ec 24             	sub    $0x24,%esp
  100c86:	e8 35 f7 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  100c8b:	81 c3 69 b3 00 00    	add    $0xb369,%ebx
  100c91:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
  100c98:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
  100c9f:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  100ca6:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
  100cad:	8b 83 70 70 00 00    	mov    0x7070(%ebx),%eax
  100cb3:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100cb6:	eb 73                	jmp    100d2b <pmmap_merge+0xac>
  100cb8:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100cbb:	8b 40 0c             	mov    0xc(%eax),%eax
  100cbe:	89 45 f0             	mov    %eax,-0x10(%ebp)
  100cc1:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
  100cc5:	74 6c                	je     100d33 <pmmap_merge+0xb4>
  100cc7:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100cca:	8b 00                	mov    (%eax),%eax
  100ccc:	8b 55 f0             	mov    -0x10(%ebp),%edx
  100ccf:	8b 12                	mov    (%edx),%edx
  100cd1:	39 c2                	cmp    %eax,%edx
  100cd3:	72 4d                	jb     100d22 <pmmap_merge+0xa3>
  100cd5:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100cd8:	8b 50 04             	mov    0x4(%eax),%edx
  100cdb:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100cde:	8b 00                	mov    (%eax),%eax
  100ce0:	39 c2                	cmp    %eax,%edx
  100ce2:	72 3e                	jb     100d22 <pmmap_merge+0xa3>
  100ce4:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100ce7:	8b 50 08             	mov    0x8(%eax),%edx
  100cea:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100ced:	8b 40 08             	mov    0x8(%eax),%eax
  100cf0:	39 c2                	cmp    %eax,%edx
  100cf2:	75 2e                	jne    100d22 <pmmap_merge+0xa3>
  100cf4:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100cf7:	8b 50 04             	mov    0x4(%eax),%edx
  100cfa:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100cfd:	8b 40 04             	mov    0x4(%eax),%eax
  100d00:	83 ec 08             	sub    $0x8,%esp
  100d03:	52                   	push   %edx
  100d04:	50                   	push   %eax
  100d05:	e8 c7 2a 00 00       	call   1037d1 <max>
  100d0a:	83 c4 10             	add    $0x10,%esp
  100d0d:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100d10:	89 42 04             	mov    %eax,0x4(%edx)
  100d13:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100d16:	8b 40 0c             	mov    0xc(%eax),%eax
  100d19:	8b 50 0c             	mov    0xc(%eax),%edx
  100d1c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100d1f:	89 50 0c             	mov    %edx,0xc(%eax)
  100d22:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100d25:	8b 40 0c             	mov    0xc(%eax),%eax
  100d28:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100d2b:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  100d2f:	75 87                	jne    100cb8 <pmmap_merge+0x39>
  100d31:	eb 01                	jmp    100d34 <pmmap_merge+0xb5>
  100d33:	90                   	nop
  100d34:	8b 83 70 70 00 00    	mov    0x7070(%ebx),%eax
  100d3a:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100d3d:	e9 cf 00 00 00       	jmp    100e11 <pmmap_merge+0x192>
  100d42:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100d45:	8b 40 08             	mov    0x8(%eax),%eax
  100d48:	83 f8 01             	cmp    $0x1,%eax
  100d4b:	74 3d                	je     100d8a <pmmap_merge+0x10b>
  100d4d:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100d50:	8b 40 08             	mov    0x8(%eax),%eax
  100d53:	83 f8 02             	cmp    $0x2,%eax
  100d56:	74 2b                	je     100d83 <pmmap_merge+0x104>
  100d58:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100d5b:	8b 40 08             	mov    0x8(%eax),%eax
  100d5e:	83 f8 03             	cmp    $0x3,%eax
  100d61:	74 19                	je     100d7c <pmmap_merge+0xfd>
  100d63:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100d66:	8b 40 08             	mov    0x8(%eax),%eax
  100d69:	83 f8 04             	cmp    $0x4,%eax
  100d6c:	75 07                	jne    100d75 <pmmap_merge+0xf6>
  100d6e:	b8 03 00 00 00       	mov    $0x3,%eax
  100d73:	eb 1a                	jmp    100d8f <pmmap_merge+0x110>
  100d75:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  100d7a:	eb 13                	jmp    100d8f <pmmap_merge+0x110>
  100d7c:	b8 02 00 00 00       	mov    $0x2,%eax
  100d81:	eb 0c                	jmp    100d8f <pmmap_merge+0x110>
  100d83:	b8 01 00 00 00       	mov    $0x1,%eax
  100d88:	eb 05                	jmp    100d8f <pmmap_merge+0x110>
  100d8a:	b8 00 00 00 00       	mov    $0x0,%eax
  100d8f:	89 45 ec             	mov    %eax,-0x14(%ebp)
  100d92:	83 7d ec ff          	cmpl   $0xffffffff,-0x14(%ebp)
  100d96:	75 1f                	jne    100db7 <pmmap_merge+0x138>
  100d98:	8d 83 a6 b0 ff ff    	lea    -0x4f5a(%ebx),%eax
  100d9e:	50                   	push   %eax
  100d9f:	8d 83 b7 b0 ff ff    	lea    -0x4f49(%ebx),%eax
  100da5:	50                   	push   %eax
  100da6:	6a 6b                	push   $0x6b
  100da8:	8d 83 95 b0 ff ff    	lea    -0x4f6b(%ebx),%eax
  100dae:	50                   	push   %eax
  100daf:	e8 a0 1d 00 00       	call   102b54 <debug_panic>
  100db4:	83 c4 10             	add    $0x10,%esp
  100db7:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100dba:	8b 44 85 dc          	mov    -0x24(%ebp,%eax,4),%eax
  100dbe:	85 c0                	test   %eax,%eax
  100dc0:	74 1f                	je     100de1 <pmmap_merge+0x162>
  100dc2:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100dc5:	8b 44 85 dc          	mov    -0x24(%ebp,%eax,4),%eax
  100dc9:	8b 50 10             	mov    0x10(%eax),%edx
  100dcc:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100dcf:	89 50 10             	mov    %edx,0x10(%eax)
  100dd2:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100dd5:	8b 44 85 dc          	mov    -0x24(%ebp,%eax,4),%eax
  100dd9:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100ddc:	89 50 10             	mov    %edx,0x10(%eax)
  100ddf:	eb 1d                	jmp    100dfe <pmmap_merge+0x17f>
  100de1:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100de4:	8b 94 83 74 70 00 00 	mov    0x7074(%ebx,%eax,4),%edx
  100deb:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100dee:	89 50 10             	mov    %edx,0x10(%eax)
  100df1:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100df4:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100df7:	89 94 83 74 70 00 00 	mov    %edx,0x7074(%ebx,%eax,4)
  100dfe:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100e01:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100e04:	89 54 85 dc          	mov    %edx,-0x24(%ebp,%eax,4)
  100e08:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100e0b:	8b 40 0c             	mov    0xc(%eax),%eax
  100e0e:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100e11:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  100e15:	0f 85 27 ff ff ff    	jne    100d42 <pmmap_merge+0xc3>
  100e1b:	8b 45 dc             	mov    -0x24(%ebp),%eax
  100e1e:	85 c0                	test   %eax,%eax
  100e20:	74 0c                	je     100e2e <pmmap_merge+0x1af>
  100e22:	8b 45 dc             	mov    -0x24(%ebp),%eax
  100e25:	8b 40 04             	mov    0x4(%eax),%eax
  100e28:	89 83 84 70 00 00    	mov    %eax,0x7084(%ebx)
  100e2e:	90                   	nop
  100e2f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100e32:	c9                   	leave
  100e33:	c3                   	ret

00100e34 <pmmap_dump>:
  100e34:	55                   	push   %ebp
  100e35:	89 e5                	mov    %esp,%ebp
  100e37:	53                   	push   %ebx
  100e38:	83 ec 14             	sub    $0x14,%esp
  100e3b:	e8 80 f5 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  100e40:	81 c3 b4 b1 00 00    	add    $0xb1b4,%ebx
  100e46:	8b 83 70 70 00 00    	mov    0x7070(%ebx),%eax
  100e4c:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100e4f:	e9 a5 00 00 00       	jmp    100ef9 <pmmap_dump+0xc5>
  100e54:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100e57:	8b 40 08             	mov    0x8(%eax),%eax
  100e5a:	83 f8 01             	cmp    $0x1,%eax
  100e5d:	74 41                	je     100ea0 <pmmap_dump+0x6c>
  100e5f:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100e62:	8b 40 08             	mov    0x8(%eax),%eax
  100e65:	83 f8 02             	cmp    $0x2,%eax
  100e68:	74 2e                	je     100e98 <pmmap_dump+0x64>
  100e6a:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100e6d:	8b 40 08             	mov    0x8(%eax),%eax
  100e70:	83 f8 03             	cmp    $0x3,%eax
  100e73:	74 1b                	je     100e90 <pmmap_dump+0x5c>
  100e75:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100e78:	8b 40 08             	mov    0x8(%eax),%eax
  100e7b:	83 f8 04             	cmp    $0x4,%eax
  100e7e:	75 08                	jne    100e88 <pmmap_dump+0x54>
  100e80:	8d 83 d4 b0 ff ff    	lea    -0x4f2c(%ebx),%eax
  100e86:	eb 1e                	jmp    100ea6 <pmmap_dump+0x72>
  100e88:	8d 83 dd b0 ff ff    	lea    -0x4f23(%ebx),%eax
  100e8e:	eb 16                	jmp    100ea6 <pmmap_dump+0x72>
  100e90:	8d 83 e5 b0 ff ff    	lea    -0x4f1b(%ebx),%eax
  100e96:	eb 0e                	jmp    100ea6 <pmmap_dump+0x72>
  100e98:	8d 83 ef b0 ff ff    	lea    -0x4f11(%ebx),%eax
  100e9e:	eb 06                	jmp    100ea6 <pmmap_dump+0x72>
  100ea0:	8d 83 f8 b0 ff ff    	lea    -0x4f08(%ebx),%eax
  100ea6:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100ea9:	8b 0a                	mov    (%edx),%ecx
  100eab:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100eae:	8b 52 04             	mov    0x4(%edx),%edx
  100eb1:	39 d1                	cmp    %edx,%ecx
  100eb3:	75 08                	jne    100ebd <pmmap_dump+0x89>
  100eb5:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100eb8:	8b 52 04             	mov    0x4(%edx),%edx
  100ebb:	eb 1c                	jmp    100ed9 <pmmap_dump+0xa5>
  100ebd:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100ec0:	8b 52 04             	mov    0x4(%edx),%edx
  100ec3:	83 fa ff             	cmp    $0xffffffff,%edx
  100ec6:	75 08                	jne    100ed0 <pmmap_dump+0x9c>
  100ec8:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100ecb:	8b 52 04             	mov    0x4(%edx),%edx
  100ece:	eb 09                	jmp    100ed9 <pmmap_dump+0xa5>
  100ed0:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100ed3:	8b 52 04             	mov    0x4(%edx),%edx
  100ed6:	83 ea 01             	sub    $0x1,%edx
  100ed9:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  100edc:	8b 09                	mov    (%ecx),%ecx
  100ede:	50                   	push   %eax
  100edf:	52                   	push   %edx
  100ee0:	51                   	push   %ecx
  100ee1:	8d 83 00 b1 ff ff    	lea    -0x4f00(%ebx),%eax
  100ee7:	50                   	push   %eax
  100ee8:	e8 7b 1b 00 00       	call   102a68 <debug_info>
  100eed:	83 c4 10             	add    $0x10,%esp
  100ef0:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100ef3:	8b 40 0c             	mov    0xc(%eax),%eax
  100ef6:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100ef9:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  100efd:	0f 85 51 ff ff ff    	jne    100e54 <pmmap_dump+0x20>
  100f03:	90                   	nop
  100f04:	90                   	nop
  100f05:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100f08:	c9                   	leave
  100f09:	c3                   	ret

00100f0a <pmmap_init>:
  100f0a:	55                   	push   %ebp
  100f0b:	89 e5                	mov    %esp,%ebp
  100f0d:	53                   	push   %ebx
  100f0e:	83 ec 24             	sub    $0x24,%esp
  100f11:	e8 aa f4 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  100f16:	81 c3 de b0 00 00    	add    $0xb0de,%ebx
  100f1c:	83 ec 0c             	sub    $0xc,%esp
  100f1f:	8d 83 21 b1 ff ff    	lea    -0x4edf(%ebx),%eax
  100f25:	50                   	push   %eax
  100f26:	e8 3d 1b 00 00       	call   102a68 <debug_info>
  100f2b:	83 c4 10             	add    $0x10,%esp
  100f2e:	8b 45 08             	mov    0x8(%ebp),%eax
  100f31:	89 45 e8             	mov    %eax,-0x18(%ebp)
  100f34:	8b 45 e8             	mov    -0x18(%ebp),%eax
  100f37:	8b 40 30             	mov    0x30(%eax),%eax
  100f3a:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100f3d:	c7 83 70 70 00 00 00 	movl   $0x0,0x7070(%ebx)
  100f44:	00 00 00 
  100f47:	c7 83 74 70 00 00 00 	movl   $0x0,0x7074(%ebx)
  100f4e:	00 00 00 
  100f51:	c7 83 78 70 00 00 00 	movl   $0x0,0x7078(%ebx)
  100f58:	00 00 00 
  100f5b:	c7 83 7c 70 00 00 00 	movl   $0x0,0x707c(%ebx)
  100f62:	00 00 00 
  100f65:	c7 83 80 70 00 00 00 	movl   $0x0,0x7080(%ebx)
  100f6c:	00 00 00 
  100f6f:	eb 6c                	jmp    100fdd <pmmap_init+0xd3>
  100f71:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100f74:	8b 40 08             	mov    0x8(%eax),%eax
  100f77:	85 c0                	test   %eax,%eax
  100f79:	75 58                	jne    100fd3 <pmmap_init+0xc9>
  100f7b:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100f7e:	8b 40 04             	mov    0x4(%eax),%eax
  100f81:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  100f84:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100f87:	8b 40 10             	mov    0x10(%eax),%eax
  100f8a:	85 c0                	test   %eax,%eax
  100f8c:	75 0f                	jne    100f9d <pmmap_init+0x93>
  100f8e:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100f91:	8b 50 0c             	mov    0xc(%eax),%edx
  100f94:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  100f97:	f7 d0                	not    %eax
  100f99:	39 c2                	cmp    %eax,%edx
  100f9b:	72 09                	jb     100fa6 <pmmap_init+0x9c>
  100f9d:	c7 45 f0 ff ff ff ff 	movl   $0xffffffff,-0x10(%ebp)
  100fa4:	eb 0e                	jmp    100fb4 <pmmap_init+0xaa>
  100fa6:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100fa9:	8b 50 0c             	mov    0xc(%eax),%edx
  100fac:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  100faf:	01 d0                	add    %edx,%eax
  100fb1:	89 45 f0             	mov    %eax,-0x10(%ebp)
  100fb4:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100fb7:	8b 40 14             	mov    0x14(%eax),%eax
  100fba:	89 45 e0             	mov    %eax,-0x20(%ebp)
  100fbd:	83 ec 04             	sub    $0x4,%esp
  100fc0:	ff 75 e0             	push   -0x20(%ebp)
  100fc3:	ff 75 f0             	push   -0x10(%ebp)
  100fc6:	ff 75 e4             	push   -0x1c(%ebp)
  100fc9:	e8 f0 fb ff ff       	call   100bbe <pmmap_insert>
  100fce:	83 c4 10             	add    $0x10,%esp
  100fd1:	eb 01                	jmp    100fd4 <pmmap_init+0xca>
  100fd3:	90                   	nop
  100fd4:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100fd7:	83 c0 18             	add    $0x18,%eax
  100fda:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100fdd:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100fe0:	8b 45 e8             	mov    -0x18(%ebp),%eax
  100fe3:	8b 40 30             	mov    0x30(%eax),%eax
  100fe6:	29 c2                	sub    %eax,%edx
  100fe8:	8b 45 e8             	mov    -0x18(%ebp),%eax
  100feb:	8b 40 2c             	mov    0x2c(%eax),%eax
  100fee:	39 c2                	cmp    %eax,%edx
  100ff0:	0f 82 7b ff ff ff    	jb     100f71 <pmmap_init+0x67>
  100ff6:	e8 84 fc ff ff       	call   100c7f <pmmap_merge>
  100ffb:	e8 34 fe ff ff       	call   100e34 <pmmap_dump>
  101000:	8b 83 70 70 00 00    	mov    0x7070(%ebx),%eax
  101006:	89 45 ec             	mov    %eax,-0x14(%ebp)
  101009:	eb 18                	jmp    101023 <pmmap_init+0x119>
  10100b:	8b 83 8c 70 00 00    	mov    0x708c(%ebx),%eax
  101011:	83 c0 01             	add    $0x1,%eax
  101014:	89 83 8c 70 00 00    	mov    %eax,0x708c(%ebx)
  10101a:	8b 45 ec             	mov    -0x14(%ebp),%eax
  10101d:	8b 40 0c             	mov    0xc(%eax),%eax
  101020:	89 45 ec             	mov    %eax,-0x14(%ebp)
  101023:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
  101027:	75 e2                	jne    10100b <pmmap_init+0x101>
  101029:	8b 83 84 70 00 00    	mov    0x7084(%ebx),%eax
  10102f:	83 ec 08             	sub    $0x8,%esp
  101032:	68 00 10 00 00       	push   $0x1000
  101037:	50                   	push   %eax
  101038:	e8 c8 27 00 00       	call   103805 <rounddown>
  10103d:	83 c4 10             	add    $0x10,%esp
  101040:	c1 e8 0c             	shr    $0xc,%eax
  101043:	89 83 88 70 00 00    	mov    %eax,0x7088(%ebx)
  101049:	90                   	nop
  10104a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10104d:	c9                   	leave
  10104e:	c3                   	ret

0010104f <get_size>:
  10104f:	55                   	push   %ebp
  101050:	89 e5                	mov    %esp,%ebp
  101052:	e8 61 f3 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  101057:	05 9d af 00 00       	add    $0xaf9d,%eax
  10105c:	8b 80 8c 70 00 00    	mov    0x708c(%eax),%eax
  101062:	5d                   	pop    %ebp
  101063:	c3                   	ret

00101064 <get_mms>:
  101064:	55                   	push   %ebp
  101065:	89 e5                	mov    %esp,%ebp
  101067:	83 ec 10             	sub    $0x10,%esp
  10106a:	e8 49 f3 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  10106f:	05 85 af 00 00       	add    $0xaf85,%eax
  101074:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  10107b:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  101082:	8b 90 70 70 00 00    	mov    0x7070(%eax),%edx
  101088:	89 55 f8             	mov    %edx,-0x8(%ebp)
  10108b:	eb 15                	jmp    1010a2 <get_mms+0x3e>
  10108d:	8b 55 fc             	mov    -0x4(%ebp),%edx
  101090:	3b 55 08             	cmp    0x8(%ebp),%edx
  101093:	74 15                	je     1010aa <get_mms+0x46>
  101095:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  101099:	8b 55 f8             	mov    -0x8(%ebp),%edx
  10109c:	8b 52 0c             	mov    0xc(%edx),%edx
  10109f:	89 55 f8             	mov    %edx,-0x8(%ebp)
  1010a2:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  1010a6:	75 e5                	jne    10108d <get_mms+0x29>
  1010a8:	eb 01                	jmp    1010ab <get_mms+0x47>
  1010aa:	90                   	nop
  1010ab:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  1010af:	74 0b                	je     1010bc <get_mms+0x58>
  1010b1:	8b 80 8c 70 00 00    	mov    0x708c(%eax),%eax
  1010b7:	39 45 fc             	cmp    %eax,-0x4(%ebp)
  1010ba:	75 07                	jne    1010c3 <get_mms+0x5f>
  1010bc:	b8 00 00 00 00       	mov    $0x0,%eax
  1010c1:	eb 05                	jmp    1010c8 <get_mms+0x64>
  1010c3:	8b 45 f8             	mov    -0x8(%ebp),%eax
  1010c6:	8b 00                	mov    (%eax),%eax
  1010c8:	c9                   	leave
  1010c9:	c3                   	ret

001010ca <get_mml>:
  1010ca:	55                   	push   %ebp
  1010cb:	89 e5                	mov    %esp,%ebp
  1010cd:	83 ec 10             	sub    $0x10,%esp
  1010d0:	e8 e3 f2 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1010d5:	05 1f af 00 00       	add    $0xaf1f,%eax
  1010da:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  1010e1:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  1010e8:	8b 90 70 70 00 00    	mov    0x7070(%eax),%edx
  1010ee:	89 55 f8             	mov    %edx,-0x8(%ebp)
  1010f1:	eb 15                	jmp    101108 <get_mml+0x3e>
  1010f3:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1010f6:	3b 55 08             	cmp    0x8(%ebp),%edx
  1010f9:	74 15                	je     101110 <get_mml+0x46>
  1010fb:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  1010ff:	8b 55 f8             	mov    -0x8(%ebp),%edx
  101102:	8b 52 0c             	mov    0xc(%edx),%edx
  101105:	89 55 f8             	mov    %edx,-0x8(%ebp)
  101108:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  10110c:	75 e5                	jne    1010f3 <get_mml+0x29>
  10110e:	eb 01                	jmp    101111 <get_mml+0x47>
  101110:	90                   	nop
  101111:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  101115:	74 0b                	je     101122 <get_mml+0x58>
  101117:	8b 80 8c 70 00 00    	mov    0x708c(%eax),%eax
  10111d:	39 45 fc             	cmp    %eax,-0x4(%ebp)
  101120:	75 07                	jne    101129 <get_mml+0x5f>
  101122:	ba 00 00 00 00       	mov    $0x0,%edx
  101127:	eb 0d                	jmp    101136 <get_mml+0x6c>
  101129:	8b 45 f8             	mov    -0x8(%ebp),%eax
  10112c:	8b 50 04             	mov    0x4(%eax),%edx
  10112f:	8b 45 f8             	mov    -0x8(%ebp),%eax
  101132:	8b 00                	mov    (%eax),%eax
  101134:	29 c2                	sub    %eax,%edx
  101136:	89 d0                	mov    %edx,%eax
  101138:	c9                   	leave
  101139:	c3                   	ret

0010113a <is_usable>:
  10113a:	55                   	push   %ebp
  10113b:	89 e5                	mov    %esp,%ebp
  10113d:	83 ec 10             	sub    $0x10,%esp
  101140:	e8 73 f2 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  101145:	05 af ae 00 00       	add    $0xaeaf,%eax
  10114a:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  101151:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  101158:	8b 90 70 70 00 00    	mov    0x7070(%eax),%edx
  10115e:	89 55 f8             	mov    %edx,-0x8(%ebp)
  101161:	eb 15                	jmp    101178 <is_usable+0x3e>
  101163:	8b 55 fc             	mov    -0x4(%ebp),%edx
  101166:	3b 55 08             	cmp    0x8(%ebp),%edx
  101169:	74 15                	je     101180 <is_usable+0x46>
  10116b:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  10116f:	8b 55 f8             	mov    -0x8(%ebp),%edx
  101172:	8b 52 0c             	mov    0xc(%edx),%edx
  101175:	89 55 f8             	mov    %edx,-0x8(%ebp)
  101178:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  10117c:	75 e5                	jne    101163 <is_usable+0x29>
  10117e:	eb 01                	jmp    101181 <is_usable+0x47>
  101180:	90                   	nop
  101181:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  101185:	74 0b                	je     101192 <is_usable+0x58>
  101187:	8b 80 8c 70 00 00    	mov    0x708c(%eax),%eax
  10118d:	39 45 fc             	cmp    %eax,-0x4(%ebp)
  101190:	75 07                	jne    101199 <is_usable+0x5f>
  101192:	b8 00 00 00 00       	mov    $0x0,%eax
  101197:	eb 0f                	jmp    1011a8 <is_usable+0x6e>
  101199:	8b 45 f8             	mov    -0x8(%ebp),%eax
  10119c:	8b 40 08             	mov    0x8(%eax),%eax
  10119f:	83 f8 01             	cmp    $0x1,%eax
  1011a2:	0f 94 c0             	sete   %al
  1011a5:	0f b6 c0             	movzbl %al,%eax
  1011a8:	c9                   	leave
  1011a9:	c3                   	ret

001011aa <set_cr3>:
  1011aa:	55                   	push   %ebp
  1011ab:	89 e5                	mov    %esp,%ebp
  1011ad:	53                   	push   %ebx
  1011ae:	83 ec 04             	sub    $0x4,%esp
  1011b1:	e8 02 f2 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1011b6:	05 3e ae 00 00       	add    $0xae3e,%eax
  1011bb:	8b 55 08             	mov    0x8(%ebp),%edx
  1011be:	83 ec 0c             	sub    $0xc,%esp
  1011c1:	52                   	push   %edx
  1011c2:	89 c3                	mov    %eax,%ebx
  1011c4:	e8 ba 28 00 00       	call   103a83 <lcr3>
  1011c9:	83 c4 10             	add    $0x10,%esp
  1011cc:	90                   	nop
  1011cd:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1011d0:	c9                   	leave
  1011d1:	c3                   	ret

001011d2 <enable_paging>:
  1011d2:	55                   	push   %ebp
  1011d3:	89 e5                	mov    %esp,%ebp
  1011d5:	53                   	push   %ebx
  1011d6:	83 ec 14             	sub    $0x14,%esp
  1011d9:	e8 e2 f1 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1011de:	81 c3 16 ae 00 00    	add    $0xae16,%ebx
  1011e4:	e8 c6 28 00 00       	call   103aaf <rcr4>
  1011e9:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1011ec:	81 4d f4 80 00 00 00 	orl    $0x80,-0xc(%ebp)
  1011f3:	83 ec 0c             	sub    $0xc,%esp
  1011f6:	ff 75 f4             	push   -0xc(%ebp)
  1011f9:	e8 9b 28 00 00       	call   103a99 <lcr4>
  1011fe:	83 c4 10             	add    $0x10,%esp
  101201:	e8 47 28 00 00       	call   103a4d <rcr0>
  101206:	89 45 f0             	mov    %eax,-0x10(%ebp)
  101209:	81 4d f0 23 00 05 80 	orl    $0x80050023,-0x10(%ebp)
  101210:	83 65 f0 f3          	andl   $0xfffffff3,-0x10(%ebp)
  101214:	83 ec 0c             	sub    $0xc,%esp
  101217:	ff 75 f0             	push   -0x10(%ebp)
  10121a:	e8 18 28 00 00       	call   103a37 <lcr0>
  10121f:	83 c4 10             	add    $0x10,%esp
  101222:	90                   	nop
  101223:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  101226:	c9                   	leave
  101227:	c3                   	ret

00101228 <intr_init_idt>:
  101228:	55                   	push   %ebp
  101229:	89 e5                	mov    %esp,%ebp
  10122b:	83 ec 10             	sub    $0x10,%esp
  10122e:	e8 85 f1 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  101233:	05 c1 ad 00 00       	add    $0xadc1,%eax
  101238:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  10123f:	e9 bb 00 00 00       	jmp    1012ff <intr_init_idt+0xd7>
  101244:	c7 c2 6e 27 10 00    	mov    $0x10276e,%edx
  10124a:	89 d1                	mov    %edx,%ecx
  10124c:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10124f:	66 89 8c d0 ac 70 00 	mov    %cx,0x70ac(%eax,%edx,8)
  101256:	00 
  101257:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10125a:	66 c7 84 d0 ae 70 00 	movw   $0x8,0x70ae(%eax,%edx,8)
  101261:	00 08 00 
  101264:	8b 55 fc             	mov    -0x4(%ebp),%edx
  101267:	0f b6 8c d0 b0 70 00 	movzbl 0x70b0(%eax,%edx,8),%ecx
  10126e:	00 
  10126f:	83 e1 e0             	and    $0xffffffe0,%ecx
  101272:	88 8c d0 b0 70 00 00 	mov    %cl,0x70b0(%eax,%edx,8)
  101279:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10127c:	0f b6 8c d0 b0 70 00 	movzbl 0x70b0(%eax,%edx,8),%ecx
  101283:	00 
  101284:	83 e1 1f             	and    $0x1f,%ecx
  101287:	88 8c d0 b0 70 00 00 	mov    %cl,0x70b0(%eax,%edx,8)
  10128e:	8b 55 fc             	mov    -0x4(%ebp),%edx
  101291:	0f b6 8c d0 b1 70 00 	movzbl 0x70b1(%eax,%edx,8),%ecx
  101298:	00 
  101299:	83 e1 f0             	and    $0xfffffff0,%ecx
  10129c:	83 c9 0e             	or     $0xe,%ecx
  10129f:	88 8c d0 b1 70 00 00 	mov    %cl,0x70b1(%eax,%edx,8)
  1012a6:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1012a9:	0f b6 8c d0 b1 70 00 	movzbl 0x70b1(%eax,%edx,8),%ecx
  1012b0:	00 
  1012b1:	83 e1 ef             	and    $0xffffffef,%ecx
  1012b4:	88 8c d0 b1 70 00 00 	mov    %cl,0x70b1(%eax,%edx,8)
  1012bb:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1012be:	0f b6 8c d0 b1 70 00 	movzbl 0x70b1(%eax,%edx,8),%ecx
  1012c5:	00 
  1012c6:	83 e1 9f             	and    $0xffffff9f,%ecx
  1012c9:	88 8c d0 b1 70 00 00 	mov    %cl,0x70b1(%eax,%edx,8)
  1012d0:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1012d3:	0f b6 8c d0 b1 70 00 	movzbl 0x70b1(%eax,%edx,8),%ecx
  1012da:	00 
  1012db:	83 c9 80             	or     $0xffffff80,%ecx
  1012de:	88 8c d0 b1 70 00 00 	mov    %cl,0x70b1(%eax,%edx,8)
  1012e5:	c7 c2 6e 27 10 00    	mov    $0x10276e,%edx
  1012eb:	c1 ea 10             	shr    $0x10,%edx
  1012ee:	89 d1                	mov    %edx,%ecx
  1012f0:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1012f3:	66 89 8c d0 b2 70 00 	mov    %cx,0x70b2(%eax,%edx,8)
  1012fa:	00 
  1012fb:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  1012ff:	8b 55 fc             	mov    -0x4(%ebp),%edx
  101302:	81 fa ff 00 00 00    	cmp    $0xff,%edx
  101308:	0f 86 36 ff ff ff    	jbe    101244 <intr_init_idt+0x1c>
  10130e:	c7 c2 10 26 10 00    	mov    $0x102610,%edx
  101314:	66 89 90 ac 70 00 00 	mov    %dx,0x70ac(%eax)
  10131b:	66 c7 80 ae 70 00 00 	movw   $0x8,0x70ae(%eax)
  101322:	08 00 
  101324:	0f b6 90 b0 70 00 00 	movzbl 0x70b0(%eax),%edx
  10132b:	83 e2 e0             	and    $0xffffffe0,%edx
  10132e:	88 90 b0 70 00 00    	mov    %dl,0x70b0(%eax)
  101334:	0f b6 90 b0 70 00 00 	movzbl 0x70b0(%eax),%edx
  10133b:	83 e2 1f             	and    $0x1f,%edx
  10133e:	88 90 b0 70 00 00    	mov    %dl,0x70b0(%eax)
  101344:	0f b6 90 b1 70 00 00 	movzbl 0x70b1(%eax),%edx
  10134b:	83 e2 f0             	and    $0xfffffff0,%edx
  10134e:	83 ca 0e             	or     $0xe,%edx
  101351:	88 90 b1 70 00 00    	mov    %dl,0x70b1(%eax)
  101357:	0f b6 90 b1 70 00 00 	movzbl 0x70b1(%eax),%edx
  10135e:	83 e2 ef             	and    $0xffffffef,%edx
  101361:	88 90 b1 70 00 00    	mov    %dl,0x70b1(%eax)
  101367:	0f b6 90 b1 70 00 00 	movzbl 0x70b1(%eax),%edx
  10136e:	83 e2 9f             	and    $0xffffff9f,%edx
  101371:	88 90 b1 70 00 00    	mov    %dl,0x70b1(%eax)
  101377:	0f b6 90 b1 70 00 00 	movzbl 0x70b1(%eax),%edx
  10137e:	83 ca 80             	or     $0xffffff80,%edx
  101381:	88 90 b1 70 00 00    	mov    %dl,0x70b1(%eax)
  101387:	c7 c2 10 26 10 00    	mov    $0x102610,%edx
  10138d:	c1 ea 10             	shr    $0x10,%edx
  101390:	66 89 90 b2 70 00 00 	mov    %dx,0x70b2(%eax)
  101397:	c7 c2 1a 26 10 00    	mov    $0x10261a,%edx
  10139d:	66 89 90 b4 70 00 00 	mov    %dx,0x70b4(%eax)
  1013a4:	66 c7 80 b6 70 00 00 	movw   $0x8,0x70b6(%eax)
  1013ab:	08 00 
  1013ad:	0f b6 90 b8 70 00 00 	movzbl 0x70b8(%eax),%edx
  1013b4:	83 e2 e0             	and    $0xffffffe0,%edx
  1013b7:	88 90 b8 70 00 00    	mov    %dl,0x70b8(%eax)
  1013bd:	0f b6 90 b8 70 00 00 	movzbl 0x70b8(%eax),%edx
  1013c4:	83 e2 1f             	and    $0x1f,%edx
  1013c7:	88 90 b8 70 00 00    	mov    %dl,0x70b8(%eax)
  1013cd:	0f b6 90 b9 70 00 00 	movzbl 0x70b9(%eax),%edx
  1013d4:	83 e2 f0             	and    $0xfffffff0,%edx
  1013d7:	83 ca 0e             	or     $0xe,%edx
  1013da:	88 90 b9 70 00 00    	mov    %dl,0x70b9(%eax)
  1013e0:	0f b6 90 b9 70 00 00 	movzbl 0x70b9(%eax),%edx
  1013e7:	83 e2 ef             	and    $0xffffffef,%edx
  1013ea:	88 90 b9 70 00 00    	mov    %dl,0x70b9(%eax)
  1013f0:	0f b6 90 b9 70 00 00 	movzbl 0x70b9(%eax),%edx
  1013f7:	83 e2 9f             	and    $0xffffff9f,%edx
  1013fa:	88 90 b9 70 00 00    	mov    %dl,0x70b9(%eax)
  101400:	0f b6 90 b9 70 00 00 	movzbl 0x70b9(%eax),%edx
  101407:	83 ca 80             	or     $0xffffff80,%edx
  10140a:	88 90 b9 70 00 00    	mov    %dl,0x70b9(%eax)
  101410:	c7 c2 1a 26 10 00    	mov    $0x10261a,%edx
  101416:	c1 ea 10             	shr    $0x10,%edx
  101419:	66 89 90 ba 70 00 00 	mov    %dx,0x70ba(%eax)
  101420:	c7 c2 24 26 10 00    	mov    $0x102624,%edx
  101426:	66 89 90 bc 70 00 00 	mov    %dx,0x70bc(%eax)
  10142d:	66 c7 80 be 70 00 00 	movw   $0x8,0x70be(%eax)
  101434:	08 00 
  101436:	0f b6 90 c0 70 00 00 	movzbl 0x70c0(%eax),%edx
  10143d:	83 e2 e0             	and    $0xffffffe0,%edx
  101440:	88 90 c0 70 00 00    	mov    %dl,0x70c0(%eax)
  101446:	0f b6 90 c0 70 00 00 	movzbl 0x70c0(%eax),%edx
  10144d:	83 e2 1f             	and    $0x1f,%edx
  101450:	88 90 c0 70 00 00    	mov    %dl,0x70c0(%eax)
  101456:	0f b6 90 c1 70 00 00 	movzbl 0x70c1(%eax),%edx
  10145d:	83 e2 f0             	and    $0xfffffff0,%edx
  101460:	83 ca 0e             	or     $0xe,%edx
  101463:	88 90 c1 70 00 00    	mov    %dl,0x70c1(%eax)
  101469:	0f b6 90 c1 70 00 00 	movzbl 0x70c1(%eax),%edx
  101470:	83 e2 ef             	and    $0xffffffef,%edx
  101473:	88 90 c1 70 00 00    	mov    %dl,0x70c1(%eax)
  101479:	0f b6 90 c1 70 00 00 	movzbl 0x70c1(%eax),%edx
  101480:	83 e2 9f             	and    $0xffffff9f,%edx
  101483:	88 90 c1 70 00 00    	mov    %dl,0x70c1(%eax)
  101489:	0f b6 90 c1 70 00 00 	movzbl 0x70c1(%eax),%edx
  101490:	83 ca 80             	or     $0xffffff80,%edx
  101493:	88 90 c1 70 00 00    	mov    %dl,0x70c1(%eax)
  101499:	c7 c2 24 26 10 00    	mov    $0x102624,%edx
  10149f:	c1 ea 10             	shr    $0x10,%edx
  1014a2:	66 89 90 c2 70 00 00 	mov    %dx,0x70c2(%eax)
  1014a9:	c7 c2 2e 26 10 00    	mov    $0x10262e,%edx
  1014af:	66 89 90 c4 70 00 00 	mov    %dx,0x70c4(%eax)
  1014b6:	66 c7 80 c6 70 00 00 	movw   $0x8,0x70c6(%eax)
  1014bd:	08 00 
  1014bf:	0f b6 90 c8 70 00 00 	movzbl 0x70c8(%eax),%edx
  1014c6:	83 e2 e0             	and    $0xffffffe0,%edx
  1014c9:	88 90 c8 70 00 00    	mov    %dl,0x70c8(%eax)
  1014cf:	0f b6 90 c8 70 00 00 	movzbl 0x70c8(%eax),%edx
  1014d6:	83 e2 1f             	and    $0x1f,%edx
  1014d9:	88 90 c8 70 00 00    	mov    %dl,0x70c8(%eax)
  1014df:	0f b6 90 c9 70 00 00 	movzbl 0x70c9(%eax),%edx
  1014e6:	83 e2 f0             	and    $0xfffffff0,%edx
  1014e9:	83 ca 0e             	or     $0xe,%edx
  1014ec:	88 90 c9 70 00 00    	mov    %dl,0x70c9(%eax)
  1014f2:	0f b6 90 c9 70 00 00 	movzbl 0x70c9(%eax),%edx
  1014f9:	83 e2 ef             	and    $0xffffffef,%edx
  1014fc:	88 90 c9 70 00 00    	mov    %dl,0x70c9(%eax)
  101502:	0f b6 90 c9 70 00 00 	movzbl 0x70c9(%eax),%edx
  101509:	83 ca 60             	or     $0x60,%edx
  10150c:	88 90 c9 70 00 00    	mov    %dl,0x70c9(%eax)
  101512:	0f b6 90 c9 70 00 00 	movzbl 0x70c9(%eax),%edx
  101519:	83 ca 80             	or     $0xffffff80,%edx
  10151c:	88 90 c9 70 00 00    	mov    %dl,0x70c9(%eax)
  101522:	c7 c2 2e 26 10 00    	mov    $0x10262e,%edx
  101528:	c1 ea 10             	shr    $0x10,%edx
  10152b:	66 89 90 ca 70 00 00 	mov    %dx,0x70ca(%eax)
  101532:	c7 c2 38 26 10 00    	mov    $0x102638,%edx
  101538:	66 89 90 cc 70 00 00 	mov    %dx,0x70cc(%eax)
  10153f:	66 c7 80 ce 70 00 00 	movw   $0x8,0x70ce(%eax)
  101546:	08 00 
  101548:	0f b6 90 d0 70 00 00 	movzbl 0x70d0(%eax),%edx
  10154f:	83 e2 e0             	and    $0xffffffe0,%edx
  101552:	88 90 d0 70 00 00    	mov    %dl,0x70d0(%eax)
  101558:	0f b6 90 d0 70 00 00 	movzbl 0x70d0(%eax),%edx
  10155f:	83 e2 1f             	and    $0x1f,%edx
  101562:	88 90 d0 70 00 00    	mov    %dl,0x70d0(%eax)
  101568:	0f b6 90 d1 70 00 00 	movzbl 0x70d1(%eax),%edx
  10156f:	83 e2 f0             	and    $0xfffffff0,%edx
  101572:	83 ca 0e             	or     $0xe,%edx
  101575:	88 90 d1 70 00 00    	mov    %dl,0x70d1(%eax)
  10157b:	0f b6 90 d1 70 00 00 	movzbl 0x70d1(%eax),%edx
  101582:	83 e2 ef             	and    $0xffffffef,%edx
  101585:	88 90 d1 70 00 00    	mov    %dl,0x70d1(%eax)
  10158b:	0f b6 90 d1 70 00 00 	movzbl 0x70d1(%eax),%edx
  101592:	83 ca 60             	or     $0x60,%edx
  101595:	88 90 d1 70 00 00    	mov    %dl,0x70d1(%eax)
  10159b:	0f b6 90 d1 70 00 00 	movzbl 0x70d1(%eax),%edx
  1015a2:	83 ca 80             	or     $0xffffff80,%edx
  1015a5:	88 90 d1 70 00 00    	mov    %dl,0x70d1(%eax)
  1015ab:	c7 c2 38 26 10 00    	mov    $0x102638,%edx
  1015b1:	c1 ea 10             	shr    $0x10,%edx
  1015b4:	66 89 90 d2 70 00 00 	mov    %dx,0x70d2(%eax)
  1015bb:	c7 c2 42 26 10 00    	mov    $0x102642,%edx
  1015c1:	66 89 90 d4 70 00 00 	mov    %dx,0x70d4(%eax)
  1015c8:	66 c7 80 d6 70 00 00 	movw   $0x8,0x70d6(%eax)
  1015cf:	08 00 
  1015d1:	0f b6 90 d8 70 00 00 	movzbl 0x70d8(%eax),%edx
  1015d8:	83 e2 e0             	and    $0xffffffe0,%edx
  1015db:	88 90 d8 70 00 00    	mov    %dl,0x70d8(%eax)
  1015e1:	0f b6 90 d8 70 00 00 	movzbl 0x70d8(%eax),%edx
  1015e8:	83 e2 1f             	and    $0x1f,%edx
  1015eb:	88 90 d8 70 00 00    	mov    %dl,0x70d8(%eax)
  1015f1:	0f b6 90 d9 70 00 00 	movzbl 0x70d9(%eax),%edx
  1015f8:	83 e2 f0             	and    $0xfffffff0,%edx
  1015fb:	83 ca 0e             	or     $0xe,%edx
  1015fe:	88 90 d9 70 00 00    	mov    %dl,0x70d9(%eax)
  101604:	0f b6 90 d9 70 00 00 	movzbl 0x70d9(%eax),%edx
  10160b:	83 e2 ef             	and    $0xffffffef,%edx
  10160e:	88 90 d9 70 00 00    	mov    %dl,0x70d9(%eax)
  101614:	0f b6 90 d9 70 00 00 	movzbl 0x70d9(%eax),%edx
  10161b:	83 e2 9f             	and    $0xffffff9f,%edx
  10161e:	88 90 d9 70 00 00    	mov    %dl,0x70d9(%eax)
  101624:	0f b6 90 d9 70 00 00 	movzbl 0x70d9(%eax),%edx
  10162b:	83 ca 80             	or     $0xffffff80,%edx
  10162e:	88 90 d9 70 00 00    	mov    %dl,0x70d9(%eax)
  101634:	c7 c2 42 26 10 00    	mov    $0x102642,%edx
  10163a:	c1 ea 10             	shr    $0x10,%edx
  10163d:	66 89 90 da 70 00 00 	mov    %dx,0x70da(%eax)
  101644:	c7 c2 4c 26 10 00    	mov    $0x10264c,%edx
  10164a:	66 89 90 dc 70 00 00 	mov    %dx,0x70dc(%eax)
  101651:	66 c7 80 de 70 00 00 	movw   $0x8,0x70de(%eax)
  101658:	08 00 
  10165a:	0f b6 90 e0 70 00 00 	movzbl 0x70e0(%eax),%edx
  101661:	83 e2 e0             	and    $0xffffffe0,%edx
  101664:	88 90 e0 70 00 00    	mov    %dl,0x70e0(%eax)
  10166a:	0f b6 90 e0 70 00 00 	movzbl 0x70e0(%eax),%edx
  101671:	83 e2 1f             	and    $0x1f,%edx
  101674:	88 90 e0 70 00 00    	mov    %dl,0x70e0(%eax)
  10167a:	0f b6 90 e1 70 00 00 	movzbl 0x70e1(%eax),%edx
  101681:	83 e2 f0             	and    $0xfffffff0,%edx
  101684:	83 ca 0e             	or     $0xe,%edx
  101687:	88 90 e1 70 00 00    	mov    %dl,0x70e1(%eax)
  10168d:	0f b6 90 e1 70 00 00 	movzbl 0x70e1(%eax),%edx
  101694:	83 e2 ef             	and    $0xffffffef,%edx
  101697:	88 90 e1 70 00 00    	mov    %dl,0x70e1(%eax)
  10169d:	0f b6 90 e1 70 00 00 	movzbl 0x70e1(%eax),%edx
  1016a4:	83 e2 9f             	and    $0xffffff9f,%edx
  1016a7:	88 90 e1 70 00 00    	mov    %dl,0x70e1(%eax)
  1016ad:	0f b6 90 e1 70 00 00 	movzbl 0x70e1(%eax),%edx
  1016b4:	83 ca 80             	or     $0xffffff80,%edx
  1016b7:	88 90 e1 70 00 00    	mov    %dl,0x70e1(%eax)
  1016bd:	c7 c2 4c 26 10 00    	mov    $0x10264c,%edx
  1016c3:	c1 ea 10             	shr    $0x10,%edx
  1016c6:	66 89 90 e2 70 00 00 	mov    %dx,0x70e2(%eax)
  1016cd:	c7 c2 56 26 10 00    	mov    $0x102656,%edx
  1016d3:	66 89 90 e4 70 00 00 	mov    %dx,0x70e4(%eax)
  1016da:	66 c7 80 e6 70 00 00 	movw   $0x8,0x70e6(%eax)
  1016e1:	08 00 
  1016e3:	0f b6 90 e8 70 00 00 	movzbl 0x70e8(%eax),%edx
  1016ea:	83 e2 e0             	and    $0xffffffe0,%edx
  1016ed:	88 90 e8 70 00 00    	mov    %dl,0x70e8(%eax)
  1016f3:	0f b6 90 e8 70 00 00 	movzbl 0x70e8(%eax),%edx
  1016fa:	83 e2 1f             	and    $0x1f,%edx
  1016fd:	88 90 e8 70 00 00    	mov    %dl,0x70e8(%eax)
  101703:	0f b6 90 e9 70 00 00 	movzbl 0x70e9(%eax),%edx
  10170a:	83 e2 f0             	and    $0xfffffff0,%edx
  10170d:	83 ca 0e             	or     $0xe,%edx
  101710:	88 90 e9 70 00 00    	mov    %dl,0x70e9(%eax)
  101716:	0f b6 90 e9 70 00 00 	movzbl 0x70e9(%eax),%edx
  10171d:	83 e2 ef             	and    $0xffffffef,%edx
  101720:	88 90 e9 70 00 00    	mov    %dl,0x70e9(%eax)
  101726:	0f b6 90 e9 70 00 00 	movzbl 0x70e9(%eax),%edx
  10172d:	83 e2 9f             	and    $0xffffff9f,%edx
  101730:	88 90 e9 70 00 00    	mov    %dl,0x70e9(%eax)
  101736:	0f b6 90 e9 70 00 00 	movzbl 0x70e9(%eax),%edx
  10173d:	83 ca 80             	or     $0xffffff80,%edx
  101740:	88 90 e9 70 00 00    	mov    %dl,0x70e9(%eax)
  101746:	c7 c2 56 26 10 00    	mov    $0x102656,%edx
  10174c:	c1 ea 10             	shr    $0x10,%edx
  10174f:	66 89 90 ea 70 00 00 	mov    %dx,0x70ea(%eax)
  101756:	c7 c2 60 26 10 00    	mov    $0x102660,%edx
  10175c:	66 89 90 ec 70 00 00 	mov    %dx,0x70ec(%eax)
  101763:	66 c7 80 ee 70 00 00 	movw   $0x8,0x70ee(%eax)
  10176a:	08 00 
  10176c:	0f b6 90 f0 70 00 00 	movzbl 0x70f0(%eax),%edx
  101773:	83 e2 e0             	and    $0xffffffe0,%edx
  101776:	88 90 f0 70 00 00    	mov    %dl,0x70f0(%eax)
  10177c:	0f b6 90 f0 70 00 00 	movzbl 0x70f0(%eax),%edx
  101783:	83 e2 1f             	and    $0x1f,%edx
  101786:	88 90 f0 70 00 00    	mov    %dl,0x70f0(%eax)
  10178c:	0f b6 90 f1 70 00 00 	movzbl 0x70f1(%eax),%edx
  101793:	83 e2 f0             	and    $0xfffffff0,%edx
  101796:	83 ca 0e             	or     $0xe,%edx
  101799:	88 90 f1 70 00 00    	mov    %dl,0x70f1(%eax)
  10179f:	0f b6 90 f1 70 00 00 	movzbl 0x70f1(%eax),%edx
  1017a6:	83 e2 ef             	and    $0xffffffef,%edx
  1017a9:	88 90 f1 70 00 00    	mov    %dl,0x70f1(%eax)
  1017af:	0f b6 90 f1 70 00 00 	movzbl 0x70f1(%eax),%edx
  1017b6:	83 e2 9f             	and    $0xffffff9f,%edx
  1017b9:	88 90 f1 70 00 00    	mov    %dl,0x70f1(%eax)
  1017bf:	0f b6 90 f1 70 00 00 	movzbl 0x70f1(%eax),%edx
  1017c6:	83 ca 80             	or     $0xffffff80,%edx
  1017c9:	88 90 f1 70 00 00    	mov    %dl,0x70f1(%eax)
  1017cf:	c7 c2 60 26 10 00    	mov    $0x102660,%edx
  1017d5:	c1 ea 10             	shr    $0x10,%edx
  1017d8:	66 89 90 f2 70 00 00 	mov    %dx,0x70f2(%eax)
  1017df:	c7 c2 72 26 10 00    	mov    $0x102672,%edx
  1017e5:	66 89 90 fc 70 00 00 	mov    %dx,0x70fc(%eax)
  1017ec:	66 c7 80 fe 70 00 00 	movw   $0x8,0x70fe(%eax)
  1017f3:	08 00 
  1017f5:	0f b6 90 00 71 00 00 	movzbl 0x7100(%eax),%edx
  1017fc:	83 e2 e0             	and    $0xffffffe0,%edx
  1017ff:	88 90 00 71 00 00    	mov    %dl,0x7100(%eax)
  101805:	0f b6 90 00 71 00 00 	movzbl 0x7100(%eax),%edx
  10180c:	83 e2 1f             	and    $0x1f,%edx
  10180f:	88 90 00 71 00 00    	mov    %dl,0x7100(%eax)
  101815:	0f b6 90 01 71 00 00 	movzbl 0x7101(%eax),%edx
  10181c:	83 e2 f0             	and    $0xfffffff0,%edx
  10181f:	83 ca 0e             	or     $0xe,%edx
  101822:	88 90 01 71 00 00    	mov    %dl,0x7101(%eax)
  101828:	0f b6 90 01 71 00 00 	movzbl 0x7101(%eax),%edx
  10182f:	83 e2 ef             	and    $0xffffffef,%edx
  101832:	88 90 01 71 00 00    	mov    %dl,0x7101(%eax)
  101838:	0f b6 90 01 71 00 00 	movzbl 0x7101(%eax),%edx
  10183f:	83 e2 9f             	and    $0xffffff9f,%edx
  101842:	88 90 01 71 00 00    	mov    %dl,0x7101(%eax)
  101848:	0f b6 90 01 71 00 00 	movzbl 0x7101(%eax),%edx
  10184f:	83 ca 80             	or     $0xffffff80,%edx
  101852:	88 90 01 71 00 00    	mov    %dl,0x7101(%eax)
  101858:	c7 c2 72 26 10 00    	mov    $0x102672,%edx
  10185e:	c1 ea 10             	shr    $0x10,%edx
  101861:	66 89 90 02 71 00 00 	mov    %dx,0x7102(%eax)
  101868:	c7 c2 7a 26 10 00    	mov    $0x10267a,%edx
  10186e:	66 89 90 04 71 00 00 	mov    %dx,0x7104(%eax)
  101875:	66 c7 80 06 71 00 00 	movw   $0x8,0x7106(%eax)
  10187c:	08 00 
  10187e:	0f b6 90 08 71 00 00 	movzbl 0x7108(%eax),%edx
  101885:	83 e2 e0             	and    $0xffffffe0,%edx
  101888:	88 90 08 71 00 00    	mov    %dl,0x7108(%eax)
  10188e:	0f b6 90 08 71 00 00 	movzbl 0x7108(%eax),%edx
  101895:	83 e2 1f             	and    $0x1f,%edx
  101898:	88 90 08 71 00 00    	mov    %dl,0x7108(%eax)
  10189e:	0f b6 90 09 71 00 00 	movzbl 0x7109(%eax),%edx
  1018a5:	83 e2 f0             	and    $0xfffffff0,%edx
  1018a8:	83 ca 0e             	or     $0xe,%edx
  1018ab:	88 90 09 71 00 00    	mov    %dl,0x7109(%eax)
  1018b1:	0f b6 90 09 71 00 00 	movzbl 0x7109(%eax),%edx
  1018b8:	83 e2 ef             	and    $0xffffffef,%edx
  1018bb:	88 90 09 71 00 00    	mov    %dl,0x7109(%eax)
  1018c1:	0f b6 90 09 71 00 00 	movzbl 0x7109(%eax),%edx
  1018c8:	83 e2 9f             	and    $0xffffff9f,%edx
  1018cb:	88 90 09 71 00 00    	mov    %dl,0x7109(%eax)
  1018d1:	0f b6 90 09 71 00 00 	movzbl 0x7109(%eax),%edx
  1018d8:	83 ca 80             	or     $0xffffff80,%edx
  1018db:	88 90 09 71 00 00    	mov    %dl,0x7109(%eax)
  1018e1:	c7 c2 7a 26 10 00    	mov    $0x10267a,%edx
  1018e7:	c1 ea 10             	shr    $0x10,%edx
  1018ea:	66 89 90 0a 71 00 00 	mov    %dx,0x710a(%eax)
  1018f1:	c7 c2 82 26 10 00    	mov    $0x102682,%edx
  1018f7:	66 89 90 0c 71 00 00 	mov    %dx,0x710c(%eax)
  1018fe:	66 c7 80 0e 71 00 00 	movw   $0x8,0x710e(%eax)
  101905:	08 00 
  101907:	0f b6 90 10 71 00 00 	movzbl 0x7110(%eax),%edx
  10190e:	83 e2 e0             	and    $0xffffffe0,%edx
  101911:	88 90 10 71 00 00    	mov    %dl,0x7110(%eax)
  101917:	0f b6 90 10 71 00 00 	movzbl 0x7110(%eax),%edx
  10191e:	83 e2 1f             	and    $0x1f,%edx
  101921:	88 90 10 71 00 00    	mov    %dl,0x7110(%eax)
  101927:	0f b6 90 11 71 00 00 	movzbl 0x7111(%eax),%edx
  10192e:	83 e2 f0             	and    $0xfffffff0,%edx
  101931:	83 ca 0e             	or     $0xe,%edx
  101934:	88 90 11 71 00 00    	mov    %dl,0x7111(%eax)
  10193a:	0f b6 90 11 71 00 00 	movzbl 0x7111(%eax),%edx
  101941:	83 e2 ef             	and    $0xffffffef,%edx
  101944:	88 90 11 71 00 00    	mov    %dl,0x7111(%eax)
  10194a:	0f b6 90 11 71 00 00 	movzbl 0x7111(%eax),%edx
  101951:	83 e2 9f             	and    $0xffffff9f,%edx
  101954:	88 90 11 71 00 00    	mov    %dl,0x7111(%eax)
  10195a:	0f b6 90 11 71 00 00 	movzbl 0x7111(%eax),%edx
  101961:	83 ca 80             	or     $0xffffff80,%edx
  101964:	88 90 11 71 00 00    	mov    %dl,0x7111(%eax)
  10196a:	c7 c2 82 26 10 00    	mov    $0x102682,%edx
  101970:	c1 ea 10             	shr    $0x10,%edx
  101973:	66 89 90 12 71 00 00 	mov    %dx,0x7112(%eax)
  10197a:	c7 c2 8a 26 10 00    	mov    $0x10268a,%edx
  101980:	66 89 90 14 71 00 00 	mov    %dx,0x7114(%eax)
  101987:	66 c7 80 16 71 00 00 	movw   $0x8,0x7116(%eax)
  10198e:	08 00 
  101990:	0f b6 90 18 71 00 00 	movzbl 0x7118(%eax),%edx
  101997:	83 e2 e0             	and    $0xffffffe0,%edx
  10199a:	88 90 18 71 00 00    	mov    %dl,0x7118(%eax)
  1019a0:	0f b6 90 18 71 00 00 	movzbl 0x7118(%eax),%edx
  1019a7:	83 e2 1f             	and    $0x1f,%edx
  1019aa:	88 90 18 71 00 00    	mov    %dl,0x7118(%eax)
  1019b0:	0f b6 90 19 71 00 00 	movzbl 0x7119(%eax),%edx
  1019b7:	83 e2 f0             	and    $0xfffffff0,%edx
  1019ba:	83 ca 0e             	or     $0xe,%edx
  1019bd:	88 90 19 71 00 00    	mov    %dl,0x7119(%eax)
  1019c3:	0f b6 90 19 71 00 00 	movzbl 0x7119(%eax),%edx
  1019ca:	83 e2 ef             	and    $0xffffffef,%edx
  1019cd:	88 90 19 71 00 00    	mov    %dl,0x7119(%eax)
  1019d3:	0f b6 90 19 71 00 00 	movzbl 0x7119(%eax),%edx
  1019da:	83 e2 9f             	and    $0xffffff9f,%edx
  1019dd:	88 90 19 71 00 00    	mov    %dl,0x7119(%eax)
  1019e3:	0f b6 90 19 71 00 00 	movzbl 0x7119(%eax),%edx
  1019ea:	83 ca 80             	or     $0xffffff80,%edx
  1019ed:	88 90 19 71 00 00    	mov    %dl,0x7119(%eax)
  1019f3:	c7 c2 8a 26 10 00    	mov    $0x10268a,%edx
  1019f9:	c1 ea 10             	shr    $0x10,%edx
  1019fc:	66 89 90 1a 71 00 00 	mov    %dx,0x711a(%eax)
  101a03:	c7 c2 92 26 10 00    	mov    $0x102692,%edx
  101a09:	66 89 90 1c 71 00 00 	mov    %dx,0x711c(%eax)
  101a10:	66 c7 80 1e 71 00 00 	movw   $0x8,0x711e(%eax)
  101a17:	08 00 
  101a19:	0f b6 90 20 71 00 00 	movzbl 0x7120(%eax),%edx
  101a20:	83 e2 e0             	and    $0xffffffe0,%edx
  101a23:	88 90 20 71 00 00    	mov    %dl,0x7120(%eax)
  101a29:	0f b6 90 20 71 00 00 	movzbl 0x7120(%eax),%edx
  101a30:	83 e2 1f             	and    $0x1f,%edx
  101a33:	88 90 20 71 00 00    	mov    %dl,0x7120(%eax)
  101a39:	0f b6 90 21 71 00 00 	movzbl 0x7121(%eax),%edx
  101a40:	83 e2 f0             	and    $0xfffffff0,%edx
  101a43:	83 ca 0e             	or     $0xe,%edx
  101a46:	88 90 21 71 00 00    	mov    %dl,0x7121(%eax)
  101a4c:	0f b6 90 21 71 00 00 	movzbl 0x7121(%eax),%edx
  101a53:	83 e2 ef             	and    $0xffffffef,%edx
  101a56:	88 90 21 71 00 00    	mov    %dl,0x7121(%eax)
  101a5c:	0f b6 90 21 71 00 00 	movzbl 0x7121(%eax),%edx
  101a63:	83 e2 9f             	and    $0xffffff9f,%edx
  101a66:	88 90 21 71 00 00    	mov    %dl,0x7121(%eax)
  101a6c:	0f b6 90 21 71 00 00 	movzbl 0x7121(%eax),%edx
  101a73:	83 ca 80             	or     $0xffffff80,%edx
  101a76:	88 90 21 71 00 00    	mov    %dl,0x7121(%eax)
  101a7c:	c7 c2 92 26 10 00    	mov    $0x102692,%edx
  101a82:	c1 ea 10             	shr    $0x10,%edx
  101a85:	66 89 90 22 71 00 00 	mov    %dx,0x7122(%eax)
  101a8c:	c7 c2 a4 26 10 00    	mov    $0x1026a4,%edx
  101a92:	66 89 90 2c 71 00 00 	mov    %dx,0x712c(%eax)
  101a99:	66 c7 80 2e 71 00 00 	movw   $0x8,0x712e(%eax)
  101aa0:	08 00 
  101aa2:	0f b6 90 30 71 00 00 	movzbl 0x7130(%eax),%edx
  101aa9:	83 e2 e0             	and    $0xffffffe0,%edx
  101aac:	88 90 30 71 00 00    	mov    %dl,0x7130(%eax)
  101ab2:	0f b6 90 30 71 00 00 	movzbl 0x7130(%eax),%edx
  101ab9:	83 e2 1f             	and    $0x1f,%edx
  101abc:	88 90 30 71 00 00    	mov    %dl,0x7130(%eax)
  101ac2:	0f b6 90 31 71 00 00 	movzbl 0x7131(%eax),%edx
  101ac9:	83 e2 f0             	and    $0xfffffff0,%edx
  101acc:	83 ca 0e             	or     $0xe,%edx
  101acf:	88 90 31 71 00 00    	mov    %dl,0x7131(%eax)
  101ad5:	0f b6 90 31 71 00 00 	movzbl 0x7131(%eax),%edx
  101adc:	83 e2 ef             	and    $0xffffffef,%edx
  101adf:	88 90 31 71 00 00    	mov    %dl,0x7131(%eax)
  101ae5:	0f b6 90 31 71 00 00 	movzbl 0x7131(%eax),%edx
  101aec:	83 e2 9f             	and    $0xffffff9f,%edx
  101aef:	88 90 31 71 00 00    	mov    %dl,0x7131(%eax)
  101af5:	0f b6 90 31 71 00 00 	movzbl 0x7131(%eax),%edx
  101afc:	83 ca 80             	or     $0xffffff80,%edx
  101aff:	88 90 31 71 00 00    	mov    %dl,0x7131(%eax)
  101b05:	c7 c2 a4 26 10 00    	mov    $0x1026a4,%edx
  101b0b:	c1 ea 10             	shr    $0x10,%edx
  101b0e:	66 89 90 32 71 00 00 	mov    %dx,0x7132(%eax)
  101b15:	c7 c2 ae 26 10 00    	mov    $0x1026ae,%edx
  101b1b:	66 89 90 34 71 00 00 	mov    %dx,0x7134(%eax)
  101b22:	66 c7 80 36 71 00 00 	movw   $0x8,0x7136(%eax)
  101b29:	08 00 
  101b2b:	0f b6 90 38 71 00 00 	movzbl 0x7138(%eax),%edx
  101b32:	83 e2 e0             	and    $0xffffffe0,%edx
  101b35:	88 90 38 71 00 00    	mov    %dl,0x7138(%eax)
  101b3b:	0f b6 90 38 71 00 00 	movzbl 0x7138(%eax),%edx
  101b42:	83 e2 1f             	and    $0x1f,%edx
  101b45:	88 90 38 71 00 00    	mov    %dl,0x7138(%eax)
  101b4b:	0f b6 90 39 71 00 00 	movzbl 0x7139(%eax),%edx
  101b52:	83 e2 f0             	and    $0xfffffff0,%edx
  101b55:	83 ca 0e             	or     $0xe,%edx
  101b58:	88 90 39 71 00 00    	mov    %dl,0x7139(%eax)
  101b5e:	0f b6 90 39 71 00 00 	movzbl 0x7139(%eax),%edx
  101b65:	83 e2 ef             	and    $0xffffffef,%edx
  101b68:	88 90 39 71 00 00    	mov    %dl,0x7139(%eax)
  101b6e:	0f b6 90 39 71 00 00 	movzbl 0x7139(%eax),%edx
  101b75:	83 e2 9f             	and    $0xffffff9f,%edx
  101b78:	88 90 39 71 00 00    	mov    %dl,0x7139(%eax)
  101b7e:	0f b6 90 39 71 00 00 	movzbl 0x7139(%eax),%edx
  101b85:	83 ca 80             	or     $0xffffff80,%edx
  101b88:	88 90 39 71 00 00    	mov    %dl,0x7139(%eax)
  101b8e:	c7 c2 ae 26 10 00    	mov    $0x1026ae,%edx
  101b94:	c1 ea 10             	shr    $0x10,%edx
  101b97:	66 89 90 3a 71 00 00 	mov    %dx,0x713a(%eax)
  101b9e:	c7 c2 b6 26 10 00    	mov    $0x1026b6,%edx
  101ba4:	66 89 90 3c 71 00 00 	mov    %dx,0x713c(%eax)
  101bab:	66 c7 80 3e 71 00 00 	movw   $0x8,0x713e(%eax)
  101bb2:	08 00 
  101bb4:	0f b6 90 40 71 00 00 	movzbl 0x7140(%eax),%edx
  101bbb:	83 e2 e0             	and    $0xffffffe0,%edx
  101bbe:	88 90 40 71 00 00    	mov    %dl,0x7140(%eax)
  101bc4:	0f b6 90 40 71 00 00 	movzbl 0x7140(%eax),%edx
  101bcb:	83 e2 1f             	and    $0x1f,%edx
  101bce:	88 90 40 71 00 00    	mov    %dl,0x7140(%eax)
  101bd4:	0f b6 90 41 71 00 00 	movzbl 0x7141(%eax),%edx
  101bdb:	83 e2 f0             	and    $0xfffffff0,%edx
  101bde:	83 ca 0e             	or     $0xe,%edx
  101be1:	88 90 41 71 00 00    	mov    %dl,0x7141(%eax)
  101be7:	0f b6 90 41 71 00 00 	movzbl 0x7141(%eax),%edx
  101bee:	83 e2 ef             	and    $0xffffffef,%edx
  101bf1:	88 90 41 71 00 00    	mov    %dl,0x7141(%eax)
  101bf7:	0f b6 90 41 71 00 00 	movzbl 0x7141(%eax),%edx
  101bfe:	83 e2 9f             	and    $0xffffff9f,%edx
  101c01:	88 90 41 71 00 00    	mov    %dl,0x7141(%eax)
  101c07:	0f b6 90 41 71 00 00 	movzbl 0x7141(%eax),%edx
  101c0e:	83 ca 80             	or     $0xffffff80,%edx
  101c11:	88 90 41 71 00 00    	mov    %dl,0x7141(%eax)
  101c17:	c7 c2 b6 26 10 00    	mov    $0x1026b6,%edx
  101c1d:	c1 ea 10             	shr    $0x10,%edx
  101c20:	66 89 90 42 71 00 00 	mov    %dx,0x7142(%eax)
  101c27:	c7 c2 c0 26 10 00    	mov    $0x1026c0,%edx
  101c2d:	66 89 90 ac 71 00 00 	mov    %dx,0x71ac(%eax)
  101c34:	66 c7 80 ae 71 00 00 	movw   $0x8,0x71ae(%eax)
  101c3b:	08 00 
  101c3d:	0f b6 90 b0 71 00 00 	movzbl 0x71b0(%eax),%edx
  101c44:	83 e2 e0             	and    $0xffffffe0,%edx
  101c47:	88 90 b0 71 00 00    	mov    %dl,0x71b0(%eax)
  101c4d:	0f b6 90 b0 71 00 00 	movzbl 0x71b0(%eax),%edx
  101c54:	83 e2 1f             	and    $0x1f,%edx
  101c57:	88 90 b0 71 00 00    	mov    %dl,0x71b0(%eax)
  101c5d:	0f b6 90 b1 71 00 00 	movzbl 0x71b1(%eax),%edx
  101c64:	83 e2 f0             	and    $0xfffffff0,%edx
  101c67:	83 ca 0e             	or     $0xe,%edx
  101c6a:	88 90 b1 71 00 00    	mov    %dl,0x71b1(%eax)
  101c70:	0f b6 90 b1 71 00 00 	movzbl 0x71b1(%eax),%edx
  101c77:	83 e2 ef             	and    $0xffffffef,%edx
  101c7a:	88 90 b1 71 00 00    	mov    %dl,0x71b1(%eax)
  101c80:	0f b6 90 b1 71 00 00 	movzbl 0x71b1(%eax),%edx
  101c87:	83 e2 9f             	and    $0xffffff9f,%edx
  101c8a:	88 90 b1 71 00 00    	mov    %dl,0x71b1(%eax)
  101c90:	0f b6 90 b1 71 00 00 	movzbl 0x71b1(%eax),%edx
  101c97:	83 ca 80             	or     $0xffffff80,%edx
  101c9a:	88 90 b1 71 00 00    	mov    %dl,0x71b1(%eax)
  101ca0:	c7 c2 c0 26 10 00    	mov    $0x1026c0,%edx
  101ca6:	c1 ea 10             	shr    $0x10,%edx
  101ca9:	66 89 90 b2 71 00 00 	mov    %dx,0x71b2(%eax)
  101cb0:	c7 c2 ca 26 10 00    	mov    $0x1026ca,%edx
  101cb6:	66 89 90 b4 71 00 00 	mov    %dx,0x71b4(%eax)
  101cbd:	66 c7 80 b6 71 00 00 	movw   $0x8,0x71b6(%eax)
  101cc4:	08 00 
  101cc6:	0f b6 90 b8 71 00 00 	movzbl 0x71b8(%eax),%edx
  101ccd:	83 e2 e0             	and    $0xffffffe0,%edx
  101cd0:	88 90 b8 71 00 00    	mov    %dl,0x71b8(%eax)
  101cd6:	0f b6 90 b8 71 00 00 	movzbl 0x71b8(%eax),%edx
  101cdd:	83 e2 1f             	and    $0x1f,%edx
  101ce0:	88 90 b8 71 00 00    	mov    %dl,0x71b8(%eax)
  101ce6:	0f b6 90 b9 71 00 00 	movzbl 0x71b9(%eax),%edx
  101ced:	83 e2 f0             	and    $0xfffffff0,%edx
  101cf0:	83 ca 0e             	or     $0xe,%edx
  101cf3:	88 90 b9 71 00 00    	mov    %dl,0x71b9(%eax)
  101cf9:	0f b6 90 b9 71 00 00 	movzbl 0x71b9(%eax),%edx
  101d00:	83 e2 ef             	and    $0xffffffef,%edx
  101d03:	88 90 b9 71 00 00    	mov    %dl,0x71b9(%eax)
  101d09:	0f b6 90 b9 71 00 00 	movzbl 0x71b9(%eax),%edx
  101d10:	83 e2 9f             	and    $0xffffff9f,%edx
  101d13:	88 90 b9 71 00 00    	mov    %dl,0x71b9(%eax)
  101d19:	0f b6 90 b9 71 00 00 	movzbl 0x71b9(%eax),%edx
  101d20:	83 ca 80             	or     $0xffffff80,%edx
  101d23:	88 90 b9 71 00 00    	mov    %dl,0x71b9(%eax)
  101d29:	c7 c2 ca 26 10 00    	mov    $0x1026ca,%edx
  101d2f:	c1 ea 10             	shr    $0x10,%edx
  101d32:	66 89 90 ba 71 00 00 	mov    %dx,0x71ba(%eax)
  101d39:	c7 c2 d4 26 10 00    	mov    $0x1026d4,%edx
  101d3f:	66 89 90 bc 71 00 00 	mov    %dx,0x71bc(%eax)
  101d46:	66 c7 80 be 71 00 00 	movw   $0x8,0x71be(%eax)
  101d4d:	08 00 
  101d4f:	0f b6 90 c0 71 00 00 	movzbl 0x71c0(%eax),%edx
  101d56:	83 e2 e0             	and    $0xffffffe0,%edx
  101d59:	88 90 c0 71 00 00    	mov    %dl,0x71c0(%eax)
  101d5f:	0f b6 90 c0 71 00 00 	movzbl 0x71c0(%eax),%edx
  101d66:	83 e2 1f             	and    $0x1f,%edx
  101d69:	88 90 c0 71 00 00    	mov    %dl,0x71c0(%eax)
  101d6f:	0f b6 90 c1 71 00 00 	movzbl 0x71c1(%eax),%edx
  101d76:	83 e2 f0             	and    $0xfffffff0,%edx
  101d79:	83 ca 0e             	or     $0xe,%edx
  101d7c:	88 90 c1 71 00 00    	mov    %dl,0x71c1(%eax)
  101d82:	0f b6 90 c1 71 00 00 	movzbl 0x71c1(%eax),%edx
  101d89:	83 e2 ef             	and    $0xffffffef,%edx
  101d8c:	88 90 c1 71 00 00    	mov    %dl,0x71c1(%eax)
  101d92:	0f b6 90 c1 71 00 00 	movzbl 0x71c1(%eax),%edx
  101d99:	83 e2 9f             	and    $0xffffff9f,%edx
  101d9c:	88 90 c1 71 00 00    	mov    %dl,0x71c1(%eax)
  101da2:	0f b6 90 c1 71 00 00 	movzbl 0x71c1(%eax),%edx
  101da9:	83 ca 80             	or     $0xffffff80,%edx
  101dac:	88 90 c1 71 00 00    	mov    %dl,0x71c1(%eax)
  101db2:	c7 c2 d4 26 10 00    	mov    $0x1026d4,%edx
  101db8:	c1 ea 10             	shr    $0x10,%edx
  101dbb:	66 89 90 c2 71 00 00 	mov    %dx,0x71c2(%eax)
  101dc2:	c7 c2 de 26 10 00    	mov    $0x1026de,%edx
  101dc8:	66 89 90 c4 71 00 00 	mov    %dx,0x71c4(%eax)
  101dcf:	66 c7 80 c6 71 00 00 	movw   $0x8,0x71c6(%eax)
  101dd6:	08 00 
  101dd8:	0f b6 90 c8 71 00 00 	movzbl 0x71c8(%eax),%edx
  101ddf:	83 e2 e0             	and    $0xffffffe0,%edx
  101de2:	88 90 c8 71 00 00    	mov    %dl,0x71c8(%eax)
  101de8:	0f b6 90 c8 71 00 00 	movzbl 0x71c8(%eax),%edx
  101def:	83 e2 1f             	and    $0x1f,%edx
  101df2:	88 90 c8 71 00 00    	mov    %dl,0x71c8(%eax)
  101df8:	0f b6 90 c9 71 00 00 	movzbl 0x71c9(%eax),%edx
  101dff:	83 e2 f0             	and    $0xfffffff0,%edx
  101e02:	83 ca 0e             	or     $0xe,%edx
  101e05:	88 90 c9 71 00 00    	mov    %dl,0x71c9(%eax)
  101e0b:	0f b6 90 c9 71 00 00 	movzbl 0x71c9(%eax),%edx
  101e12:	83 e2 ef             	and    $0xffffffef,%edx
  101e15:	88 90 c9 71 00 00    	mov    %dl,0x71c9(%eax)
  101e1b:	0f b6 90 c9 71 00 00 	movzbl 0x71c9(%eax),%edx
  101e22:	83 e2 9f             	and    $0xffffff9f,%edx
  101e25:	88 90 c9 71 00 00    	mov    %dl,0x71c9(%eax)
  101e2b:	0f b6 90 c9 71 00 00 	movzbl 0x71c9(%eax),%edx
  101e32:	83 ca 80             	or     $0xffffff80,%edx
  101e35:	88 90 c9 71 00 00    	mov    %dl,0x71c9(%eax)
  101e3b:	c7 c2 de 26 10 00    	mov    $0x1026de,%edx
  101e41:	c1 ea 10             	shr    $0x10,%edx
  101e44:	66 89 90 ca 71 00 00 	mov    %dx,0x71ca(%eax)
  101e4b:	c7 c2 e8 26 10 00    	mov    $0x1026e8,%edx
  101e51:	66 89 90 cc 71 00 00 	mov    %dx,0x71cc(%eax)
  101e58:	66 c7 80 ce 71 00 00 	movw   $0x8,0x71ce(%eax)
  101e5f:	08 00 
  101e61:	0f b6 90 d0 71 00 00 	movzbl 0x71d0(%eax),%edx
  101e68:	83 e2 e0             	and    $0xffffffe0,%edx
  101e6b:	88 90 d0 71 00 00    	mov    %dl,0x71d0(%eax)
  101e71:	0f b6 90 d0 71 00 00 	movzbl 0x71d0(%eax),%edx
  101e78:	83 e2 1f             	and    $0x1f,%edx
  101e7b:	88 90 d0 71 00 00    	mov    %dl,0x71d0(%eax)
  101e81:	0f b6 90 d1 71 00 00 	movzbl 0x71d1(%eax),%edx
  101e88:	83 e2 f0             	and    $0xfffffff0,%edx
  101e8b:	83 ca 0e             	or     $0xe,%edx
  101e8e:	88 90 d1 71 00 00    	mov    %dl,0x71d1(%eax)
  101e94:	0f b6 90 d1 71 00 00 	movzbl 0x71d1(%eax),%edx
  101e9b:	83 e2 ef             	and    $0xffffffef,%edx
  101e9e:	88 90 d1 71 00 00    	mov    %dl,0x71d1(%eax)
  101ea4:	0f b6 90 d1 71 00 00 	movzbl 0x71d1(%eax),%edx
  101eab:	83 e2 9f             	and    $0xffffff9f,%edx
  101eae:	88 90 d1 71 00 00    	mov    %dl,0x71d1(%eax)
  101eb4:	0f b6 90 d1 71 00 00 	movzbl 0x71d1(%eax),%edx
  101ebb:	83 ca 80             	or     $0xffffff80,%edx
  101ebe:	88 90 d1 71 00 00    	mov    %dl,0x71d1(%eax)
  101ec4:	c7 c2 e8 26 10 00    	mov    $0x1026e8,%edx
  101eca:	c1 ea 10             	shr    $0x10,%edx
  101ecd:	66 89 90 d2 71 00 00 	mov    %dx,0x71d2(%eax)
  101ed4:	c7 c2 f2 26 10 00    	mov    $0x1026f2,%edx
  101eda:	66 89 90 d4 71 00 00 	mov    %dx,0x71d4(%eax)
  101ee1:	66 c7 80 d6 71 00 00 	movw   $0x8,0x71d6(%eax)
  101ee8:	08 00 
  101eea:	0f b6 90 d8 71 00 00 	movzbl 0x71d8(%eax),%edx
  101ef1:	83 e2 e0             	and    $0xffffffe0,%edx
  101ef4:	88 90 d8 71 00 00    	mov    %dl,0x71d8(%eax)
  101efa:	0f b6 90 d8 71 00 00 	movzbl 0x71d8(%eax),%edx
  101f01:	83 e2 1f             	and    $0x1f,%edx
  101f04:	88 90 d8 71 00 00    	mov    %dl,0x71d8(%eax)
  101f0a:	0f b6 90 d9 71 00 00 	movzbl 0x71d9(%eax),%edx
  101f11:	83 e2 f0             	and    $0xfffffff0,%edx
  101f14:	83 ca 0e             	or     $0xe,%edx
  101f17:	88 90 d9 71 00 00    	mov    %dl,0x71d9(%eax)
  101f1d:	0f b6 90 d9 71 00 00 	movzbl 0x71d9(%eax),%edx
  101f24:	83 e2 ef             	and    $0xffffffef,%edx
  101f27:	88 90 d9 71 00 00    	mov    %dl,0x71d9(%eax)
  101f2d:	0f b6 90 d9 71 00 00 	movzbl 0x71d9(%eax),%edx
  101f34:	83 e2 9f             	and    $0xffffff9f,%edx
  101f37:	88 90 d9 71 00 00    	mov    %dl,0x71d9(%eax)
  101f3d:	0f b6 90 d9 71 00 00 	movzbl 0x71d9(%eax),%edx
  101f44:	83 ca 80             	or     $0xffffff80,%edx
  101f47:	88 90 d9 71 00 00    	mov    %dl,0x71d9(%eax)
  101f4d:	c7 c2 f2 26 10 00    	mov    $0x1026f2,%edx
  101f53:	c1 ea 10             	shr    $0x10,%edx
  101f56:	66 89 90 da 71 00 00 	mov    %dx,0x71da(%eax)
  101f5d:	c7 c2 fc 26 10 00    	mov    $0x1026fc,%edx
  101f63:	66 89 90 dc 71 00 00 	mov    %dx,0x71dc(%eax)
  101f6a:	66 c7 80 de 71 00 00 	movw   $0x8,0x71de(%eax)
  101f71:	08 00 
  101f73:	0f b6 90 e0 71 00 00 	movzbl 0x71e0(%eax),%edx
  101f7a:	83 e2 e0             	and    $0xffffffe0,%edx
  101f7d:	88 90 e0 71 00 00    	mov    %dl,0x71e0(%eax)
  101f83:	0f b6 90 e0 71 00 00 	movzbl 0x71e0(%eax),%edx
  101f8a:	83 e2 1f             	and    $0x1f,%edx
  101f8d:	88 90 e0 71 00 00    	mov    %dl,0x71e0(%eax)
  101f93:	0f b6 90 e1 71 00 00 	movzbl 0x71e1(%eax),%edx
  101f9a:	83 e2 f0             	and    $0xfffffff0,%edx
  101f9d:	83 ca 0e             	or     $0xe,%edx
  101fa0:	88 90 e1 71 00 00    	mov    %dl,0x71e1(%eax)
  101fa6:	0f b6 90 e1 71 00 00 	movzbl 0x71e1(%eax),%edx
  101fad:	83 e2 ef             	and    $0xffffffef,%edx
  101fb0:	88 90 e1 71 00 00    	mov    %dl,0x71e1(%eax)
  101fb6:	0f b6 90 e1 71 00 00 	movzbl 0x71e1(%eax),%edx
  101fbd:	83 e2 9f             	and    $0xffffff9f,%edx
  101fc0:	88 90 e1 71 00 00    	mov    %dl,0x71e1(%eax)
  101fc6:	0f b6 90 e1 71 00 00 	movzbl 0x71e1(%eax),%edx
  101fcd:	83 ca 80             	or     $0xffffff80,%edx
  101fd0:	88 90 e1 71 00 00    	mov    %dl,0x71e1(%eax)
  101fd6:	c7 c2 fc 26 10 00    	mov    $0x1026fc,%edx
  101fdc:	c1 ea 10             	shr    $0x10,%edx
  101fdf:	66 89 90 e2 71 00 00 	mov    %dx,0x71e2(%eax)
  101fe6:	c7 c2 02 27 10 00    	mov    $0x102702,%edx
  101fec:	66 89 90 e4 71 00 00 	mov    %dx,0x71e4(%eax)
  101ff3:	66 c7 80 e6 71 00 00 	movw   $0x8,0x71e6(%eax)
  101ffa:	08 00 
  101ffc:	0f b6 90 e8 71 00 00 	movzbl 0x71e8(%eax),%edx
  102003:	83 e2 e0             	and    $0xffffffe0,%edx
  102006:	88 90 e8 71 00 00    	mov    %dl,0x71e8(%eax)
  10200c:	0f b6 90 e8 71 00 00 	movzbl 0x71e8(%eax),%edx
  102013:	83 e2 1f             	and    $0x1f,%edx
  102016:	88 90 e8 71 00 00    	mov    %dl,0x71e8(%eax)
  10201c:	0f b6 90 e9 71 00 00 	movzbl 0x71e9(%eax),%edx
  102023:	83 e2 f0             	and    $0xfffffff0,%edx
  102026:	83 ca 0e             	or     $0xe,%edx
  102029:	88 90 e9 71 00 00    	mov    %dl,0x71e9(%eax)
  10202f:	0f b6 90 e9 71 00 00 	movzbl 0x71e9(%eax),%edx
  102036:	83 e2 ef             	and    $0xffffffef,%edx
  102039:	88 90 e9 71 00 00    	mov    %dl,0x71e9(%eax)
  10203f:	0f b6 90 e9 71 00 00 	movzbl 0x71e9(%eax),%edx
  102046:	83 e2 9f             	and    $0xffffff9f,%edx
  102049:	88 90 e9 71 00 00    	mov    %dl,0x71e9(%eax)
  10204f:	0f b6 90 e9 71 00 00 	movzbl 0x71e9(%eax),%edx
  102056:	83 ca 80             	or     $0xffffff80,%edx
  102059:	88 90 e9 71 00 00    	mov    %dl,0x71e9(%eax)
  10205f:	c7 c2 02 27 10 00    	mov    $0x102702,%edx
  102065:	c1 ea 10             	shr    $0x10,%edx
  102068:	66 89 90 ea 71 00 00 	mov    %dx,0x71ea(%eax)
  10206f:	c7 c2 08 27 10 00    	mov    $0x102708,%edx
  102075:	66 89 90 ec 71 00 00 	mov    %dx,0x71ec(%eax)
  10207c:	66 c7 80 ee 71 00 00 	movw   $0x8,0x71ee(%eax)
  102083:	08 00 
  102085:	0f b6 90 f0 71 00 00 	movzbl 0x71f0(%eax),%edx
  10208c:	83 e2 e0             	and    $0xffffffe0,%edx
  10208f:	88 90 f0 71 00 00    	mov    %dl,0x71f0(%eax)
  102095:	0f b6 90 f0 71 00 00 	movzbl 0x71f0(%eax),%edx
  10209c:	83 e2 1f             	and    $0x1f,%edx
  10209f:	88 90 f0 71 00 00    	mov    %dl,0x71f0(%eax)
  1020a5:	0f b6 90 f1 71 00 00 	movzbl 0x71f1(%eax),%edx
  1020ac:	83 e2 f0             	and    $0xfffffff0,%edx
  1020af:	83 ca 0e             	or     $0xe,%edx
  1020b2:	88 90 f1 71 00 00    	mov    %dl,0x71f1(%eax)
  1020b8:	0f b6 90 f1 71 00 00 	movzbl 0x71f1(%eax),%edx
  1020bf:	83 e2 ef             	and    $0xffffffef,%edx
  1020c2:	88 90 f1 71 00 00    	mov    %dl,0x71f1(%eax)
  1020c8:	0f b6 90 f1 71 00 00 	movzbl 0x71f1(%eax),%edx
  1020cf:	83 e2 9f             	and    $0xffffff9f,%edx
  1020d2:	88 90 f1 71 00 00    	mov    %dl,0x71f1(%eax)
  1020d8:	0f b6 90 f1 71 00 00 	movzbl 0x71f1(%eax),%edx
  1020df:	83 ca 80             	or     $0xffffff80,%edx
  1020e2:	88 90 f1 71 00 00    	mov    %dl,0x71f1(%eax)
  1020e8:	c7 c2 08 27 10 00    	mov    $0x102708,%edx
  1020ee:	c1 ea 10             	shr    $0x10,%edx
  1020f1:	66 89 90 f2 71 00 00 	mov    %dx,0x71f2(%eax)
  1020f8:	c7 c2 0e 27 10 00    	mov    $0x10270e,%edx
  1020fe:	66 89 90 f4 71 00 00 	mov    %dx,0x71f4(%eax)
  102105:	66 c7 80 f6 71 00 00 	movw   $0x8,0x71f6(%eax)
  10210c:	08 00 
  10210e:	0f b6 90 f8 71 00 00 	movzbl 0x71f8(%eax),%edx
  102115:	83 e2 e0             	and    $0xffffffe0,%edx
  102118:	88 90 f8 71 00 00    	mov    %dl,0x71f8(%eax)
  10211e:	0f b6 90 f8 71 00 00 	movzbl 0x71f8(%eax),%edx
  102125:	83 e2 1f             	and    $0x1f,%edx
  102128:	88 90 f8 71 00 00    	mov    %dl,0x71f8(%eax)
  10212e:	0f b6 90 f9 71 00 00 	movzbl 0x71f9(%eax),%edx
  102135:	83 e2 f0             	and    $0xfffffff0,%edx
  102138:	83 ca 0e             	or     $0xe,%edx
  10213b:	88 90 f9 71 00 00    	mov    %dl,0x71f9(%eax)
  102141:	0f b6 90 f9 71 00 00 	movzbl 0x71f9(%eax),%edx
  102148:	83 e2 ef             	and    $0xffffffef,%edx
  10214b:	88 90 f9 71 00 00    	mov    %dl,0x71f9(%eax)
  102151:	0f b6 90 f9 71 00 00 	movzbl 0x71f9(%eax),%edx
  102158:	83 e2 9f             	and    $0xffffff9f,%edx
  10215b:	88 90 f9 71 00 00    	mov    %dl,0x71f9(%eax)
  102161:	0f b6 90 f9 71 00 00 	movzbl 0x71f9(%eax),%edx
  102168:	83 ca 80             	or     $0xffffff80,%edx
  10216b:	88 90 f9 71 00 00    	mov    %dl,0x71f9(%eax)
  102171:	c7 c2 0e 27 10 00    	mov    $0x10270e,%edx
  102177:	c1 ea 10             	shr    $0x10,%edx
  10217a:	66 89 90 fa 71 00 00 	mov    %dx,0x71fa(%eax)
  102181:	c7 c2 14 27 10 00    	mov    $0x102714,%edx
  102187:	66 89 90 fc 71 00 00 	mov    %dx,0x71fc(%eax)
  10218e:	66 c7 80 fe 71 00 00 	movw   $0x8,0x71fe(%eax)
  102195:	08 00 
  102197:	0f b6 90 00 72 00 00 	movzbl 0x7200(%eax),%edx
  10219e:	83 e2 e0             	and    $0xffffffe0,%edx
  1021a1:	88 90 00 72 00 00    	mov    %dl,0x7200(%eax)
  1021a7:	0f b6 90 00 72 00 00 	movzbl 0x7200(%eax),%edx
  1021ae:	83 e2 1f             	and    $0x1f,%edx
  1021b1:	88 90 00 72 00 00    	mov    %dl,0x7200(%eax)
  1021b7:	0f b6 90 01 72 00 00 	movzbl 0x7201(%eax),%edx
  1021be:	83 e2 f0             	and    $0xfffffff0,%edx
  1021c1:	83 ca 0e             	or     $0xe,%edx
  1021c4:	88 90 01 72 00 00    	mov    %dl,0x7201(%eax)
  1021ca:	0f b6 90 01 72 00 00 	movzbl 0x7201(%eax),%edx
  1021d1:	83 e2 ef             	and    $0xffffffef,%edx
  1021d4:	88 90 01 72 00 00    	mov    %dl,0x7201(%eax)
  1021da:	0f b6 90 01 72 00 00 	movzbl 0x7201(%eax),%edx
  1021e1:	83 e2 9f             	and    $0xffffff9f,%edx
  1021e4:	88 90 01 72 00 00    	mov    %dl,0x7201(%eax)
  1021ea:	0f b6 90 01 72 00 00 	movzbl 0x7201(%eax),%edx
  1021f1:	83 ca 80             	or     $0xffffff80,%edx
  1021f4:	88 90 01 72 00 00    	mov    %dl,0x7201(%eax)
  1021fa:	c7 c2 14 27 10 00    	mov    $0x102714,%edx
  102200:	c1 ea 10             	shr    $0x10,%edx
  102203:	66 89 90 02 72 00 00 	mov    %dx,0x7202(%eax)
  10220a:	c7 c2 1a 27 10 00    	mov    $0x10271a,%edx
  102210:	66 89 90 04 72 00 00 	mov    %dx,0x7204(%eax)
  102217:	66 c7 80 06 72 00 00 	movw   $0x8,0x7206(%eax)
  10221e:	08 00 
  102220:	0f b6 90 08 72 00 00 	movzbl 0x7208(%eax),%edx
  102227:	83 e2 e0             	and    $0xffffffe0,%edx
  10222a:	88 90 08 72 00 00    	mov    %dl,0x7208(%eax)
  102230:	0f b6 90 08 72 00 00 	movzbl 0x7208(%eax),%edx
  102237:	83 e2 1f             	and    $0x1f,%edx
  10223a:	88 90 08 72 00 00    	mov    %dl,0x7208(%eax)
  102240:	0f b6 90 09 72 00 00 	movzbl 0x7209(%eax),%edx
  102247:	83 e2 f0             	and    $0xfffffff0,%edx
  10224a:	83 ca 0e             	or     $0xe,%edx
  10224d:	88 90 09 72 00 00    	mov    %dl,0x7209(%eax)
  102253:	0f b6 90 09 72 00 00 	movzbl 0x7209(%eax),%edx
  10225a:	83 e2 ef             	and    $0xffffffef,%edx
  10225d:	88 90 09 72 00 00    	mov    %dl,0x7209(%eax)
  102263:	0f b6 90 09 72 00 00 	movzbl 0x7209(%eax),%edx
  10226a:	83 e2 9f             	and    $0xffffff9f,%edx
  10226d:	88 90 09 72 00 00    	mov    %dl,0x7209(%eax)
  102273:	0f b6 90 09 72 00 00 	movzbl 0x7209(%eax),%edx
  10227a:	83 ca 80             	or     $0xffffff80,%edx
  10227d:	88 90 09 72 00 00    	mov    %dl,0x7209(%eax)
  102283:	c7 c2 1a 27 10 00    	mov    $0x10271a,%edx
  102289:	c1 ea 10             	shr    $0x10,%edx
  10228c:	66 89 90 0a 72 00 00 	mov    %dx,0x720a(%eax)
  102293:	c7 c2 20 27 10 00    	mov    $0x102720,%edx
  102299:	66 89 90 0c 72 00 00 	mov    %dx,0x720c(%eax)
  1022a0:	66 c7 80 0e 72 00 00 	movw   $0x8,0x720e(%eax)
  1022a7:	08 00 
  1022a9:	0f b6 90 10 72 00 00 	movzbl 0x7210(%eax),%edx
  1022b0:	83 e2 e0             	and    $0xffffffe0,%edx
  1022b3:	88 90 10 72 00 00    	mov    %dl,0x7210(%eax)
  1022b9:	0f b6 90 10 72 00 00 	movzbl 0x7210(%eax),%edx
  1022c0:	83 e2 1f             	and    $0x1f,%edx
  1022c3:	88 90 10 72 00 00    	mov    %dl,0x7210(%eax)
  1022c9:	0f b6 90 11 72 00 00 	movzbl 0x7211(%eax),%edx
  1022d0:	83 e2 f0             	and    $0xfffffff0,%edx
  1022d3:	83 ca 0e             	or     $0xe,%edx
  1022d6:	88 90 11 72 00 00    	mov    %dl,0x7211(%eax)
  1022dc:	0f b6 90 11 72 00 00 	movzbl 0x7211(%eax),%edx
  1022e3:	83 e2 ef             	and    $0xffffffef,%edx
  1022e6:	88 90 11 72 00 00    	mov    %dl,0x7211(%eax)
  1022ec:	0f b6 90 11 72 00 00 	movzbl 0x7211(%eax),%edx
  1022f3:	83 e2 9f             	and    $0xffffff9f,%edx
  1022f6:	88 90 11 72 00 00    	mov    %dl,0x7211(%eax)
  1022fc:	0f b6 90 11 72 00 00 	movzbl 0x7211(%eax),%edx
  102303:	83 ca 80             	or     $0xffffff80,%edx
  102306:	88 90 11 72 00 00    	mov    %dl,0x7211(%eax)
  10230c:	c7 c2 20 27 10 00    	mov    $0x102720,%edx
  102312:	c1 ea 10             	shr    $0x10,%edx
  102315:	66 89 90 12 72 00 00 	mov    %dx,0x7212(%eax)
  10231c:	c7 c2 26 27 10 00    	mov    $0x102726,%edx
  102322:	66 89 90 14 72 00 00 	mov    %dx,0x7214(%eax)
  102329:	66 c7 80 16 72 00 00 	movw   $0x8,0x7216(%eax)
  102330:	08 00 
  102332:	0f b6 90 18 72 00 00 	movzbl 0x7218(%eax),%edx
  102339:	83 e2 e0             	and    $0xffffffe0,%edx
  10233c:	88 90 18 72 00 00    	mov    %dl,0x7218(%eax)
  102342:	0f b6 90 18 72 00 00 	movzbl 0x7218(%eax),%edx
  102349:	83 e2 1f             	and    $0x1f,%edx
  10234c:	88 90 18 72 00 00    	mov    %dl,0x7218(%eax)
  102352:	0f b6 90 19 72 00 00 	movzbl 0x7219(%eax),%edx
  102359:	83 e2 f0             	and    $0xfffffff0,%edx
  10235c:	83 ca 0e             	or     $0xe,%edx
  10235f:	88 90 19 72 00 00    	mov    %dl,0x7219(%eax)
  102365:	0f b6 90 19 72 00 00 	movzbl 0x7219(%eax),%edx
  10236c:	83 e2 ef             	and    $0xffffffef,%edx
  10236f:	88 90 19 72 00 00    	mov    %dl,0x7219(%eax)
  102375:	0f b6 90 19 72 00 00 	movzbl 0x7219(%eax),%edx
  10237c:	83 e2 9f             	and    $0xffffff9f,%edx
  10237f:	88 90 19 72 00 00    	mov    %dl,0x7219(%eax)
  102385:	0f b6 90 19 72 00 00 	movzbl 0x7219(%eax),%edx
  10238c:	83 ca 80             	or     $0xffffff80,%edx
  10238f:	88 90 19 72 00 00    	mov    %dl,0x7219(%eax)
  102395:	c7 c2 26 27 10 00    	mov    $0x102726,%edx
  10239b:	c1 ea 10             	shr    $0x10,%edx
  10239e:	66 89 90 1a 72 00 00 	mov    %dx,0x721a(%eax)
  1023a5:	c7 c2 2c 27 10 00    	mov    $0x10272c,%edx
  1023ab:	66 89 90 1c 72 00 00 	mov    %dx,0x721c(%eax)
  1023b2:	66 c7 80 1e 72 00 00 	movw   $0x8,0x721e(%eax)
  1023b9:	08 00 
  1023bb:	0f b6 90 20 72 00 00 	movzbl 0x7220(%eax),%edx
  1023c2:	83 e2 e0             	and    $0xffffffe0,%edx
  1023c5:	88 90 20 72 00 00    	mov    %dl,0x7220(%eax)
  1023cb:	0f b6 90 20 72 00 00 	movzbl 0x7220(%eax),%edx
  1023d2:	83 e2 1f             	and    $0x1f,%edx
  1023d5:	88 90 20 72 00 00    	mov    %dl,0x7220(%eax)
  1023db:	0f b6 90 21 72 00 00 	movzbl 0x7221(%eax),%edx
  1023e2:	83 e2 f0             	and    $0xfffffff0,%edx
  1023e5:	83 ca 0e             	or     $0xe,%edx
  1023e8:	88 90 21 72 00 00    	mov    %dl,0x7221(%eax)
  1023ee:	0f b6 90 21 72 00 00 	movzbl 0x7221(%eax),%edx
  1023f5:	83 e2 ef             	and    $0xffffffef,%edx
  1023f8:	88 90 21 72 00 00    	mov    %dl,0x7221(%eax)
  1023fe:	0f b6 90 21 72 00 00 	movzbl 0x7221(%eax),%edx
  102405:	83 e2 9f             	and    $0xffffff9f,%edx
  102408:	88 90 21 72 00 00    	mov    %dl,0x7221(%eax)
  10240e:	0f b6 90 21 72 00 00 	movzbl 0x7221(%eax),%edx
  102415:	83 ca 80             	or     $0xffffff80,%edx
  102418:	88 90 21 72 00 00    	mov    %dl,0x7221(%eax)
  10241e:	c7 c2 2c 27 10 00    	mov    $0x10272c,%edx
  102424:	c1 ea 10             	shr    $0x10,%edx
  102427:	66 89 90 22 72 00 00 	mov    %dx,0x7222(%eax)
  10242e:	c7 c2 32 27 10 00    	mov    $0x102732,%edx
  102434:	66 89 90 24 72 00 00 	mov    %dx,0x7224(%eax)
  10243b:	66 c7 80 26 72 00 00 	movw   $0x8,0x7226(%eax)
  102442:	08 00 
  102444:	0f b6 90 28 72 00 00 	movzbl 0x7228(%eax),%edx
  10244b:	83 e2 e0             	and    $0xffffffe0,%edx
  10244e:	88 90 28 72 00 00    	mov    %dl,0x7228(%eax)
  102454:	0f b6 90 28 72 00 00 	movzbl 0x7228(%eax),%edx
  10245b:	83 e2 1f             	and    $0x1f,%edx
  10245e:	88 90 28 72 00 00    	mov    %dl,0x7228(%eax)
  102464:	0f b6 90 29 72 00 00 	movzbl 0x7229(%eax),%edx
  10246b:	83 e2 f0             	and    $0xfffffff0,%edx
  10246e:	83 ca 0e             	or     $0xe,%edx
  102471:	88 90 29 72 00 00    	mov    %dl,0x7229(%eax)
  102477:	0f b6 90 29 72 00 00 	movzbl 0x7229(%eax),%edx
  10247e:	83 e2 ef             	and    $0xffffffef,%edx
  102481:	88 90 29 72 00 00    	mov    %dl,0x7229(%eax)
  102487:	0f b6 90 29 72 00 00 	movzbl 0x7229(%eax),%edx
  10248e:	83 e2 9f             	and    $0xffffff9f,%edx
  102491:	88 90 29 72 00 00    	mov    %dl,0x7229(%eax)
  102497:	0f b6 90 29 72 00 00 	movzbl 0x7229(%eax),%edx
  10249e:	83 ca 80             	or     $0xffffff80,%edx
  1024a1:	88 90 29 72 00 00    	mov    %dl,0x7229(%eax)
  1024a7:	c7 c2 32 27 10 00    	mov    $0x102732,%edx
  1024ad:	c1 ea 10             	shr    $0x10,%edx
  1024b0:	66 89 90 2a 72 00 00 	mov    %dx,0x722a(%eax)
  1024b7:	c7 c2 68 27 10 00    	mov    $0x102768,%edx
  1024bd:	66 89 90 2c 72 00 00 	mov    %dx,0x722c(%eax)
  1024c4:	66 c7 80 2e 72 00 00 	movw   $0x8,0x722e(%eax)
  1024cb:	08 00 
  1024cd:	0f b6 90 30 72 00 00 	movzbl 0x7230(%eax),%edx
  1024d4:	83 e2 e0             	and    $0xffffffe0,%edx
  1024d7:	88 90 30 72 00 00    	mov    %dl,0x7230(%eax)
  1024dd:	0f b6 90 30 72 00 00 	movzbl 0x7230(%eax),%edx
  1024e4:	83 e2 1f             	and    $0x1f,%edx
  1024e7:	88 90 30 72 00 00    	mov    %dl,0x7230(%eax)
  1024ed:	0f b6 90 31 72 00 00 	movzbl 0x7231(%eax),%edx
  1024f4:	83 e2 f0             	and    $0xfffffff0,%edx
  1024f7:	83 ca 0e             	or     $0xe,%edx
  1024fa:	88 90 31 72 00 00    	mov    %dl,0x7231(%eax)
  102500:	0f b6 90 31 72 00 00 	movzbl 0x7231(%eax),%edx
  102507:	83 e2 ef             	and    $0xffffffef,%edx
  10250a:	88 90 31 72 00 00    	mov    %dl,0x7231(%eax)
  102510:	0f b6 90 31 72 00 00 	movzbl 0x7231(%eax),%edx
  102517:	83 ca 60             	or     $0x60,%edx
  10251a:	88 90 31 72 00 00    	mov    %dl,0x7231(%eax)
  102520:	0f b6 90 31 72 00 00 	movzbl 0x7231(%eax),%edx
  102527:	83 ca 80             	or     $0xffffff80,%edx
  10252a:	88 90 31 72 00 00    	mov    %dl,0x7231(%eax)
  102530:	c7 c2 68 27 10 00    	mov    $0x102768,%edx
  102536:	c1 ea 10             	shr    $0x10,%edx
  102539:	66 89 90 32 72 00 00 	mov    %dx,0x7232(%eax)
  102540:	c7 c2 6e 27 10 00    	mov    $0x10276e,%edx
  102546:	66 89 90 9c 78 00 00 	mov    %dx,0x789c(%eax)
  10254d:	66 c7 80 9e 78 00 00 	movw   $0x8,0x789e(%eax)
  102554:	08 00 
  102556:	0f b6 90 a0 78 00 00 	movzbl 0x78a0(%eax),%edx
  10255d:	83 e2 e0             	and    $0xffffffe0,%edx
  102560:	88 90 a0 78 00 00    	mov    %dl,0x78a0(%eax)
  102566:	0f b6 90 a0 78 00 00 	movzbl 0x78a0(%eax),%edx
  10256d:	83 e2 1f             	and    $0x1f,%edx
  102570:	88 90 a0 78 00 00    	mov    %dl,0x78a0(%eax)
  102576:	0f b6 90 a1 78 00 00 	movzbl 0x78a1(%eax),%edx
  10257d:	83 e2 f0             	and    $0xfffffff0,%edx
  102580:	83 ca 0e             	or     $0xe,%edx
  102583:	88 90 a1 78 00 00    	mov    %dl,0x78a1(%eax)
  102589:	0f b6 90 a1 78 00 00 	movzbl 0x78a1(%eax),%edx
  102590:	83 e2 ef             	and    $0xffffffef,%edx
  102593:	88 90 a1 78 00 00    	mov    %dl,0x78a1(%eax)
  102599:	0f b6 90 a1 78 00 00 	movzbl 0x78a1(%eax),%edx
  1025a0:	83 e2 9f             	and    $0xffffff9f,%edx
  1025a3:	88 90 a1 78 00 00    	mov    %dl,0x78a1(%eax)
  1025a9:	0f b6 90 a1 78 00 00 	movzbl 0x78a1(%eax),%edx
  1025b0:	83 ca 80             	or     $0xffffff80,%edx
  1025b3:	88 90 a1 78 00 00    	mov    %dl,0x78a1(%eax)
  1025b9:	c7 c2 6e 27 10 00    	mov    $0x10276e,%edx
  1025bf:	c1 ea 10             	shr    $0x10,%edx
  1025c2:	66 89 90 a2 78 00 00 	mov    %dx,0x78a2(%eax)
  1025c9:	0f 01 98 1c 05 00 00 	lidtl  0x51c(%eax)
  1025d0:	90                   	nop
  1025d1:	c9                   	leave
  1025d2:	c3                   	ret

001025d3 <intr_init>:
  1025d3:	55                   	push   %ebp
  1025d4:	89 e5                	mov    %esp,%ebp
  1025d6:	53                   	push   %ebx
  1025d7:	e8 e4 dd ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1025dc:	81 c3 18 9a 00 00    	add    $0x9a18,%ebx
  1025e2:	0f b6 83 ac 78 00 00 	movzbl 0x78ac(%ebx),%eax
  1025e9:	3c 01                	cmp    $0x1,%al
  1025eb:	74 0e                	je     1025fb <intr_init+0x28>
  1025ed:	e8 36 ec ff ff       	call   101228 <intr_init_idt>
  1025f2:	c6 83 ac 78 00 00 01 	movb   $0x1,0x78ac(%ebx)
  1025f9:	eb 01                	jmp    1025fc <intr_init+0x29>
  1025fb:	90                   	nop
  1025fc:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1025ff:	c9                   	leave
  102600:	c3                   	ret
  102601:	66 90                	xchg   %ax,%ax
  102603:	66 90                	xchg   %ax,%ax
  102605:	66 90                	xchg   %ax,%ax
  102607:	66 90                	xchg   %ax,%ax
  102609:	66 90                	xchg   %ax,%ax
  10260b:	66 90                	xchg   %ax,%ax
  10260d:	66 90                	xchg   %ax,%ax
  10260f:	90                   	nop

00102610 <Xdivide>:
  102610:	6a 00                	push   $0x0
  102612:	6a 00                	push   $0x0
  102614:	e9 67 01 00 00       	jmp    102780 <_alltraps>
  102619:	90                   	nop

0010261a <Xdebug>:
  10261a:	6a 00                	push   $0x0
  10261c:	6a 01                	push   $0x1
  10261e:	e9 5d 01 00 00       	jmp    102780 <_alltraps>
  102623:	90                   	nop

00102624 <Xnmi>:
  102624:	6a 00                	push   $0x0
  102626:	6a 02                	push   $0x2
  102628:	e9 53 01 00 00       	jmp    102780 <_alltraps>
  10262d:	90                   	nop

0010262e <Xbrkpt>:
  10262e:	6a 00                	push   $0x0
  102630:	6a 03                	push   $0x3
  102632:	e9 49 01 00 00       	jmp    102780 <_alltraps>
  102637:	90                   	nop

00102638 <Xoflow>:
  102638:	6a 00                	push   $0x0
  10263a:	6a 04                	push   $0x4
  10263c:	e9 3f 01 00 00       	jmp    102780 <_alltraps>
  102641:	90                   	nop

00102642 <Xbound>:
  102642:	6a 00                	push   $0x0
  102644:	6a 05                	push   $0x5
  102646:	e9 35 01 00 00       	jmp    102780 <_alltraps>
  10264b:	90                   	nop

0010264c <Xillop>:
  10264c:	6a 00                	push   $0x0
  10264e:	6a 06                	push   $0x6
  102650:	e9 2b 01 00 00       	jmp    102780 <_alltraps>
  102655:	90                   	nop

00102656 <Xdevice>:
  102656:	6a 00                	push   $0x0
  102658:	6a 07                	push   $0x7
  10265a:	e9 21 01 00 00       	jmp    102780 <_alltraps>
  10265f:	90                   	nop

00102660 <Xdblflt>:
  102660:	6a 08                	push   $0x8
  102662:	e9 19 01 00 00       	jmp    102780 <_alltraps>
  102667:	90                   	nop

00102668 <Xcoproc>:
  102668:	6a 00                	push   $0x0
  10266a:	6a 09                	push   $0x9
  10266c:	e9 0f 01 00 00       	jmp    102780 <_alltraps>
  102671:	90                   	nop

00102672 <Xtss>:
  102672:	6a 0a                	push   $0xa
  102674:	e9 07 01 00 00       	jmp    102780 <_alltraps>
  102679:	90                   	nop

0010267a <Xsegnp>:
  10267a:	6a 0b                	push   $0xb
  10267c:	e9 ff 00 00 00       	jmp    102780 <_alltraps>
  102681:	90                   	nop

00102682 <Xstack>:
  102682:	6a 0c                	push   $0xc
  102684:	e9 f7 00 00 00       	jmp    102780 <_alltraps>
  102689:	90                   	nop

0010268a <Xgpflt>:
  10268a:	6a 0d                	push   $0xd
  10268c:	e9 ef 00 00 00       	jmp    102780 <_alltraps>
  102691:	90                   	nop

00102692 <Xpgflt>:
  102692:	6a 0e                	push   $0xe
  102694:	e9 e7 00 00 00       	jmp    102780 <_alltraps>
  102699:	90                   	nop

0010269a <Xres>:
  10269a:	6a 00                	push   $0x0
  10269c:	6a 0f                	push   $0xf
  10269e:	e9 dd 00 00 00       	jmp    102780 <_alltraps>
  1026a3:	90                   	nop

001026a4 <Xfperr>:
  1026a4:	6a 00                	push   $0x0
  1026a6:	6a 10                	push   $0x10
  1026a8:	e9 d3 00 00 00       	jmp    102780 <_alltraps>
  1026ad:	90                   	nop

001026ae <Xalign>:
  1026ae:	6a 11                	push   $0x11
  1026b0:	e9 cb 00 00 00       	jmp    102780 <_alltraps>
  1026b5:	90                   	nop

001026b6 <Xmchk>:
  1026b6:	6a 00                	push   $0x0
  1026b8:	6a 12                	push   $0x12
  1026ba:	e9 c1 00 00 00       	jmp    102780 <_alltraps>
  1026bf:	90                   	nop

001026c0 <Xirq_timer>:
  1026c0:	6a 00                	push   $0x0
  1026c2:	6a 20                	push   $0x20
  1026c4:	e9 b7 00 00 00       	jmp    102780 <_alltraps>
  1026c9:	90                   	nop

001026ca <Xirq_kbd>:
  1026ca:	6a 00                	push   $0x0
  1026cc:	6a 21                	push   $0x21
  1026ce:	e9 ad 00 00 00       	jmp    102780 <_alltraps>
  1026d3:	90                   	nop

001026d4 <Xirq_slave>:
  1026d4:	6a 00                	push   $0x0
  1026d6:	6a 22                	push   $0x22
  1026d8:	e9 a3 00 00 00       	jmp    102780 <_alltraps>
  1026dd:	90                   	nop

001026de <Xirq_serial2>:
  1026de:	6a 00                	push   $0x0
  1026e0:	6a 23                	push   $0x23
  1026e2:	e9 99 00 00 00       	jmp    102780 <_alltraps>
  1026e7:	90                   	nop

001026e8 <Xirq_serial1>:
  1026e8:	6a 00                	push   $0x0
  1026ea:	6a 24                	push   $0x24
  1026ec:	e9 8f 00 00 00       	jmp    102780 <_alltraps>
  1026f1:	90                   	nop

001026f2 <Xirq_lpt>:
  1026f2:	6a 00                	push   $0x0
  1026f4:	6a 25                	push   $0x25
  1026f6:	e9 85 00 00 00       	jmp    102780 <_alltraps>
  1026fb:	90                   	nop

001026fc <Xirq_floppy>:
  1026fc:	6a 00                	push   $0x0
  1026fe:	6a 26                	push   $0x26
  102700:	eb 7e                	jmp    102780 <_alltraps>

00102702 <Xirq_spurious>:
  102702:	6a 00                	push   $0x0
  102704:	6a 27                	push   $0x27
  102706:	eb 78                	jmp    102780 <_alltraps>

00102708 <Xirq_rtc>:
  102708:	6a 00                	push   $0x0
  10270a:	6a 28                	push   $0x28
  10270c:	eb 72                	jmp    102780 <_alltraps>

0010270e <Xirq9>:
  10270e:	6a 00                	push   $0x0
  102710:	6a 29                	push   $0x29
  102712:	eb 6c                	jmp    102780 <_alltraps>

00102714 <Xirq10>:
  102714:	6a 00                	push   $0x0
  102716:	6a 2a                	push   $0x2a
  102718:	eb 66                	jmp    102780 <_alltraps>

0010271a <Xirq11>:
  10271a:	6a 00                	push   $0x0
  10271c:	6a 2b                	push   $0x2b
  10271e:	eb 60                	jmp    102780 <_alltraps>

00102720 <Xirq_mouse>:
  102720:	6a 00                	push   $0x0
  102722:	6a 2c                	push   $0x2c
  102724:	eb 5a                	jmp    102780 <_alltraps>

00102726 <Xirq_coproc>:
  102726:	6a 00                	push   $0x0
  102728:	6a 2d                	push   $0x2d
  10272a:	eb 54                	jmp    102780 <_alltraps>

0010272c <Xirq_ide1>:
  10272c:	6a 00                	push   $0x0
  10272e:	6a 2e                	push   $0x2e
  102730:	eb 4e                	jmp    102780 <_alltraps>

00102732 <Xirq_ide2>:
  102732:	6a 00                	push   $0x0
  102734:	6a 2f                	push   $0x2f
  102736:	eb 48                	jmp    102780 <_alltraps>

00102738 <Xirq_ehci1>:
  102738:	6a 00                	push   $0x0
  10273a:	6a 30                	push   $0x30
  10273c:	eb 42                	jmp    102780 <_alltraps>

0010273e <Xirq17>:
  10273e:	6a 00                	push   $0x0
  102740:	6a 31                	push   $0x31
  102742:	eb 3c                	jmp    102780 <_alltraps>

00102744 <Xirq18>:
  102744:	6a 00                	push   $0x0
  102746:	6a 32                	push   $0x32
  102748:	eb 36                	jmp    102780 <_alltraps>

0010274a <Xirq19>:
  10274a:	6a 00                	push   $0x0
  10274c:	6a 33                	push   $0x33
  10274e:	eb 30                	jmp    102780 <_alltraps>

00102750 <Xirq20>:
  102750:	6a 00                	push   $0x0
  102752:	6a 34                	push   $0x34
  102754:	eb 2a                	jmp    102780 <_alltraps>

00102756 <Xirq21>:
  102756:	6a 00                	push   $0x0
  102758:	6a 35                	push   $0x35
  10275a:	eb 24                	jmp    102780 <_alltraps>

0010275c <Xirq22>:
  10275c:	6a 00                	push   $0x0
  10275e:	6a 36                	push   $0x36
  102760:	eb 1e                	jmp    102780 <_alltraps>

00102762 <Xirq_ehci2>:
  102762:	6a 00                	push   $0x0
  102764:	6a 37                	push   $0x37
  102766:	eb 18                	jmp    102780 <_alltraps>

00102768 <Xsyscall>:
  102768:	6a 00                	push   $0x0
  10276a:	6a 30                	push   $0x30
  10276c:	eb 12                	jmp    102780 <_alltraps>

0010276e <Xdefault>:
  10276e:	68 fe 00 00 00       	push   $0xfe
  102773:	eb 0b                	jmp    102780 <_alltraps>
  102775:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10277c:	00 
  10277d:	8d 76 00             	lea    0x0(%esi),%esi

00102780 <_alltraps>:
  102780:	fa                   	cli
  102781:	1e                   	push   %ds
  102782:	06                   	push   %es
  102783:	60                   	pusha
  102784:	b8 10 00 00 00       	mov    $0x10,%eax
  102789:	8e d8                	mov    %eax,%ds
  10278b:	8e c0                	mov    %eax,%es
  10278d:	54                   	push   %esp
  10278e:	e8 69 21 00 00       	call   1048fc <trap>
  102793:	f4                   	hlt
  102794:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10279b:	00 
  10279c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

001027a0 <trap_return>:
  1027a0:	8b 64 24 04          	mov    0x4(%esp),%esp
  1027a4:	61                   	popa
  1027a5:	07                   	pop    %es
  1027a6:	1f                   	pop    %ds
  1027a7:	83 c4 08             	add    $0x8,%esp
  1027aa:	c3                   	ret

001027ab <memset>:
  1027ab:	55                   	push   %ebp
  1027ac:	89 e5                	mov    %esp,%ebp
  1027ae:	57                   	push   %edi
  1027af:	e8 04 dc ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1027b4:	05 40 98 00 00       	add    $0x9840,%eax
  1027b9:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
  1027bd:	75 05                	jne    1027c4 <memset+0x19>
  1027bf:	8b 45 08             	mov    0x8(%ebp),%eax
  1027c2:	eb 5c                	jmp    102820 <memset+0x75>
  1027c4:	8b 45 08             	mov    0x8(%ebp),%eax
  1027c7:	83 e0 03             	and    $0x3,%eax
  1027ca:	85 c0                	test   %eax,%eax
  1027cc:	75 41                	jne    10280f <memset+0x64>
  1027ce:	8b 45 10             	mov    0x10(%ebp),%eax
  1027d1:	83 e0 03             	and    $0x3,%eax
  1027d4:	85 c0                	test   %eax,%eax
  1027d6:	75 37                	jne    10280f <memset+0x64>
  1027d8:	81 65 0c ff 00 00 00 	andl   $0xff,0xc(%ebp)
  1027df:	8b 45 0c             	mov    0xc(%ebp),%eax
  1027e2:	c1 e0 18             	shl    $0x18,%eax
  1027e5:	89 c2                	mov    %eax,%edx
  1027e7:	8b 45 0c             	mov    0xc(%ebp),%eax
  1027ea:	c1 e0 10             	shl    $0x10,%eax
  1027ed:	09 c2                	or     %eax,%edx
  1027ef:	8b 45 0c             	mov    0xc(%ebp),%eax
  1027f2:	c1 e0 08             	shl    $0x8,%eax
  1027f5:	09 d0                	or     %edx,%eax
  1027f7:	09 45 0c             	or     %eax,0xc(%ebp)
  1027fa:	8b 45 10             	mov    0x10(%ebp),%eax
  1027fd:	c1 e8 02             	shr    $0x2,%eax
  102800:	89 c1                	mov    %eax,%ecx
  102802:	8b 55 08             	mov    0x8(%ebp),%edx
  102805:	8b 45 0c             	mov    0xc(%ebp),%eax
  102808:	89 d7                	mov    %edx,%edi
  10280a:	fc                   	cld
  10280b:	f3 ab                	rep stos %eax,%es:(%edi)
  10280d:	eb 0e                	jmp    10281d <memset+0x72>
  10280f:	8b 55 08             	mov    0x8(%ebp),%edx
  102812:	8b 45 0c             	mov    0xc(%ebp),%eax
  102815:	8b 4d 10             	mov    0x10(%ebp),%ecx
  102818:	89 d7                	mov    %edx,%edi
  10281a:	fc                   	cld
  10281b:	f3 aa                	rep stos %al,%es:(%edi)
  10281d:	8b 45 08             	mov    0x8(%ebp),%eax
  102820:	8b 7d fc             	mov    -0x4(%ebp),%edi
  102823:	c9                   	leave
  102824:	c3                   	ret

00102825 <memmove>:
  102825:	55                   	push   %ebp
  102826:	89 e5                	mov    %esp,%ebp
  102828:	57                   	push   %edi
  102829:	56                   	push   %esi
  10282a:	53                   	push   %ebx
  10282b:	83 ec 10             	sub    $0x10,%esp
  10282e:	e8 85 db ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102833:	05 c1 97 00 00       	add    $0x97c1,%eax
  102838:	8b 45 0c             	mov    0xc(%ebp),%eax
  10283b:	89 45 f0             	mov    %eax,-0x10(%ebp)
  10283e:	8b 45 08             	mov    0x8(%ebp),%eax
  102841:	89 45 ec             	mov    %eax,-0x14(%ebp)
  102844:	8b 45 f0             	mov    -0x10(%ebp),%eax
  102847:	3b 45 ec             	cmp    -0x14(%ebp),%eax
  10284a:	73 6d                	jae    1028b9 <memmove+0x94>
  10284c:	8b 55 f0             	mov    -0x10(%ebp),%edx
  10284f:	8b 45 10             	mov    0x10(%ebp),%eax
  102852:	01 d0                	add    %edx,%eax
  102854:	39 45 ec             	cmp    %eax,-0x14(%ebp)
  102857:	73 60                	jae    1028b9 <memmove+0x94>
  102859:	8b 45 10             	mov    0x10(%ebp),%eax
  10285c:	01 45 f0             	add    %eax,-0x10(%ebp)
  10285f:	8b 45 10             	mov    0x10(%ebp),%eax
  102862:	01 45 ec             	add    %eax,-0x14(%ebp)
  102865:	8b 45 f0             	mov    -0x10(%ebp),%eax
  102868:	83 e0 03             	and    $0x3,%eax
  10286b:	85 c0                	test   %eax,%eax
  10286d:	75 2f                	jne    10289e <memmove+0x79>
  10286f:	8b 45 ec             	mov    -0x14(%ebp),%eax
  102872:	83 e0 03             	and    $0x3,%eax
  102875:	85 c0                	test   %eax,%eax
  102877:	75 25                	jne    10289e <memmove+0x79>
  102879:	8b 45 10             	mov    0x10(%ebp),%eax
  10287c:	83 e0 03             	and    $0x3,%eax
  10287f:	85 c0                	test   %eax,%eax
  102881:	75 1b                	jne    10289e <memmove+0x79>
  102883:	8b 45 ec             	mov    -0x14(%ebp),%eax
  102886:	83 e8 04             	sub    $0x4,%eax
  102889:	8b 55 f0             	mov    -0x10(%ebp),%edx
  10288c:	83 ea 04             	sub    $0x4,%edx
  10288f:	8b 4d 10             	mov    0x10(%ebp),%ecx
  102892:	c1 e9 02             	shr    $0x2,%ecx
  102895:	89 c7                	mov    %eax,%edi
  102897:	89 d6                	mov    %edx,%esi
  102899:	fd                   	std
  10289a:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  10289c:	eb 18                	jmp    1028b6 <memmove+0x91>
  10289e:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1028a1:	8d 50 ff             	lea    -0x1(%eax),%edx
  1028a4:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1028a7:	8d 58 ff             	lea    -0x1(%eax),%ebx
  1028aa:	8b 45 10             	mov    0x10(%ebp),%eax
  1028ad:	89 d7                	mov    %edx,%edi
  1028af:	89 de                	mov    %ebx,%esi
  1028b1:	89 c1                	mov    %eax,%ecx
  1028b3:	fd                   	std
  1028b4:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
  1028b6:	fc                   	cld
  1028b7:	eb 45                	jmp    1028fe <memmove+0xd9>
  1028b9:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1028bc:	83 e0 03             	and    $0x3,%eax
  1028bf:	85 c0                	test   %eax,%eax
  1028c1:	75 2b                	jne    1028ee <memmove+0xc9>
  1028c3:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1028c6:	83 e0 03             	and    $0x3,%eax
  1028c9:	85 c0                	test   %eax,%eax
  1028cb:	75 21                	jne    1028ee <memmove+0xc9>
  1028cd:	8b 45 10             	mov    0x10(%ebp),%eax
  1028d0:	83 e0 03             	and    $0x3,%eax
  1028d3:	85 c0                	test   %eax,%eax
  1028d5:	75 17                	jne    1028ee <memmove+0xc9>
  1028d7:	8b 45 10             	mov    0x10(%ebp),%eax
  1028da:	c1 e8 02             	shr    $0x2,%eax
  1028dd:	89 c1                	mov    %eax,%ecx
  1028df:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1028e2:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1028e5:	89 c7                	mov    %eax,%edi
  1028e7:	89 d6                	mov    %edx,%esi
  1028e9:	fc                   	cld
  1028ea:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  1028ec:	eb 10                	jmp    1028fe <memmove+0xd9>
  1028ee:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1028f1:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1028f4:	8b 4d 10             	mov    0x10(%ebp),%ecx
  1028f7:	89 c7                	mov    %eax,%edi
  1028f9:	89 d6                	mov    %edx,%esi
  1028fb:	fc                   	cld
  1028fc:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
  1028fe:	8b 45 08             	mov    0x8(%ebp),%eax
  102901:	83 c4 10             	add    $0x10,%esp
  102904:	5b                   	pop    %ebx
  102905:	5e                   	pop    %esi
  102906:	5f                   	pop    %edi
  102907:	5d                   	pop    %ebp
  102908:	c3                   	ret

00102909 <memcpy>:
  102909:	55                   	push   %ebp
  10290a:	89 e5                	mov    %esp,%ebp
  10290c:	e8 a7 da ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102911:	05 e3 96 00 00       	add    $0x96e3,%eax
  102916:	ff 75 10             	push   0x10(%ebp)
  102919:	ff 75 0c             	push   0xc(%ebp)
  10291c:	ff 75 08             	push   0x8(%ebp)
  10291f:	e8 01 ff ff ff       	call   102825 <memmove>
  102924:	83 c4 0c             	add    $0xc,%esp
  102927:	c9                   	leave
  102928:	c3                   	ret

00102929 <strncmp>:
  102929:	55                   	push   %ebp
  10292a:	89 e5                	mov    %esp,%ebp
  10292c:	e8 87 da ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102931:	05 c3 96 00 00       	add    $0x96c3,%eax
  102936:	eb 0c                	jmp    102944 <strncmp+0x1b>
  102938:	83 6d 10 01          	subl   $0x1,0x10(%ebp)
  10293c:	83 45 08 01          	addl   $0x1,0x8(%ebp)
  102940:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
  102944:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
  102948:	74 1a                	je     102964 <strncmp+0x3b>
  10294a:	8b 45 08             	mov    0x8(%ebp),%eax
  10294d:	0f b6 00             	movzbl (%eax),%eax
  102950:	84 c0                	test   %al,%al
  102952:	74 10                	je     102964 <strncmp+0x3b>
  102954:	8b 45 08             	mov    0x8(%ebp),%eax
  102957:	0f b6 10             	movzbl (%eax),%edx
  10295a:	8b 45 0c             	mov    0xc(%ebp),%eax
  10295d:	0f b6 00             	movzbl (%eax),%eax
  102960:	38 c2                	cmp    %al,%dl
  102962:	74 d4                	je     102938 <strncmp+0xf>
  102964:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
  102968:	75 07                	jne    102971 <strncmp+0x48>
  10296a:	ba 00 00 00 00       	mov    $0x0,%edx
  10296f:	eb 14                	jmp    102985 <strncmp+0x5c>
  102971:	8b 45 08             	mov    0x8(%ebp),%eax
  102974:	0f b6 00             	movzbl (%eax),%eax
  102977:	0f b6 d0             	movzbl %al,%edx
  10297a:	8b 45 0c             	mov    0xc(%ebp),%eax
  10297d:	0f b6 00             	movzbl (%eax),%eax
  102980:	0f b6 c0             	movzbl %al,%eax
  102983:	29 c2                	sub    %eax,%edx
  102985:	89 d0                	mov    %edx,%eax
  102987:	5d                   	pop    %ebp
  102988:	c3                   	ret

00102989 <strnlen>:
  102989:	55                   	push   %ebp
  10298a:	89 e5                	mov    %esp,%ebp
  10298c:	83 ec 10             	sub    $0x10,%esp
  10298f:	e8 24 da ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102994:	05 60 96 00 00       	add    $0x9660,%eax
  102999:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  1029a0:	eb 0c                	jmp    1029ae <strnlen+0x25>
  1029a2:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  1029a6:	83 45 08 01          	addl   $0x1,0x8(%ebp)
  1029aa:	83 6d 0c 01          	subl   $0x1,0xc(%ebp)
  1029ae:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  1029b2:	74 0a                	je     1029be <strnlen+0x35>
  1029b4:	8b 45 08             	mov    0x8(%ebp),%eax
  1029b7:	0f b6 00             	movzbl (%eax),%eax
  1029ba:	84 c0                	test   %al,%al
  1029bc:	75 e4                	jne    1029a2 <strnlen+0x19>
  1029be:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1029c1:	c9                   	leave
  1029c2:	c3                   	ret

001029c3 <strcmp>:
  1029c3:	55                   	push   %ebp
  1029c4:	89 e5                	mov    %esp,%ebp
  1029c6:	e8 ed d9 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1029cb:	05 29 96 00 00       	add    $0x9629,%eax
  1029d0:	eb 08                	jmp    1029da <strcmp+0x17>
  1029d2:	83 45 08 01          	addl   $0x1,0x8(%ebp)
  1029d6:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
  1029da:	8b 45 08             	mov    0x8(%ebp),%eax
  1029dd:	0f b6 00             	movzbl (%eax),%eax
  1029e0:	84 c0                	test   %al,%al
  1029e2:	74 10                	je     1029f4 <strcmp+0x31>
  1029e4:	8b 45 08             	mov    0x8(%ebp),%eax
  1029e7:	0f b6 10             	movzbl (%eax),%edx
  1029ea:	8b 45 0c             	mov    0xc(%ebp),%eax
  1029ed:	0f b6 00             	movzbl (%eax),%eax
  1029f0:	38 c2                	cmp    %al,%dl
  1029f2:	74 de                	je     1029d2 <strcmp+0xf>
  1029f4:	8b 45 08             	mov    0x8(%ebp),%eax
  1029f7:	0f b6 00             	movzbl (%eax),%eax
  1029fa:	0f b6 d0             	movzbl %al,%edx
  1029fd:	8b 45 0c             	mov    0xc(%ebp),%eax
  102a00:	0f b6 00             	movzbl (%eax),%eax
  102a03:	0f b6 c0             	movzbl %al,%eax
  102a06:	29 c2                	sub    %eax,%edx
  102a08:	89 d0                	mov    %edx,%eax
  102a0a:	5d                   	pop    %ebp
  102a0b:	c3                   	ret

00102a0c <strchr>:
  102a0c:	55                   	push   %ebp
  102a0d:	89 e5                	mov    %esp,%ebp
  102a0f:	83 ec 04             	sub    $0x4,%esp
  102a12:	e8 a1 d9 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102a17:	05 dd 95 00 00       	add    $0x95dd,%eax
  102a1c:	8b 45 0c             	mov    0xc(%ebp),%eax
  102a1f:	88 45 fc             	mov    %al,-0x4(%ebp)
  102a22:	eb 14                	jmp    102a38 <strchr+0x2c>
  102a24:	8b 45 08             	mov    0x8(%ebp),%eax
  102a27:	0f b6 00             	movzbl (%eax),%eax
  102a2a:	38 45 fc             	cmp    %al,-0x4(%ebp)
  102a2d:	75 05                	jne    102a34 <strchr+0x28>
  102a2f:	8b 45 08             	mov    0x8(%ebp),%eax
  102a32:	eb 13                	jmp    102a47 <strchr+0x3b>
  102a34:	83 45 08 01          	addl   $0x1,0x8(%ebp)
  102a38:	8b 45 08             	mov    0x8(%ebp),%eax
  102a3b:	0f b6 00             	movzbl (%eax),%eax
  102a3e:	84 c0                	test   %al,%al
  102a40:	75 e2                	jne    102a24 <strchr+0x18>
  102a42:	b8 00 00 00 00       	mov    $0x0,%eax
  102a47:	c9                   	leave
  102a48:	c3                   	ret

00102a49 <memzero>:
  102a49:	55                   	push   %ebp
  102a4a:	89 e5                	mov    %esp,%ebp
  102a4c:	e8 67 d9 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102a51:	05 a3 95 00 00       	add    $0x95a3,%eax
  102a56:	ff 75 0c             	push   0xc(%ebp)
  102a59:	6a 00                	push   $0x0
  102a5b:	ff 75 08             	push   0x8(%ebp)
  102a5e:	e8 48 fd ff ff       	call   1027ab <memset>
  102a63:	83 c4 0c             	add    $0xc,%esp
  102a66:	c9                   	leave
  102a67:	c3                   	ret

00102a68 <debug_info>:
  102a68:	55                   	push   %ebp
  102a69:	89 e5                	mov    %esp,%ebp
  102a6b:	53                   	push   %ebx
  102a6c:	83 ec 14             	sub    $0x14,%esp
  102a6f:	e8 44 d9 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102a74:	05 80 95 00 00       	add    $0x9580,%eax
  102a79:	8d 55 0c             	lea    0xc(%ebp),%edx
  102a7c:	89 55 f4             	mov    %edx,-0xc(%ebp)
  102a7f:	8b 55 f4             	mov    -0xc(%ebp),%edx
  102a82:	83 ec 08             	sub    $0x8,%esp
  102a85:	52                   	push   %edx
  102a86:	ff 75 08             	push   0x8(%ebp)
  102a89:	89 c3                	mov    %eax,%ebx
  102a8b:	e8 68 02 00 00       	call   102cf8 <vdprintf>
  102a90:	83 c4 10             	add    $0x10,%esp
  102a93:	90                   	nop
  102a94:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  102a97:	c9                   	leave
  102a98:	c3                   	ret

00102a99 <debug_normal>:
  102a99:	55                   	push   %ebp
  102a9a:	89 e5                	mov    %esp,%ebp
  102a9c:	53                   	push   %ebx
  102a9d:	83 ec 14             	sub    $0x14,%esp
  102aa0:	e8 1b d9 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  102aa5:	81 c3 4f 95 00 00    	add    $0x954f,%ebx
  102aab:	83 ec 04             	sub    $0x4,%esp
  102aae:	ff 75 0c             	push   0xc(%ebp)
  102ab1:	ff 75 08             	push   0x8(%ebp)
  102ab4:	8d 83 23 b1 ff ff    	lea    -0x4edd(%ebx),%eax
  102aba:	50                   	push   %eax
  102abb:	e8 ac 02 00 00       	call   102d6c <dprintf>
  102ac0:	83 c4 10             	add    $0x10,%esp
  102ac3:	8d 45 14             	lea    0x14(%ebp),%eax
  102ac6:	89 45 f4             	mov    %eax,-0xc(%ebp)
  102ac9:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102acc:	83 ec 08             	sub    $0x8,%esp
  102acf:	50                   	push   %eax
  102ad0:	ff 75 10             	push   0x10(%ebp)
  102ad3:	e8 20 02 00 00       	call   102cf8 <vdprintf>
  102ad8:	83 c4 10             	add    $0x10,%esp
  102adb:	90                   	nop
  102adc:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  102adf:	c9                   	leave
  102ae0:	c3                   	ret

00102ae1 <debug_trace>:
  102ae1:	55                   	push   %ebp
  102ae2:	89 e5                	mov    %esp,%ebp
  102ae4:	83 ec 10             	sub    $0x10,%esp
  102ae7:	e8 cc d8 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102aec:	05 08 95 00 00       	add    $0x9508,%eax
  102af1:	8b 45 08             	mov    0x8(%ebp),%eax
  102af4:	89 45 f8             	mov    %eax,-0x8(%ebp)
  102af7:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  102afe:	eb 23                	jmp    102b23 <debug_trace+0x42>
  102b00:	8b 45 fc             	mov    -0x4(%ebp),%eax
  102b03:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
  102b0a:	8b 45 0c             	mov    0xc(%ebp),%eax
  102b0d:	01 c2                	add    %eax,%edx
  102b0f:	8b 45 f8             	mov    -0x8(%ebp),%eax
  102b12:	8b 40 04             	mov    0x4(%eax),%eax
  102b15:	89 02                	mov    %eax,(%edx)
  102b17:	8b 45 f8             	mov    -0x8(%ebp),%eax
  102b1a:	8b 00                	mov    (%eax),%eax
  102b1c:	89 45 f8             	mov    %eax,-0x8(%ebp)
  102b1f:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  102b23:	83 7d fc 09          	cmpl   $0x9,-0x4(%ebp)
  102b27:	7f 21                	jg     102b4a <debug_trace+0x69>
  102b29:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  102b2d:	75 d1                	jne    102b00 <debug_trace+0x1f>
  102b2f:	eb 19                	jmp    102b4a <debug_trace+0x69>
  102b31:	8b 45 fc             	mov    -0x4(%ebp),%eax
  102b34:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
  102b3b:	8b 45 0c             	mov    0xc(%ebp),%eax
  102b3e:	01 d0                	add    %edx,%eax
  102b40:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  102b46:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  102b4a:	83 7d fc 09          	cmpl   $0x9,-0x4(%ebp)
  102b4e:	7e e1                	jle    102b31 <debug_trace+0x50>
  102b50:	90                   	nop
  102b51:	90                   	nop
  102b52:	c9                   	leave
  102b53:	c3                   	ret

00102b54 <debug_panic>:
  102b54:	55                   	push   %ebp
  102b55:	89 e5                	mov    %esp,%ebp
  102b57:	53                   	push   %ebx
  102b58:	83 ec 44             	sub    $0x44,%esp
  102b5b:	e8 60 d8 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  102b60:	81 c3 94 94 00 00    	add    $0x9494,%ebx
  102b66:	83 ec 04             	sub    $0x4,%esp
  102b69:	ff 75 0c             	push   0xc(%ebp)
  102b6c:	ff 75 08             	push   0x8(%ebp)
  102b6f:	8d 83 2f b1 ff ff    	lea    -0x4ed1(%ebx),%eax
  102b75:	50                   	push   %eax
  102b76:	e8 f1 01 00 00       	call   102d6c <dprintf>
  102b7b:	83 c4 10             	add    $0x10,%esp
  102b7e:	8d 45 14             	lea    0x14(%ebp),%eax
  102b81:	89 45 c4             	mov    %eax,-0x3c(%ebp)
  102b84:	8b 45 c4             	mov    -0x3c(%ebp),%eax
  102b87:	83 ec 08             	sub    $0x8,%esp
  102b8a:	50                   	push   %eax
  102b8b:	ff 75 10             	push   0x10(%ebp)
  102b8e:	e8 65 01 00 00       	call   102cf8 <vdprintf>
  102b93:	83 c4 10             	add    $0x10,%esp
  102b96:	89 e8                	mov    %ebp,%eax
  102b98:	89 45 f0             	mov    %eax,-0x10(%ebp)
  102b9b:	8b 45 f0             	mov    -0x10(%ebp),%eax
  102b9e:	83 ec 08             	sub    $0x8,%esp
  102ba1:	8d 55 c8             	lea    -0x38(%ebp),%edx
  102ba4:	52                   	push   %edx
  102ba5:	50                   	push   %eax
  102ba6:	e8 36 ff ff ff       	call   102ae1 <debug_trace>
  102bab:	83 c4 10             	add    $0x10,%esp
  102bae:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  102bb5:	eb 1e                	jmp    102bd5 <debug_panic+0x81>
  102bb7:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102bba:	8b 44 85 c8          	mov    -0x38(%ebp,%eax,4),%eax
  102bbe:	83 ec 08             	sub    $0x8,%esp
  102bc1:	50                   	push   %eax
  102bc2:	8d 83 3b b1 ff ff    	lea    -0x4ec5(%ebx),%eax
  102bc8:	50                   	push   %eax
  102bc9:	e8 9e 01 00 00       	call   102d6c <dprintf>
  102bce:	83 c4 10             	add    $0x10,%esp
  102bd1:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  102bd5:	83 7d f4 09          	cmpl   $0x9,-0xc(%ebp)
  102bd9:	7f 0b                	jg     102be6 <debug_panic+0x92>
  102bdb:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102bde:	8b 44 85 c8          	mov    -0x38(%ebp,%eax,4),%eax
  102be2:	85 c0                	test   %eax,%eax
  102be4:	75 d1                	jne    102bb7 <debug_panic+0x63>
  102be6:	83 ec 0c             	sub    $0xc,%esp
  102be9:	8d 83 49 b1 ff ff    	lea    -0x4eb7(%ebx),%eax
  102bef:	50                   	push   %eax
  102bf0:	e8 77 01 00 00       	call   102d6c <dprintf>
  102bf5:	83 c4 10             	add    $0x10,%esp
  102bf8:	e8 e0 0c 00 00       	call   1038dd <halt>
  102bfd:	90                   	nop
  102bfe:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  102c01:	c9                   	leave
  102c02:	c3                   	ret

00102c03 <debug_warn>:
  102c03:	55                   	push   %ebp
  102c04:	89 e5                	mov    %esp,%ebp
  102c06:	53                   	push   %ebx
  102c07:	83 ec 14             	sub    $0x14,%esp
  102c0a:	e8 b1 d7 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  102c0f:	81 c3 e5 93 00 00    	add    $0x93e5,%ebx
  102c15:	83 ec 04             	sub    $0x4,%esp
  102c18:	ff 75 0c             	push   0xc(%ebp)
  102c1b:	ff 75 08             	push   0x8(%ebp)
  102c1e:	8d 83 5b b1 ff ff    	lea    -0x4ea5(%ebx),%eax
  102c24:	50                   	push   %eax
  102c25:	e8 42 01 00 00       	call   102d6c <dprintf>
  102c2a:	83 c4 10             	add    $0x10,%esp
  102c2d:	8d 45 14             	lea    0x14(%ebp),%eax
  102c30:	89 45 f4             	mov    %eax,-0xc(%ebp)
  102c33:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102c36:	83 ec 08             	sub    $0x8,%esp
  102c39:	50                   	push   %eax
  102c3a:	ff 75 10             	push   0x10(%ebp)
  102c3d:	e8 b6 00 00 00       	call   102cf8 <vdprintf>
  102c42:	83 c4 10             	add    $0x10,%esp
  102c45:	90                   	nop
  102c46:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  102c49:	c9                   	leave
  102c4a:	c3                   	ret

00102c4b <cputs>:
  102c4b:	55                   	push   %ebp
  102c4c:	89 e5                	mov    %esp,%ebp
  102c4e:	53                   	push   %ebx
  102c4f:	83 ec 04             	sub    $0x4,%esp
  102c52:	e8 69 d7 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  102c57:	81 c3 9d 93 00 00    	add    $0x939d,%ebx
  102c5d:	eb 19                	jmp    102c78 <cputs+0x2d>
  102c5f:	8b 45 08             	mov    0x8(%ebp),%eax
  102c62:	0f b6 00             	movzbl (%eax),%eax
  102c65:	0f be c0             	movsbl %al,%eax
  102c68:	83 ec 0c             	sub    $0xc,%esp
  102c6b:	50                   	push   %eax
  102c6c:	e8 5f d8 ff ff       	call   1004d0 <cons_putc>
  102c71:	83 c4 10             	add    $0x10,%esp
  102c74:	83 45 08 01          	addl   $0x1,0x8(%ebp)
  102c78:	8b 45 08             	mov    0x8(%ebp),%eax
  102c7b:	0f b6 00             	movzbl (%eax),%eax
  102c7e:	84 c0                	test   %al,%al
  102c80:	75 dd                	jne    102c5f <cputs+0x14>
  102c82:	90                   	nop
  102c83:	90                   	nop
  102c84:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  102c87:	c9                   	leave
  102c88:	c3                   	ret

00102c89 <putch>:
  102c89:	55                   	push   %ebp
  102c8a:	89 e5                	mov    %esp,%ebp
  102c8c:	83 ec 08             	sub    $0x8,%esp
  102c8f:	e8 24 d7 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102c94:	05 60 93 00 00       	add    $0x9360,%eax
  102c99:	8b 45 0c             	mov    0xc(%ebp),%eax
  102c9c:	8b 00                	mov    (%eax),%eax
  102c9e:	8d 48 01             	lea    0x1(%eax),%ecx
  102ca1:	8b 55 0c             	mov    0xc(%ebp),%edx
  102ca4:	89 0a                	mov    %ecx,(%edx)
  102ca6:	8b 55 08             	mov    0x8(%ebp),%edx
  102ca9:	89 d1                	mov    %edx,%ecx
  102cab:	8b 55 0c             	mov    0xc(%ebp),%edx
  102cae:	88 4c 02 08          	mov    %cl,0x8(%edx,%eax,1)
  102cb2:	8b 45 0c             	mov    0xc(%ebp),%eax
  102cb5:	8b 00                	mov    (%eax),%eax
  102cb7:	3d ff 01 00 00       	cmp    $0x1ff,%eax
  102cbc:	75 28                	jne    102ce6 <putch+0x5d>
  102cbe:	8b 45 0c             	mov    0xc(%ebp),%eax
  102cc1:	8b 00                	mov    (%eax),%eax
  102cc3:	8b 55 0c             	mov    0xc(%ebp),%edx
  102cc6:	c6 44 02 08 00       	movb   $0x0,0x8(%edx,%eax,1)
  102ccb:	8b 45 0c             	mov    0xc(%ebp),%eax
  102cce:	83 c0 08             	add    $0x8,%eax
  102cd1:	83 ec 0c             	sub    $0xc,%esp
  102cd4:	50                   	push   %eax
  102cd5:	e8 71 ff ff ff       	call   102c4b <cputs>
  102cda:	83 c4 10             	add    $0x10,%esp
  102cdd:	8b 45 0c             	mov    0xc(%ebp),%eax
  102ce0:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  102ce6:	8b 45 0c             	mov    0xc(%ebp),%eax
  102ce9:	8b 40 04             	mov    0x4(%eax),%eax
  102cec:	8d 50 01             	lea    0x1(%eax),%edx
  102cef:	8b 45 0c             	mov    0xc(%ebp),%eax
  102cf2:	89 50 04             	mov    %edx,0x4(%eax)
  102cf5:	90                   	nop
  102cf6:	c9                   	leave
  102cf7:	c3                   	ret

00102cf8 <vdprintf>:
  102cf8:	55                   	push   %ebp
  102cf9:	89 e5                	mov    %esp,%ebp
  102cfb:	53                   	push   %ebx
  102cfc:	81 ec 14 02 00 00    	sub    $0x214,%esp
  102d02:	e8 b1 d6 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102d07:	05 ed 92 00 00       	add    $0x92ed,%eax
  102d0c:	c7 85 f0 fd ff ff 00 	movl   $0x0,-0x210(%ebp)
  102d13:	00 00 00 
  102d16:	c7 85 f4 fd ff ff 00 	movl   $0x0,-0x20c(%ebp)
  102d1d:	00 00 00 
  102d20:	ff 75 0c             	push   0xc(%ebp)
  102d23:	ff 75 08             	push   0x8(%ebp)
  102d26:	8d 95 f0 fd ff ff    	lea    -0x210(%ebp),%edx
  102d2c:	52                   	push   %edx
  102d2d:	8d 90 95 6c ff ff    	lea    -0x936b(%eax),%edx
  102d33:	52                   	push   %edx
  102d34:	89 c3                	mov    %eax,%ebx
  102d36:	e8 d6 01 00 00       	call   102f11 <vprintfmt>
  102d3b:	83 c4 10             	add    $0x10,%esp
  102d3e:	8b 85 f0 fd ff ff    	mov    -0x210(%ebp),%eax
  102d44:	c6 84 05 f8 fd ff ff 	movb   $0x0,-0x208(%ebp,%eax,1)
  102d4b:	00 
  102d4c:	83 ec 0c             	sub    $0xc,%esp
  102d4f:	8d 85 f0 fd ff ff    	lea    -0x210(%ebp),%eax
  102d55:	83 c0 08             	add    $0x8,%eax
  102d58:	50                   	push   %eax
  102d59:	e8 ed fe ff ff       	call   102c4b <cputs>
  102d5e:	83 c4 10             	add    $0x10,%esp
  102d61:	8b 85 f4 fd ff ff    	mov    -0x20c(%ebp),%eax
  102d67:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  102d6a:	c9                   	leave
  102d6b:	c3                   	ret

00102d6c <dprintf>:
  102d6c:	55                   	push   %ebp
  102d6d:	89 e5                	mov    %esp,%ebp
  102d6f:	83 ec 18             	sub    $0x18,%esp
  102d72:	e8 41 d6 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102d77:	05 7d 92 00 00       	add    $0x927d,%eax
  102d7c:	8d 45 0c             	lea    0xc(%ebp),%eax
  102d7f:	89 45 f0             	mov    %eax,-0x10(%ebp)
  102d82:	8b 45 f0             	mov    -0x10(%ebp),%eax
  102d85:	83 ec 08             	sub    $0x8,%esp
  102d88:	50                   	push   %eax
  102d89:	ff 75 08             	push   0x8(%ebp)
  102d8c:	e8 67 ff ff ff       	call   102cf8 <vdprintf>
  102d91:	83 c4 10             	add    $0x10,%esp
  102d94:	89 45 f4             	mov    %eax,-0xc(%ebp)
  102d97:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102d9a:	c9                   	leave
  102d9b:	c3                   	ret

00102d9c <printnum>:
  102d9c:	55                   	push   %ebp
  102d9d:	89 e5                	mov    %esp,%ebp
  102d9f:	57                   	push   %edi
  102da0:	56                   	push   %esi
  102da1:	53                   	push   %ebx
  102da2:	83 ec 1c             	sub    $0x1c,%esp
  102da5:	e8 b2 04 00 00       	call   10325c <__x86.get_pc_thunk.si>
  102daa:	81 c6 4a 92 00 00    	add    $0x924a,%esi
  102db0:	8b 45 10             	mov    0x10(%ebp),%eax
  102db3:	89 45 e0             	mov    %eax,-0x20(%ebp)
  102db6:	8b 45 14             	mov    0x14(%ebp),%eax
  102db9:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  102dbc:	8b 45 18             	mov    0x18(%ebp),%eax
  102dbf:	ba 00 00 00 00       	mov    $0x0,%edx
  102dc4:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
  102dc7:	39 45 e0             	cmp    %eax,-0x20(%ebp)
  102dca:	19 d1                	sbb    %edx,%ecx
  102dcc:	72 4d                	jb     102e1b <printnum+0x7f>
  102dce:	8b 45 1c             	mov    0x1c(%ebp),%eax
  102dd1:	8d 78 ff             	lea    -0x1(%eax),%edi
  102dd4:	8b 45 18             	mov    0x18(%ebp),%eax
  102dd7:	ba 00 00 00 00       	mov    $0x0,%edx
  102ddc:	52                   	push   %edx
  102ddd:	50                   	push   %eax
  102dde:	ff 75 e4             	push   -0x1c(%ebp)
  102de1:	ff 75 e0             	push   -0x20(%ebp)
  102de4:	89 f3                	mov    %esi,%ebx
  102de6:	e8 35 3e 00 00       	call   106c20 <__udivdi3>
  102deb:	83 c4 10             	add    $0x10,%esp
  102dee:	83 ec 04             	sub    $0x4,%esp
  102df1:	ff 75 20             	push   0x20(%ebp)
  102df4:	57                   	push   %edi
  102df5:	ff 75 18             	push   0x18(%ebp)
  102df8:	52                   	push   %edx
  102df9:	50                   	push   %eax
  102dfa:	ff 75 0c             	push   0xc(%ebp)
  102dfd:	ff 75 08             	push   0x8(%ebp)
  102e00:	e8 97 ff ff ff       	call   102d9c <printnum>
  102e05:	83 c4 20             	add    $0x20,%esp
  102e08:	eb 1b                	jmp    102e25 <printnum+0x89>
  102e0a:	83 ec 08             	sub    $0x8,%esp
  102e0d:	ff 75 0c             	push   0xc(%ebp)
  102e10:	ff 75 20             	push   0x20(%ebp)
  102e13:	8b 45 08             	mov    0x8(%ebp),%eax
  102e16:	ff d0                	call   *%eax
  102e18:	83 c4 10             	add    $0x10,%esp
  102e1b:	83 6d 1c 01          	subl   $0x1,0x1c(%ebp)
  102e1f:	83 7d 1c 00          	cmpl   $0x0,0x1c(%ebp)
  102e23:	7f e5                	jg     102e0a <printnum+0x6e>
  102e25:	8b 4d 18             	mov    0x18(%ebp),%ecx
  102e28:	bb 00 00 00 00       	mov    $0x0,%ebx
  102e2d:	8b 45 e0             	mov    -0x20(%ebp),%eax
  102e30:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  102e33:	53                   	push   %ebx
  102e34:	51                   	push   %ecx
  102e35:	52                   	push   %edx
  102e36:	50                   	push   %eax
  102e37:	89 f3                	mov    %esi,%ebx
  102e39:	e8 12 3f 00 00       	call   106d50 <__umoddi3>
  102e3e:	83 c4 10             	add    $0x10,%esp
  102e41:	8d 8e 68 b1 ff ff    	lea    -0x4e98(%esi),%ecx
  102e47:	01 c8                	add    %ecx,%eax
  102e49:	0f b6 00             	movzbl (%eax),%eax
  102e4c:	0f be c0             	movsbl %al,%eax
  102e4f:	83 ec 08             	sub    $0x8,%esp
  102e52:	ff 75 0c             	push   0xc(%ebp)
  102e55:	50                   	push   %eax
  102e56:	8b 45 08             	mov    0x8(%ebp),%eax
  102e59:	ff d0                	call   *%eax
  102e5b:	83 c4 10             	add    $0x10,%esp
  102e5e:	90                   	nop
  102e5f:	8d 65 f4             	lea    -0xc(%ebp),%esp
  102e62:	5b                   	pop    %ebx
  102e63:	5e                   	pop    %esi
  102e64:	5f                   	pop    %edi
  102e65:	5d                   	pop    %ebp
  102e66:	c3                   	ret

00102e67 <getuint>:
  102e67:	55                   	push   %ebp
  102e68:	89 e5                	mov    %esp,%ebp
  102e6a:	e8 49 d5 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102e6f:	05 85 91 00 00       	add    $0x9185,%eax
  102e74:	83 7d 0c 01          	cmpl   $0x1,0xc(%ebp)
  102e78:	7e 14                	jle    102e8e <getuint+0x27>
  102e7a:	8b 45 08             	mov    0x8(%ebp),%eax
  102e7d:	8b 00                	mov    (%eax),%eax
  102e7f:	8d 48 08             	lea    0x8(%eax),%ecx
  102e82:	8b 55 08             	mov    0x8(%ebp),%edx
  102e85:	89 0a                	mov    %ecx,(%edx)
  102e87:	8b 50 04             	mov    0x4(%eax),%edx
  102e8a:	8b 00                	mov    (%eax),%eax
  102e8c:	eb 30                	jmp    102ebe <getuint+0x57>
  102e8e:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  102e92:	74 16                	je     102eaa <getuint+0x43>
  102e94:	8b 45 08             	mov    0x8(%ebp),%eax
  102e97:	8b 00                	mov    (%eax),%eax
  102e99:	8d 48 04             	lea    0x4(%eax),%ecx
  102e9c:	8b 55 08             	mov    0x8(%ebp),%edx
  102e9f:	89 0a                	mov    %ecx,(%edx)
  102ea1:	8b 00                	mov    (%eax),%eax
  102ea3:	ba 00 00 00 00       	mov    $0x0,%edx
  102ea8:	eb 14                	jmp    102ebe <getuint+0x57>
  102eaa:	8b 45 08             	mov    0x8(%ebp),%eax
  102ead:	8b 00                	mov    (%eax),%eax
  102eaf:	8d 48 04             	lea    0x4(%eax),%ecx
  102eb2:	8b 55 08             	mov    0x8(%ebp),%edx
  102eb5:	89 0a                	mov    %ecx,(%edx)
  102eb7:	8b 00                	mov    (%eax),%eax
  102eb9:	ba 00 00 00 00       	mov    $0x0,%edx
  102ebe:	5d                   	pop    %ebp
  102ebf:	c3                   	ret

00102ec0 <getint>:
  102ec0:	55                   	push   %ebp
  102ec1:	89 e5                	mov    %esp,%ebp
  102ec3:	e8 f0 d4 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102ec8:	05 2c 91 00 00       	add    $0x912c,%eax
  102ecd:	83 7d 0c 01          	cmpl   $0x1,0xc(%ebp)
  102ed1:	7e 14                	jle    102ee7 <getint+0x27>
  102ed3:	8b 45 08             	mov    0x8(%ebp),%eax
  102ed6:	8b 00                	mov    (%eax),%eax
  102ed8:	8d 48 08             	lea    0x8(%eax),%ecx
  102edb:	8b 55 08             	mov    0x8(%ebp),%edx
  102ede:	89 0a                	mov    %ecx,(%edx)
  102ee0:	8b 50 04             	mov    0x4(%eax),%edx
  102ee3:	8b 00                	mov    (%eax),%eax
  102ee5:	eb 28                	jmp    102f0f <getint+0x4f>
  102ee7:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  102eeb:	74 12                	je     102eff <getint+0x3f>
  102eed:	8b 45 08             	mov    0x8(%ebp),%eax
  102ef0:	8b 00                	mov    (%eax),%eax
  102ef2:	8d 48 04             	lea    0x4(%eax),%ecx
  102ef5:	8b 55 08             	mov    0x8(%ebp),%edx
  102ef8:	89 0a                	mov    %ecx,(%edx)
  102efa:	8b 00                	mov    (%eax),%eax
  102efc:	99                   	cltd
  102efd:	eb 10                	jmp    102f0f <getint+0x4f>
  102eff:	8b 45 08             	mov    0x8(%ebp),%eax
  102f02:	8b 00                	mov    (%eax),%eax
  102f04:	8d 48 04             	lea    0x4(%eax),%ecx
  102f07:	8b 55 08             	mov    0x8(%ebp),%edx
  102f0a:	89 0a                	mov    %ecx,(%edx)
  102f0c:	8b 00                	mov    (%eax),%eax
  102f0e:	99                   	cltd
  102f0f:	5d                   	pop    %ebp
  102f10:	c3                   	ret

00102f11 <vprintfmt>:
  102f11:	55                   	push   %ebp
  102f12:	89 e5                	mov    %esp,%ebp
  102f14:	57                   	push   %edi
  102f15:	56                   	push   %esi
  102f16:	53                   	push   %ebx
  102f17:	83 ec 2c             	sub    $0x2c,%esp
  102f1a:	e8 41 03 00 00       	call   103260 <__x86.get_pc_thunk.di>
  102f1f:	81 c7 d5 90 00 00    	add    $0x90d5,%edi
  102f25:	eb 17                	jmp    102f3e <vprintfmt+0x2d>
  102f27:	85 db                	test   %ebx,%ebx
  102f29:	0f 84 24 03 00 00    	je     103253 <.L21+0x2d>
  102f2f:	83 ec 08             	sub    $0x8,%esp
  102f32:	ff 75 0c             	push   0xc(%ebp)
  102f35:	53                   	push   %ebx
  102f36:	8b 45 08             	mov    0x8(%ebp),%eax
  102f39:	ff d0                	call   *%eax
  102f3b:	83 c4 10             	add    $0x10,%esp
  102f3e:	8b 45 10             	mov    0x10(%ebp),%eax
  102f41:	8d 50 01             	lea    0x1(%eax),%edx
  102f44:	89 55 10             	mov    %edx,0x10(%ebp)
  102f47:	0f b6 00             	movzbl (%eax),%eax
  102f4a:	0f b6 d8             	movzbl %al,%ebx
  102f4d:	83 fb 25             	cmp    $0x25,%ebx
  102f50:	75 d5                	jne    102f27 <vprintfmt+0x16>
  102f52:	c6 45 cb 20          	movb   $0x20,-0x35(%ebp)
  102f56:	c7 45 d4 ff ff ff ff 	movl   $0xffffffff,-0x2c(%ebp)
  102f5d:	c7 45 d0 ff ff ff ff 	movl   $0xffffffff,-0x30(%ebp)
  102f64:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
  102f6b:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%ebp)
  102f72:	eb 04                	jmp    102f78 <vprintfmt+0x67>
  102f74:	90                   	nop
  102f75:	eb 01                	jmp    102f78 <vprintfmt+0x67>
  102f77:	90                   	nop
  102f78:	8b 45 10             	mov    0x10(%ebp),%eax
  102f7b:	8d 50 01             	lea    0x1(%eax),%edx
  102f7e:	89 55 10             	mov    %edx,0x10(%ebp)
  102f81:	0f b6 00             	movzbl (%eax),%eax
  102f84:	0f b6 d8             	movzbl %al,%ebx
  102f87:	8d 43 dd             	lea    -0x23(%ebx),%eax
  102f8a:	83 f8 55             	cmp    $0x55,%eax
  102f8d:	0f 87 93 02 00 00    	ja     103226 <.L21>
  102f93:	c1 e0 02             	shl    $0x2,%eax
  102f96:	8b 84 38 80 b1 ff ff 	mov    -0x4e80(%eax,%edi,1),%eax
  102f9d:	01 f8                	add    %edi,%eax
  102f9f:	ff e0                	jmp    *%eax

00102fa1 <.L33>:
  102fa1:	c6 45 cb 2d          	movb   $0x2d,-0x35(%ebp)
  102fa5:	eb d1                	jmp    102f78 <vprintfmt+0x67>

00102fa7 <.L31>:
  102fa7:	c6 45 cb 30          	movb   $0x30,-0x35(%ebp)
  102fab:	eb cb                	jmp    102f78 <vprintfmt+0x67>

00102fad <.L30>:
  102fad:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%ebp)
  102fb4:	8b 55 d0             	mov    -0x30(%ebp),%edx
  102fb7:	89 d0                	mov    %edx,%eax
  102fb9:	c1 e0 02             	shl    $0x2,%eax
  102fbc:	01 d0                	add    %edx,%eax
  102fbe:	01 c0                	add    %eax,%eax
  102fc0:	01 d8                	add    %ebx,%eax
  102fc2:	83 e8 30             	sub    $0x30,%eax
  102fc5:	89 45 d0             	mov    %eax,-0x30(%ebp)
  102fc8:	8b 45 10             	mov    0x10(%ebp),%eax
  102fcb:	0f b6 00             	movzbl (%eax),%eax
  102fce:	0f be d8             	movsbl %al,%ebx
  102fd1:	83 fb 2f             	cmp    $0x2f,%ebx
  102fd4:	7e 3d                	jle    103013 <.L36+0xc>
  102fd6:	83 fb 39             	cmp    $0x39,%ebx
  102fd9:	7f 38                	jg     103013 <.L36+0xc>
  102fdb:	83 45 10 01          	addl   $0x1,0x10(%ebp)
  102fdf:	eb d3                	jmp    102fb4 <.L30+0x7>

00102fe1 <.L34>:
  102fe1:	8b 45 14             	mov    0x14(%ebp),%eax
  102fe4:	8d 50 04             	lea    0x4(%eax),%edx
  102fe7:	89 55 14             	mov    %edx,0x14(%ebp)
  102fea:	8b 00                	mov    (%eax),%eax
  102fec:	89 45 d0             	mov    %eax,-0x30(%ebp)
  102fef:	eb 23                	jmp    103014 <.L36+0xd>

00102ff1 <.L32>:
  102ff1:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
  102ff5:	0f 89 79 ff ff ff    	jns    102f74 <vprintfmt+0x63>
  102ffb:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
  103002:	e9 6d ff ff ff       	jmp    102f74 <vprintfmt+0x63>

00103007 <.L36>:
  103007:	c7 45 cc 01 00 00 00 	movl   $0x1,-0x34(%ebp)
  10300e:	e9 65 ff ff ff       	jmp    102f78 <vprintfmt+0x67>
  103013:	90                   	nop
  103014:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
  103018:	0f 89 59 ff ff ff    	jns    102f77 <vprintfmt+0x66>
  10301e:	8b 45 d0             	mov    -0x30(%ebp),%eax
  103021:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  103024:	c7 45 d0 ff ff ff ff 	movl   $0xffffffff,-0x30(%ebp)
  10302b:	e9 47 ff ff ff       	jmp    102f77 <vprintfmt+0x66>

00103030 <.L27>:
  103030:	83 45 d8 01          	addl   $0x1,-0x28(%ebp)
  103034:	e9 3f ff ff ff       	jmp    102f78 <vprintfmt+0x67>

00103039 <.L29>:
  103039:	8b 45 14             	mov    0x14(%ebp),%eax
  10303c:	8d 50 04             	lea    0x4(%eax),%edx
  10303f:	89 55 14             	mov    %edx,0x14(%ebp)
  103042:	8b 00                	mov    (%eax),%eax
  103044:	83 ec 08             	sub    $0x8,%esp
  103047:	ff 75 0c             	push   0xc(%ebp)
  10304a:	50                   	push   %eax
  10304b:	8b 45 08             	mov    0x8(%ebp),%eax
  10304e:	ff d0                	call   *%eax
  103050:	83 c4 10             	add    $0x10,%esp
  103053:	e9 f6 01 00 00       	jmp    10324e <.L21+0x28>

00103058 <.L25>:
  103058:	8b 45 14             	mov    0x14(%ebp),%eax
  10305b:	8d 50 04             	lea    0x4(%eax),%edx
  10305e:	89 55 14             	mov    %edx,0x14(%ebp)
  103061:	8b 30                	mov    (%eax),%esi
  103063:	85 f6                	test   %esi,%esi
  103065:	75 06                	jne    10306d <.L25+0x15>
  103067:	8d b7 79 b1 ff ff    	lea    -0x4e87(%edi),%esi
  10306d:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
  103071:	7e 71                	jle    1030e4 <.L25+0x8c>
  103073:	80 7d cb 2d          	cmpb   $0x2d,-0x35(%ebp)
  103077:	74 6b                	je     1030e4 <.L25+0x8c>
  103079:	8b 45 d0             	mov    -0x30(%ebp),%eax
  10307c:	83 ec 08             	sub    $0x8,%esp
  10307f:	50                   	push   %eax
  103080:	56                   	push   %esi
  103081:	89 fb                	mov    %edi,%ebx
  103083:	e8 01 f9 ff ff       	call   102989 <strnlen>
  103088:	83 c4 10             	add    $0x10,%esp
  10308b:	29 45 d4             	sub    %eax,-0x2c(%ebp)
  10308e:	eb 17                	jmp    1030a7 <.L25+0x4f>
  103090:	0f be 45 cb          	movsbl -0x35(%ebp),%eax
  103094:	83 ec 08             	sub    $0x8,%esp
  103097:	ff 75 0c             	push   0xc(%ebp)
  10309a:	50                   	push   %eax
  10309b:	8b 45 08             	mov    0x8(%ebp),%eax
  10309e:	ff d0                	call   *%eax
  1030a0:	83 c4 10             	add    $0x10,%esp
  1030a3:	83 6d d4 01          	subl   $0x1,-0x2c(%ebp)
  1030a7:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
  1030ab:	7f e3                	jg     103090 <.L25+0x38>
  1030ad:	eb 35                	jmp    1030e4 <.L25+0x8c>
  1030af:	83 7d cc 00          	cmpl   $0x0,-0x34(%ebp)
  1030b3:	74 1c                	je     1030d1 <.L25+0x79>
  1030b5:	83 fb 1f             	cmp    $0x1f,%ebx
  1030b8:	7e 05                	jle    1030bf <.L25+0x67>
  1030ba:	83 fb 7e             	cmp    $0x7e,%ebx
  1030bd:	7e 12                	jle    1030d1 <.L25+0x79>
  1030bf:	83 ec 08             	sub    $0x8,%esp
  1030c2:	ff 75 0c             	push   0xc(%ebp)
  1030c5:	6a 3f                	push   $0x3f
  1030c7:	8b 45 08             	mov    0x8(%ebp),%eax
  1030ca:	ff d0                	call   *%eax
  1030cc:	83 c4 10             	add    $0x10,%esp
  1030cf:	eb 0f                	jmp    1030e0 <.L25+0x88>
  1030d1:	83 ec 08             	sub    $0x8,%esp
  1030d4:	ff 75 0c             	push   0xc(%ebp)
  1030d7:	53                   	push   %ebx
  1030d8:	8b 45 08             	mov    0x8(%ebp),%eax
  1030db:	ff d0                	call   *%eax
  1030dd:	83 c4 10             	add    $0x10,%esp
  1030e0:	83 6d d4 01          	subl   $0x1,-0x2c(%ebp)
  1030e4:	89 f0                	mov    %esi,%eax
  1030e6:	8d 70 01             	lea    0x1(%eax),%esi
  1030e9:	0f b6 00             	movzbl (%eax),%eax
  1030ec:	0f be d8             	movsbl %al,%ebx
  1030ef:	85 db                	test   %ebx,%ebx
  1030f1:	74 26                	je     103119 <.L25+0xc1>
  1030f3:	83 7d d0 00          	cmpl   $0x0,-0x30(%ebp)
  1030f7:	78 b6                	js     1030af <.L25+0x57>
  1030f9:	83 6d d0 01          	subl   $0x1,-0x30(%ebp)
  1030fd:	83 7d d0 00          	cmpl   $0x0,-0x30(%ebp)
  103101:	79 ac                	jns    1030af <.L25+0x57>
  103103:	eb 14                	jmp    103119 <.L25+0xc1>
  103105:	83 ec 08             	sub    $0x8,%esp
  103108:	ff 75 0c             	push   0xc(%ebp)
  10310b:	6a 20                	push   $0x20
  10310d:	8b 45 08             	mov    0x8(%ebp),%eax
  103110:	ff d0                	call   *%eax
  103112:	83 c4 10             	add    $0x10,%esp
  103115:	83 6d d4 01          	subl   $0x1,-0x2c(%ebp)
  103119:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
  10311d:	7f e6                	jg     103105 <.L25+0xad>
  10311f:	e9 2a 01 00 00       	jmp    10324e <.L21+0x28>

00103124 <.L28>:
  103124:	83 ec 08             	sub    $0x8,%esp
  103127:	ff 75 d8             	push   -0x28(%ebp)
  10312a:	8d 45 14             	lea    0x14(%ebp),%eax
  10312d:	50                   	push   %eax
  10312e:	e8 8d fd ff ff       	call   102ec0 <getint>
  103133:	83 c4 10             	add    $0x10,%esp
  103136:	89 45 e0             	mov    %eax,-0x20(%ebp)
  103139:	89 55 e4             	mov    %edx,-0x1c(%ebp)
  10313c:	8b 45 e0             	mov    -0x20(%ebp),%eax
  10313f:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  103142:	85 d2                	test   %edx,%edx
  103144:	79 23                	jns    103169 <.L28+0x45>
  103146:	83 ec 08             	sub    $0x8,%esp
  103149:	ff 75 0c             	push   0xc(%ebp)
  10314c:	6a 2d                	push   $0x2d
  10314e:	8b 45 08             	mov    0x8(%ebp),%eax
  103151:	ff d0                	call   *%eax
  103153:	83 c4 10             	add    $0x10,%esp
  103156:	8b 45 e0             	mov    -0x20(%ebp),%eax
  103159:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  10315c:	f7 d8                	neg    %eax
  10315e:	83 d2 00             	adc    $0x0,%edx
  103161:	f7 da                	neg    %edx
  103163:	89 45 e0             	mov    %eax,-0x20(%ebp)
  103166:	89 55 e4             	mov    %edx,-0x1c(%ebp)
  103169:	c7 45 dc 0a 00 00 00 	movl   $0xa,-0x24(%ebp)
  103170:	eb 7e                	jmp    1031f0 <.L22+0x1f>

00103172 <.L24>:
  103172:	83 ec 08             	sub    $0x8,%esp
  103175:	ff 75 d8             	push   -0x28(%ebp)
  103178:	8d 45 14             	lea    0x14(%ebp),%eax
  10317b:	50                   	push   %eax
  10317c:	e8 e6 fc ff ff       	call   102e67 <getuint>
  103181:	83 c4 10             	add    $0x10,%esp
  103184:	89 45 e0             	mov    %eax,-0x20(%ebp)
  103187:	89 55 e4             	mov    %edx,-0x1c(%ebp)
  10318a:	c7 45 dc 0a 00 00 00 	movl   $0xa,-0x24(%ebp)
  103191:	eb 5d                	jmp    1031f0 <.L22+0x1f>

00103193 <.L26>:
  103193:	83 ec 08             	sub    $0x8,%esp
  103196:	ff 75 0c             	push   0xc(%ebp)
  103199:	6a 30                	push   $0x30
  10319b:	8b 45 08             	mov    0x8(%ebp),%eax
  10319e:	ff d0                	call   *%eax
  1031a0:	83 c4 10             	add    $0x10,%esp
  1031a3:	83 ec 08             	sub    $0x8,%esp
  1031a6:	ff 75 0c             	push   0xc(%ebp)
  1031a9:	6a 78                	push   $0x78
  1031ab:	8b 45 08             	mov    0x8(%ebp),%eax
  1031ae:	ff d0                	call   *%eax
  1031b0:	83 c4 10             	add    $0x10,%esp
  1031b3:	8b 45 14             	mov    0x14(%ebp),%eax
  1031b6:	8d 50 04             	lea    0x4(%eax),%edx
  1031b9:	89 55 14             	mov    %edx,0x14(%ebp)
  1031bc:	8b 00                	mov    (%eax),%eax
  1031be:	89 45 e0             	mov    %eax,-0x20(%ebp)
  1031c1:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  1031c8:	c7 45 dc 10 00 00 00 	movl   $0x10,-0x24(%ebp)
  1031cf:	eb 1f                	jmp    1031f0 <.L22+0x1f>

001031d1 <.L22>:
  1031d1:	83 ec 08             	sub    $0x8,%esp
  1031d4:	ff 75 d8             	push   -0x28(%ebp)
  1031d7:	8d 45 14             	lea    0x14(%ebp),%eax
  1031da:	50                   	push   %eax
  1031db:	e8 87 fc ff ff       	call   102e67 <getuint>
  1031e0:	83 c4 10             	add    $0x10,%esp
  1031e3:	89 45 e0             	mov    %eax,-0x20(%ebp)
  1031e6:	89 55 e4             	mov    %edx,-0x1c(%ebp)
  1031e9:	c7 45 dc 10 00 00 00 	movl   $0x10,-0x24(%ebp)
  1031f0:	0f be 55 cb          	movsbl -0x35(%ebp),%edx
  1031f4:	8b 45 dc             	mov    -0x24(%ebp),%eax
  1031f7:	83 ec 04             	sub    $0x4,%esp
  1031fa:	52                   	push   %edx
  1031fb:	ff 75 d4             	push   -0x2c(%ebp)
  1031fe:	50                   	push   %eax
  1031ff:	ff 75 e4             	push   -0x1c(%ebp)
  103202:	ff 75 e0             	push   -0x20(%ebp)
  103205:	ff 75 0c             	push   0xc(%ebp)
  103208:	ff 75 08             	push   0x8(%ebp)
  10320b:	e8 8c fb ff ff       	call   102d9c <printnum>
  103210:	83 c4 20             	add    $0x20,%esp
  103213:	eb 39                	jmp    10324e <.L21+0x28>

00103215 <.L35>:
  103215:	83 ec 08             	sub    $0x8,%esp
  103218:	ff 75 0c             	push   0xc(%ebp)
  10321b:	53                   	push   %ebx
  10321c:	8b 45 08             	mov    0x8(%ebp),%eax
  10321f:	ff d0                	call   *%eax
  103221:	83 c4 10             	add    $0x10,%esp
  103224:	eb 28                	jmp    10324e <.L21+0x28>

00103226 <.L21>:
  103226:	83 ec 08             	sub    $0x8,%esp
  103229:	ff 75 0c             	push   0xc(%ebp)
  10322c:	6a 25                	push   $0x25
  10322e:	8b 45 08             	mov    0x8(%ebp),%eax
  103231:	ff d0                	call   *%eax
  103233:	83 c4 10             	add    $0x10,%esp
  103236:	83 6d 10 01          	subl   $0x1,0x10(%ebp)
  10323a:	eb 04                	jmp    103240 <.L21+0x1a>
  10323c:	83 6d 10 01          	subl   $0x1,0x10(%ebp)
  103240:	8b 45 10             	mov    0x10(%ebp),%eax
  103243:	83 e8 01             	sub    $0x1,%eax
  103246:	0f b6 00             	movzbl (%eax),%eax
  103249:	3c 25                	cmp    $0x25,%al
  10324b:	75 ef                	jne    10323c <.L21+0x16>
  10324d:	90                   	nop
  10324e:	e9 eb fc ff ff       	jmp    102f3e <vprintfmt+0x2d>
  103253:	90                   	nop
  103254:	8d 65 f4             	lea    -0xc(%ebp),%esp
  103257:	5b                   	pop    %ebx
  103258:	5e                   	pop    %esi
  103259:	5f                   	pop    %edi
  10325a:	5d                   	pop    %ebp
  10325b:	c3                   	ret

0010325c <__x86.get_pc_thunk.si>:
  10325c:	8b 34 24             	mov    (%esp),%esi
  10325f:	c3                   	ret

00103260 <__x86.get_pc_thunk.di>:
  103260:	8b 3c 24             	mov    (%esp),%edi
  103263:	c3                   	ret

00103264 <seg_init>:
  103264:	55                   	push   %ebp
  103265:	89 e5                	mov    %esp,%ebp
  103267:	53                   	push   %ebx
  103268:	83 ec 14             	sub    $0x14,%esp
  10326b:	e8 50 d1 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  103270:	81 c3 84 8d 00 00    	add    $0x8d84,%ebx
  103276:	8d 83 0c 80 00 00    	lea    0x800c(%ebx),%eax
  10327c:	c7 c2 e0 18 11 00    	mov    $0x1118e0,%edx
  103282:	29 d0                	sub    %edx,%eax
  103284:	83 ec 08             	sub    $0x8,%esp
  103287:	50                   	push   %eax
  103288:	c7 c0 e0 18 11 00    	mov    $0x1118e0,%eax
  10328e:	50                   	push   %eax
  10328f:	e8 b5 f7 ff ff       	call   102a49 <memzero>
  103294:	83 c4 10             	add    $0x10,%esp
  103297:	c7 c0 00 a0 d9 00    	mov    $0xd9a000,%eax
  10329d:	89 c2                	mov    %eax,%edx
  10329f:	8d 83 0c 80 00 00    	lea    0x800c(%ebx),%eax
  1032a5:	29 c2                	sub    %eax,%edx
  1032a7:	8d 82 00 f0 ff ff    	lea    -0x1000(%edx),%eax
  1032ad:	89 c2                	mov    %eax,%edx
  1032af:	8d 83 0c 90 00 00    	lea    0x900c(%ebx),%eax
  1032b5:	83 ec 08             	sub    $0x8,%esp
  1032b8:	52                   	push   %edx
  1032b9:	50                   	push   %eax
  1032ba:	e8 8a f7 ff ff       	call   102a49 <memzero>
  1032bf:	83 c4 10             	add    $0x10,%esp
  1032c2:	c7 83 0c 90 04 00 00 	movl   $0x0,0x4900c(%ebx)
  1032c9:	00 00 00 
  1032cc:	c7 83 10 90 04 00 00 	movl   $0x0,0x49010(%ebx)
  1032d3:	00 00 00 
  1032d6:	66 c7 83 14 90 04 00 	movw   $0xffff,0x49014(%ebx)
  1032dd:	ff ff 
  1032df:	66 c7 83 16 90 04 00 	movw   $0x0,0x49016(%ebx)
  1032e6:	00 00 
  1032e8:	c6 83 18 90 04 00 00 	movb   $0x0,0x49018(%ebx)
  1032ef:	0f b6 83 19 90 04 00 	movzbl 0x49019(%ebx),%eax
  1032f6:	83 e0 f0             	and    $0xfffffff0,%eax
  1032f9:	83 c8 0a             	or     $0xa,%eax
  1032fc:	88 83 19 90 04 00    	mov    %al,0x49019(%ebx)
  103302:	0f b6 83 19 90 04 00 	movzbl 0x49019(%ebx),%eax
  103309:	83 c8 10             	or     $0x10,%eax
  10330c:	88 83 19 90 04 00    	mov    %al,0x49019(%ebx)
  103312:	0f b6 83 19 90 04 00 	movzbl 0x49019(%ebx),%eax
  103319:	83 e0 9f             	and    $0xffffff9f,%eax
  10331c:	88 83 19 90 04 00    	mov    %al,0x49019(%ebx)
  103322:	0f b6 83 19 90 04 00 	movzbl 0x49019(%ebx),%eax
  103329:	83 c8 80             	or     $0xffffff80,%eax
  10332c:	88 83 19 90 04 00    	mov    %al,0x49019(%ebx)
  103332:	0f b6 83 1a 90 04 00 	movzbl 0x4901a(%ebx),%eax
  103339:	83 c8 0f             	or     $0xf,%eax
  10333c:	88 83 1a 90 04 00    	mov    %al,0x4901a(%ebx)
  103342:	0f b6 83 1a 90 04 00 	movzbl 0x4901a(%ebx),%eax
  103349:	83 e0 ef             	and    $0xffffffef,%eax
  10334c:	88 83 1a 90 04 00    	mov    %al,0x4901a(%ebx)
  103352:	0f b6 83 1a 90 04 00 	movzbl 0x4901a(%ebx),%eax
  103359:	83 e0 df             	and    $0xffffffdf,%eax
  10335c:	88 83 1a 90 04 00    	mov    %al,0x4901a(%ebx)
  103362:	0f b6 83 1a 90 04 00 	movzbl 0x4901a(%ebx),%eax
  103369:	83 c8 40             	or     $0x40,%eax
  10336c:	88 83 1a 90 04 00    	mov    %al,0x4901a(%ebx)
  103372:	0f b6 83 1a 90 04 00 	movzbl 0x4901a(%ebx),%eax
  103379:	83 c8 80             	or     $0xffffff80,%eax
  10337c:	88 83 1a 90 04 00    	mov    %al,0x4901a(%ebx)
  103382:	c6 83 1b 90 04 00 00 	movb   $0x0,0x4901b(%ebx)
  103389:	66 c7 83 1c 90 04 00 	movw   $0xffff,0x4901c(%ebx)
  103390:	ff ff 
  103392:	66 c7 83 1e 90 04 00 	movw   $0x0,0x4901e(%ebx)
  103399:	00 00 
  10339b:	c6 83 20 90 04 00 00 	movb   $0x0,0x49020(%ebx)
  1033a2:	0f b6 83 21 90 04 00 	movzbl 0x49021(%ebx),%eax
  1033a9:	83 e0 f0             	and    $0xfffffff0,%eax
  1033ac:	83 c8 02             	or     $0x2,%eax
  1033af:	88 83 21 90 04 00    	mov    %al,0x49021(%ebx)
  1033b5:	0f b6 83 21 90 04 00 	movzbl 0x49021(%ebx),%eax
  1033bc:	83 c8 10             	or     $0x10,%eax
  1033bf:	88 83 21 90 04 00    	mov    %al,0x49021(%ebx)
  1033c5:	0f b6 83 21 90 04 00 	movzbl 0x49021(%ebx),%eax
  1033cc:	83 e0 9f             	and    $0xffffff9f,%eax
  1033cf:	88 83 21 90 04 00    	mov    %al,0x49021(%ebx)
  1033d5:	0f b6 83 21 90 04 00 	movzbl 0x49021(%ebx),%eax
  1033dc:	83 c8 80             	or     $0xffffff80,%eax
  1033df:	88 83 21 90 04 00    	mov    %al,0x49021(%ebx)
  1033e5:	0f b6 83 22 90 04 00 	movzbl 0x49022(%ebx),%eax
  1033ec:	83 c8 0f             	or     $0xf,%eax
  1033ef:	88 83 22 90 04 00    	mov    %al,0x49022(%ebx)
  1033f5:	0f b6 83 22 90 04 00 	movzbl 0x49022(%ebx),%eax
  1033fc:	83 e0 ef             	and    $0xffffffef,%eax
  1033ff:	88 83 22 90 04 00    	mov    %al,0x49022(%ebx)
  103405:	0f b6 83 22 90 04 00 	movzbl 0x49022(%ebx),%eax
  10340c:	83 e0 df             	and    $0xffffffdf,%eax
  10340f:	88 83 22 90 04 00    	mov    %al,0x49022(%ebx)
  103415:	0f b6 83 22 90 04 00 	movzbl 0x49022(%ebx),%eax
  10341c:	83 c8 40             	or     $0x40,%eax
  10341f:	88 83 22 90 04 00    	mov    %al,0x49022(%ebx)
  103425:	0f b6 83 22 90 04 00 	movzbl 0x49022(%ebx),%eax
  10342c:	83 c8 80             	or     $0xffffff80,%eax
  10342f:	88 83 22 90 04 00    	mov    %al,0x49022(%ebx)
  103435:	c6 83 23 90 04 00 00 	movb   $0x0,0x49023(%ebx)
  10343c:	66 c7 83 24 90 04 00 	movw   $0xffff,0x49024(%ebx)
  103443:	ff ff 
  103445:	66 c7 83 26 90 04 00 	movw   $0x0,0x49026(%ebx)
  10344c:	00 00 
  10344e:	c6 83 28 90 04 00 00 	movb   $0x0,0x49028(%ebx)
  103455:	0f b6 83 29 90 04 00 	movzbl 0x49029(%ebx),%eax
  10345c:	83 e0 f0             	and    $0xfffffff0,%eax
  10345f:	83 c8 0a             	or     $0xa,%eax
  103462:	88 83 29 90 04 00    	mov    %al,0x49029(%ebx)
  103468:	0f b6 83 29 90 04 00 	movzbl 0x49029(%ebx),%eax
  10346f:	83 c8 10             	or     $0x10,%eax
  103472:	88 83 29 90 04 00    	mov    %al,0x49029(%ebx)
  103478:	0f b6 83 29 90 04 00 	movzbl 0x49029(%ebx),%eax
  10347f:	83 c8 60             	or     $0x60,%eax
  103482:	88 83 29 90 04 00    	mov    %al,0x49029(%ebx)
  103488:	0f b6 83 29 90 04 00 	movzbl 0x49029(%ebx),%eax
  10348f:	83 c8 80             	or     $0xffffff80,%eax
  103492:	88 83 29 90 04 00    	mov    %al,0x49029(%ebx)
  103498:	0f b6 83 2a 90 04 00 	movzbl 0x4902a(%ebx),%eax
  10349f:	83 c8 0f             	or     $0xf,%eax
  1034a2:	88 83 2a 90 04 00    	mov    %al,0x4902a(%ebx)
  1034a8:	0f b6 83 2a 90 04 00 	movzbl 0x4902a(%ebx),%eax
  1034af:	83 e0 ef             	and    $0xffffffef,%eax
  1034b2:	88 83 2a 90 04 00    	mov    %al,0x4902a(%ebx)
  1034b8:	0f b6 83 2a 90 04 00 	movzbl 0x4902a(%ebx),%eax
  1034bf:	83 e0 df             	and    $0xffffffdf,%eax
  1034c2:	88 83 2a 90 04 00    	mov    %al,0x4902a(%ebx)
  1034c8:	0f b6 83 2a 90 04 00 	movzbl 0x4902a(%ebx),%eax
  1034cf:	83 c8 40             	or     $0x40,%eax
  1034d2:	88 83 2a 90 04 00    	mov    %al,0x4902a(%ebx)
  1034d8:	0f b6 83 2a 90 04 00 	movzbl 0x4902a(%ebx),%eax
  1034df:	83 c8 80             	or     $0xffffff80,%eax
  1034e2:	88 83 2a 90 04 00    	mov    %al,0x4902a(%ebx)
  1034e8:	c6 83 2b 90 04 00 00 	movb   $0x0,0x4902b(%ebx)
  1034ef:	66 c7 83 2c 90 04 00 	movw   $0xffff,0x4902c(%ebx)
  1034f6:	ff ff 
  1034f8:	66 c7 83 2e 90 04 00 	movw   $0x0,0x4902e(%ebx)
  1034ff:	00 00 
  103501:	c6 83 30 90 04 00 00 	movb   $0x0,0x49030(%ebx)
  103508:	0f b6 83 31 90 04 00 	movzbl 0x49031(%ebx),%eax
  10350f:	83 e0 f0             	and    $0xfffffff0,%eax
  103512:	83 c8 02             	or     $0x2,%eax
  103515:	88 83 31 90 04 00    	mov    %al,0x49031(%ebx)
  10351b:	0f b6 83 31 90 04 00 	movzbl 0x49031(%ebx),%eax
  103522:	83 c8 10             	or     $0x10,%eax
  103525:	88 83 31 90 04 00    	mov    %al,0x49031(%ebx)
  10352b:	0f b6 83 31 90 04 00 	movzbl 0x49031(%ebx),%eax
  103532:	83 c8 60             	or     $0x60,%eax
  103535:	88 83 31 90 04 00    	mov    %al,0x49031(%ebx)
  10353b:	0f b6 83 31 90 04 00 	movzbl 0x49031(%ebx),%eax
  103542:	83 c8 80             	or     $0xffffff80,%eax
  103545:	88 83 31 90 04 00    	mov    %al,0x49031(%ebx)
  10354b:	0f b6 83 32 90 04 00 	movzbl 0x49032(%ebx),%eax
  103552:	83 c8 0f             	or     $0xf,%eax
  103555:	88 83 32 90 04 00    	mov    %al,0x49032(%ebx)
  10355b:	0f b6 83 32 90 04 00 	movzbl 0x49032(%ebx),%eax
  103562:	83 e0 ef             	and    $0xffffffef,%eax
  103565:	88 83 32 90 04 00    	mov    %al,0x49032(%ebx)
  10356b:	0f b6 83 32 90 04 00 	movzbl 0x49032(%ebx),%eax
  103572:	83 e0 df             	and    $0xffffffdf,%eax
  103575:	88 83 32 90 04 00    	mov    %al,0x49032(%ebx)
  10357b:	0f b6 83 32 90 04 00 	movzbl 0x49032(%ebx),%eax
  103582:	83 c8 40             	or     $0x40,%eax
  103585:	88 83 32 90 04 00    	mov    %al,0x49032(%ebx)
  10358b:	0f b6 83 32 90 04 00 	movzbl 0x49032(%ebx),%eax
  103592:	83 c8 80             	or     $0xffffff80,%eax
  103595:	88 83 32 90 04 00    	mov    %al,0x49032(%ebx)
  10359b:	c6 83 33 90 04 00 00 	movb   $0x0,0x49033(%ebx)
  1035a2:	8d 83 0c 80 00 00    	lea    0x800c(%ebx),%eax
  1035a8:	05 00 10 00 00       	add    $0x1000,%eax
  1035ad:	89 83 50 cb 04 00    	mov    %eax,0x4cb50(%ebx)
  1035b3:	66 c7 83 54 cb 04 00 	movw   $0x10,0x4cb54(%ebx)
  1035ba:	10 00 
  1035bc:	66 c7 83 34 90 04 00 	movw   $0xeb,0x49034(%ebx)
  1035c3:	eb 00 
  1035c5:	8d 83 4c cb 04 00    	lea    0x4cb4c(%ebx),%eax
  1035cb:	66 89 83 36 90 04 00 	mov    %ax,0x49036(%ebx)
  1035d2:	8d 83 4c cb 04 00    	lea    0x4cb4c(%ebx),%eax
  1035d8:	c1 e8 10             	shr    $0x10,%eax
  1035db:	88 83 38 90 04 00    	mov    %al,0x49038(%ebx)
  1035e1:	0f b6 83 39 90 04 00 	movzbl 0x49039(%ebx),%eax
  1035e8:	83 e0 f0             	and    $0xfffffff0,%eax
  1035eb:	83 c8 09             	or     $0x9,%eax
  1035ee:	88 83 39 90 04 00    	mov    %al,0x49039(%ebx)
  1035f4:	0f b6 83 39 90 04 00 	movzbl 0x49039(%ebx),%eax
  1035fb:	83 c8 10             	or     $0x10,%eax
  1035fe:	88 83 39 90 04 00    	mov    %al,0x49039(%ebx)
  103604:	0f b6 83 39 90 04 00 	movzbl 0x49039(%ebx),%eax
  10360b:	83 e0 9f             	and    $0xffffff9f,%eax
  10360e:	88 83 39 90 04 00    	mov    %al,0x49039(%ebx)
  103614:	0f b6 83 39 90 04 00 	movzbl 0x49039(%ebx),%eax
  10361b:	83 c8 80             	or     $0xffffff80,%eax
  10361e:	88 83 39 90 04 00    	mov    %al,0x49039(%ebx)
  103624:	0f b6 83 3a 90 04 00 	movzbl 0x4903a(%ebx),%eax
  10362b:	83 e0 f0             	and    $0xfffffff0,%eax
  10362e:	88 83 3a 90 04 00    	mov    %al,0x4903a(%ebx)
  103634:	0f b6 83 3a 90 04 00 	movzbl 0x4903a(%ebx),%eax
  10363b:	83 e0 ef             	and    $0xffffffef,%eax
  10363e:	88 83 3a 90 04 00    	mov    %al,0x4903a(%ebx)
  103644:	0f b6 83 3a 90 04 00 	movzbl 0x4903a(%ebx),%eax
  10364b:	83 e0 df             	and    $0xffffffdf,%eax
  10364e:	88 83 3a 90 04 00    	mov    %al,0x4903a(%ebx)
  103654:	0f b6 83 3a 90 04 00 	movzbl 0x4903a(%ebx),%eax
  10365b:	83 c8 40             	or     $0x40,%eax
  10365e:	88 83 3a 90 04 00    	mov    %al,0x4903a(%ebx)
  103664:	0f b6 83 3a 90 04 00 	movzbl 0x4903a(%ebx),%eax
  10366b:	83 e0 7f             	and    $0x7f,%eax
  10366e:	88 83 3a 90 04 00    	mov    %al,0x4903a(%ebx)
  103674:	8d 83 4c cb 04 00    	lea    0x4cb4c(%ebx),%eax
  10367a:	c1 e8 18             	shr    $0x18,%eax
  10367d:	88 83 3b 90 04 00    	mov    %al,0x4903b(%ebx)
  103683:	0f b6 83 39 90 04 00 	movzbl 0x49039(%ebx),%eax
  10368a:	83 e0 ef             	and    $0xffffffef,%eax
  10368d:	88 83 39 90 04 00    	mov    %al,0x49039(%ebx)
  103693:	66 c7 45 ee 2f 00    	movw   $0x2f,-0x12(%ebp)
  103699:	8d 83 0c 90 04 00    	lea    0x4900c(%ebx),%eax
  10369f:	89 45 f0             	mov    %eax,-0x10(%ebp)
  1036a2:	0f 01 55 ee          	lgdtl  -0x12(%ebp)
  1036a6:	b8 10 00 00 00       	mov    $0x10,%eax
  1036ab:	8e e8                	mov    %eax,%gs
  1036ad:	b8 10 00 00 00       	mov    $0x10,%eax
  1036b2:	8e e0                	mov    %eax,%fs
  1036b4:	b8 10 00 00 00       	mov    $0x10,%eax
  1036b9:	8e c0                	mov    %eax,%es
  1036bb:	b8 10 00 00 00       	mov    $0x10,%eax
  1036c0:	8e d8                	mov    %eax,%ds
  1036c2:	b8 10 00 00 00       	mov    $0x10,%eax
  1036c7:	8e d0                	mov    %eax,%ss
  1036c9:	ea d0 36 10 00 08 00 	ljmp   $0x8,$0x1036d0
  1036d0:	83 ec 0c             	sub    $0xc,%esp
  1036d3:	6a 00                	push   $0x0
  1036d5:	e8 70 01 00 00       	call   10384a <lldt>
  1036da:	83 c4 10             	add    $0x10,%esp
  1036dd:	83 ec 0c             	sub    $0xc,%esp
  1036e0:	6a 28                	push   $0x28
  1036e2:	e8 2f 03 00 00       	call   103a16 <ltr>
  1036e7:	83 c4 10             	add    $0x10,%esp
  1036ea:	83 ec 08             	sub    $0x8,%esp
  1036ed:	68 00 3b 00 00       	push   $0x3b00
  1036f2:	8d 83 4c 90 04 00    	lea    0x4904c(%ebx),%eax
  1036f8:	50                   	push   %eax
  1036f9:	e8 4b f3 ff ff       	call   102a49 <memzero>
  1036fe:	83 c4 10             	add    $0x10,%esp
  103701:	83 ec 08             	sub    $0x8,%esp
  103704:	68 00 00 04 00       	push   $0x40000
  103709:	8d 83 0c 90 00 00    	lea    0x900c(%ebx),%eax
  10370f:	50                   	push   %eax
  103710:	e8 34 f3 ff ff       	call   102a49 <memzero>
  103715:	83 c4 10             	add    $0x10,%esp
  103718:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  10371f:	e9 9d 00 00 00       	jmp    1037c1 <seg_init+0x55d>
  103724:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103727:	c1 e0 0c             	shl    $0xc,%eax
  10372a:	89 c2                	mov    %eax,%edx
  10372c:	8d 83 0c 90 00 00    	lea    0x900c(%ebx),%eax
  103732:	01 d0                	add    %edx,%eax
  103734:	8d 90 00 10 00 00    	lea    0x1000(%eax),%edx
  10373a:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  10373d:	8d 83 50 90 04 00    	lea    0x49050(%ebx),%eax
  103743:	69 c9 ec 00 00 00    	imul   $0xec,%ecx,%ecx
  103749:	01 c8                	add    %ecx,%eax
  10374b:	89 10                	mov    %edx,(%eax)
  10374d:	8b 55 f4             	mov    -0xc(%ebp),%edx
  103750:	8d 83 54 90 04 00    	lea    0x49054(%ebx),%eax
  103756:	69 d2 ec 00 00 00    	imul   $0xec,%edx,%edx
  10375c:	01 d0                	add    %edx,%eax
  10375e:	66 c7 00 10 00       	movw   $0x10,(%eax)
  103763:	8b 55 f4             	mov    -0xc(%ebp),%edx
  103766:	8d 83 52 90 04 00    	lea    0x49052(%ebx),%eax
  10376c:	69 d2 ec 00 00 00    	imul   $0xec,%edx,%edx
  103772:	01 d0                	add    %edx,%eax
  103774:	83 c0 60             	add    $0x60,%eax
  103777:	66 c7 00 68 00       	movw   $0x68,(%eax)
  10377c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10377f:	69 c0 ec 00 00 00    	imul   $0xec,%eax,%eax
  103785:	8d 50 60             	lea    0x60(%eax),%edx
  103788:	8d 83 4c 90 04 00    	lea    0x4904c(%ebx),%eax
  10378e:	01 d0                	add    %edx,%eax
  103790:	83 c0 08             	add    $0x8,%eax
  103793:	83 ec 08             	sub    $0x8,%esp
  103796:	68 80 00 00 00       	push   $0x80
  10379b:	50                   	push   %eax
  10379c:	e8 a8 f2 ff ff       	call   102a49 <memzero>
  1037a1:	83 c4 10             	add    $0x10,%esp
  1037a4:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1037a7:	8d 83 54 90 04 00    	lea    0x49054(%ebx),%eax
  1037ad:	69 d2 ec 00 00 00    	imul   $0xec,%edx,%edx
  1037b3:	01 d0                	add    %edx,%eax
  1037b5:	05 e0 00 00 00       	add    $0xe0,%eax
  1037ba:	c6 00 ff             	movb   $0xff,(%eax)
  1037bd:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1037c1:	83 7d f4 3f          	cmpl   $0x3f,-0xc(%ebp)
  1037c5:	0f 86 59 ff ff ff    	jbe    103724 <seg_init+0x4c0>
  1037cb:	90                   	nop
  1037cc:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1037cf:	c9                   	leave
  1037d0:	c3                   	ret

001037d1 <max>:
  1037d1:	55                   	push   %ebp
  1037d2:	89 e5                	mov    %esp,%ebp
  1037d4:	e8 df cb ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1037d9:	05 1b 88 00 00       	add    $0x881b,%eax
  1037de:	8b 55 0c             	mov    0xc(%ebp),%edx
  1037e1:	8b 45 08             	mov    0x8(%ebp),%eax
  1037e4:	39 c2                	cmp    %eax,%edx
  1037e6:	0f 43 c2             	cmovae %edx,%eax
  1037e9:	5d                   	pop    %ebp
  1037ea:	c3                   	ret

001037eb <min>:
  1037eb:	55                   	push   %ebp
  1037ec:	89 e5                	mov    %esp,%ebp
  1037ee:	e8 c5 cb ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1037f3:	05 01 88 00 00       	add    $0x8801,%eax
  1037f8:	8b 55 0c             	mov    0xc(%ebp),%edx
  1037fb:	8b 45 08             	mov    0x8(%ebp),%eax
  1037fe:	39 c2                	cmp    %eax,%edx
  103800:	0f 46 c2             	cmovbe %edx,%eax
  103803:	5d                   	pop    %ebp
  103804:	c3                   	ret

00103805 <rounddown>:
  103805:	55                   	push   %ebp
  103806:	89 e5                	mov    %esp,%ebp
  103808:	e8 ab cb ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  10380d:	05 e7 87 00 00       	add    $0x87e7,%eax
  103812:	8b 45 08             	mov    0x8(%ebp),%eax
  103815:	ba 00 00 00 00       	mov    $0x0,%edx
  10381a:	f7 75 0c             	divl   0xc(%ebp)
  10381d:	8b 45 08             	mov    0x8(%ebp),%eax
  103820:	29 d0                	sub    %edx,%eax
  103822:	5d                   	pop    %ebp
  103823:	c3                   	ret

00103824 <roundup>:
  103824:	55                   	push   %ebp
  103825:	89 e5                	mov    %esp,%ebp
  103827:	e8 8c cb ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  10382c:	05 c8 87 00 00       	add    $0x87c8,%eax
  103831:	8b 55 08             	mov    0x8(%ebp),%edx
  103834:	8b 45 0c             	mov    0xc(%ebp),%eax
  103837:	01 d0                	add    %edx,%eax
  103839:	83 e8 01             	sub    $0x1,%eax
  10383c:	ff 75 0c             	push   0xc(%ebp)
  10383f:	50                   	push   %eax
  103840:	e8 c0 ff ff ff       	call   103805 <rounddown>
  103845:	83 c4 08             	add    $0x8,%esp
  103848:	c9                   	leave
  103849:	c3                   	ret

0010384a <lldt>:
  10384a:	55                   	push   %ebp
  10384b:	89 e5                	mov    %esp,%ebp
  10384d:	83 ec 04             	sub    $0x4,%esp
  103850:	e8 63 cb ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103855:	05 9f 87 00 00       	add    $0x879f,%eax
  10385a:	8b 45 08             	mov    0x8(%ebp),%eax
  10385d:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  103861:	0f b7 45 fc          	movzwl -0x4(%ebp),%eax
  103865:	0f 00 d0             	lldt   %eax
  103868:	90                   	nop
  103869:	c9                   	leave
  10386a:	c3                   	ret

0010386b <cli>:
  10386b:	55                   	push   %ebp
  10386c:	89 e5                	mov    %esp,%ebp
  10386e:	e8 45 cb ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103873:	05 81 87 00 00       	add    $0x8781,%eax
  103878:	fa                   	cli
  103879:	90                   	nop
  10387a:	5d                   	pop    %ebp
  10387b:	c3                   	ret

0010387c <sti>:
  10387c:	55                   	push   %ebp
  10387d:	89 e5                	mov    %esp,%ebp
  10387f:	e8 34 cb ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103884:	05 70 87 00 00       	add    $0x8770,%eax
  103889:	fb                   	sti
  10388a:	90                   	nop
  10388b:	90                   	nop
  10388c:	5d                   	pop    %ebp
  10388d:	c3                   	ret

0010388e <rdmsr>:
  10388e:	55                   	push   %ebp
  10388f:	89 e5                	mov    %esp,%ebp
  103891:	83 ec 10             	sub    $0x10,%esp
  103894:	e8 1f cb ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103899:	05 5b 87 00 00       	add    $0x875b,%eax
  10389e:	8b 45 08             	mov    0x8(%ebp),%eax
  1038a1:	89 c1                	mov    %eax,%ecx
  1038a3:	0f 32                	rdmsr
  1038a5:	89 45 f8             	mov    %eax,-0x8(%ebp)
  1038a8:	89 55 fc             	mov    %edx,-0x4(%ebp)
  1038ab:	8b 45 f8             	mov    -0x8(%ebp),%eax
  1038ae:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1038b1:	c9                   	leave
  1038b2:	c3                   	ret

001038b3 <wrmsr>:
  1038b3:	55                   	push   %ebp
  1038b4:	89 e5                	mov    %esp,%ebp
  1038b6:	83 ec 08             	sub    $0x8,%esp
  1038b9:	e8 fa ca ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1038be:	05 36 87 00 00       	add    $0x8736,%eax
  1038c3:	8b 45 0c             	mov    0xc(%ebp),%eax
  1038c6:	89 45 f8             	mov    %eax,-0x8(%ebp)
  1038c9:	8b 45 10             	mov    0x10(%ebp),%eax
  1038cc:	89 45 fc             	mov    %eax,-0x4(%ebp)
  1038cf:	8b 45 f8             	mov    -0x8(%ebp),%eax
  1038d2:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1038d5:	8b 4d 08             	mov    0x8(%ebp),%ecx
  1038d8:	0f 30                	wrmsr
  1038da:	90                   	nop
  1038db:	c9                   	leave
  1038dc:	c3                   	ret

001038dd <halt>:
  1038dd:	55                   	push   %ebp
  1038de:	89 e5                	mov    %esp,%ebp
  1038e0:	e8 d3 ca ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1038e5:	05 0f 87 00 00       	add    $0x870f,%eax
  1038ea:	f4                   	hlt
  1038eb:	90                   	nop
  1038ec:	5d                   	pop    %ebp
  1038ed:	c3                   	ret

001038ee <rdtsc>:
  1038ee:	55                   	push   %ebp
  1038ef:	89 e5                	mov    %esp,%ebp
  1038f1:	83 ec 10             	sub    $0x10,%esp
  1038f4:	e8 bf ca ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1038f9:	05 fb 86 00 00       	add    $0x86fb,%eax
  1038fe:	0f 31                	rdtsc
  103900:	89 45 f8             	mov    %eax,-0x8(%ebp)
  103903:	89 55 fc             	mov    %edx,-0x4(%ebp)
  103906:	8b 45 f8             	mov    -0x8(%ebp),%eax
  103909:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10390c:	c9                   	leave
  10390d:	c3                   	ret

0010390e <enable_sse>:
  10390e:	55                   	push   %ebp
  10390f:	89 e5                	mov    %esp,%ebp
  103911:	83 ec 20             	sub    $0x20,%esp
  103914:	e8 9f ca ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103919:	05 db 86 00 00       	add    $0x86db,%eax
  10391e:	0f 20 e0             	mov    %cr4,%eax
  103921:	89 45 ec             	mov    %eax,-0x14(%ebp)
  103924:	8b 45 ec             	mov    -0x14(%ebp),%eax
  103927:	80 cc 06             	or     $0x6,%ah
  10392a:	89 45 fc             	mov    %eax,-0x4(%ebp)
  10392d:	0f ae f0             	mfence
  103930:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103933:	89 45 f0             	mov    %eax,-0x10(%ebp)
  103936:	8b 45 f0             	mov    -0x10(%ebp),%eax
  103939:	0f 22 e0             	mov    %eax,%cr4
  10393c:	90                   	nop
  10393d:	0f 20 c0             	mov    %cr0,%eax
  103940:	89 45 f4             	mov    %eax,-0xc(%ebp)
  103943:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103946:	83 c8 02             	or     $0x2,%eax
  103949:	89 45 f8             	mov    %eax,-0x8(%ebp)
  10394c:	0f ae f0             	mfence
  10394f:	83 65 f8 f3          	andl   $0xfffffff3,-0x8(%ebp)
  103953:	90                   	nop
  103954:	c9                   	leave
  103955:	c3                   	ret

00103956 <cpuid>:
  103956:	55                   	push   %ebp
  103957:	89 e5                	mov    %esp,%ebp
  103959:	53                   	push   %ebx
  10395a:	83 ec 10             	sub    $0x10,%esp
  10395d:	e8 56 ca ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103962:	05 92 86 00 00       	add    $0x8692,%eax
  103967:	8b 45 08             	mov    0x8(%ebp),%eax
  10396a:	0f a2                	cpuid
  10396c:	89 45 f8             	mov    %eax,-0x8(%ebp)
  10396f:	89 5d f4             	mov    %ebx,-0xc(%ebp)
  103972:	89 4d f0             	mov    %ecx,-0x10(%ebp)
  103975:	89 55 ec             	mov    %edx,-0x14(%ebp)
  103978:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  10397c:	74 08                	je     103986 <cpuid+0x30>
  10397e:	8b 45 0c             	mov    0xc(%ebp),%eax
  103981:	8b 55 f8             	mov    -0x8(%ebp),%edx
  103984:	89 10                	mov    %edx,(%eax)
  103986:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
  10398a:	74 08                	je     103994 <cpuid+0x3e>
  10398c:	8b 45 10             	mov    0x10(%ebp),%eax
  10398f:	8b 55 f4             	mov    -0xc(%ebp),%edx
  103992:	89 10                	mov    %edx,(%eax)
  103994:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
  103998:	74 08                	je     1039a2 <cpuid+0x4c>
  10399a:	8b 45 14             	mov    0x14(%ebp),%eax
  10399d:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1039a0:	89 10                	mov    %edx,(%eax)
  1039a2:	83 7d 18 00          	cmpl   $0x0,0x18(%ebp)
  1039a6:	74 08                	je     1039b0 <cpuid+0x5a>
  1039a8:	8b 45 18             	mov    0x18(%ebp),%eax
  1039ab:	8b 55 ec             	mov    -0x14(%ebp),%edx
  1039ae:	89 10                	mov    %edx,(%eax)
  1039b0:	90                   	nop
  1039b1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1039b4:	c9                   	leave
  1039b5:	c3                   	ret

001039b6 <rcr3>:
  1039b6:	55                   	push   %ebp
  1039b7:	89 e5                	mov    %esp,%ebp
  1039b9:	83 ec 10             	sub    $0x10,%esp
  1039bc:	e8 f7 c9 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1039c1:	05 33 86 00 00       	add    $0x8633,%eax
  1039c6:	0f 20 d8             	mov    %cr3,%eax
  1039c9:	89 45 fc             	mov    %eax,-0x4(%ebp)
  1039cc:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1039cf:	c9                   	leave
  1039d0:	c3                   	ret

001039d1 <outl>:
  1039d1:	55                   	push   %ebp
  1039d2:	89 e5                	mov    %esp,%ebp
  1039d4:	e8 df c9 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1039d9:	05 1b 86 00 00       	add    $0x861b,%eax
  1039de:	8b 45 0c             	mov    0xc(%ebp),%eax
  1039e1:	8b 55 08             	mov    0x8(%ebp),%edx
  1039e4:	ef                   	out    %eax,(%dx)
  1039e5:	90                   	nop
  1039e6:	5d                   	pop    %ebp
  1039e7:	c3                   	ret

001039e8 <inl>:
  1039e8:	55                   	push   %ebp
  1039e9:	89 e5                	mov    %esp,%ebp
  1039eb:	83 ec 10             	sub    $0x10,%esp
  1039ee:	e8 c5 c9 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1039f3:	05 01 86 00 00       	add    $0x8601,%eax
  1039f8:	8b 45 08             	mov    0x8(%ebp),%eax
  1039fb:	89 c2                	mov    %eax,%edx
  1039fd:	ed                   	in     (%dx),%eax
  1039fe:	89 45 fc             	mov    %eax,-0x4(%ebp)
  103a01:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103a04:	c9                   	leave
  103a05:	c3                   	ret

00103a06 <smp_wmb>:
  103a06:	55                   	push   %ebp
  103a07:	89 e5                	mov    %esp,%ebp
  103a09:	e8 aa c9 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103a0e:	05 e6 85 00 00       	add    $0x85e6,%eax
  103a13:	90                   	nop
  103a14:	5d                   	pop    %ebp
  103a15:	c3                   	ret

00103a16 <ltr>:
  103a16:	55                   	push   %ebp
  103a17:	89 e5                	mov    %esp,%ebp
  103a19:	83 ec 04             	sub    $0x4,%esp
  103a1c:	e8 97 c9 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103a21:	05 d3 85 00 00       	add    $0x85d3,%eax
  103a26:	8b 45 08             	mov    0x8(%ebp),%eax
  103a29:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  103a2d:	0f b7 45 fc          	movzwl -0x4(%ebp),%eax
  103a31:	0f 00 d8             	ltr    %eax
  103a34:	90                   	nop
  103a35:	c9                   	leave
  103a36:	c3                   	ret

00103a37 <lcr0>:
  103a37:	55                   	push   %ebp
  103a38:	89 e5                	mov    %esp,%ebp
  103a3a:	e8 79 c9 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103a3f:	05 b5 85 00 00       	add    $0x85b5,%eax
  103a44:	8b 45 08             	mov    0x8(%ebp),%eax
  103a47:	0f 22 c0             	mov    %eax,%cr0
  103a4a:	90                   	nop
  103a4b:	5d                   	pop    %ebp
  103a4c:	c3                   	ret

00103a4d <rcr0>:
  103a4d:	55                   	push   %ebp
  103a4e:	89 e5                	mov    %esp,%ebp
  103a50:	83 ec 10             	sub    $0x10,%esp
  103a53:	e8 60 c9 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103a58:	05 9c 85 00 00       	add    $0x859c,%eax
  103a5d:	0f 20 c0             	mov    %cr0,%eax
  103a60:	89 45 fc             	mov    %eax,-0x4(%ebp)
  103a63:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103a66:	c9                   	leave
  103a67:	c3                   	ret

00103a68 <rcr2>:
  103a68:	55                   	push   %ebp
  103a69:	89 e5                	mov    %esp,%ebp
  103a6b:	83 ec 10             	sub    $0x10,%esp
  103a6e:	e8 45 c9 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103a73:	05 81 85 00 00       	add    $0x8581,%eax
  103a78:	0f 20 d0             	mov    %cr2,%eax
  103a7b:	89 45 fc             	mov    %eax,-0x4(%ebp)
  103a7e:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103a81:	c9                   	leave
  103a82:	c3                   	ret

00103a83 <lcr3>:
  103a83:	55                   	push   %ebp
  103a84:	89 e5                	mov    %esp,%ebp
  103a86:	e8 2d c9 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103a8b:	05 69 85 00 00       	add    $0x8569,%eax
  103a90:	8b 45 08             	mov    0x8(%ebp),%eax
  103a93:	0f 22 d8             	mov    %eax,%cr3
  103a96:	90                   	nop
  103a97:	5d                   	pop    %ebp
  103a98:	c3                   	ret

00103a99 <lcr4>:
  103a99:	55                   	push   %ebp
  103a9a:	89 e5                	mov    %esp,%ebp
  103a9c:	e8 17 c9 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103aa1:	05 53 85 00 00       	add    $0x8553,%eax
  103aa6:	8b 45 08             	mov    0x8(%ebp),%eax
  103aa9:	0f 22 e0             	mov    %eax,%cr4
  103aac:	90                   	nop
  103aad:	5d                   	pop    %ebp
  103aae:	c3                   	ret

00103aaf <rcr4>:
  103aaf:	55                   	push   %ebp
  103ab0:	89 e5                	mov    %esp,%ebp
  103ab2:	83 ec 10             	sub    $0x10,%esp
  103ab5:	e8 fe c8 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103aba:	05 3a 85 00 00       	add    $0x853a,%eax
  103abf:	0f 20 e0             	mov    %cr4,%eax
  103ac2:	89 45 fc             	mov    %eax,-0x4(%ebp)
  103ac5:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103ac8:	c9                   	leave
  103ac9:	c3                   	ret

00103aca <inb>:
  103aca:	55                   	push   %ebp
  103acb:	89 e5                	mov    %esp,%ebp
  103acd:	83 ec 10             	sub    $0x10,%esp
  103ad0:	e8 e3 c8 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103ad5:	05 1f 85 00 00       	add    $0x851f,%eax
  103ada:	8b 45 08             	mov    0x8(%ebp),%eax
  103add:	89 c2                	mov    %eax,%edx
  103adf:	ec                   	in     (%dx),%al
  103ae0:	88 45 ff             	mov    %al,-0x1(%ebp)
  103ae3:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
  103ae7:	c9                   	leave
  103ae8:	c3                   	ret

00103ae9 <insl>:
  103ae9:	55                   	push   %ebp
  103aea:	89 e5                	mov    %esp,%ebp
  103aec:	57                   	push   %edi
  103aed:	53                   	push   %ebx
  103aee:	e8 c5 c8 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103af3:	05 01 85 00 00       	add    $0x8501,%eax
  103af8:	8b 55 08             	mov    0x8(%ebp),%edx
  103afb:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  103afe:	8b 45 10             	mov    0x10(%ebp),%eax
  103b01:	89 cb                	mov    %ecx,%ebx
  103b03:	89 df                	mov    %ebx,%edi
  103b05:	89 c1                	mov    %eax,%ecx
  103b07:	fc                   	cld
  103b08:	f2 6d                	repnz insl (%dx),%es:(%edi)
  103b0a:	89 c8                	mov    %ecx,%eax
  103b0c:	89 fb                	mov    %edi,%ebx
  103b0e:	89 5d 0c             	mov    %ebx,0xc(%ebp)
  103b11:	89 45 10             	mov    %eax,0x10(%ebp)
  103b14:	90                   	nop
  103b15:	5b                   	pop    %ebx
  103b16:	5f                   	pop    %edi
  103b17:	5d                   	pop    %ebp
  103b18:	c3                   	ret

00103b19 <outb>:
  103b19:	55                   	push   %ebp
  103b1a:	89 e5                	mov    %esp,%ebp
  103b1c:	83 ec 04             	sub    $0x4,%esp
  103b1f:	e8 94 c8 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103b24:	05 d0 84 00 00       	add    $0x84d0,%eax
  103b29:	8b 45 0c             	mov    0xc(%ebp),%eax
  103b2c:	88 45 fc             	mov    %al,-0x4(%ebp)
  103b2f:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
  103b33:	8b 55 08             	mov    0x8(%ebp),%edx
  103b36:	ee                   	out    %al,(%dx)
  103b37:	90                   	nop
  103b38:	c9                   	leave
  103b39:	c3                   	ret

00103b3a <outsw>:
  103b3a:	55                   	push   %ebp
  103b3b:	89 e5                	mov    %esp,%ebp
  103b3d:	56                   	push   %esi
  103b3e:	53                   	push   %ebx
  103b3f:	e8 74 c8 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103b44:	05 b0 84 00 00       	add    $0x84b0,%eax
  103b49:	8b 55 08             	mov    0x8(%ebp),%edx
  103b4c:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  103b4f:	8b 45 10             	mov    0x10(%ebp),%eax
  103b52:	89 cb                	mov    %ecx,%ebx
  103b54:	89 de                	mov    %ebx,%esi
  103b56:	89 c1                	mov    %eax,%ecx
  103b58:	fc                   	cld
  103b59:	f2 66 6f             	repnz outsw %ds:(%esi),(%dx)
  103b5c:	89 c8                	mov    %ecx,%eax
  103b5e:	89 f3                	mov    %esi,%ebx
  103b60:	89 5d 0c             	mov    %ebx,0xc(%ebp)
  103b63:	89 45 10             	mov    %eax,0x10(%ebp)
  103b66:	90                   	nop
  103b67:	5b                   	pop    %ebx
  103b68:	5e                   	pop    %esi
  103b69:	5d                   	pop    %ebp
  103b6a:	c3                   	ret

00103b6b <mon_help>:
  103b6b:	55                   	push   %ebp
  103b6c:	89 e5                	mov    %esp,%ebp
  103b6e:	56                   	push   %esi
  103b6f:	53                   	push   %ebx
  103b70:	83 ec 10             	sub    $0x10,%esp
  103b73:	e8 48 c8 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  103b78:	81 c3 7c 84 00 00    	add    $0x847c,%ebx
  103b7e:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  103b85:	eb 44                	jmp    103bcb <mon_help+0x60>
  103b87:	8b 55 f4             	mov    -0xc(%ebp),%edx
  103b8a:	8d 8b 30 05 00 00    	lea    0x530(%ebx),%ecx
  103b90:	89 d0                	mov    %edx,%eax
  103b92:	01 c0                	add    %eax,%eax
  103b94:	01 d0                	add    %edx,%eax
  103b96:	c1 e0 02             	shl    $0x2,%eax
  103b99:	01 c8                	add    %ecx,%eax
  103b9b:	8b 08                	mov    (%eax),%ecx
  103b9d:	8b 55 f4             	mov    -0xc(%ebp),%edx
  103ba0:	8d b3 2c 05 00 00    	lea    0x52c(%ebx),%esi
  103ba6:	89 d0                	mov    %edx,%eax
  103ba8:	01 c0                	add    %eax,%eax
  103baa:	01 d0                	add    %edx,%eax
  103bac:	c1 e0 02             	shl    $0x2,%eax
  103baf:	01 f0                	add    %esi,%eax
  103bb1:	8b 00                	mov    (%eax),%eax
  103bb3:	83 ec 04             	sub    $0x4,%esp
  103bb6:	51                   	push   %ecx
  103bb7:	50                   	push   %eax
  103bb8:	8d 83 4c b3 ff ff    	lea    -0x4cb4(%ebx),%eax
  103bbe:	50                   	push   %eax
  103bbf:	e8 a8 f1 ff ff       	call   102d6c <dprintf>
  103bc4:	83 c4 10             	add    $0x10,%esp
  103bc7:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  103bcb:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103bce:	83 f8 02             	cmp    $0x2,%eax
  103bd1:	76 b4                	jbe    103b87 <mon_help+0x1c>
  103bd3:	b8 00 00 00 00       	mov    $0x0,%eax
  103bd8:	8d 65 f8             	lea    -0x8(%ebp),%esp
  103bdb:	5b                   	pop    %ebx
  103bdc:	5e                   	pop    %esi
  103bdd:	5d                   	pop    %ebp
  103bde:	c3                   	ret

00103bdf <mon_kerninfo>:
  103bdf:	55                   	push   %ebp
  103be0:	89 e5                	mov    %esp,%ebp
  103be2:	53                   	push   %ebx
  103be3:	83 ec 14             	sub    $0x14,%esp
  103be6:	e8 d5 c7 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  103beb:	81 c3 09 84 00 00    	add    $0x8409,%ebx
  103bf1:	83 ec 0c             	sub    $0xc,%esp
  103bf4:	8d 83 55 b3 ff ff    	lea    -0x4cab(%ebx),%eax
  103bfa:	50                   	push   %eax
  103bfb:	e8 6c f1 ff ff       	call   102d6c <dprintf>
  103c00:	83 c4 10             	add    $0x10,%esp
  103c03:	83 ec 08             	sub    $0x8,%esp
  103c06:	c7 c0 14 4c 10 00    	mov    $0x104c14,%eax
  103c0c:	50                   	push   %eax
  103c0d:	8d 83 6e b3 ff ff    	lea    -0x4c92(%ebx),%eax
  103c13:	50                   	push   %eax
  103c14:	e8 53 f1 ff ff       	call   102d6c <dprintf>
  103c19:	83 c4 10             	add    $0x10,%esp
  103c1c:	83 ec 08             	sub    $0x8,%esp
  103c1f:	c7 c0 96 6e 10 00    	mov    $0x106e96,%eax
  103c25:	50                   	push   %eax
  103c26:	8d 83 7d b3 ff ff    	lea    -0x4c83(%ebx),%eax
  103c2c:	50                   	push   %eax
  103c2d:	e8 3a f1 ff ff       	call   102d6c <dprintf>
  103c32:	83 c4 10             	add    $0x10,%esp
  103c35:	83 ec 08             	sub    $0x8,%esp
  103c38:	c7 c0 e0 18 11 00    	mov    $0x1118e0,%eax
  103c3e:	50                   	push   %eax
  103c3f:	8d 83 8c b3 ff ff    	lea    -0x4c74(%ebx),%eax
  103c45:	50                   	push   %eax
  103c46:	e8 21 f1 ff ff       	call   102d6c <dprintf>
  103c4b:	83 c4 10             	add    $0x10,%esp
  103c4e:	83 ec 08             	sub    $0x8,%esp
  103c51:	c7 c0 00 a0 d9 00    	mov    $0xd9a000,%eax
  103c57:	50                   	push   %eax
  103c58:	8d 83 9b b3 ff ff    	lea    -0x4c65(%ebx),%eax
  103c5e:	50                   	push   %eax
  103c5f:	e8 08 f1 ff ff       	call   102d6c <dprintf>
  103c64:	83 c4 10             	add    $0x10,%esp
  103c67:	c7 c0 00 a0 d9 00    	mov    $0xd9a000,%eax
  103c6d:	89 c1                	mov    %eax,%ecx
  103c6f:	c7 c0 14 4c 10 00    	mov    $0x104c14,%eax
  103c75:	89 c2                	mov    %eax,%edx
  103c77:	89 c8                	mov    %ecx,%eax
  103c79:	29 d0                	sub    %edx,%eax
  103c7b:	89 45 f4             	mov    %eax,-0xc(%ebp)
  103c7e:	c7 45 f0 00 04 00 00 	movl   $0x400,-0x10(%ebp)
  103c85:	8b 55 f4             	mov    -0xc(%ebp),%edx
  103c88:	8b 45 f0             	mov    -0x10(%ebp),%eax
  103c8b:	01 d0                	add    %edx,%eax
  103c8d:	83 e8 01             	sub    $0x1,%eax
  103c90:	89 45 ec             	mov    %eax,-0x14(%ebp)
  103c93:	8b 45 f0             	mov    -0x10(%ebp),%eax
  103c96:	89 45 e8             	mov    %eax,-0x18(%ebp)
  103c99:	8b 45 ec             	mov    -0x14(%ebp),%eax
  103c9c:	99                   	cltd
  103c9d:	f7 7d e8             	idivl  -0x18(%ebp)
  103ca0:	8b 45 ec             	mov    -0x14(%ebp),%eax
  103ca3:	29 d0                	sub    %edx,%eax
  103ca5:	8d 90 ff 03 00 00    	lea    0x3ff(%eax),%edx
  103cab:	85 c0                	test   %eax,%eax
  103cad:	0f 48 c2             	cmovs  %edx,%eax
  103cb0:	c1 f8 0a             	sar    $0xa,%eax
  103cb3:	83 ec 08             	sub    $0x8,%esp
  103cb6:	50                   	push   %eax
  103cb7:	8d 83 ac b3 ff ff    	lea    -0x4c54(%ebx),%eax
  103cbd:	50                   	push   %eax
  103cbe:	e8 a9 f0 ff ff       	call   102d6c <dprintf>
  103cc3:	83 c4 10             	add    $0x10,%esp
  103cc6:	b8 00 00 00 00       	mov    $0x0,%eax
  103ccb:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  103cce:	c9                   	leave
  103ccf:	c3                   	ret

00103cd0 <mon_backtrace>:
  103cd0:	55                   	push   %ebp
  103cd1:	89 e5                	mov    %esp,%ebp
  103cd3:	e8 e0 c6 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103cd8:	05 1c 83 00 00       	add    $0x831c,%eax
  103cdd:	b8 00 00 00 00       	mov    $0x0,%eax
  103ce2:	5d                   	pop    %ebp
  103ce3:	c3                   	ret

00103ce4 <mon_start_user>:
  103ce4:	55                   	push   %ebp
  103ce5:	89 e5                	mov    %esp,%ebp
  103ce7:	53                   	push   %ebx
  103ce8:	83 ec 14             	sub    $0x14,%esp
  103ceb:	e8 d0 c6 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  103cf0:	81 c3 04 83 00 00    	add    $0x8304,%ebx
  103cf6:	8b 83 38 cc 04 00    	mov    0x4cc38(%ebx),%eax
  103cfc:	85 c0                	test   %eax,%eax
  103cfe:	74 1c                	je     103d1c <mon_start_user+0x38>
  103d00:	83 ec 0c             	sub    $0xc,%esp
  103d03:	8d 83 d8 b3 ff ff    	lea    -0x4c28(%ebx),%eax
  103d09:	50                   	push   %eax
  103d0a:	e8 5d f0 ff ff       	call   102d6c <dprintf>
  103d0f:	83 c4 10             	add    $0x10,%esp
  103d12:	b8 00 00 00 00       	mov    $0x0,%eax
  103d17:	e9 81 00 00 00       	jmp    103d9d <mon_start_user+0xb9>
  103d1c:	c7 c0 00 e0 10 00    	mov    $0x10e000,%eax
  103d22:	89 45 f4             	mov    %eax,-0xc(%ebp)
  103d25:	83 ec 0c             	sub    $0xc,%esp
  103d28:	6a 00                	push   $0x0
  103d2a:	e8 41 19 00 00       	call   105670 <container_get_quota>
  103d2f:	83 c4 10             	add    $0x10,%esp
  103d32:	83 ec 08             	sub    $0x8,%esp
  103d35:	50                   	push   %eax
  103d36:	6a 00                	push   $0x0
  103d38:	e8 43 2d 00 00       	call   106a80 <alloc_mem_quota>
  103d3d:	83 c4 10             	add    $0x10,%esp
  103d40:	89 83 38 cc 04 00    	mov    %eax,0x4cc38(%ebx)
  103d46:	8b 83 38 cc 04 00    	mov    0x4cc38(%ebx),%eax
  103d4c:	83 ec 08             	sub    $0x8,%esp
  103d4f:	50                   	push   %eax
  103d50:	ff 75 f4             	push   -0xc(%ebp)
  103d53:	e8 48 05 00 00       	call   1042a0 <elf_load>
  103d58:	83 c4 10             	add    $0x10,%esp
  103d5b:	83 ec 08             	sub    $0x8,%esp
  103d5e:	ff 75 f4             	push   -0xc(%ebp)
  103d61:	8d 83 34 b4 ff ff    	lea    -0x4bcc(%ebx),%eax
  103d67:	50                   	push   %eax
  103d68:	e8 ff ef ff ff       	call   102d6c <dprintf>
  103d6d:	83 c4 10             	add    $0x10,%esp
  103d70:	8b 83 38 cc 04 00    	mov    0x4cc38(%ebx),%eax
  103d76:	83 ec 0c             	sub    $0xc,%esp
  103d79:	50                   	push   %eax
  103d7a:	e8 11 1d 00 00       	call   105a90 <set_pdir_base>
  103d7f:	83 c4 10             	add    $0x10,%esp
  103d82:	83 ec 0c             	sub    $0xc,%esp
  103d85:	ff 75 f4             	push   -0xc(%ebp)
  103d88:	e8 d3 07 00 00       	call   104560 <elf_entry>
  103d8d:	83 c4 10             	add    $0x10,%esp
  103d90:	89 45 f0             	mov    %eax,-0x10(%ebp)
  103d93:	8b 45 f0             	mov    -0x10(%ebp),%eax
  103d96:	ff d0                	call   *%eax
  103d98:	b8 00 00 00 00       	mov    $0x0,%eax
  103d9d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  103da0:	c9                   	leave
  103da1:	c3                   	ret

00103da2 <runcmd>:
  103da2:	55                   	push   %ebp
  103da3:	89 e5                	mov    %esp,%ebp
  103da5:	53                   	push   %ebx
  103da6:	83 ec 54             	sub    $0x54,%esp
  103da9:	e8 12 c6 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  103dae:	81 c3 46 82 00 00    	add    $0x8246,%ebx
  103db4:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  103dbb:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103dbe:	c7 44 85 b0 00 00 00 	movl   $0x0,-0x50(%ebp,%eax,4)
  103dc5:	00 
  103dc6:	eb 0c                	jmp    103dd4 <runcmd+0x32>
  103dc8:	8b 45 08             	mov    0x8(%ebp),%eax
  103dcb:	8d 50 01             	lea    0x1(%eax),%edx
  103dce:	89 55 08             	mov    %edx,0x8(%ebp)
  103dd1:	c6 00 00             	movb   $0x0,(%eax)
  103dd4:	8b 45 08             	mov    0x8(%ebp),%eax
  103dd7:	0f b6 00             	movzbl (%eax),%eax
  103dda:	84 c0                	test   %al,%al
  103ddc:	74 20                	je     103dfe <runcmd+0x5c>
  103dde:	8b 45 08             	mov    0x8(%ebp),%eax
  103de1:	0f b6 00             	movzbl (%eax),%eax
  103de4:	0f be c0             	movsbl %al,%eax
  103de7:	83 ec 08             	sub    $0x8,%esp
  103dea:	50                   	push   %eax
  103deb:	8d 83 4f b4 ff ff    	lea    -0x4bb1(%ebx),%eax
  103df1:	50                   	push   %eax
  103df2:	e8 15 ec ff ff       	call   102a0c <strchr>
  103df7:	83 c4 10             	add    $0x10,%esp
  103dfa:	85 c0                	test   %eax,%eax
  103dfc:	75 ca                	jne    103dc8 <runcmd+0x26>
  103dfe:	8b 45 08             	mov    0x8(%ebp),%eax
  103e01:	0f b6 00             	movzbl (%eax),%eax
  103e04:	84 c0                	test   %al,%al
  103e06:	74 69                	je     103e71 <runcmd+0xcf>
  103e08:	83 7d f4 0f          	cmpl   $0xf,-0xc(%ebp)
  103e0c:	75 1e                	jne    103e2c <runcmd+0x8a>
  103e0e:	83 ec 08             	sub    $0x8,%esp
  103e11:	6a 10                	push   $0x10
  103e13:	8d 83 54 b4 ff ff    	lea    -0x4bac(%ebx),%eax
  103e19:	50                   	push   %eax
  103e1a:	e8 4d ef ff ff       	call   102d6c <dprintf>
  103e1f:	83 c4 10             	add    $0x10,%esp
  103e22:	b8 00 00 00 00       	mov    $0x0,%eax
  103e27:	e9 e5 00 00 00       	jmp    103f11 <runcmd+0x16f>
  103e2c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103e2f:	8d 50 01             	lea    0x1(%eax),%edx
  103e32:	89 55 f4             	mov    %edx,-0xc(%ebp)
  103e35:	8b 55 08             	mov    0x8(%ebp),%edx
  103e38:	89 54 85 b0          	mov    %edx,-0x50(%ebp,%eax,4)
  103e3c:	eb 04                	jmp    103e42 <runcmd+0xa0>
  103e3e:	83 45 08 01          	addl   $0x1,0x8(%ebp)
  103e42:	8b 45 08             	mov    0x8(%ebp),%eax
  103e45:	0f b6 00             	movzbl (%eax),%eax
  103e48:	84 c0                	test   %al,%al
  103e4a:	74 88                	je     103dd4 <runcmd+0x32>
  103e4c:	8b 45 08             	mov    0x8(%ebp),%eax
  103e4f:	0f b6 00             	movzbl (%eax),%eax
  103e52:	0f be c0             	movsbl %al,%eax
  103e55:	83 ec 08             	sub    $0x8,%esp
  103e58:	50                   	push   %eax
  103e59:	8d 83 4f b4 ff ff    	lea    -0x4bb1(%ebx),%eax
  103e5f:	50                   	push   %eax
  103e60:	e8 a7 eb ff ff       	call   102a0c <strchr>
  103e65:	83 c4 10             	add    $0x10,%esp
  103e68:	85 c0                	test   %eax,%eax
  103e6a:	74 d2                	je     103e3e <runcmd+0x9c>
  103e6c:	e9 63 ff ff ff       	jmp    103dd4 <runcmd+0x32>
  103e71:	90                   	nop
  103e72:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103e75:	c7 44 85 b0 00 00 00 	movl   $0x0,-0x50(%ebp,%eax,4)
  103e7c:	00 
  103e7d:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  103e81:	75 0a                	jne    103e8d <runcmd+0xeb>
  103e83:	b8 00 00 00 00       	mov    $0x0,%eax
  103e88:	e9 84 00 00 00       	jmp    103f11 <runcmd+0x16f>
  103e8d:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  103e94:	eb 58                	jmp    103eee <runcmd+0x14c>
  103e96:	8b 55 f0             	mov    -0x10(%ebp),%edx
  103e99:	8d 8b 2c 05 00 00    	lea    0x52c(%ebx),%ecx
  103e9f:	89 d0                	mov    %edx,%eax
  103ea1:	01 c0                	add    %eax,%eax
  103ea3:	01 d0                	add    %edx,%eax
  103ea5:	c1 e0 02             	shl    $0x2,%eax
  103ea8:	01 c8                	add    %ecx,%eax
  103eaa:	8b 10                	mov    (%eax),%edx
  103eac:	8b 45 b0             	mov    -0x50(%ebp),%eax
  103eaf:	83 ec 08             	sub    $0x8,%esp
  103eb2:	52                   	push   %edx
  103eb3:	50                   	push   %eax
  103eb4:	e8 0a eb ff ff       	call   1029c3 <strcmp>
  103eb9:	83 c4 10             	add    $0x10,%esp
  103ebc:	85 c0                	test   %eax,%eax
  103ebe:	75 2a                	jne    103eea <runcmd+0x148>
  103ec0:	8b 55 f0             	mov    -0x10(%ebp),%edx
  103ec3:	8d 8b 34 05 00 00    	lea    0x534(%ebx),%ecx
  103ec9:	89 d0                	mov    %edx,%eax
  103ecb:	01 c0                	add    %eax,%eax
  103ecd:	01 d0                	add    %edx,%eax
  103ecf:	c1 e0 02             	shl    $0x2,%eax
  103ed2:	01 c8                	add    %ecx,%eax
  103ed4:	8b 00                	mov    (%eax),%eax
  103ed6:	83 ec 04             	sub    $0x4,%esp
  103ed9:	ff 75 0c             	push   0xc(%ebp)
  103edc:	8d 55 b0             	lea    -0x50(%ebp),%edx
  103edf:	52                   	push   %edx
  103ee0:	ff 75 f4             	push   -0xc(%ebp)
  103ee3:	ff d0                	call   *%eax
  103ee5:	83 c4 10             	add    $0x10,%esp
  103ee8:	eb 27                	jmp    103f11 <runcmd+0x16f>
  103eea:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  103eee:	8b 45 f0             	mov    -0x10(%ebp),%eax
  103ef1:	83 f8 02             	cmp    $0x2,%eax
  103ef4:	76 a0                	jbe    103e96 <runcmd+0xf4>
  103ef6:	8b 45 b0             	mov    -0x50(%ebp),%eax
  103ef9:	83 ec 08             	sub    $0x8,%esp
  103efc:	50                   	push   %eax
  103efd:	8d 83 71 b4 ff ff    	lea    -0x4b8f(%ebx),%eax
  103f03:	50                   	push   %eax
  103f04:	e8 63 ee ff ff       	call   102d6c <dprintf>
  103f09:	83 c4 10             	add    $0x10,%esp
  103f0c:	b8 00 00 00 00       	mov    $0x0,%eax
  103f11:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  103f14:	c9                   	leave
  103f15:	c3                   	ret

00103f16 <monitor>:
  103f16:	55                   	push   %ebp
  103f17:	89 e5                	mov    %esp,%ebp
  103f19:	53                   	push   %ebx
  103f1a:	83 ec 14             	sub    $0x14,%esp
  103f1d:	e8 9e c4 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  103f22:	81 c3 d2 80 00 00    	add    $0x80d2,%ebx
  103f28:	83 ec 0c             	sub    $0xc,%esp
  103f2b:	8d 83 88 b4 ff ff    	lea    -0x4b78(%ebx),%eax
  103f31:	50                   	push   %eax
  103f32:	e8 35 ee ff ff       	call   102d6c <dprintf>
  103f37:	83 c4 10             	add    $0x10,%esp
  103f3a:	83 ec 0c             	sub    $0xc,%esp
  103f3d:	8d 83 b4 b4 ff ff    	lea    -0x4b4c(%ebx),%eax
  103f43:	50                   	push   %eax
  103f44:	e8 23 ee ff ff       	call   102d6c <dprintf>
  103f49:	83 c4 10             	add    $0x10,%esp
  103f4c:	83 ec 0c             	sub    $0xc,%esp
  103f4f:	8d 83 88 b4 ff ff    	lea    -0x4b78(%ebx),%eax
  103f55:	50                   	push   %eax
  103f56:	e8 11 ee ff ff       	call   102d6c <dprintf>
  103f5b:	83 c4 10             	add    $0x10,%esp
  103f5e:	83 ec 0c             	sub    $0xc,%esp
  103f61:	8d 83 e0 b4 ff ff    	lea    -0x4b20(%ebx),%eax
  103f67:	50                   	push   %eax
  103f68:	e8 ff ed ff ff       	call   102d6c <dprintf>
  103f6d:	83 c4 10             	add    $0x10,%esp
  103f70:	83 ec 0c             	sub    $0xc,%esp
  103f73:	8d 83 05 b5 ff ff    	lea    -0x4afb(%ebx),%eax
  103f79:	50                   	push   %eax
  103f7a:	e8 dd c5 ff ff       	call   10055c <readline>
  103f7f:	83 c4 10             	add    $0x10,%esp
  103f82:	89 45 f4             	mov    %eax,-0xc(%ebp)
  103f85:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  103f89:	74 e5                	je     103f70 <monitor+0x5a>
  103f8b:	83 ec 08             	sub    $0x8,%esp
  103f8e:	ff 75 08             	push   0x8(%ebp)
  103f91:	ff 75 f4             	push   -0xc(%ebp)
  103f94:	e8 09 fe ff ff       	call   103da2 <runcmd>
  103f99:	83 c4 10             	add    $0x10,%esp
  103f9c:	85 c0                	test   %eax,%eax
  103f9e:	78 02                	js     103fa2 <monitor+0x8c>
  103fa0:	eb ce                	jmp    103f70 <monitor+0x5a>
  103fa2:	90                   	nop
  103fa3:	90                   	nop
  103fa4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  103fa7:	c9                   	leave
  103fa8:	c3                   	ret

00103fa9 <pt_copyin>:
  103fa9:	55                   	push   %ebp
  103faa:	89 e5                	mov    %esp,%ebp
  103fac:	53                   	push   %ebx
  103fad:	83 ec 14             	sub    $0x14,%esp
  103fb0:	e8 0b c4 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  103fb5:	81 c3 3f 80 00 00    	add    $0x803f,%ebx
  103fbb:	81 7d 0c ff ff ff 3f 	cmpl   $0x3fffffff,0xc(%ebp)
  103fc2:	76 0f                	jbe    103fd3 <pt_copyin+0x2a>
  103fc4:	8b 55 0c             	mov    0xc(%ebp),%edx
  103fc7:	8b 45 14             	mov    0x14(%ebp),%eax
  103fca:	01 d0                	add    %edx,%eax
  103fcc:	3d 00 00 00 f0       	cmp    $0xf0000000,%eax
  103fd1:	76 0a                	jbe    103fdd <pt_copyin+0x34>
  103fd3:	b8 00 00 00 00       	mov    $0x0,%eax
  103fd8:	e9 d7 00 00 00       	jmp    1040b4 <pt_copyin+0x10b>
  103fdd:	8b 55 10             	mov    0x10(%ebp),%edx
  103fe0:	8b 45 14             	mov    0x14(%ebp),%eax
  103fe3:	01 d0                	add    %edx,%eax
  103fe5:	3d 00 00 00 f0       	cmp    $0xf0000000,%eax
  103fea:	76 0a                	jbe    103ff6 <pt_copyin+0x4d>
  103fec:	b8 00 00 00 00       	mov    $0x0,%eax
  103ff1:	e9 be 00 00 00       	jmp    1040b4 <pt_copyin+0x10b>
  103ff6:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  103ffd:	e9 a5 00 00 00       	jmp    1040a7 <pt_copyin+0xfe>
  104002:	83 ec 08             	sub    $0x8,%esp
  104005:	ff 75 0c             	push   0xc(%ebp)
  104008:	ff 75 08             	push   0x8(%ebp)
  10400b:	e8 00 1f 00 00       	call   105f10 <get_ptbl_entry_by_va>
  104010:	83 c4 10             	add    $0x10,%esp
  104013:	89 45 f0             	mov    %eax,-0x10(%ebp)
  104016:	8b 45 f0             	mov    -0x10(%ebp),%eax
  104019:	83 e0 01             	and    $0x1,%eax
  10401c:	85 c0                	test   %eax,%eax
  10401e:	75 27                	jne    104047 <pt_copyin+0x9e>
  104020:	83 ec 04             	sub    $0x4,%esp
  104023:	6a 07                	push   $0x7
  104025:	ff 75 0c             	push   0xc(%ebp)
  104028:	ff 75 08             	push   0x8(%ebp)
  10402b:	e8 00 2a 00 00       	call   106a30 <alloc_page>
  104030:	83 c4 10             	add    $0x10,%esp
  104033:	83 ec 08             	sub    $0x8,%esp
  104036:	ff 75 0c             	push   0xc(%ebp)
  104039:	ff 75 08             	push   0x8(%ebp)
  10403c:	e8 cf 1e 00 00       	call   105f10 <get_ptbl_entry_by_va>
  104041:	83 c4 10             	add    $0x10,%esp
  104044:	89 45 f0             	mov    %eax,-0x10(%ebp)
  104047:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10404a:	25 00 f0 ff ff       	and    $0xfffff000,%eax
  10404f:	89 c2                	mov    %eax,%edx
  104051:	8b 45 0c             	mov    0xc(%ebp),%eax
  104054:	25 ff 0f 00 00       	and    $0xfff,%eax
  104059:	09 d0                	or     %edx,%eax
  10405b:	89 45 f0             	mov    %eax,-0x10(%ebp)
  10405e:	8b 45 f0             	mov    -0x10(%ebp),%eax
  104061:	25 ff 0f 00 00       	and    $0xfff,%eax
  104066:	89 c2                	mov    %eax,%edx
  104068:	b8 00 10 00 00       	mov    $0x1000,%eax
  10406d:	29 d0                	sub    %edx,%eax
  10406f:	8b 55 14             	mov    0x14(%ebp),%edx
  104072:	39 c2                	cmp    %eax,%edx
  104074:	0f 46 c2             	cmovbe %edx,%eax
  104077:	89 45 ec             	mov    %eax,-0x14(%ebp)
  10407a:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10407d:	83 ec 04             	sub    $0x4,%esp
  104080:	ff 75 ec             	push   -0x14(%ebp)
  104083:	50                   	push   %eax
  104084:	ff 75 10             	push   0x10(%ebp)
  104087:	e8 7d e8 ff ff       	call   102909 <memcpy>
  10408c:	83 c4 10             	add    $0x10,%esp
  10408f:	8b 45 ec             	mov    -0x14(%ebp),%eax
  104092:	29 45 14             	sub    %eax,0x14(%ebp)
  104095:	8b 45 ec             	mov    -0x14(%ebp),%eax
  104098:	01 45 0c             	add    %eax,0xc(%ebp)
  10409b:	8b 45 ec             	mov    -0x14(%ebp),%eax
  10409e:	01 45 10             	add    %eax,0x10(%ebp)
  1040a1:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1040a4:	01 45 f4             	add    %eax,-0xc(%ebp)
  1040a7:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
  1040ab:	0f 85 51 ff ff ff    	jne    104002 <pt_copyin+0x59>
  1040b1:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1040b4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1040b7:	c9                   	leave
  1040b8:	c3                   	ret

001040b9 <pt_copyout>:
  1040b9:	55                   	push   %ebp
  1040ba:	89 e5                	mov    %esp,%ebp
  1040bc:	53                   	push   %ebx
  1040bd:	83 ec 14             	sub    $0x14,%esp
  1040c0:	e8 fb c2 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1040c5:	81 c3 2f 7f 00 00    	add    $0x7f2f,%ebx
  1040cb:	81 7d 10 ff ff ff 3f 	cmpl   $0x3fffffff,0x10(%ebp)
  1040d2:	76 0f                	jbe    1040e3 <pt_copyout+0x2a>
  1040d4:	8b 55 10             	mov    0x10(%ebp),%edx
  1040d7:	8b 45 14             	mov    0x14(%ebp),%eax
  1040da:	01 d0                	add    %edx,%eax
  1040dc:	3d 00 00 00 f0       	cmp    $0xf0000000,%eax
  1040e1:	76 0a                	jbe    1040ed <pt_copyout+0x34>
  1040e3:	b8 00 00 00 00       	mov    $0x0,%eax
  1040e8:	e9 d7 00 00 00       	jmp    1041c4 <pt_copyout+0x10b>
  1040ed:	8b 55 08             	mov    0x8(%ebp),%edx
  1040f0:	8b 45 14             	mov    0x14(%ebp),%eax
  1040f3:	01 d0                	add    %edx,%eax
  1040f5:	3d 00 00 00 f0       	cmp    $0xf0000000,%eax
  1040fa:	76 0a                	jbe    104106 <pt_copyout+0x4d>
  1040fc:	b8 00 00 00 00       	mov    $0x0,%eax
  104101:	e9 be 00 00 00       	jmp    1041c4 <pt_copyout+0x10b>
  104106:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  10410d:	e9 a5 00 00 00       	jmp    1041b7 <pt_copyout+0xfe>
  104112:	83 ec 08             	sub    $0x8,%esp
  104115:	ff 75 10             	push   0x10(%ebp)
  104118:	ff 75 0c             	push   0xc(%ebp)
  10411b:	e8 f0 1d 00 00       	call   105f10 <get_ptbl_entry_by_va>
  104120:	83 c4 10             	add    $0x10,%esp
  104123:	89 45 f0             	mov    %eax,-0x10(%ebp)
  104126:	8b 45 f0             	mov    -0x10(%ebp),%eax
  104129:	83 e0 01             	and    $0x1,%eax
  10412c:	85 c0                	test   %eax,%eax
  10412e:	75 27                	jne    104157 <pt_copyout+0x9e>
  104130:	83 ec 04             	sub    $0x4,%esp
  104133:	6a 07                	push   $0x7
  104135:	ff 75 10             	push   0x10(%ebp)
  104138:	ff 75 0c             	push   0xc(%ebp)
  10413b:	e8 f0 28 00 00       	call   106a30 <alloc_page>
  104140:	83 c4 10             	add    $0x10,%esp
  104143:	83 ec 08             	sub    $0x8,%esp
  104146:	ff 75 10             	push   0x10(%ebp)
  104149:	ff 75 0c             	push   0xc(%ebp)
  10414c:	e8 bf 1d 00 00       	call   105f10 <get_ptbl_entry_by_va>
  104151:	83 c4 10             	add    $0x10,%esp
  104154:	89 45 f0             	mov    %eax,-0x10(%ebp)
  104157:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10415a:	25 00 f0 ff ff       	and    $0xfffff000,%eax
  10415f:	89 c2                	mov    %eax,%edx
  104161:	8b 45 10             	mov    0x10(%ebp),%eax
  104164:	25 ff 0f 00 00       	and    $0xfff,%eax
  104169:	09 d0                	or     %edx,%eax
  10416b:	89 45 f0             	mov    %eax,-0x10(%ebp)
  10416e:	8b 45 f0             	mov    -0x10(%ebp),%eax
  104171:	25 ff 0f 00 00       	and    $0xfff,%eax
  104176:	89 c2                	mov    %eax,%edx
  104178:	b8 00 10 00 00       	mov    $0x1000,%eax
  10417d:	29 d0                	sub    %edx,%eax
  10417f:	8b 55 14             	mov    0x14(%ebp),%edx
  104182:	39 c2                	cmp    %eax,%edx
  104184:	0f 46 c2             	cmovbe %edx,%eax
  104187:	89 45 ec             	mov    %eax,-0x14(%ebp)
  10418a:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10418d:	83 ec 04             	sub    $0x4,%esp
  104190:	ff 75 ec             	push   -0x14(%ebp)
  104193:	ff 75 08             	push   0x8(%ebp)
  104196:	50                   	push   %eax
  104197:	e8 6d e7 ff ff       	call   102909 <memcpy>
  10419c:	83 c4 10             	add    $0x10,%esp
  10419f:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1041a2:	29 45 14             	sub    %eax,0x14(%ebp)
  1041a5:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1041a8:	01 45 10             	add    %eax,0x10(%ebp)
  1041ab:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1041ae:	01 45 08             	add    %eax,0x8(%ebp)
  1041b1:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1041b4:	01 45 f4             	add    %eax,-0xc(%ebp)
  1041b7:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
  1041bb:	0f 85 51 ff ff ff    	jne    104112 <pt_copyout+0x59>
  1041c1:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1041c4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1041c7:	c9                   	leave
  1041c8:	c3                   	ret

001041c9 <pt_memset>:
  1041c9:	55                   	push   %ebp
  1041ca:	89 e5                	mov    %esp,%ebp
  1041cc:	53                   	push   %ebx
  1041cd:	83 ec 24             	sub    $0x24,%esp
  1041d0:	e8 eb c1 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1041d5:	81 c3 1f 7e 00 00    	add    $0x7e1f,%ebx
  1041db:	8b 45 10             	mov    0x10(%ebp),%eax
  1041de:	88 45 e4             	mov    %al,-0x1c(%ebp)
  1041e1:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1041e8:	e9 a1 00 00 00       	jmp    10428e <pt_memset+0xc5>
  1041ed:	83 ec 08             	sub    $0x8,%esp
  1041f0:	ff 75 0c             	push   0xc(%ebp)
  1041f3:	ff 75 08             	push   0x8(%ebp)
  1041f6:	e8 15 1d 00 00       	call   105f10 <get_ptbl_entry_by_va>
  1041fb:	83 c4 10             	add    $0x10,%esp
  1041fe:	89 45 f0             	mov    %eax,-0x10(%ebp)
  104201:	8b 45 f0             	mov    -0x10(%ebp),%eax
  104204:	83 e0 01             	and    $0x1,%eax
  104207:	85 c0                	test   %eax,%eax
  104209:	75 27                	jne    104232 <pt_memset+0x69>
  10420b:	83 ec 04             	sub    $0x4,%esp
  10420e:	6a 07                	push   $0x7
  104210:	ff 75 0c             	push   0xc(%ebp)
  104213:	ff 75 08             	push   0x8(%ebp)
  104216:	e8 15 28 00 00       	call   106a30 <alloc_page>
  10421b:	83 c4 10             	add    $0x10,%esp
  10421e:	83 ec 08             	sub    $0x8,%esp
  104221:	ff 75 0c             	push   0xc(%ebp)
  104224:	ff 75 08             	push   0x8(%ebp)
  104227:	e8 e4 1c 00 00       	call   105f10 <get_ptbl_entry_by_va>
  10422c:	83 c4 10             	add    $0x10,%esp
  10422f:	89 45 f0             	mov    %eax,-0x10(%ebp)
  104232:	8b 45 f0             	mov    -0x10(%ebp),%eax
  104235:	25 00 f0 ff ff       	and    $0xfffff000,%eax
  10423a:	89 c2                	mov    %eax,%edx
  10423c:	8b 45 0c             	mov    0xc(%ebp),%eax
  10423f:	25 ff 0f 00 00       	and    $0xfff,%eax
  104244:	09 d0                	or     %edx,%eax
  104246:	89 45 f0             	mov    %eax,-0x10(%ebp)
  104249:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10424c:	25 ff 0f 00 00       	and    $0xfff,%eax
  104251:	89 c2                	mov    %eax,%edx
  104253:	b8 00 10 00 00       	mov    $0x1000,%eax
  104258:	29 d0                	sub    %edx,%eax
  10425a:	8b 55 14             	mov    0x14(%ebp),%edx
  10425d:	39 c2                	cmp    %eax,%edx
  10425f:	0f 46 c2             	cmovbe %edx,%eax
  104262:	89 45 ec             	mov    %eax,-0x14(%ebp)
  104265:	0f be 55 e4          	movsbl -0x1c(%ebp),%edx
  104269:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10426c:	83 ec 04             	sub    $0x4,%esp
  10426f:	ff 75 ec             	push   -0x14(%ebp)
  104272:	52                   	push   %edx
  104273:	50                   	push   %eax
  104274:	e8 32 e5 ff ff       	call   1027ab <memset>
  104279:	83 c4 10             	add    $0x10,%esp
  10427c:	8b 45 ec             	mov    -0x14(%ebp),%eax
  10427f:	29 45 14             	sub    %eax,0x14(%ebp)
  104282:	8b 45 ec             	mov    -0x14(%ebp),%eax
  104285:	01 45 0c             	add    %eax,0xc(%ebp)
  104288:	8b 45 ec             	mov    -0x14(%ebp),%eax
  10428b:	01 45 f4             	add    %eax,-0xc(%ebp)
  10428e:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
  104292:	0f 85 55 ff ff ff    	jne    1041ed <pt_memset+0x24>
  104298:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10429b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10429e:	c9                   	leave
  10429f:	c3                   	ret

001042a0 <elf_load>:
  1042a0:	55                   	push   %ebp
  1042a1:	89 e5                	mov    %esp,%ebp
  1042a3:	53                   	push   %ebx
  1042a4:	83 ec 34             	sub    $0x34,%esp
  1042a7:	e8 14 c1 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1042ac:	81 c3 48 7d 00 00    	add    $0x7d48,%ebx
  1042b2:	8b 45 08             	mov    0x8(%ebp),%eax
  1042b5:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  1042b8:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  1042bb:	89 45 e0             	mov    %eax,-0x20(%ebp)
  1042be:	8b 45 e0             	mov    -0x20(%ebp),%eax
  1042c1:	8b 00                	mov    (%eax),%eax
  1042c3:	3d 7f 45 4c 46       	cmp    $0x464c457f,%eax
  1042c8:	74 1f                	je     1042e9 <elf_load+0x49>
  1042ca:	8d 83 0c b5 ff ff    	lea    -0x4af4(%ebx),%eax
  1042d0:	50                   	push   %eax
  1042d1:	8d 83 25 b5 ff ff    	lea    -0x4adb(%ebx),%eax
  1042d7:	50                   	push   %eax
  1042d8:	6a 26                	push   $0x26
  1042da:	8d 83 42 b5 ff ff    	lea    -0x4abe(%ebx),%eax
  1042e0:	50                   	push   %eax
  1042e1:	e8 6e e8 ff ff       	call   102b54 <debug_panic>
  1042e6:	83 c4 10             	add    $0x10,%esp
  1042e9:	8b 45 e0             	mov    -0x20(%ebp),%eax
  1042ec:	0f b7 40 32          	movzwl 0x32(%eax),%eax
  1042f0:	66 85 c0             	test   %ax,%ax
  1042f3:	75 1f                	jne    104314 <elf_load+0x74>
  1042f5:	8d 83 54 b5 ff ff    	lea    -0x4aac(%ebx),%eax
  1042fb:	50                   	push   %eax
  1042fc:	8d 83 25 b5 ff ff    	lea    -0x4adb(%ebx),%eax
  104302:	50                   	push   %eax
  104303:	6a 27                	push   $0x27
  104305:	8d 83 42 b5 ff ff    	lea    -0x4abe(%ebx),%eax
  10430b:	50                   	push   %eax
  10430c:	e8 43 e8 ff ff       	call   102b54 <debug_panic>
  104311:	83 c4 10             	add    $0x10,%esp
  104314:	8b 45 e0             	mov    -0x20(%ebp),%eax
  104317:	8b 50 20             	mov    0x20(%eax),%edx
  10431a:	8b 45 e0             	mov    -0x20(%ebp),%eax
  10431d:	01 d0                	add    %edx,%eax
  10431f:	89 45 dc             	mov    %eax,-0x24(%ebp)
  104322:	8b 45 e0             	mov    -0x20(%ebp),%eax
  104325:	0f b7 40 30          	movzwl 0x30(%eax),%eax
  104329:	0f b7 d0             	movzwl %ax,%edx
  10432c:	89 d0                	mov    %edx,%eax
  10432e:	c1 e0 02             	shl    $0x2,%eax
  104331:	01 d0                	add    %edx,%eax
  104333:	c1 e0 03             	shl    $0x3,%eax
  104336:	89 c2                	mov    %eax,%edx
  104338:	8b 45 dc             	mov    -0x24(%ebp),%eax
  10433b:	01 d0                	add    %edx,%eax
  10433d:	89 45 d8             	mov    %eax,-0x28(%ebp)
  104340:	8b 45 e0             	mov    -0x20(%ebp),%eax
  104343:	0f b7 40 32          	movzwl 0x32(%eax),%eax
  104347:	0f b7 d0             	movzwl %ax,%edx
  10434a:	89 d0                	mov    %edx,%eax
  10434c:	c1 e0 02             	shl    $0x2,%eax
  10434f:	01 d0                	add    %edx,%eax
  104351:	c1 e0 03             	shl    $0x3,%eax
  104354:	89 c2                	mov    %eax,%edx
  104356:	8b 45 dc             	mov    -0x24(%ebp),%eax
  104359:	01 d0                	add    %edx,%eax
  10435b:	8b 50 10             	mov    0x10(%eax),%edx
  10435e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  104361:	01 d0                	add    %edx,%eax
  104363:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  104366:	8b 45 e0             	mov    -0x20(%ebp),%eax
  104369:	0f b7 40 32          	movzwl 0x32(%eax),%eax
  10436d:	0f b7 d0             	movzwl %ax,%edx
  104370:	89 d0                	mov    %edx,%eax
  104372:	c1 e0 02             	shl    $0x2,%eax
  104375:	01 d0                	add    %edx,%eax
  104377:	c1 e0 03             	shl    $0x3,%eax
  10437a:	89 c2                	mov    %eax,%edx
  10437c:	8b 45 dc             	mov    -0x24(%ebp),%eax
  10437f:	01 d0                	add    %edx,%eax
  104381:	8b 40 04             	mov    0x4(%eax),%eax
  104384:	83 f8 03             	cmp    $0x3,%eax
  104387:	74 1f                	je     1043a8 <elf_load+0x108>
  104389:	8d 83 74 b5 ff ff    	lea    -0x4a8c(%ebx),%eax
  10438f:	50                   	push   %eax
  104390:	8d 83 25 b5 ff ff    	lea    -0x4adb(%ebx),%eax
  104396:	50                   	push   %eax
  104397:	6a 2d                	push   $0x2d
  104399:	8d 83 42 b5 ff ff    	lea    -0x4abe(%ebx),%eax
  10439f:	50                   	push   %eax
  1043a0:	e8 af e7 ff ff       	call   102b54 <debug_panic>
  1043a5:	83 c4 10             	add    $0x10,%esp
  1043a8:	8b 45 e0             	mov    -0x20(%ebp),%eax
  1043ab:	8b 50 1c             	mov    0x1c(%eax),%edx
  1043ae:	8b 45 e0             	mov    -0x20(%ebp),%eax
  1043b1:	01 d0                	add    %edx,%eax
  1043b3:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1043b6:	8b 45 e0             	mov    -0x20(%ebp),%eax
  1043b9:	0f b7 40 2c          	movzwl 0x2c(%eax),%eax
  1043bd:	0f b7 c0             	movzwl %ax,%eax
  1043c0:	c1 e0 05             	shl    $0x5,%eax
  1043c3:	89 c2                	mov    %eax,%edx
  1043c5:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1043c8:	01 d0                	add    %edx,%eax
  1043ca:	89 45 d0             	mov    %eax,-0x30(%ebp)
  1043cd:	e9 5f 01 00 00       	jmp    104531 <elf_load+0x291>
  1043d2:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1043d5:	8b 00                	mov    (%eax),%eax
  1043d7:	83 f8 01             	cmp    $0x1,%eax
  1043da:	0f 85 4c 01 00 00    	jne    10452c <elf_load+0x28c>
  1043e0:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1043e3:	8b 40 04             	mov    0x4(%eax),%eax
  1043e6:	83 ec 08             	sub    $0x8,%esp
  1043e9:	68 00 10 00 00       	push   $0x1000
  1043ee:	50                   	push   %eax
  1043ef:	e8 11 f4 ff ff       	call   103805 <rounddown>
  1043f4:	83 c4 10             	add    $0x10,%esp
  1043f7:	8b 55 e0             	mov    -0x20(%ebp),%edx
  1043fa:	01 d0                	add    %edx,%eax
  1043fc:	89 45 f0             	mov    %eax,-0x10(%ebp)
  1043ff:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104402:	8b 40 08             	mov    0x8(%eax),%eax
  104405:	83 ec 08             	sub    $0x8,%esp
  104408:	68 00 10 00 00       	push   $0x1000
  10440d:	50                   	push   %eax
  10440e:	e8 f2 f3 ff ff       	call   103805 <rounddown>
  104413:	83 c4 10             	add    $0x10,%esp
  104416:	89 45 ec             	mov    %eax,-0x14(%ebp)
  104419:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10441c:	8b 50 08             	mov    0x8(%eax),%edx
  10441f:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104422:	8b 40 10             	mov    0x10(%eax),%eax
  104425:	01 d0                	add    %edx,%eax
  104427:	89 45 cc             	mov    %eax,-0x34(%ebp)
  10442a:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10442d:	8b 50 08             	mov    0x8(%eax),%edx
  104430:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104433:	8b 40 14             	mov    0x14(%eax),%eax
  104436:	01 d0                	add    %edx,%eax
  104438:	83 ec 08             	sub    $0x8,%esp
  10443b:	68 00 10 00 00       	push   $0x1000
  104440:	50                   	push   %eax
  104441:	e8 de f3 ff ff       	call   103824 <roundup>
  104446:	83 c4 10             	add    $0x10,%esp
  104449:	89 45 c8             	mov    %eax,-0x38(%ebp)
  10444c:	c7 45 e8 05 00 00 00 	movl   $0x5,-0x18(%ebp)
  104453:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104456:	8b 40 18             	mov    0x18(%eax),%eax
  104459:	83 e0 02             	and    $0x2,%eax
  10445c:	85 c0                	test   %eax,%eax
  10445e:	0f 84 ba 00 00 00    	je     10451e <elf_load+0x27e>
  104464:	83 4d e8 02          	orl    $0x2,-0x18(%ebp)
  104468:	e9 b1 00 00 00       	jmp    10451e <elf_load+0x27e>
  10446d:	8b 45 0c             	mov    0xc(%ebp),%eax
  104470:	83 ec 04             	sub    $0x4,%esp
  104473:	ff 75 e8             	push   -0x18(%ebp)
  104476:	ff 75 ec             	push   -0x14(%ebp)
  104479:	50                   	push   %eax
  10447a:	e8 b1 25 00 00       	call   106a30 <alloc_page>
  10447f:	83 c4 10             	add    $0x10,%esp
  104482:	83 ec 08             	sub    $0x8,%esp
  104485:	68 00 10 00 00       	push   $0x1000
  10448a:	ff 75 cc             	push   -0x34(%ebp)
  10448d:	e8 73 f3 ff ff       	call   103805 <rounddown>
  104492:	83 c4 10             	add    $0x10,%esp
  104495:	39 45 ec             	cmp    %eax,-0x14(%ebp)
  104498:	73 1a                	jae    1044b4 <elf_load+0x214>
  10449a:	8b 55 0c             	mov    0xc(%ebp),%edx
  10449d:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1044a0:	68 00 10 00 00       	push   $0x1000
  1044a5:	ff 75 ec             	push   -0x14(%ebp)
  1044a8:	52                   	push   %edx
  1044a9:	50                   	push   %eax
  1044aa:	e8 0a fc ff ff       	call   1040b9 <pt_copyout>
  1044af:	83 c4 10             	add    $0x10,%esp
  1044b2:	eb 5c                	jmp    104510 <elf_load+0x270>
  1044b4:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1044b7:	3b 45 cc             	cmp    -0x34(%ebp),%eax
  1044ba:	73 3e                	jae    1044fa <elf_load+0x25a>
  1044bc:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1044bf:	8b 40 10             	mov    0x10(%eax),%eax
  1044c2:	85 c0                	test   %eax,%eax
  1044c4:	74 34                	je     1044fa <elf_load+0x25a>
  1044c6:	8b 45 0c             	mov    0xc(%ebp),%eax
  1044c9:	68 00 10 00 00       	push   $0x1000
  1044ce:	6a 00                	push   $0x0
  1044d0:	ff 75 ec             	push   -0x14(%ebp)
  1044d3:	50                   	push   %eax
  1044d4:	e8 f0 fc ff ff       	call   1041c9 <pt_memset>
  1044d9:	83 c4 10             	add    $0x10,%esp
  1044dc:	8b 45 cc             	mov    -0x34(%ebp),%eax
  1044df:	2b 45 ec             	sub    -0x14(%ebp),%eax
  1044e2:	89 c1                	mov    %eax,%ecx
  1044e4:	8b 55 0c             	mov    0xc(%ebp),%edx
  1044e7:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1044ea:	51                   	push   %ecx
  1044eb:	ff 75 ec             	push   -0x14(%ebp)
  1044ee:	52                   	push   %edx
  1044ef:	50                   	push   %eax
  1044f0:	e8 c4 fb ff ff       	call   1040b9 <pt_copyout>
  1044f5:	83 c4 10             	add    $0x10,%esp
  1044f8:	eb 16                	jmp    104510 <elf_load+0x270>
  1044fa:	8b 45 0c             	mov    0xc(%ebp),%eax
  1044fd:	68 00 10 00 00       	push   $0x1000
  104502:	6a 00                	push   $0x0
  104504:	ff 75 ec             	push   -0x14(%ebp)
  104507:	50                   	push   %eax
  104508:	e8 bc fc ff ff       	call   1041c9 <pt_memset>
  10450d:	83 c4 10             	add    $0x10,%esp
  104510:	81 45 ec 00 10 00 00 	addl   $0x1000,-0x14(%ebp)
  104517:	81 45 f0 00 10 00 00 	addl   $0x1000,-0x10(%ebp)
  10451e:	8b 45 ec             	mov    -0x14(%ebp),%eax
  104521:	3b 45 c8             	cmp    -0x38(%ebp),%eax
  104524:	0f 82 43 ff ff ff    	jb     10446d <elf_load+0x1cd>
  10452a:	eb 01                	jmp    10452d <elf_load+0x28d>
  10452c:	90                   	nop
  10452d:	83 45 f4 20          	addl   $0x20,-0xc(%ebp)
  104531:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104534:	3b 45 d0             	cmp    -0x30(%ebp),%eax
  104537:	0f 82 95 fe ff ff    	jb     1043d2 <elf_load+0x132>
  10453d:	8b 45 0c             	mov    0xc(%ebp),%eax
  104540:	68 00 10 00 00       	push   $0x1000
  104545:	68 00 00 00 e0       	push   $0xe0000000
  10454a:	50                   	push   %eax
  10454b:	8d 83 0c 10 00 00    	lea    0x100c(%ebx),%eax
  104551:	50                   	push   %eax
  104552:	e8 62 fb ff ff       	call   1040b9 <pt_copyout>
  104557:	83 c4 10             	add    $0x10,%esp
  10455a:	90                   	nop
  10455b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10455e:	c9                   	leave
  10455f:	c3                   	ret

00104560 <elf_entry>:
  104560:	55                   	push   %ebp
  104561:	89 e5                	mov    %esp,%ebp
  104563:	53                   	push   %ebx
  104564:	83 ec 14             	sub    $0x14,%esp
  104567:	e8 4c be ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  10456c:	05 88 7a 00 00       	add    $0x7a88,%eax
  104571:	8b 55 08             	mov    0x8(%ebp),%edx
  104574:	89 55 f4             	mov    %edx,-0xc(%ebp)
  104577:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10457a:	89 55 f0             	mov    %edx,-0x10(%ebp)
  10457d:	8b 55 f0             	mov    -0x10(%ebp),%edx
  104580:	8b 12                	mov    (%edx),%edx
  104582:	81 fa 7f 45 4c 46    	cmp    $0x464c457f,%edx
  104588:	74 21                	je     1045ab <elf_entry+0x4b>
  10458a:	8d 90 0c b5 ff ff    	lea    -0x4af4(%eax),%edx
  104590:	52                   	push   %edx
  104591:	8d 90 25 b5 ff ff    	lea    -0x4adb(%eax),%edx
  104597:	52                   	push   %edx
  104598:	6a 5b                	push   $0x5b
  10459a:	8d 90 42 b5 ff ff    	lea    -0x4abe(%eax),%edx
  1045a0:	52                   	push   %edx
  1045a1:	89 c3                	mov    %eax,%ebx
  1045a3:	e8 ac e5 ff ff       	call   102b54 <debug_panic>
  1045a8:	83 c4 10             	add    $0x10,%esp
  1045ab:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1045ae:	8b 40 18             	mov    0x18(%eax),%eax
  1045b1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1045b4:	c9                   	leave
  1045b5:	c3                   	ret

001045b6 <trap_dump>:
  1045b6:	55                   	push   %ebp
  1045b7:	89 e5                	mov    %esp,%ebp
  1045b9:	53                   	push   %ebx
  1045ba:	83 ec 14             	sub    $0x14,%esp
  1045bd:	e8 fe bd ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1045c2:	81 c3 32 7a 00 00    	add    $0x7a32,%ebx
  1045c8:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  1045cc:	0f 84 4f 02 00 00    	je     104821 <trap_dump+0x26b>
  1045d2:	8b 45 08             	mov    0x8(%ebp),%eax
  1045d5:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1045d8:	ff 75 f4             	push   -0xc(%ebp)
  1045db:	8d 83 a4 b5 ff ff    	lea    -0x4a5c(%ebx),%eax
  1045e1:	50                   	push   %eax
  1045e2:	6a 12                	push   $0x12
  1045e4:	8d 83 b5 b5 ff ff    	lea    -0x4a4b(%ebx),%eax
  1045ea:	50                   	push   %eax
  1045eb:	e8 a9 e4 ff ff       	call   102a99 <debug_normal>
  1045f0:	83 c4 10             	add    $0x10,%esp
  1045f3:	8b 45 08             	mov    0x8(%ebp),%eax
  1045f6:	8b 10                	mov    (%eax),%edx
  1045f8:	8b 45 08             	mov    0x8(%ebp),%eax
  1045fb:	83 ec 04             	sub    $0x4,%esp
  1045fe:	52                   	push   %edx
  1045ff:	50                   	push   %eax
  104600:	8d 83 c5 b5 ff ff    	lea    -0x4a3b(%ebx),%eax
  104606:	50                   	push   %eax
  104607:	e8 5c e4 ff ff       	call   102a68 <debug_info>
  10460c:	83 c4 10             	add    $0x10,%esp
  10460f:	8b 45 08             	mov    0x8(%ebp),%eax
  104612:	8b 40 04             	mov    0x4(%eax),%eax
  104615:	8b 55 08             	mov    0x8(%ebp),%edx
  104618:	83 c2 04             	add    $0x4,%edx
  10461b:	83 ec 04             	sub    $0x4,%esp
  10461e:	50                   	push   %eax
  10461f:	52                   	push   %edx
  104620:	8d 83 db b5 ff ff    	lea    -0x4a25(%ebx),%eax
  104626:	50                   	push   %eax
  104627:	e8 3c e4 ff ff       	call   102a68 <debug_info>
  10462c:	83 c4 10             	add    $0x10,%esp
  10462f:	8b 45 08             	mov    0x8(%ebp),%eax
  104632:	8b 40 08             	mov    0x8(%eax),%eax
  104635:	8b 55 08             	mov    0x8(%ebp),%edx
  104638:	83 c2 08             	add    $0x8,%edx
  10463b:	83 ec 04             	sub    $0x4,%esp
  10463e:	50                   	push   %eax
  10463f:	52                   	push   %edx
  104640:	8d 83 f1 b5 ff ff    	lea    -0x4a0f(%ebx),%eax
  104646:	50                   	push   %eax
  104647:	e8 1c e4 ff ff       	call   102a68 <debug_info>
  10464c:	83 c4 10             	add    $0x10,%esp
  10464f:	8b 45 08             	mov    0x8(%ebp),%eax
  104652:	8b 40 0c             	mov    0xc(%eax),%eax
  104655:	8b 55 08             	mov    0x8(%ebp),%edx
  104658:	83 c2 0c             	add    $0xc,%edx
  10465b:	83 ec 04             	sub    $0x4,%esp
  10465e:	50                   	push   %eax
  10465f:	52                   	push   %edx
  104660:	8d 83 07 b6 ff ff    	lea    -0x49f9(%ebx),%eax
  104666:	50                   	push   %eax
  104667:	e8 fc e3 ff ff       	call   102a68 <debug_info>
  10466c:	83 c4 10             	add    $0x10,%esp
  10466f:	8b 45 08             	mov    0x8(%ebp),%eax
  104672:	8b 40 10             	mov    0x10(%eax),%eax
  104675:	8b 55 08             	mov    0x8(%ebp),%edx
  104678:	83 c2 10             	add    $0x10,%edx
  10467b:	83 ec 04             	sub    $0x4,%esp
  10467e:	50                   	push   %eax
  10467f:	52                   	push   %edx
  104680:	8d 83 1d b6 ff ff    	lea    -0x49e3(%ebx),%eax
  104686:	50                   	push   %eax
  104687:	e8 dc e3 ff ff       	call   102a68 <debug_info>
  10468c:	83 c4 10             	add    $0x10,%esp
  10468f:	8b 45 08             	mov    0x8(%ebp),%eax
  104692:	8b 40 14             	mov    0x14(%eax),%eax
  104695:	8b 55 08             	mov    0x8(%ebp),%edx
  104698:	83 c2 14             	add    $0x14,%edx
  10469b:	83 ec 04             	sub    $0x4,%esp
  10469e:	50                   	push   %eax
  10469f:	52                   	push   %edx
  1046a0:	8d 83 33 b6 ff ff    	lea    -0x49cd(%ebx),%eax
  1046a6:	50                   	push   %eax
  1046a7:	e8 bc e3 ff ff       	call   102a68 <debug_info>
  1046ac:	83 c4 10             	add    $0x10,%esp
  1046af:	8b 45 08             	mov    0x8(%ebp),%eax
  1046b2:	8b 40 18             	mov    0x18(%eax),%eax
  1046b5:	8b 55 08             	mov    0x8(%ebp),%edx
  1046b8:	83 c2 18             	add    $0x18,%edx
  1046bb:	83 ec 04             	sub    $0x4,%esp
  1046be:	50                   	push   %eax
  1046bf:	52                   	push   %edx
  1046c0:	8d 83 49 b6 ff ff    	lea    -0x49b7(%ebx),%eax
  1046c6:	50                   	push   %eax
  1046c7:	e8 9c e3 ff ff       	call   102a68 <debug_info>
  1046cc:	83 c4 10             	add    $0x10,%esp
  1046cf:	8b 45 08             	mov    0x8(%ebp),%eax
  1046d2:	8b 40 1c             	mov    0x1c(%eax),%eax
  1046d5:	8b 55 08             	mov    0x8(%ebp),%edx
  1046d8:	83 c2 1c             	add    $0x1c,%edx
  1046db:	83 ec 04             	sub    $0x4,%esp
  1046de:	50                   	push   %eax
  1046df:	52                   	push   %edx
  1046e0:	8d 83 5f b6 ff ff    	lea    -0x49a1(%ebx),%eax
  1046e6:	50                   	push   %eax
  1046e7:	e8 7c e3 ff ff       	call   102a68 <debug_info>
  1046ec:	83 c4 10             	add    $0x10,%esp
  1046ef:	8b 45 08             	mov    0x8(%ebp),%eax
  1046f2:	0f b7 40 20          	movzwl 0x20(%eax),%eax
  1046f6:	0f b7 c0             	movzwl %ax,%eax
  1046f9:	8b 55 08             	mov    0x8(%ebp),%edx
  1046fc:	83 c2 20             	add    $0x20,%edx
  1046ff:	83 ec 04             	sub    $0x4,%esp
  104702:	50                   	push   %eax
  104703:	52                   	push   %edx
  104704:	8d 83 75 b6 ff ff    	lea    -0x498b(%ebx),%eax
  10470a:	50                   	push   %eax
  10470b:	e8 58 e3 ff ff       	call   102a68 <debug_info>
  104710:	83 c4 10             	add    $0x10,%esp
  104713:	8b 45 08             	mov    0x8(%ebp),%eax
  104716:	0f b7 40 24          	movzwl 0x24(%eax),%eax
  10471a:	0f b7 c0             	movzwl %ax,%eax
  10471d:	8b 55 08             	mov    0x8(%ebp),%edx
  104720:	83 c2 24             	add    $0x24,%edx
  104723:	83 ec 04             	sub    $0x4,%esp
  104726:	50                   	push   %eax
  104727:	52                   	push   %edx
  104728:	8d 83 8b b6 ff ff    	lea    -0x4975(%ebx),%eax
  10472e:	50                   	push   %eax
  10472f:	e8 34 e3 ff ff       	call   102a68 <debug_info>
  104734:	83 c4 10             	add    $0x10,%esp
  104737:	8b 45 08             	mov    0x8(%ebp),%eax
  10473a:	8b 40 28             	mov    0x28(%eax),%eax
  10473d:	8b 55 08             	mov    0x8(%ebp),%edx
  104740:	83 c2 28             	add    $0x28,%edx
  104743:	83 ec 04             	sub    $0x4,%esp
  104746:	50                   	push   %eax
  104747:	52                   	push   %edx
  104748:	8d 83 a1 b6 ff ff    	lea    -0x495f(%ebx),%eax
  10474e:	50                   	push   %eax
  10474f:	e8 14 e3 ff ff       	call   102a68 <debug_info>
  104754:	83 c4 10             	add    $0x10,%esp
  104757:	8b 45 08             	mov    0x8(%ebp),%eax
  10475a:	8b 40 2c             	mov    0x2c(%eax),%eax
  10475d:	8b 55 08             	mov    0x8(%ebp),%edx
  104760:	83 c2 2c             	add    $0x2c,%edx
  104763:	83 ec 04             	sub    $0x4,%esp
  104766:	50                   	push   %eax
  104767:	52                   	push   %edx
  104768:	8d 83 b7 b6 ff ff    	lea    -0x4949(%ebx),%eax
  10476e:	50                   	push   %eax
  10476f:	e8 f4 e2 ff ff       	call   102a68 <debug_info>
  104774:	83 c4 10             	add    $0x10,%esp
  104777:	8b 45 08             	mov    0x8(%ebp),%eax
  10477a:	8b 40 30             	mov    0x30(%eax),%eax
  10477d:	8b 55 08             	mov    0x8(%ebp),%edx
  104780:	83 c2 30             	add    $0x30,%edx
  104783:	83 ec 04             	sub    $0x4,%esp
  104786:	50                   	push   %eax
  104787:	52                   	push   %edx
  104788:	8d 83 cd b6 ff ff    	lea    -0x4933(%ebx),%eax
  10478e:	50                   	push   %eax
  10478f:	e8 d4 e2 ff ff       	call   102a68 <debug_info>
  104794:	83 c4 10             	add    $0x10,%esp
  104797:	8b 45 08             	mov    0x8(%ebp),%eax
  10479a:	0f b7 40 34          	movzwl 0x34(%eax),%eax
  10479e:	0f b7 c0             	movzwl %ax,%eax
  1047a1:	8b 55 08             	mov    0x8(%ebp),%edx
  1047a4:	83 c2 34             	add    $0x34,%edx
  1047a7:	83 ec 04             	sub    $0x4,%esp
  1047aa:	50                   	push   %eax
  1047ab:	52                   	push   %edx
  1047ac:	8d 83 e3 b6 ff ff    	lea    -0x491d(%ebx),%eax
  1047b2:	50                   	push   %eax
  1047b3:	e8 b0 e2 ff ff       	call   102a68 <debug_info>
  1047b8:	83 c4 10             	add    $0x10,%esp
  1047bb:	8b 45 08             	mov    0x8(%ebp),%eax
  1047be:	8b 40 38             	mov    0x38(%eax),%eax
  1047c1:	8b 55 08             	mov    0x8(%ebp),%edx
  1047c4:	83 c2 38             	add    $0x38,%edx
  1047c7:	83 ec 04             	sub    $0x4,%esp
  1047ca:	50                   	push   %eax
  1047cb:	52                   	push   %edx
  1047cc:	8d 83 f9 b6 ff ff    	lea    -0x4907(%ebx),%eax
  1047d2:	50                   	push   %eax
  1047d3:	e8 90 e2 ff ff       	call   102a68 <debug_info>
  1047d8:	83 c4 10             	add    $0x10,%esp
  1047db:	8b 45 08             	mov    0x8(%ebp),%eax
  1047de:	8b 40 3c             	mov    0x3c(%eax),%eax
  1047e1:	8b 55 08             	mov    0x8(%ebp),%edx
  1047e4:	83 c2 3c             	add    $0x3c,%edx
  1047e7:	83 ec 04             	sub    $0x4,%esp
  1047ea:	50                   	push   %eax
  1047eb:	52                   	push   %edx
  1047ec:	8d 83 07 b6 ff ff    	lea    -0x49f9(%ebx),%eax
  1047f2:	50                   	push   %eax
  1047f3:	e8 70 e2 ff ff       	call   102a68 <debug_info>
  1047f8:	83 c4 10             	add    $0x10,%esp
  1047fb:	8b 45 08             	mov    0x8(%ebp),%eax
  1047fe:	0f b7 40 40          	movzwl 0x40(%eax),%eax
  104802:	0f b7 c0             	movzwl %ax,%eax
  104805:	8b 55 08             	mov    0x8(%ebp),%edx
  104808:	83 c2 40             	add    $0x40,%edx
  10480b:	83 ec 04             	sub    $0x4,%esp
  10480e:	50                   	push   %eax
  10480f:	52                   	push   %edx
  104810:	8d 83 0f b7 ff ff    	lea    -0x48f1(%ebx),%eax
  104816:	50                   	push   %eax
  104817:	e8 4c e2 ff ff       	call   102a68 <debug_info>
  10481c:	83 c4 10             	add    $0x10,%esp
  10481f:	eb 01                	jmp    104822 <trap_dump+0x26c>
  104821:	90                   	nop
  104822:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  104825:	c9                   	leave
  104826:	c3                   	ret

00104827 <pgflt_handler>:
  104827:	55                   	push   %ebp
  104828:	89 e5                	mov    %esp,%ebp
  10482a:	53                   	push   %ebx
  10482b:	83 ec 14             	sub    $0x14,%esp
  10482e:	e8 8d bb ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  104833:	81 c3 c1 77 00 00    	add    $0x77c1,%ebx
  104839:	8b 45 08             	mov    0x8(%ebp),%eax
  10483c:	8b 40 2c             	mov    0x2c(%eax),%eax
  10483f:	89 45 f4             	mov    %eax,-0xc(%ebp)
  104842:	e8 21 f2 ff ff       	call   103a68 <rcr2>
  104847:	89 45 f0             	mov    %eax,-0x10(%ebp)
  10484a:	8b 45 08             	mov    0x8(%ebp),%eax
  10484d:	8b 50 30             	mov    0x30(%eax),%edx
  104850:	c7 c0 2c 8c 15 00    	mov    $0x158c2c,%eax
  104856:	8b 00                	mov    (%eax),%eax
  104858:	83 ec 0c             	sub    $0xc,%esp
  10485b:	52                   	push   %edx
  10485c:	50                   	push   %eax
  10485d:	ff 75 f4             	push   -0xc(%ebp)
  104860:	ff 75 f0             	push   -0x10(%ebp)
  104863:	8d 83 28 b7 ff ff    	lea    -0x48d8(%ebx),%eax
  104869:	50                   	push   %eax
  10486a:	e8 fd e4 ff ff       	call   102d6c <dprintf>
  10486f:	83 c4 20             	add    $0x20,%esp
  104872:	8b 45 08             	mov    0x8(%ebp),%eax
  104875:	8b 40 2c             	mov    0x2c(%eax),%eax
  104878:	83 e0 01             	and    $0x1,%eax
  10487b:	85 c0                	test   %eax,%eax
  10487d:	74 23                	je     1048a2 <pgflt_handler+0x7b>
  10487f:	83 ec 0c             	sub    $0xc,%esp
  104882:	ff 75 f4             	push   -0xc(%ebp)
  104885:	ff 75 f0             	push   -0x10(%ebp)
  104888:	8d 83 6c b7 ff ff    	lea    -0x4894(%ebx),%eax
  10488e:	50                   	push   %eax
  10488f:	6a 32                	push   $0x32
  104891:	8d 83 b5 b5 ff ff    	lea    -0x4a4b(%ebx),%eax
  104897:	50                   	push   %eax
  104898:	e8 b7 e2 ff ff       	call   102b54 <debug_panic>
  10489d:	83 c4 20             	add    $0x20,%esp
  1048a0:	eb 2a                	jmp    1048cc <pgflt_handler+0xa5>
  1048a2:	83 ec 08             	sub    $0x8,%esp
  1048a5:	68 00 10 00 00       	push   $0x1000
  1048aa:	ff 75 f0             	push   -0x10(%ebp)
  1048ad:	e8 53 ef ff ff       	call   103805 <rounddown>
  1048b2:	83 c4 10             	add    $0x10,%esp
  1048b5:	c7 c2 2c 8c 15 00    	mov    $0x158c2c,%edx
  1048bb:	8b 12                	mov    (%edx),%edx
  1048bd:	83 ec 04             	sub    $0x4,%esp
  1048c0:	6a 07                	push   $0x7
  1048c2:	50                   	push   %eax
  1048c3:	52                   	push   %edx
  1048c4:	e8 67 21 00 00       	call   106a30 <alloc_page>
  1048c9:	83 c4 10             	add    $0x10,%esp
  1048cc:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1048cf:	c9                   	leave
  1048d0:	c3                   	ret

001048d1 <checkpoint>:
  1048d1:	55                   	push   %ebp
  1048d2:	89 e5                	mov    %esp,%ebp
  1048d4:	53                   	push   %ebx
  1048d5:	83 ec 04             	sub    $0x4,%esp
  1048d8:	e8 db ba ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1048dd:	05 17 77 00 00       	add    $0x7717,%eax
  1048e2:	83 ec 0c             	sub    $0xc,%esp
  1048e5:	8d 90 9d b7 ff ff    	lea    -0x4863(%eax),%edx
  1048eb:	52                   	push   %edx
  1048ec:	89 c3                	mov    %eax,%ebx
  1048ee:	e8 75 e1 ff ff       	call   102a68 <debug_info>
  1048f3:	83 c4 10             	add    $0x10,%esp
  1048f6:	90                   	nop
  1048f7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1048fa:	c9                   	leave
  1048fb:	c3                   	ret

001048fc <trap>:
  1048fc:	55                   	push   %ebp
  1048fd:	89 e5                	mov    %esp,%ebp
  1048ff:	53                   	push   %ebx
  104900:	83 ec 04             	sub    $0x4,%esp
  104903:	e8 b8 ba ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  104908:	81 c3 ec 76 00 00    	add    $0x76ec,%ebx
  10490e:	8b 45 08             	mov    0x8(%ebp),%eax
  104911:	8b 40 28             	mov    0x28(%eax),%eax
  104914:	83 f8 0e             	cmp    $0xe,%eax
  104917:	75 1d                	jne    104936 <trap+0x3a>
  104919:	83 ec 0c             	sub    $0xc,%esp
  10491c:	6a 00                	push   $0x0
  10491e:	e8 6d 11 00 00       	call   105a90 <set_pdir_base>
  104923:	83 c4 10             	add    $0x10,%esp
  104926:	83 ec 0c             	sub    $0xc,%esp
  104929:	ff 75 08             	push   0x8(%ebp)
  10492c:	e8 f6 fe ff ff       	call   104827 <pgflt_handler>
  104931:	83 c4 10             	add    $0x10,%esp
  104934:	eb 48                	jmp    10497e <trap+0x82>
  104936:	8b 45 08             	mov    0x8(%ebp),%eax
  104939:	8b 40 28             	mov    0x28(%eax),%eax
  10493c:	50                   	push   %eax
  10493d:	8d 83 aa b7 ff ff    	lea    -0x4856(%ebx),%eax
  104943:	50                   	push   %eax
  104944:	6a 45                	push   $0x45
  104946:	8d 83 b5 b5 ff ff    	lea    -0x4a4b(%ebx),%eax
  10494c:	50                   	push   %eax
  10494d:	e8 47 e1 ff ff       	call   102a99 <debug_normal>
  104952:	83 c4 10             	add    $0x10,%esp
  104955:	83 ec 0c             	sub    $0xc,%esp
  104958:	ff 75 08             	push   0x8(%ebp)
  10495b:	e8 56 fc ff ff       	call   1045b6 <trap_dump>
  104960:	83 c4 10             	add    $0x10,%esp
  104963:	83 ec 04             	sub    $0x4,%esp
  104966:	8d 83 be b7 ff ff    	lea    -0x4842(%ebx),%eax
  10496c:	50                   	push   %eax
  10496d:	6a 47                	push   $0x47
  10496f:	8d 83 b5 b5 ff ff    	lea    -0x4a4b(%ebx),%eax
  104975:	50                   	push   %eax
  104976:	e8 d9 e1 ff ff       	call   102b54 <debug_panic>
  10497b:	83 c4 10             	add    $0x10,%esp
  10497e:	c7 c0 2c 8c 15 00    	mov    $0x158c2c,%eax
  104984:	8b 00                	mov    (%eax),%eax
  104986:	83 ec 0c             	sub    $0xc,%esp
  104989:	50                   	push   %eax
  10498a:	e8 01 11 00 00       	call   105a90 <set_pdir_base>
  10498f:	83 c4 10             	add    $0x10,%esp
  104992:	83 ec 0c             	sub    $0xc,%esp
  104995:	ff 75 08             	push   0x8(%ebp)
  104998:	e8 03 de ff ff       	call   1027a0 <trap_return>
  10499d:	83 c4 10             	add    $0x10,%esp
  1049a0:	90                   	nop
  1049a1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1049a4:	c9                   	leave
  1049a5:	c3                   	ret
  1049a6:	66 90                	xchg   %ax,%ax
  1049a8:	66 90                	xchg   %ax,%ax
  1049aa:	66 90                	xchg   %ax,%ax
  1049ac:	66 90                	xchg   %ax,%ax
  1049ae:	66 90                	xchg   %ax,%ax

001049b0 <kern_init>:
    monitor(NULL);
#endif
}

void kern_init(uintptr_t mbi_addr)
{
  1049b0:	56                   	push   %esi
  1049b1:	53                   	push   %ebx
  1049b2:	e8 09 ba ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1049b7:	81 c3 3d 76 00 00    	add    $0x763d,%ebx
  1049bd:	83 ec 10             	sub    $0x10,%esp
#ifdef TEST
    pdir_init_kern(mbi_addr);
  1049c0:	ff 74 24 1c          	push   0x1c(%esp)
  1049c4:	e8 d7 1c 00 00       	call   1066a0 <pdir_init_kern>
#else
    paging_init(mbi_addr);
#endif

    KERN_DEBUG("Kernel initialized.\n");
  1049c9:	8d b3 da b7 ff ff    	lea    -0x4826(%ebx),%esi
  1049cf:	83 c4 0c             	add    $0xc,%esp
  1049d2:	8d 83 c5 b7 ff ff    	lea    -0x483b(%ebx),%eax
  1049d8:	50                   	push   %eax
  1049d9:	6a 4e                	push   $0x4e
  1049db:	56                   	push   %esi
  1049dc:	e8 b8 e0 ff ff       	call   102a99 <debug_normal>
    KERN_DEBUG("In kernel main.\n\n");
  1049e1:	83 c4 0c             	add    $0xc,%esp
  1049e4:	8d 83 eb b7 ff ff    	lea    -0x4815(%ebx),%eax
  1049ea:	50                   	push   %eax
  1049eb:	6a 15                	push   $0x15
  1049ed:	56                   	push   %esi
  1049ee:	e8 a6 e0 ff ff       	call   102a99 <debug_normal>
    dprintf("Testing the MContainer layer...\n");
  1049f3:	8d 83 ec ba ff ff    	lea    -0x4514(%ebx),%eax
  1049f9:	89 04 24             	mov    %eax,(%esp)
  1049fc:	e8 6b e3 ff ff       	call   102d6c <dprintf>
    if (test_MContainer() == 0)
  104a01:	e8 6a 10 00 00       	call   105a70 <test_MContainer>
  104a06:	83 c4 10             	add    $0x10,%esp
  104a09:	84 c0                	test   %al,%al
  104a0b:	0f 85 4f 01 00 00    	jne    104b60 <kern_init+0x1b0>
        dprintf("All tests passed.\n");
  104a11:	83 ec 0c             	sub    $0xc,%esp
  104a14:	8d 83 fd b7 ff ff    	lea    -0x4803(%ebx),%eax
  104a1a:	50                   	push   %eax
  104a1b:	e8 4c e3 ff ff       	call   102d6c <dprintf>
  104a20:	83 c4 10             	add    $0x10,%esp
    dprintf("\n");
  104a23:	83 ec 0c             	sub    $0xc,%esp
  104a26:	8d b3 fb b7 ff ff    	lea    -0x4805(%ebx),%esi
  104a2c:	56                   	push   %esi
  104a2d:	e8 3a e3 ff ff       	call   102d6c <dprintf>
    dprintf("Testing the MPTIntro layer...\n");
  104a32:	8d 83 10 bb ff ff    	lea    -0x44f0(%ebx),%eax
  104a38:	89 04 24             	mov    %eax,(%esp)
  104a3b:	e8 2c e3 ff ff       	call   102d6c <dprintf>
    if (test_MPTIntro() == 0)
  104a40:	e8 ab 14 00 00       	call   105ef0 <test_MPTIntro>
  104a45:	83 c4 10             	add    $0x10,%esp
  104a48:	84 c0                	test   %al,%al
  104a4a:	0f 85 a0 01 00 00    	jne    104bf0 <kern_init+0x240>
        dprintf("All tests passed.\n");
  104a50:	83 ec 0c             	sub    $0xc,%esp
  104a53:	8d 83 fd b7 ff ff    	lea    -0x4803(%ebx),%eax
  104a59:	50                   	push   %eax
  104a5a:	e8 0d e3 ff ff       	call   102d6c <dprintf>
  104a5f:	83 c4 10             	add    $0x10,%esp
    dprintf("\n");
  104a62:	83 ec 0c             	sub    $0xc,%esp
  104a65:	56                   	push   %esi
  104a66:	e8 01 e3 ff ff       	call   102d6c <dprintf>
    dprintf("Testing the MPTOp layer...\n");
  104a6b:	8d 83 1e b8 ff ff    	lea    -0x47e2(%ebx),%eax
  104a71:	89 04 24             	mov    %eax,(%esp)
  104a74:	e8 f3 e2 ff ff       	call   102d6c <dprintf>
    if (test_MPTOp() == 0)
  104a79:	e8 c2 18 00 00       	call   106340 <test_MPTOp>
  104a7e:	83 c4 10             	add    $0x10,%esp
  104a81:	84 c0                	test   %al,%al
  104a83:	0f 85 47 01 00 00    	jne    104bd0 <kern_init+0x220>
        dprintf("All tests passed.\n");
  104a89:	83 ec 0c             	sub    $0xc,%esp
  104a8c:	8d 83 fd b7 ff ff    	lea    -0x4803(%ebx),%eax
  104a92:	50                   	push   %eax
  104a93:	e8 d4 e2 ff ff       	call   102d6c <dprintf>
  104a98:	83 c4 10             	add    $0x10,%esp
    dprintf("\n");
  104a9b:	83 ec 0c             	sub    $0xc,%esp
  104a9e:	56                   	push   %esi
  104a9f:	e8 c8 e2 ff ff       	call   102d6c <dprintf>
    dprintf("Testing the MPTComm layer...\n");
  104aa4:	8d 83 3a b8 ff ff    	lea    -0x47c6(%ebx),%eax
  104aaa:	89 04 24             	mov    %eax,(%esp)
  104aad:	e8 ba e2 ff ff       	call   102d6c <dprintf>
    if (test_MPTComm() == 0)
  104ab2:	e8 c9 1b 00 00       	call   106680 <test_MPTComm>
  104ab7:	83 c4 10             	add    $0x10,%esp
  104aba:	84 c0                	test   %al,%al
  104abc:	0f 85 ee 00 00 00    	jne    104bb0 <kern_init+0x200>
        dprintf("All tests passed.\n");
  104ac2:	83 ec 0c             	sub    $0xc,%esp
  104ac5:	8d 83 fd b7 ff ff    	lea    -0x4803(%ebx),%eax
  104acb:	50                   	push   %eax
  104acc:	e8 9b e2 ff ff       	call   102d6c <dprintf>
  104ad1:	83 c4 10             	add    $0x10,%esp
    dprintf("\n");
  104ad4:	83 ec 0c             	sub    $0xc,%esp
  104ad7:	56                   	push   %esi
  104ad8:	e8 8f e2 ff ff       	call   102d6c <dprintf>
    dprintf("Testing the MPTKern layer...\n");
  104add:	8d 83 58 b8 ff ff    	lea    -0x47a8(%ebx),%eax
  104ae3:	89 04 24             	mov    %eax,(%esp)
  104ae6:	e8 81 e2 ff ff       	call   102d6c <dprintf>
    if (test_MPTKern() == 0)
  104aeb:	e8 f0 1e 00 00       	call   1069e0 <test_MPTKern>
  104af0:	83 c4 10             	add    $0x10,%esp
  104af3:	84 c0                	test   %al,%al
  104af5:	0f 85 9d 00 00 00    	jne    104b98 <kern_init+0x1e8>
        dprintf("All tests passed.\n");
  104afb:	83 ec 0c             	sub    $0xc,%esp
  104afe:	8d 83 fd b7 ff ff    	lea    -0x4803(%ebx),%eax
  104b04:	50                   	push   %eax
  104b05:	e8 62 e2 ff ff       	call   102d6c <dprintf>
  104b0a:	83 c4 10             	add    $0x10,%esp
    dprintf("\n");
  104b0d:	83 ec 0c             	sub    $0xc,%esp
  104b10:	56                   	push   %esi
  104b11:	e8 56 e2 ff ff       	call   102d6c <dprintf>
    dprintf("Testing the MPTNew layer...\n");
  104b16:	8d 83 76 b8 ff ff    	lea    -0x478a(%ebx),%eax
  104b1c:	89 04 24             	mov    %eax,(%esp)
  104b1f:	e8 48 e2 ff ff       	call   102d6c <dprintf>
    if (test_MPTNew() == 0)
  104b24:	e8 e7 20 00 00       	call   106c10 <test_MPTNew>
  104b29:	83 c4 10             	add    $0x10,%esp
  104b2c:	84 c0                	test   %al,%al
  104b2e:	75 50                	jne    104b80 <kern_init+0x1d0>
        dprintf("All tests passed.\n");
  104b30:	83 ec 0c             	sub    $0xc,%esp
  104b33:	8d 83 fd b7 ff ff    	lea    -0x4803(%ebx),%eax
  104b39:	50                   	push   %eax
  104b3a:	e8 2d e2 ff ff       	call   102d6c <dprintf>
  104b3f:	83 c4 10             	add    $0x10,%esp
    dprintf("\nTest complete. Please Use Ctrl-a x to exit qemu.");
  104b42:	83 ec 0c             	sub    $0xc,%esp
  104b45:	8d 83 30 bb ff ff    	lea    -0x44d0(%ebx),%eax
  104b4b:	50                   	push   %eax
  104b4c:	e8 1b e2 ff ff       	call   102d6c <dprintf>

    kern_main();
}
  104b51:	83 c4 14             	add    $0x14,%esp
  104b54:	5b                   	pop    %ebx
  104b55:	5e                   	pop    %esi
  104b56:	c3                   	ret
  104b57:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  104b5e:	00 
  104b5f:	90                   	nop
        dprintf("Test failed.\n");
  104b60:	83 ec 0c             	sub    $0xc,%esp
  104b63:	8d 83 10 b8 ff ff    	lea    -0x47f0(%ebx),%eax
  104b69:	50                   	push   %eax
  104b6a:	e8 fd e1 ff ff       	call   102d6c <dprintf>
  104b6f:	83 c4 10             	add    $0x10,%esp
  104b72:	e9 ac fe ff ff       	jmp    104a23 <kern_init+0x73>
  104b77:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  104b7e:	00 
  104b7f:	90                   	nop
        dprintf("Test failed.\n");
  104b80:	83 ec 0c             	sub    $0xc,%esp
  104b83:	8d 83 10 b8 ff ff    	lea    -0x47f0(%ebx),%eax
  104b89:	50                   	push   %eax
  104b8a:	e8 dd e1 ff ff       	call   102d6c <dprintf>
  104b8f:	83 c4 10             	add    $0x10,%esp
  104b92:	eb ae                	jmp    104b42 <kern_init+0x192>
  104b94:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        dprintf("Test failed.\n");
  104b98:	83 ec 0c             	sub    $0xc,%esp
  104b9b:	8d 83 10 b8 ff ff    	lea    -0x47f0(%ebx),%eax
  104ba1:	50                   	push   %eax
  104ba2:	e8 c5 e1 ff ff       	call   102d6c <dprintf>
  104ba7:	83 c4 10             	add    $0x10,%esp
  104baa:	e9 5e ff ff ff       	jmp    104b0d <kern_init+0x15d>
  104baf:	90                   	nop
        dprintf("Test failed.\n");
  104bb0:	83 ec 0c             	sub    $0xc,%esp
  104bb3:	8d 83 10 b8 ff ff    	lea    -0x47f0(%ebx),%eax
  104bb9:	50                   	push   %eax
  104bba:	e8 ad e1 ff ff       	call   102d6c <dprintf>
  104bbf:	83 c4 10             	add    $0x10,%esp
  104bc2:	e9 0d ff ff ff       	jmp    104ad4 <kern_init+0x124>
  104bc7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  104bce:	00 
  104bcf:	90                   	nop
        dprintf("Test failed.\n");
  104bd0:	83 ec 0c             	sub    $0xc,%esp
  104bd3:	8d 83 10 b8 ff ff    	lea    -0x47f0(%ebx),%eax
  104bd9:	50                   	push   %eax
  104bda:	e8 8d e1 ff ff       	call   102d6c <dprintf>
  104bdf:	83 c4 10             	add    $0x10,%esp
  104be2:	e9 b4 fe ff ff       	jmp    104a9b <kern_init+0xeb>
  104be7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  104bee:	00 
  104bef:	90                   	nop
        dprintf("Test failed.\n");
  104bf0:	83 ec 0c             	sub    $0xc,%esp
  104bf3:	8d 83 10 b8 ff ff    	lea    -0x47f0(%ebx),%eax
  104bf9:	50                   	push   %eax
  104bfa:	e8 6d e1 ff ff       	call   102d6c <dprintf>
  104bff:	83 c4 10             	add    $0x10,%esp
  104c02:	e9 5b fe ff ff       	jmp    104a62 <kern_init+0xb2>
  104c07:	90                   	nop
  104c08:	02 b0 ad 1b 03 00    	add    0x31bad(%eax),%dh
  104c0e:	00 00                	add    %al,(%eax)
  104c10:	fb                   	sti
  104c11:	4f                   	dec    %edi
  104c12:	52                   	push   %edx
  104c13:	e4                   	.byte 0xe4

00104c14 <start>:
  104c14:	fa                   	cli
  104c15:	3d 02 b0 ad 2b       	cmp    $0x2badb002,%eax
  104c1a:	75 27                	jne    104c43 <spin>
  104c1c:	89 1d 44 4c 10 00    	mov    %ebx,0x104c44
  104c22:	66 c7 05 72 04 00 00 	movw   $0x1234,0x472
  104c29:	34 12 
  104c2b:	6a 02                	push   $0x2
  104c2d:	9d                   	popf
  104c2e:	bd 00 00 00 00       	mov    $0x0,%ebp
  104c33:	bc 00 50 11 00       	mov    $0x115000,%esp
  104c38:	ff 35 44 4c 10 00    	push   0x104c44
  104c3e:	e8 6d fd ff ff       	call   1049b0 <kern_init>

00104c43 <spin>:
  104c43:	f4                   	hlt

00104c44 <multiboot_ptr>:
  104c44:	00 00                	add    %al,(%eax)
  104c46:	00 00                	add    %al,(%eax)
  104c48:	66 90                	xchg   %ax,%ax
  104c4a:	66 90                	xchg   %ax,%ax
  104c4c:	66 90                	xchg   %ax,%ax
  104c4e:	66 90                	xchg   %ax,%ax

00104c50 <get_nps>:
static struct ATStruct AT[1 << 20];

// The getter function for NUM_PAGES.
unsigned int get_nps(void)
{
    return NUM_PAGES;
  104c50:	e8 63 b7 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  104c55:	05 9f 73 00 00       	add    $0x739f,%eax
  104c5a:	8b 80 4c cc 84 00    	mov    0x84cc4c(%eax),%eax
}
  104c60:	c3                   	ret
  104c61:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  104c68:	00 
  104c69:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00104c70 <set_nps>:

// The setter function for NUM_PAGES.
void set_nps(unsigned int nps)
{
    NUM_PAGES = nps;
  104c70:	e8 43 b7 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  104c75:	05 7f 73 00 00       	add    $0x737f,%eax
  104c7a:	8b 54 24 04          	mov    0x4(%esp),%edx
  104c7e:	89 90 4c cc 84 00    	mov    %edx,0x84cc4c(%eax)
}
  104c84:	c3                   	ret
  104c85:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  104c8c:	00 
  104c8d:	8d 76 00             	lea    0x0(%esi),%esi

00104c90 <at_is_norm>:
 * If the page with the given index has the normal permission,
 * then returns 1, otherwise returns 0.
 */
unsigned int at_is_norm(unsigned int page_index)
{
    if (AT[page_index].perm > 1) return 1;
  104c90:	e8 23 b7 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  104c95:	05 5f 73 00 00       	add    $0x735f,%eax
  104c9a:	8b 54 24 04          	mov    0x4(%esp),%edx
  104c9e:	83 bc d0 4c cc 04 00 	cmpl   $0x1,0x4cc4c(%eax,%edx,8)
  104ca5:	01 
  104ca6:	0f 97 c0             	seta   %al
  104ca9:	0f b6 c0             	movzbl %al,%eax
    else return 0;
}
  104cac:	c3                   	ret
  104cad:	8d 76 00             	lea    0x0(%esi),%esi

00104cb0 <at_set_perm>:
 * Sets the permission of the page with given index.
 * It also marks the page as unallocated.
 */
void at_set_perm(unsigned int page_index, unsigned int perm)
{
    AT[page_index].perm = perm;
  104cb0:	e8 03 b7 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  104cb5:	05 3f 73 00 00       	add    $0x733f,%eax
  104cba:	8b 54 24 04          	mov    0x4(%esp),%edx
  104cbe:	8b 4c 24 08          	mov    0x8(%esp),%ecx
  104cc2:	89 8c d0 4c cc 04 00 	mov    %ecx,0x4cc4c(%eax,%edx,8)
}
  104cc9:	c3                   	ret
  104cca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00104cd0 <at_is_allocated>:
 * The getter function for the physical page allocation flag.
 * Returns 0 if the page is not allocated, otherwise returns 1.
 */
unsigned int at_is_allocated(unsigned int page_index)
{
    if (AT[page_index].allocated == 0) return 0;
  104cd0:	e8 e3 b6 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  104cd5:	05 1f 73 00 00       	add    $0x731f,%eax
  104cda:	8b 54 24 04          	mov    0x4(%esp),%edx
  104cde:	8b 84 d0 50 cc 04 00 	mov    0x4cc50(%eax,%edx,8),%eax
  104ce5:	85 c0                	test   %eax,%eax
  104ce7:	0f 95 c0             	setne  %al
  104cea:	0f b6 c0             	movzbl %al,%eax
    else return 1;
}
  104ced:	c3                   	ret
  104cee:	66 90                	xchg   %ax,%ax

00104cf0 <at_set_allocated>:
 * The setter function for the physical page allocation flag.
 * Set the flag of the page with given index to the given value.
 */
void at_set_allocated(unsigned int page_index, unsigned int allocated)
{
    AT[page_index].allocated = allocated;
  104cf0:	e8 c3 b6 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  104cf5:	05 ff 72 00 00       	add    $0x72ff,%eax
  104cfa:	8b 54 24 04          	mov    0x4(%esp),%edx
  104cfe:	8b 4c 24 08          	mov    0x8(%esp),%ecx
  104d02:	89 8c d0 50 cc 04 00 	mov    %ecx,0x4cc50(%eax,%edx,8)
}
  104d09:	c3                   	ret
  104d0a:	66 90                	xchg   %ax,%ax
  104d0c:	66 90                	xchg   %ax,%ax
  104d0e:	66 90                	xchg   %ax,%ax

00104d10 <MATIntro_test1>:
#include <lib/debug.h>
#include "export.h"

int MATIntro_test1()
{
  104d10:	55                   	push   %ebp
  104d11:	57                   	push   %edi
  104d12:	56                   	push   %esi
    int rn10[] = { 1, 3, 5, 6, 78, 3576, 32, 8, 0, 100 };
    int i;
    int nps = get_nps();
    for (i = 0; i < 10; i++) {
  104d13:	31 f6                	xor    %esi,%esi
{
  104d15:	53                   	push   %ebx
  104d16:	e8 a5 b6 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  104d1b:	81 c3 d9 72 00 00    	add    $0x72d9,%ebx
  104d21:	83 ec 4c             	sub    $0x4c,%esp
    int rn10[] = { 1, 3, 5, 6, 78, 3576, 32, 8, 0, 100 };
  104d24:	c7 44 24 18 01 00 00 	movl   $0x1,0x18(%esp)
  104d2b:	00 
  104d2c:	8d 7c 24 18          	lea    0x18(%esp),%edi
  104d30:	c7 44 24 1c 03 00 00 	movl   $0x3,0x1c(%esp)
  104d37:	00 
  104d38:	c7 44 24 20 05 00 00 	movl   $0x5,0x20(%esp)
  104d3f:	00 
  104d40:	c7 44 24 24 06 00 00 	movl   $0x6,0x24(%esp)
  104d47:	00 
  104d48:	c7 44 24 28 4e 00 00 	movl   $0x4e,0x28(%esp)
  104d4f:	00 
  104d50:	c7 44 24 2c f8 0d 00 	movl   $0xdf8,0x2c(%esp)
  104d57:	00 
  104d58:	c7 44 24 30 20 00 00 	movl   $0x20,0x30(%esp)
  104d5f:	00 
  104d60:	c7 44 24 34 08 00 00 	movl   $0x8,0x34(%esp)
  104d67:	00 
  104d68:	c7 44 24 38 00 00 00 	movl   $0x0,0x38(%esp)
  104d6f:	00 
  104d70:	c7 44 24 3c 64 00 00 	movl   $0x64,0x3c(%esp)
  104d77:	00 
    int nps = get_nps();
  104d78:	e8 d3 fe ff ff       	call   104c50 <get_nps>
  104d7d:	89 44 24 0c          	mov    %eax,0xc(%esp)
    for (i = 0; i < 10; i++) {
  104d81:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        set_nps(rn10[i]);
  104d88:	8b 2c b7             	mov    (%edi,%esi,4),%ebp
  104d8b:	83 ec 0c             	sub    $0xc,%esp
  104d8e:	55                   	push   %ebp
  104d8f:	e8 dc fe ff ff       	call   104c70 <set_nps>
        if (get_nps() != rn10[i]) {
  104d94:	e8 b7 fe ff ff       	call   104c50 <get_nps>
  104d99:	83 c4 10             	add    $0x10,%esp
  104d9c:	39 c5                	cmp    %eax,%ebp
  104d9e:	75 30                	jne    104dd0 <MATIntro_test1+0xc0>
    for (i = 0; i < 10; i++) {
  104da0:	83 c6 01             	add    $0x1,%esi
  104da3:	83 fe 0a             	cmp    $0xa,%esi
  104da6:	75 e0                	jne    104d88 <MATIntro_test1+0x78>
            dprintf("test 1.1 failed (i = %d): (%d != %d)\n", i, get_nps(), rn10[i]);
            set_nps(nps);
            return 1;
        }
    }
    set_nps(nps);
  104da8:	83 ec 0c             	sub    $0xc,%esp
  104dab:	ff 74 24 18          	push   0x18(%esp)
  104daf:	e8 bc fe ff ff       	call   104c70 <set_nps>
    dprintf("test 1 passed.\n");
  104db4:	8d 83 93 b8 ff ff    	lea    -0x476d(%ebx),%eax
  104dba:	89 04 24             	mov    %eax,(%esp)
  104dbd:	e8 aa df ff ff       	call   102d6c <dprintf>
    return 0;
  104dc2:	83 c4 10             	add    $0x10,%esp
  104dc5:	31 c0                	xor    %eax,%eax
}
  104dc7:	83 c4 4c             	add    $0x4c,%esp
  104dca:	5b                   	pop    %ebx
  104dcb:	5e                   	pop    %esi
  104dcc:	5f                   	pop    %edi
  104dcd:	5d                   	pop    %ebp
  104dce:	c3                   	ret
  104dcf:	90                   	nop
            dprintf("test 1.1 failed (i = %d): (%d != %d)\n", i, get_nps(), rn10[i]);
  104dd0:	e8 7b fe ff ff       	call   104c50 <get_nps>
  104dd5:	55                   	push   %ebp
  104dd6:	50                   	push   %eax
  104dd7:	8d 83 64 bb ff ff    	lea    -0x449c(%ebx),%eax
  104ddd:	56                   	push   %esi
  104dde:	50                   	push   %eax
  104ddf:	e8 88 df ff ff       	call   102d6c <dprintf>
            set_nps(nps);
  104de4:	58                   	pop    %eax
  104de5:	ff 74 24 18          	push   0x18(%esp)
  104de9:	e8 82 fe ff ff       	call   104c70 <set_nps>
            return 1;
  104dee:	83 c4 10             	add    $0x10,%esp
  104df1:	b8 01 00 00 00       	mov    $0x1,%eax
}
  104df6:	83 c4 4c             	add    $0x4c,%esp
  104df9:	5b                   	pop    %ebx
  104dfa:	5e                   	pop    %esi
  104dfb:	5f                   	pop    %edi
  104dfc:	5d                   	pop    %ebp
  104dfd:	c3                   	ret
  104dfe:	66 90                	xchg   %ax,%ax

00104e00 <MATIntro_test2>:

int MATIntro_test2()
{
  104e00:	56                   	push   %esi
  104e01:	53                   	push   %ebx
  104e02:	e8 b9 b5 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  104e07:	81 c3 ed 71 00 00    	add    $0x71ed,%ebx
  104e0d:	83 ec 0c             	sub    $0xc,%esp
    at_set_perm(0, 0);
  104e10:	6a 00                	push   $0x0
  104e12:	6a 00                	push   $0x0
  104e14:	e8 97 fe ff ff       	call   104cb0 <at_set_perm>
    if (at_is_norm(0) != 0 || at_is_allocated(0) != 0) {
  104e19:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  104e20:	e8 6b fe ff ff       	call   104c90 <at_is_norm>
  104e25:	83 c4 10             	add    $0x10,%esp
  104e28:	85 c0                	test   %eax,%eax
  104e2a:	75 11                	jne    104e3d <MATIntro_test2+0x3d>
  104e2c:	83 ec 0c             	sub    $0xc,%esp
  104e2f:	6a 00                	push   $0x0
  104e31:	e8 9a fe ff ff       	call   104cd0 <at_is_allocated>
  104e36:	83 c4 10             	add    $0x10,%esp
  104e39:	85 c0                	test   %eax,%eax
  104e3b:	74 43                	je     104e80 <MATIntro_test2+0x80>
        dprintf("test 2.1 failed: (%d != 0 || %d != 0)\n", at_is_norm(0), at_is_allocated(0));
  104e3d:	83 ec 0c             	sub    $0xc,%esp
  104e40:	6a 00                	push   $0x0
  104e42:	e8 89 fe ff ff       	call   104cd0 <at_is_allocated>
  104e47:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  104e4e:	89 c6                	mov    %eax,%esi
  104e50:	e8 3b fe ff ff       	call   104c90 <at_is_norm>
  104e55:	83 c4 0c             	add    $0xc,%esp
  104e58:	56                   	push   %esi
  104e59:	50                   	push   %eax
  104e5a:	8d 83 8c bb ff ff    	lea    -0x4474(%ebx),%eax
        at_set_perm(0, 0);
        return 1;
    }
    at_set_perm(0, 1);
    if (at_is_norm(0) != 0 || at_is_allocated(0) != 0) {
        dprintf("test 2.2 failed: (%d != 0 || %d != 0)\n", at_is_norm(0), at_is_allocated(0));
  104e60:	50                   	push   %eax
  104e61:	e8 06 df ff ff       	call   102d6c <dprintf>
        at_set_perm(0, 0);
  104e66:	58                   	pop    %eax
  104e67:	5a                   	pop    %edx
  104e68:	6a 00                	push   $0x0
  104e6a:	6a 00                	push   $0x0
  104e6c:	e8 3f fe ff ff       	call   104cb0 <at_set_perm>
        return 1;
  104e71:	83 c4 10             	add    $0x10,%esp
        return 1;
  104e74:	b8 01 00 00 00       	mov    $0x1,%eax
        return 1;
    }
    at_set_perm(0, 0);
    dprintf("test 2 passed.\n");
    return 0;
}
  104e79:	83 c4 04             	add    $0x4,%esp
  104e7c:	5b                   	pop    %ebx
  104e7d:	5e                   	pop    %esi
  104e7e:	c3                   	ret
  104e7f:	90                   	nop
    at_set_perm(0, 1);
  104e80:	83 ec 08             	sub    $0x8,%esp
  104e83:	6a 01                	push   $0x1
  104e85:	6a 00                	push   $0x0
  104e87:	e8 24 fe ff ff       	call   104cb0 <at_set_perm>
    if (at_is_norm(0) != 0 || at_is_allocated(0) != 0) {
  104e8c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  104e93:	e8 f8 fd ff ff       	call   104c90 <at_is_norm>
  104e98:	83 c4 10             	add    $0x10,%esp
  104e9b:	85 c0                	test   %eax,%eax
  104e9d:	75 11                	jne    104eb0 <MATIntro_test2+0xb0>
  104e9f:	83 ec 0c             	sub    $0xc,%esp
  104ea2:	6a 00                	push   $0x0
  104ea4:	e8 27 fe ff ff       	call   104cd0 <at_is_allocated>
  104ea9:	83 c4 10             	add    $0x10,%esp
  104eac:	85 c0                	test   %eax,%eax
  104eae:	74 28                	je     104ed8 <MATIntro_test2+0xd8>
        dprintf("test 2.2 failed: (%d != 0 || %d != 0)\n", at_is_norm(0), at_is_allocated(0));
  104eb0:	83 ec 0c             	sub    $0xc,%esp
  104eb3:	6a 00                	push   $0x0
  104eb5:	e8 16 fe ff ff       	call   104cd0 <at_is_allocated>
  104eba:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  104ec1:	89 c6                	mov    %eax,%esi
  104ec3:	e8 c8 fd ff ff       	call   104c90 <at_is_norm>
  104ec8:	83 c4 0c             	add    $0xc,%esp
  104ecb:	56                   	push   %esi
  104ecc:	50                   	push   %eax
  104ecd:	8d 83 b4 bb ff ff    	lea    -0x444c(%ebx),%eax
  104ed3:	eb 8b                	jmp    104e60 <MATIntro_test2+0x60>
  104ed5:	8d 76 00             	lea    0x0(%esi),%esi
    at_set_perm(0, 2);
  104ed8:	83 ec 08             	sub    $0x8,%esp
  104edb:	6a 02                	push   $0x2
  104edd:	6a 00                	push   $0x0
  104edf:	e8 cc fd ff ff       	call   104cb0 <at_set_perm>
    if (at_is_norm(0) != 1 || at_is_allocated(0) != 0) {
  104ee4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  104eeb:	e8 a0 fd ff ff       	call   104c90 <at_is_norm>
  104ef0:	83 c4 10             	add    $0x10,%esp
  104ef3:	83 f8 01             	cmp    $0x1,%eax
  104ef6:	75 11                	jne    104f09 <MATIntro_test2+0x109>
  104ef8:	83 ec 0c             	sub    $0xc,%esp
  104efb:	6a 00                	push   $0x0
  104efd:	e8 ce fd ff ff       	call   104cd0 <at_is_allocated>
  104f02:	83 c4 10             	add    $0x10,%esp
  104f05:	85 c0                	test   %eax,%eax
  104f07:	74 2f                	je     104f38 <MATIntro_test2+0x138>
        dprintf("test 2.3 failed: (%d != 1 || %d != 0)\n", at_is_norm(0), at_is_allocated(0));
  104f09:	83 ec 0c             	sub    $0xc,%esp
  104f0c:	6a 00                	push   $0x0
  104f0e:	e8 bd fd ff ff       	call   104cd0 <at_is_allocated>
  104f13:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  104f1a:	89 c6                	mov    %eax,%esi
  104f1c:	e8 6f fd ff ff       	call   104c90 <at_is_norm>
  104f21:	83 c4 0c             	add    $0xc,%esp
  104f24:	56                   	push   %esi
  104f25:	50                   	push   %eax
  104f26:	8d 83 dc bb ff ff    	lea    -0x4424(%ebx),%eax
  104f2c:	e9 2f ff ff ff       	jmp    104e60 <MATIntro_test2+0x60>
  104f31:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    at_set_perm(0, 100);
  104f38:	83 ec 08             	sub    $0x8,%esp
  104f3b:	6a 64                	push   $0x64
  104f3d:	6a 00                	push   $0x0
  104f3f:	e8 6c fd ff ff       	call   104cb0 <at_set_perm>
    if (at_is_norm(0) != 1 || at_is_allocated(0) != 0) {
  104f44:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  104f4b:	e8 40 fd ff ff       	call   104c90 <at_is_norm>
  104f50:	83 c4 10             	add    $0x10,%esp
  104f53:	83 f8 01             	cmp    $0x1,%eax
  104f56:	75 38                	jne    104f90 <MATIntro_test2+0x190>
  104f58:	83 ec 0c             	sub    $0xc,%esp
  104f5b:	6a 00                	push   $0x0
  104f5d:	e8 6e fd ff ff       	call   104cd0 <at_is_allocated>
  104f62:	83 c4 10             	add    $0x10,%esp
  104f65:	85 c0                	test   %eax,%eax
  104f67:	75 27                	jne    104f90 <MATIntro_test2+0x190>
    at_set_perm(0, 0);
  104f69:	83 ec 08             	sub    $0x8,%esp
  104f6c:	6a 00                	push   $0x0
  104f6e:	6a 00                	push   $0x0
  104f70:	e8 3b fd ff ff       	call   104cb0 <at_set_perm>
    dprintf("test 2 passed.\n");
  104f75:	8d 83 a3 b8 ff ff    	lea    -0x475d(%ebx),%eax
  104f7b:	89 04 24             	mov    %eax,(%esp)
  104f7e:	e8 e9 dd ff ff       	call   102d6c <dprintf>
    return 0;
  104f83:	83 c4 10             	add    $0x10,%esp
  104f86:	31 c0                	xor    %eax,%eax
  104f88:	e9 ec fe ff ff       	jmp    104e79 <MATIntro_test2+0x79>
  104f8d:	8d 76 00             	lea    0x0(%esi),%esi
        dprintf("test 2.4 failed: (%d != 1 || %d != 0)\n", at_is_norm(0), at_is_allocated(0));
  104f90:	83 ec 0c             	sub    $0xc,%esp
  104f93:	6a 00                	push   $0x0
  104f95:	e8 36 fd ff ff       	call   104cd0 <at_is_allocated>
  104f9a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  104fa1:	89 c6                	mov    %eax,%esi
  104fa3:	e8 e8 fc ff ff       	call   104c90 <at_is_norm>
  104fa8:	83 c4 0c             	add    $0xc,%esp
  104fab:	56                   	push   %esi
  104fac:	50                   	push   %eax
  104fad:	8d 83 04 bc ff ff    	lea    -0x43fc(%ebx),%eax
  104fb3:	e9 a8 fe ff ff       	jmp    104e60 <MATIntro_test2+0x60>
  104fb8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  104fbf:	00 

00104fc0 <MATIntro_test3>:

int MATIntro_test3()
{
  104fc0:	53                   	push   %ebx
  104fc1:	e8 fa b3 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  104fc6:	81 c3 2e 70 00 00    	add    $0x702e,%ebx
  104fcc:	83 ec 10             	sub    $0x10,%esp
    at_set_allocated(1, 0);
  104fcf:	6a 00                	push   $0x0
  104fd1:	6a 01                	push   $0x1
  104fd3:	e8 18 fd ff ff       	call   104cf0 <at_set_allocated>
    if (at_is_allocated(1) != 0) {
  104fd8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  104fdf:	e8 ec fc ff ff       	call   104cd0 <at_is_allocated>
  104fe4:	83 c4 10             	add    $0x10,%esp
  104fe7:	85 c0                	test   %eax,%eax
  104fe9:	0f 85 89 00 00 00    	jne    105078 <MATIntro_test3+0xb8>
        dprintf("test 3.1 failed: (%d != 0)\n", at_is_allocated(1));
        at_set_allocated(1, 0);
        return 1;
    }
    at_set_allocated(1, 1);
  104fef:	83 ec 08             	sub    $0x8,%esp
  104ff2:	6a 01                	push   $0x1
  104ff4:	6a 01                	push   $0x1
  104ff6:	e8 f5 fc ff ff       	call   104cf0 <at_set_allocated>
    if (at_is_allocated(1) != 1) {
  104ffb:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  105002:	e8 c9 fc ff ff       	call   104cd0 <at_is_allocated>
  105007:	83 c4 10             	add    $0x10,%esp
  10500a:	83 f8 01             	cmp    $0x1,%eax
  10500d:	74 31                	je     105040 <MATIntro_test3+0x80>
        dprintf("test 3.2 failed: (%d != 1)\n", at_is_allocated(1));
  10500f:	83 ec 0c             	sub    $0xc,%esp
  105012:	6a 01                	push   $0x1
  105014:	e8 b7 fc ff ff       	call   104cd0 <at_is_allocated>
  105019:	59                   	pop    %ecx
  10501a:	5a                   	pop    %edx
  10501b:	50                   	push   %eax
  10501c:	8d 83 cf b8 ff ff    	lea    -0x4731(%ebx),%eax
  105022:	50                   	push   %eax
  105023:	e8 44 dd ff ff       	call   102d6c <dprintf>
        at_set_allocated(1, 0);
  105028:	58                   	pop    %eax
  105029:	5a                   	pop    %edx
  10502a:	6a 00                	push   $0x0
  10502c:	6a 01                	push   $0x1
  10502e:	e8 bd fc ff ff       	call   104cf0 <at_set_allocated>
        return 1;
  105033:	83 c4 10             	add    $0x10,%esp
        return 1;
  105036:	b8 01 00 00 00       	mov    $0x1,%eax
        return 1;
    }
    at_set_allocated(1, 0);
    dprintf("test 3 passed.\n");
    return 0;
}
  10503b:	83 c4 08             	add    $0x8,%esp
  10503e:	5b                   	pop    %ebx
  10503f:	c3                   	ret
    at_set_allocated(1, 100);
  105040:	83 ec 08             	sub    $0x8,%esp
  105043:	6a 64                	push   $0x64
  105045:	6a 01                	push   $0x1
  105047:	e8 a4 fc ff ff       	call   104cf0 <at_set_allocated>
    if (at_is_allocated(1) != 1) {
  10504c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  105053:	e8 78 fc ff ff       	call   104cd0 <at_is_allocated>
  105058:	83 c4 10             	add    $0x10,%esp
  10505b:	83 f8 01             	cmp    $0x1,%eax
  10505e:	74 30                	je     105090 <MATIntro_test3+0xd0>
        dprintf("test 3.3 failed: (%d != 1)\n", at_is_allocated(1));
  105060:	83 ec 0c             	sub    $0xc,%esp
  105063:	6a 01                	push   $0x1
  105065:	e8 66 fc ff ff       	call   104cd0 <at_is_allocated>
  10506a:	5a                   	pop    %edx
  10506b:	59                   	pop    %ecx
  10506c:	50                   	push   %eax
  10506d:	8d 83 eb b8 ff ff    	lea    -0x4715(%ebx),%eax
  105073:	eb ad                	jmp    105022 <MATIntro_test3+0x62>
  105075:	8d 76 00             	lea    0x0(%esi),%esi
        dprintf("test 3.1 failed: (%d != 0)\n", at_is_allocated(1));
  105078:	83 ec 0c             	sub    $0xc,%esp
  10507b:	6a 01                	push   $0x1
  10507d:	e8 4e fc ff ff       	call   104cd0 <at_is_allocated>
  105082:	59                   	pop    %ecx
  105083:	5a                   	pop    %edx
  105084:	50                   	push   %eax
  105085:	8d 83 b3 b8 ff ff    	lea    -0x474d(%ebx),%eax
  10508b:	eb 95                	jmp    105022 <MATIntro_test3+0x62>
  10508d:	8d 76 00             	lea    0x0(%esi),%esi
    at_set_allocated(1, 0);
  105090:	83 ec 08             	sub    $0x8,%esp
  105093:	6a 00                	push   $0x0
  105095:	6a 01                	push   $0x1
  105097:	e8 54 fc ff ff       	call   104cf0 <at_set_allocated>
    dprintf("test 3 passed.\n");
  10509c:	8d 83 07 b9 ff ff    	lea    -0x46f9(%ebx),%eax
  1050a2:	89 04 24             	mov    %eax,(%esp)
  1050a5:	e8 c2 dc ff ff       	call   102d6c <dprintf>
    return 0;
  1050aa:	83 c4 10             	add    $0x10,%esp
  1050ad:	31 c0                	xor    %eax,%eax
}
  1050af:	83 c4 08             	add    $0x8,%esp
  1050b2:	5b                   	pop    %ebx
  1050b3:	c3                   	ret
  1050b4:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1050bb:	00 
  1050bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

001050c0 <MATIntro_test_own>:
int MATIntro_test_own()
{
    // TODO (optional)
    // dprintf("own test passed.\n");
    return 0;
}
  1050c0:	31 c0                	xor    %eax,%eax
  1050c2:	c3                   	ret
  1050c3:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1050ca:	00 
  1050cb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

001050d0 <test_MATIntro>:

int test_MATIntro()
{
  1050d0:	53                   	push   %ebx
  1050d1:	83 ec 08             	sub    $0x8,%esp
    return MATIntro_test1() + MATIntro_test2() + MATIntro_test3() + MATIntro_test_own();
  1050d4:	e8 37 fc ff ff       	call   104d10 <MATIntro_test1>
  1050d9:	89 c3                	mov    %eax,%ebx
  1050db:	e8 20 fd ff ff       	call   104e00 <MATIntro_test2>
  1050e0:	01 c3                	add    %eax,%ebx
  1050e2:	e8 d9 fe ff ff       	call   104fc0 <MATIntro_test3>
}
  1050e7:	83 c4 08             	add    $0x8,%esp
    return MATIntro_test1() + MATIntro_test2() + MATIntro_test3() + MATIntro_test_own();
  1050ea:	01 d8                	add    %ebx,%eax
}
  1050ec:	5b                   	pop    %ebx
  1050ed:	c3                   	ret
  1050ee:	66 90                	xchg   %ax,%ax

001050f0 <pmem_init>:
 *    based on the information available in the physical memory map table.
 *    Review import.h in the current directory for the list of available
 *    getter and setter functions.
 */
void pmem_init(unsigned int mbi_addr)
{
  1050f0:	55                   	push   %ebp
  1050f1:	57                   	push   %edi
  1050f2:	56                   	push   %esi
  1050f3:	53                   	push   %ebx
  1050f4:	e8 c7 b2 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1050f9:	81 c3 fb 6e 00 00    	add    $0x6efb,%ebx
  1050ff:	83 ec 38             	sub    $0x38,%esp

    // TODO: Define your local variables here.

    // Calls the lower layer initialization primitive.
    // The parameter mbi_addr should not be used in the further code.
    devinit(mbi_addr);
  105102:	ff 74 24 4c          	push   0x4c(%esp)
  105106:	e8 f6 b9 ff ff       	call   100b01 <devinit>
     * store it into the local variable nps.
     * Hint: Think of it as the highest address in the ranges of the memory map table,
     *       divided by the page size.
     */

    pmmap_size = get_size();
  10510b:	e8 3f bf ff ff       	call   10104f <get_size>
    highest_addr = get_mms(pmmap_size-1) + get_mml(pmmap_size-1) - 1;
  105110:	8d 78 ff             	lea    -0x1(%eax),%edi
    pmmap_size = get_size();
  105113:	89 44 24 1c          	mov    %eax,0x1c(%esp)
    highest_addr = get_mms(pmmap_size-1) + get_mml(pmmap_size-1) - 1;
  105117:	89 3c 24             	mov    %edi,(%esp)
  10511a:	e8 45 bf ff ff       	call   101064 <get_mms>
  10511f:	89 3c 24             	mov    %edi,(%esp)
  105122:	89 c6                	mov    %eax,%esi
  105124:	e8 a1 bf ff ff       	call   1010ca <get_mml>
  105129:	8d 44 06 ff          	lea    -0x1(%esi,%eax,1),%eax
    nps = highest_addr / PAGESIZE;
  10512d:	c1 e8 0c             	shr    $0xc,%eax
  105130:	89 44 24 24          	mov    %eax,0x24(%esp)
  105134:	89 c7                	mov    %eax,%edi

    set_nps(nps);  // Setting the value computed above to NUM_PAGES.
  105136:	89 04 24             	mov    %eax,(%esp)
  105139:	e8 32 fb ff ff       	call   104c70 <set_nps>
     *    the addresses are in a usable range. Currently, we do not utilize partial pages,
     *    so in that case, you should consider those pages as unavailable.
     */

     pg_idx = 0;
    while (pg_idx < nps) {
  10513e:	83 c4 10             	add    $0x10,%esp
  105141:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
  105148:	00 
  105149:	85 ff                	test   %edi,%edi
  10514b:	0f 84 be 00 00 00    	je     10520f <pmem_init+0x11f>
  105151:	31 ff                	xor    %edi,%edi
  105153:	eb 25                	jmp    10517a <pmem_init+0x8a>
  105155:	8d 76 00             	lea    0x0(%esi),%esi
        if (pg_idx < VM_USERLO_PI || VM_USERHI_PI <= pg_idx) {
            at_set_perm(pg_idx, 1);
  105158:	83 ec 08             	sub    $0x8,%esp
  10515b:	6a 01                	push   $0x1
  10515d:	51                   	push   %ecx
  10515e:	e8 4d fb ff ff       	call   104cb0 <at_set_perm>
  105163:	83 c4 10             	add    $0x10,%esp
    while (pg_idx < nps) {
  105166:	8b 44 24 14          	mov    0x14(%esp),%eax
  10516a:	81 44 24 08 00 10 00 	addl   $0x1000,0x8(%esp)
  105171:	00 
  105172:	39 c7                	cmp    %eax,%edi
  105174:	0f 84 95 00 00 00    	je     10520f <pmem_init+0x11f>
        if (pg_idx < VM_USERLO_PI || VM_USERHI_PI <= pg_idx) {
  10517a:	89 f9                	mov    %edi,%ecx
            isnorm = 0;
            while (entry_idx < pmmap_size && !flag) {
                isnorm = is_usable(entry_idx);
                start = get_mms(entry_idx);
                len = get_mml(entry_idx);
                if (start <= pg_idx * PAGESIZE && (pg_idx + 1) * PAGESIZE <= start + len) {
  10517c:	83 c7 01             	add    $0x1,%edi
        if (pg_idx < VM_USERLO_PI || VM_USERHI_PI <= pg_idx) {
  10517f:	8d 81 00 00 fc ff    	lea    -0x40000(%ecx),%eax
  105185:	3d ff ff 0a 00       	cmp    $0xaffff,%eax
  10518a:	77 cc                	ja     105158 <pmem_init+0x68>
            while (entry_idx < pmmap_size && !flag) {
  10518c:	89 f8                	mov    %edi,%eax
            entry_idx = 0;
  10518e:	31 f6                	xor    %esi,%esi
  105190:	c1 e0 0c             	shl    $0xc,%eax
  105193:	89 44 24 10          	mov    %eax,0x10(%esp)
            while (entry_idx < pmmap_size && !flag) {
  105197:	8b 44 24 0c          	mov    0xc(%esp),%eax
  10519b:	85 c0                	test   %eax,%eax
  10519d:	0f 84 8e 00 00 00    	je     105231 <pmem_init+0x141>
  1051a3:	89 7c 24 18          	mov    %edi,0x18(%esp)
  1051a7:	89 4c 24 1c          	mov    %ecx,0x1c(%esp)
  1051ab:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
                isnorm = is_usable(entry_idx);
  1051b0:	83 ec 0c             	sub    $0xc,%esp
  1051b3:	56                   	push   %esi
  1051b4:	e8 81 bf ff ff       	call   10113a <is_usable>
                start = get_mms(entry_idx);
  1051b9:	89 34 24             	mov    %esi,(%esp)
                isnorm = is_usable(entry_idx);
  1051bc:	89 c5                	mov    %eax,%ebp
                start = get_mms(entry_idx);
  1051be:	e8 a1 be ff ff       	call   101064 <get_mms>
                len = get_mml(entry_idx);
  1051c3:	89 34 24             	mov    %esi,(%esp)
                start = get_mms(entry_idx);
  1051c6:	89 c7                	mov    %eax,%edi
                len = get_mml(entry_idx);
  1051c8:	e8 fd be ff ff       	call   1010ca <get_mml>
                if (start <= pg_idx * PAGESIZE && (pg_idx + 1) * PAGESIZE <= start + len) {
  1051cd:	83 c4 10             	add    $0x10,%esp
  1051d0:	39 7c 24 08          	cmp    %edi,0x8(%esp)
  1051d4:	72 4a                	jb     105220 <pmem_init+0x130>
  1051d6:	8d 14 07             	lea    (%edi,%eax,1),%edx
  1051d9:	8b 44 24 10          	mov    0x10(%esp),%eax
  1051dd:	39 c2                	cmp    %eax,%edx
  1051df:	72 3f                	jb     105220 <pmem_init+0x130>
                    flag = 1;
                }
                entry_idx++;
            }

            if (flag && isnorm) {
  1051e1:	8b 7c 24 18          	mov    0x18(%esp),%edi
  1051e5:	8b 4c 24 1c          	mov    0x1c(%esp),%ecx
  1051e9:	85 ed                	test   %ebp,%ebp
  1051eb:	74 44                	je     105231 <pmem_init+0x141>
                at_set_perm(pg_idx, 2);
  1051ed:	83 ec 08             	sub    $0x8,%esp
  1051f0:	6a 02                	push   $0x2
  1051f2:	51                   	push   %ecx
  1051f3:	e8 b8 fa ff ff       	call   104cb0 <at_set_perm>
    while (pg_idx < nps) {
  1051f8:	8b 44 24 24          	mov    0x24(%esp),%eax
  1051fc:	83 c4 10             	add    $0x10,%esp
  1051ff:	81 44 24 08 00 10 00 	addl   $0x1000,0x8(%esp)
  105206:	00 
  105207:	39 c7                	cmp    %eax,%edi
  105209:	0f 85 6b ff ff ff    	jne    10517a <pmem_init+0x8a>
        }
        pg_idx++;
    }
     
    
}
  10520f:	83 c4 2c             	add    $0x2c,%esp
  105212:	5b                   	pop    %ebx
  105213:	5e                   	pop    %esi
  105214:	5f                   	pop    %edi
  105215:	5d                   	pop    %ebp
  105216:	c3                   	ret
  105217:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10521e:	00 
  10521f:	90                   	nop
                entry_idx++;
  105220:	83 c6 01             	add    $0x1,%esi
            while (entry_idx < pmmap_size && !flag) {
  105223:	39 74 24 0c          	cmp    %esi,0xc(%esp)
  105227:	75 87                	jne    1051b0 <pmem_init+0xc0>
  105229:	8b 7c 24 18          	mov    0x18(%esp),%edi
  10522d:	8b 4c 24 1c          	mov    0x1c(%esp),%ecx
                at_set_perm(pg_idx, 0);
  105231:	83 ec 08             	sub    $0x8,%esp
  105234:	6a 00                	push   $0x0
  105236:	51                   	push   %ecx
  105237:	e8 74 fa ff ff       	call   104cb0 <at_set_perm>
  10523c:	83 c4 10             	add    $0x10,%esp
  10523f:	e9 22 ff ff ff       	jmp    105166 <pmem_init+0x76>
  105244:	66 90                	xchg   %ax,%ax
  105246:	66 90                	xchg   %ax,%ax
  105248:	66 90                	xchg   %ax,%ax
  10524a:	66 90                	xchg   %ax,%ax
  10524c:	66 90                	xchg   %ax,%ax
  10524e:	66 90                	xchg   %ax,%ax

00105250 <MATInit_test1>:
#define VM_USERHI    0xF0000000
#define VM_USERLO_PI (VM_USERLO / PAGESIZE)
#define VM_USERHI_PI (VM_USERHI / PAGESIZE)

int MATInit_test1()
{
  105250:	57                   	push   %edi
  105251:	56                   	push   %esi
  105252:	31 f6                	xor    %esi,%esi
  105254:	53                   	push   %ebx
  105255:	e8 66 b1 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  10525a:	81 c3 9a 6d 00 00    	add    $0x6d9a,%ebx
    int i;
    int nps = get_nps();
  105260:	e8 eb f9 ff ff       	call   104c50 <get_nps>
  105265:	89 c7                	mov    %eax,%edi
    if (nps <= 1000) {
  105267:	3d e8 03 00 00       	cmp    $0x3e8,%eax
  10526c:	7f 11                	jg     10527f <MATInit_test1+0x2f>
  10526e:	e9 ad 00 00 00       	jmp    105320 <MATInit_test1+0xd0>
  105273:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.1 failed: (%d <= 1000)\n", nps);
        return 1;
    }
    for (i = 0; i < nps; i++) {
  105278:	83 c6 01             	add    $0x1,%esi
  10527b:	39 f7                	cmp    %esi,%edi
  10527d:	74 51                	je     1052d0 <MATInit_test1+0x80>
        if (at_is_allocated(i) != 0) {
  10527f:	83 ec 0c             	sub    $0xc,%esp
  105282:	56                   	push   %esi
  105283:	e8 48 fa ff ff       	call   104cd0 <at_is_allocated>
  105288:	83 c4 10             	add    $0x10,%esp
  10528b:	85 c0                	test   %eax,%eax
  10528d:	75 61                	jne    1052f0 <MATInit_test1+0xa0>
            dprintf("test 1.2 failed (i = %d): (%d != 0)\n", i, at_is_allocated(i));
            return 1;
        }
        if ((i < VM_USERLO_PI || VM_USERHI_PI <= i)
  10528f:	8d 86 00 00 fc ff    	lea    -0x40000(%esi),%eax
  105295:	3d ff ff 0a 00       	cmp    $0xaffff,%eax
  10529a:	76 dc                	jbe    105278 <MATInit_test1+0x28>
            && at_is_norm(i) != 0) {
  10529c:	83 ec 0c             	sub    $0xc,%esp
  10529f:	56                   	push   %esi
  1052a0:	e8 eb f9 ff ff       	call   104c90 <at_is_norm>
  1052a5:	83 c4 10             	add    $0x10,%esp
  1052a8:	85 c0                	test   %eax,%eax
  1052aa:	74 cc                	je     105278 <MATInit_test1+0x28>
            dprintf("test 1.3 failed (i = %d): (%d != 0)\n", i, at_is_norm(i));
  1052ac:	83 ec 0c             	sub    $0xc,%esp
  1052af:	56                   	push   %esi
  1052b0:	e8 db f9 ff ff       	call   104c90 <at_is_norm>
  1052b5:	83 c4 0c             	add    $0xc,%esp
  1052b8:	50                   	push   %eax
  1052b9:	8d 83 74 bc ff ff    	lea    -0x438c(%ebx),%eax
  1052bf:	56                   	push   %esi
  1052c0:	50                   	push   %eax
  1052c1:	e8 a6 da ff ff       	call   102d6c <dprintf>
            return 1;
  1052c6:	83 c4 10             	add    $0x10,%esp
  1052c9:	eb 42                	jmp    10530d <MATInit_test1+0xbd>
  1052cb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        }
    }
    dprintf("test 1 passed.\n");
  1052d0:	83 ec 0c             	sub    $0xc,%esp
  1052d3:	8d 83 93 b8 ff ff    	lea    -0x476d(%ebx),%eax
  1052d9:	50                   	push   %eax
  1052da:	e8 8d da ff ff       	call   102d6c <dprintf>
    return 0;
  1052df:	83 c4 10             	add    $0x10,%esp
  1052e2:	31 c0                	xor    %eax,%eax
}
  1052e4:	5b                   	pop    %ebx
  1052e5:	5e                   	pop    %esi
  1052e6:	5f                   	pop    %edi
  1052e7:	c3                   	ret
  1052e8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1052ef:	00 
            dprintf("test 1.2 failed (i = %d): (%d != 0)\n", i, at_is_allocated(i));
  1052f0:	83 ec 0c             	sub    $0xc,%esp
  1052f3:	56                   	push   %esi
  1052f4:	e8 d7 f9 ff ff       	call   104cd0 <at_is_allocated>
  1052f9:	83 c4 0c             	add    $0xc,%esp
  1052fc:	50                   	push   %eax
  1052fd:	8d 83 4c bc ff ff    	lea    -0x43b4(%ebx),%eax
  105303:	56                   	push   %esi
  105304:	50                   	push   %eax
  105305:	e8 62 da ff ff       	call   102d6c <dprintf>
            return 1;
  10530a:	83 c4 10             	add    $0x10,%esp
}
  10530d:	5b                   	pop    %ebx
        return 1;
  10530e:	b8 01 00 00 00       	mov    $0x1,%eax
}
  105313:	5e                   	pop    %esi
  105314:	5f                   	pop    %edi
  105315:	c3                   	ret
  105316:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10531d:	00 
  10531e:	66 90                	xchg   %ax,%ax
        dprintf("test 1.1 failed: (%d <= 1000)\n", nps);
  105320:	83 ec 08             	sub    $0x8,%esp
  105323:	50                   	push   %eax
  105324:	8d 83 2c bc ff ff    	lea    -0x43d4(%ebx),%eax
  10532a:	50                   	push   %eax
  10532b:	e8 3c da ff ff       	call   102d6c <dprintf>
        return 1;
  105330:	83 c4 10             	add    $0x10,%esp
  105333:	eb d8                	jmp    10530d <MATInit_test1+0xbd>
  105335:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10533c:	00 
  10533d:	8d 76 00             	lea    0x0(%esi),%esi

00105340 <MATInit_test_own>:
int MATInit_test_own()
{
    // TODO (optional)
    // dprintf("own test passed.\n");
    return 0;
}
  105340:	31 c0                	xor    %eax,%eax
  105342:	c3                   	ret
  105343:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10534a:	00 
  10534b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00105350 <test_MATInit>:

int test_MATInit()
{
    return MATInit_test1() + MATInit_test_own();
  105350:	e9 fb fe ff ff       	jmp    105250 <MATInit_test1>
  105355:	66 90                	xchg   %ax,%ax
  105357:	66 90                	xchg   %ax,%ax
  105359:	66 90                	xchg   %ax,%ax
  10535b:	66 90                	xchg   %ax,%ax
  10535d:	66 90                	xchg   %ax,%ax
  10535f:	90                   	nop

00105360 <palloc>:
 * return 0.
 * 2. Optimize the code using memoization so that you do not have to
 * scan the allocation table from scratch every time.
 */
unsigned int palloc()
{
  105360:	57                   	push   %edi
  105361:	56                   	push   %esi
  105362:	53                   	push   %ebx
  105363:	e8 58 b0 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  105368:	81 c3 8c 6c 00 00    	add    $0x6c8c,%ebx
// TODO
    static unsigned int next_alloc_idx = 0;
    unsigned int i;
    unsigned int nps = get_nps();
  10536e:	e8 dd f8 ff ff       	call   104c50 <get_nps>
 
    for (i = next_alloc_idx; i < nps; i++) {
  105373:	8b b3 50 cc 84 00    	mov    0x84cc50(%ebx),%esi
  105379:	39 c6                	cmp    %eax,%esi
  10537b:	73 59                	jae    1053d6 <palloc+0x76>
  10537d:	89 c7                	mov    %eax,%edi
  10537f:	eb 0e                	jmp    10538f <palloc+0x2f>
  105381:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  105388:	83 c6 01             	add    $0x1,%esi
  10538b:	39 f7                	cmp    %esi,%edi
  10538d:	74 41                	je     1053d0 <palloc+0x70>
        if (at_is_norm(i) && !at_is_allocated(i)) {
  10538f:	83 ec 0c             	sub    $0xc,%esp
  105392:	56                   	push   %esi
  105393:	e8 f8 f8 ff ff       	call   104c90 <at_is_norm>
  105398:	83 c4 10             	add    $0x10,%esp
  10539b:	85 c0                	test   %eax,%eax
  10539d:	74 e9                	je     105388 <palloc+0x28>
  10539f:	83 ec 0c             	sub    $0xc,%esp
  1053a2:	56                   	push   %esi
  1053a3:	e8 28 f9 ff ff       	call   104cd0 <at_is_allocated>
  1053a8:	83 c4 10             	add    $0x10,%esp
  1053ab:	85 c0                	test   %eax,%eax
  1053ad:	75 d9                	jne    105388 <palloc+0x28>
        }
    }
 
    for (i = 0; i < next_alloc_idx; i++) {
        if (at_is_norm(i) && !at_is_allocated(i)) {
            at_set_allocated(i, 1);
  1053af:	83 ec 08             	sub    $0x8,%esp
  1053b2:	6a 01                	push   $0x1
  1053b4:	56                   	push   %esi
  1053b5:	e8 36 f9 ff ff       	call   104cf0 <at_set_allocated>
            next_alloc_idx = i + 1;
  1053ba:	8d 46 01             	lea    0x1(%esi),%eax
            return i;
  1053bd:	83 c4 10             	add    $0x10,%esp
            next_alloc_idx = i + 1;
  1053c0:	89 83 50 cc 84 00    	mov    %eax,0x84cc50(%ebx)
        }
}
   
return 0;
}
  1053c6:	89 f0                	mov    %esi,%eax
  1053c8:	5b                   	pop    %ebx
  1053c9:	5e                   	pop    %esi
  1053ca:	5f                   	pop    %edi
  1053cb:	c3                   	ret
  1053cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    for (i = 0; i < next_alloc_idx; i++) {
  1053d0:	8b b3 50 cc 84 00    	mov    0x84cc50(%ebx),%esi
  1053d6:	85 f6                	test   %esi,%esi
  1053d8:	74 3c                	je     105416 <palloc+0xb6>
  1053da:	31 f6                	xor    %esi,%esi
  1053dc:	eb 0d                	jmp    1053eb <palloc+0x8b>
  1053de:	66 90                	xchg   %ax,%ax
  1053e0:	83 c6 01             	add    $0x1,%esi
  1053e3:	3b b3 50 cc 84 00    	cmp    0x84cc50(%ebx),%esi
  1053e9:	73 2b                	jae    105416 <palloc+0xb6>
        if (at_is_norm(i) && !at_is_allocated(i)) {
  1053eb:	83 ec 0c             	sub    $0xc,%esp
  1053ee:	56                   	push   %esi
  1053ef:	e8 9c f8 ff ff       	call   104c90 <at_is_norm>
  1053f4:	83 c4 10             	add    $0x10,%esp
  1053f7:	85 c0                	test   %eax,%eax
  1053f9:	74 e5                	je     1053e0 <palloc+0x80>
  1053fb:	83 ec 0c             	sub    $0xc,%esp
  1053fe:	56                   	push   %esi
  1053ff:	e8 cc f8 ff ff       	call   104cd0 <at_is_allocated>
  105404:	83 c4 10             	add    $0x10,%esp
  105407:	85 c0                	test   %eax,%eax
  105409:	74 a4                	je     1053af <palloc+0x4f>
    for (i = 0; i < next_alloc_idx; i++) {
  10540b:	83 c6 01             	add    $0x1,%esi
  10540e:	3b b3 50 cc 84 00    	cmp    0x84cc50(%ebx),%esi
  105414:	72 d5                	jb     1053eb <palloc+0x8b>
return 0;
  105416:	31 f6                	xor    %esi,%esi
}
  105418:	5b                   	pop    %ebx
  105419:	89 f0                	mov    %esi,%eax
  10541b:	5e                   	pop    %esi
  10541c:	5f                   	pop    %edi
  10541d:	c3                   	ret
  10541e:	66 90                	xchg   %ax,%ax

00105420 <pfree>:
* in the allocation table.
*
* Hint: Simple.
*/
void pfree(unsigned int pfree_index)
{
  105420:	53                   	push   %ebx
  105421:	e8 9a af ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  105426:	81 c3 ce 6b 00 00    	add    $0x6bce,%ebx
  10542c:	83 ec 10             	sub    $0x10,%esp
// TODO
    at_set_allocated(pfree_index, 0);  
  10542f:	6a 00                	push   $0x0
  105431:	ff 74 24 1c          	push   0x1c(%esp)
  105435:	e8 b6 f8 ff ff       	call   104cf0 <at_set_allocated>
  10543a:	83 c4 18             	add    $0x18,%esp
  10543d:	5b                   	pop    %ebx
  10543e:	c3                   	ret
  10543f:	90                   	nop

00105440 <MATOp_test1>:
#define VM_USERHI    0xF0000000
#define VM_USERLO_PI (VM_USERLO / PAGESIZE)
#define VM_USERHI_PI (VM_USERHI / PAGESIZE)

int MATOp_test1()
{
  105440:	56                   	push   %esi
  105441:	53                   	push   %ebx
  105442:	e8 79 af ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  105447:	81 c3 ad 6b 00 00    	add    $0x6bad,%ebx
  10544d:	83 ec 04             	sub    $0x4,%esp
    int page_index = palloc();
  105450:	e8 0b ff ff ff       	call   105360 <palloc>
  105455:	89 c6                	mov    %eax,%esi
    if (page_index < VM_USERLO_PI || VM_USERHI_PI <= page_index) {
  105457:	2d 00 00 04 00       	sub    $0x40000,%eax
  10545c:	3d ff ff 0a 00       	cmp    $0xaffff,%eax
  105461:	0f 87 91 00 00 00    	ja     1054f8 <MATOp_test1+0xb8>
        dprintf("test 1.1 failed: (%d < VM_USERLO_PI || VM_USERHI_PI <= %d)\n", page_index, page_index);
        pfree(page_index);
        return 1;
    }
    if (at_is_norm(page_index) != 1) {
  105467:	83 ec 0c             	sub    $0xc,%esp
  10546a:	56                   	push   %esi
  10546b:	e8 20 f8 ff ff       	call   104c90 <at_is_norm>
  105470:	83 c4 10             	add    $0x10,%esp
  105473:	83 f8 01             	cmp    $0x1,%eax
  105476:	74 38                	je     1054b0 <MATOp_test1+0x70>
        dprintf("test 1.2 failed: (%d != 1)\n", at_is_norm(page_index));
  105478:	83 ec 0c             	sub    $0xc,%esp
  10547b:	56                   	push   %esi
  10547c:	e8 0f f8 ff ff       	call   104c90 <at_is_norm>
  105481:	5a                   	pop    %edx
  105482:	59                   	pop    %ecx
  105483:	50                   	push   %eax
  105484:	8d 83 17 b9 ff ff    	lea    -0x46e9(%ebx),%eax
  10548a:	50                   	push   %eax
  10548b:	e8 dc d8 ff ff       	call   102d6c <dprintf>
        pfree(page_index);
  105490:	89 34 24             	mov    %esi,(%esp)
  105493:	e8 88 ff ff ff       	call   105420 <pfree>
        return 1;
  105498:	83 c4 10             	add    $0x10,%esp
        dprintf("test 1.4 failed: (%d != 0)\n", at_is_allocated(page_index));
        return 1;
    }
    dprintf("test 1 passed.\n");
    return 0;
}
  10549b:	83 c4 04             	add    $0x4,%esp
        return 1;
  10549e:	b8 01 00 00 00       	mov    $0x1,%eax
}
  1054a3:	5b                   	pop    %ebx
  1054a4:	5e                   	pop    %esi
  1054a5:	c3                   	ret
  1054a6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1054ad:	00 
  1054ae:	66 90                	xchg   %ax,%ax
    if (at_is_allocated(page_index) != 1) {
  1054b0:	83 ec 0c             	sub    $0xc,%esp
  1054b3:	56                   	push   %esi
  1054b4:	e8 17 f8 ff ff       	call   104cd0 <at_is_allocated>
  1054b9:	83 c4 10             	add    $0x10,%esp
  1054bc:	83 f8 01             	cmp    $0x1,%eax
  1054bf:	75 47                	jne    105508 <MATOp_test1+0xc8>
    pfree(page_index);
  1054c1:	83 ec 0c             	sub    $0xc,%esp
  1054c4:	56                   	push   %esi
  1054c5:	e8 56 ff ff ff       	call   105420 <pfree>
    if (at_is_allocated(page_index) != 0) {
  1054ca:	89 34 24             	mov    %esi,(%esp)
  1054cd:	e8 fe f7 ff ff       	call   104cd0 <at_is_allocated>
  1054d2:	83 c4 10             	add    $0x10,%esp
  1054d5:	85 c0                	test   %eax,%eax
  1054d7:	75 47                	jne    105520 <MATOp_test1+0xe0>
    dprintf("test 1 passed.\n");
  1054d9:	83 ec 0c             	sub    $0xc,%esp
  1054dc:	8d 83 93 b8 ff ff    	lea    -0x476d(%ebx),%eax
  1054e2:	50                   	push   %eax
  1054e3:	e8 84 d8 ff ff       	call   102d6c <dprintf>
    return 0;
  1054e8:	83 c4 10             	add    $0x10,%esp
  1054eb:	31 c0                	xor    %eax,%eax
}
  1054ed:	83 c4 04             	add    $0x4,%esp
  1054f0:	5b                   	pop    %ebx
  1054f1:	5e                   	pop    %esi
  1054f2:	c3                   	ret
  1054f3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.1 failed: (%d < VM_USERLO_PI || VM_USERHI_PI <= %d)\n", page_index, page_index);
  1054f8:	83 ec 04             	sub    $0x4,%esp
  1054fb:	8d 83 9c bc ff ff    	lea    -0x4364(%ebx),%eax
  105501:	56                   	push   %esi
  105502:	56                   	push   %esi
  105503:	eb 85                	jmp    10548a <MATOp_test1+0x4a>
  105505:	8d 76 00             	lea    0x0(%esi),%esi
        dprintf("test 1.3 failed: (%d != 1)\n", at_is_allocated(page_index));
  105508:	83 ec 0c             	sub    $0xc,%esp
  10550b:	56                   	push   %esi
  10550c:	e8 bf f7 ff ff       	call   104cd0 <at_is_allocated>
  105511:	5a                   	pop    %edx
  105512:	59                   	pop    %ecx
  105513:	50                   	push   %eax
  105514:	8d 83 33 b9 ff ff    	lea    -0x46cd(%ebx),%eax
  10551a:	e9 6b ff ff ff       	jmp    10548a <MATOp_test1+0x4a>
  10551f:	90                   	nop
        dprintf("test 1.4 failed: (%d != 0)\n", at_is_allocated(page_index));
  105520:	83 ec 0c             	sub    $0xc,%esp
  105523:	56                   	push   %esi
  105524:	e8 a7 f7 ff ff       	call   104cd0 <at_is_allocated>
  105529:	5a                   	pop    %edx
  10552a:	59                   	pop    %ecx
  10552b:	50                   	push   %eax
  10552c:	8d 83 4f b9 ff ff    	lea    -0x46b1(%ebx),%eax
  105532:	50                   	push   %eax
  105533:	e8 34 d8 ff ff       	call   102d6c <dprintf>
        return 1;
  105538:	83 c4 10             	add    $0x10,%esp
  10553b:	e9 5b ff ff ff       	jmp    10549b <MATOp_test1+0x5b>

00105540 <MATOp_test_own>:
int MATOp_test_own()
{
    // TODO (optional)
    // dprintf("own test passed.\n");
    return 0;
}
  105540:	31 c0                	xor    %eax,%eax
  105542:	c3                   	ret
  105543:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10554a:	00 
  10554b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00105550 <test_MATOp>:

int test_MATOp()
{
    return MATOp_test1() + MATOp_test_own();
  105550:	e9 eb fe ff ff       	jmp    105440 <MATOp_test1>
  105555:	66 90                	xchg   %ax,%ax
  105557:	66 90                	xchg   %ax,%ax
  105559:	66 90                	xchg   %ax,%ax
  10555b:	66 90                	xchg   %ax,%ax
  10555d:	66 90                	xchg   %ax,%ax
  10555f:	90                   	nop

00105560 <container_init>:
/**
 * Initializes the container data for the root process (the one with index 0).
 * The root process is the one that gets spawned first by the kernel.
 */
void container_init(unsigned int mbi_addr)
{
  105560:	55                   	push   %ebp
  105561:	57                   	push   %edi
  105562:	56                   	push   %esi
  105563:	53                   	push   %ebx
  105564:	e8 57 ae ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  105569:	81 c3 8b 6a 00 00    	add    $0x6a8b,%ebx
  10556f:	83 ec 18             	sub    $0x18,%esp
    unsigned int real_quota;
    // TODO: define your local variables here.
    unsigned int nps, idx;

    pmem_init(mbi_addr);
  105572:	ff 74 24 2c          	push   0x2c(%esp)
  105576:	e8 75 fb ff ff       	call   1050f0 <pmem_init>
     * TODO: Compute the available quota and store it into the variable real_quota.
     * It should be the number of the unallocated pages with the normal permission
     * in the physical memory allocation table.
     */

    nps = get_nps();
  10557b:	e8 d0 f6 ff ff       	call   104c50 <get_nps>
    for (idx = 0; idx < nps; idx++)
  105580:	83 c4 10             	add    $0x10,%esp
  105583:	85 c0                	test   %eax,%eax
  105585:	0f 84 95 00 00 00    	je     105620 <container_init+0xc0>
  10558b:	89 c7                	mov    %eax,%edi
  10558d:	31 f6                	xor    %esi,%esi
    real_quota = 0;
  10558f:	31 ed                	xor    %ebp,%ebp
  105591:	eb 0c                	jmp    10559f <container_init+0x3f>
  105593:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    for (idx = 0; idx < nps; idx++)
  105598:	83 c6 01             	add    $0x1,%esi
  10559b:	39 f7                	cmp    %esi,%edi
  10559d:	74 29                	je     1055c8 <container_init+0x68>
    {
        if (at_is_norm(idx) && !at_is_allocated(idx))
  10559f:	83 ec 0c             	sub    $0xc,%esp
  1055a2:	56                   	push   %esi
  1055a3:	e8 e8 f6 ff ff       	call   104c90 <at_is_norm>
  1055a8:	83 c4 10             	add    $0x10,%esp
  1055ab:	85 c0                	test   %eax,%eax
  1055ad:	74 e9                	je     105598 <container_init+0x38>
  1055af:	83 ec 0c             	sub    $0xc,%esp
  1055b2:	56                   	push   %esi
  1055b3:	e8 18 f7 ff ff       	call   104cd0 <at_is_allocated>
  1055b8:	83 c4 10             	add    $0x10,%esp
        {
            real_quota++;
  1055bb:	83 f8 01             	cmp    $0x1,%eax
  1055be:	83 d5 00             	adc    $0x0,%ebp
    for (idx = 0; idx < nps; idx++)
  1055c1:	83 c6 01             	add    $0x1,%esi
  1055c4:	39 f7                	cmp    %esi,%edi
  1055c6:	75 d7                	jne    10559f <container_init+0x3f>
        }
    }

    KERN_DEBUG("\nreal quota: %d\n\n", real_quota);

    CONTAINER[0].quota = real_quota;
  1055c8:	89 ee                	mov    %ebp,%esi
    KERN_DEBUG("\nreal quota: %d\n\n", real_quota);
  1055ca:	8d 83 6b b9 ff ff    	lea    -0x4695(%ebx),%eax
  1055d0:	55                   	push   %ebp
  1055d1:	50                   	push   %eax
  1055d2:	8d 83 d8 bc ff ff    	lea    -0x4328(%ebx),%eax
  1055d8:	6a 2d                	push   $0x2d
  1055da:	50                   	push   %eax
  1055db:	e8 b9 d4 ff ff       	call   102a99 <debug_normal>
    CONTAINER[0].quota = real_quota;
  1055e0:	89 b3 6c cc 84 00    	mov    %esi,0x84cc6c(%ebx)
    CONTAINER[0].usage = 0;
  1055e6:	c7 83 70 cc 84 00 00 	movl   $0x0,0x84cc70(%ebx)
  1055ed:	00 00 00 
    CONTAINER[0].parent = 0;
  1055f0:	c7 83 74 cc 84 00 00 	movl   $0x0,0x84cc74(%ebx)
  1055f7:	00 00 00 
    CONTAINER[0].nchildren = 0;
  1055fa:	c7 83 78 cc 84 00 00 	movl   $0x0,0x84cc78(%ebx)
  105601:	00 00 00 
    CONTAINER[0].used = 1;
  105604:	c7 83 7c cc 84 00 01 	movl   $0x1,0x84cc7c(%ebx)
  10560b:	00 00 00 
}
  10560e:	83 c4 1c             	add    $0x1c,%esp
  105611:	5b                   	pop    %ebx
  105612:	5e                   	pop    %esi
  105613:	5f                   	pop    %edi
  105614:	5d                   	pop    %ebp
  105615:	c3                   	ret
  105616:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10561d:	00 
  10561e:	66 90                	xchg   %ax,%ax
    real_quota = 0;
  105620:	31 ed                	xor    %ebp,%ebp
    for (idx = 0; idx < nps; idx++)
  105622:	31 f6                	xor    %esi,%esi
  105624:	eb a4                	jmp    1055ca <container_init+0x6a>
  105626:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10562d:	00 
  10562e:	66 90                	xchg   %ax,%ax

00105630 <container_get_parent>:
// Get the id of parent process of process # [id].
unsigned int container_get_parent(unsigned int id)
{
    // TODO
    return CONTAINER[id].parent;
    ;
  105630:	e8 87 ad ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  105635:	81 c2 bf 69 00 00    	add    $0x69bf,%edx
{
  10563b:	8b 44 24 04          	mov    0x4(%esp),%eax
    return CONTAINER[id].parent;
  10563f:	8d 04 80             	lea    (%eax,%eax,4),%eax
  105642:	8b 84 82 74 cc 84 00 	mov    0x84cc74(%edx,%eax,4),%eax
}
  105649:	c3                   	ret
  10564a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00105650 <container_get_nchildren>:
// Get the number of children of process # [id].
unsigned int container_get_nchildren(unsigned int id)
{
    // TODO
    return CONTAINER[id].nchildren;
    ;
  105650:	e8 67 ad ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  105655:	81 c2 9f 69 00 00    	add    $0x699f,%edx
{
  10565b:	8b 44 24 04          	mov    0x4(%esp),%eax
    return CONTAINER[id].nchildren;
  10565f:	8d 04 80             	lea    (%eax,%eax,4),%eax
  105662:	8b 84 82 78 cc 84 00 	mov    0x84cc78(%edx,%eax,4),%eax
}
  105669:	c3                   	ret
  10566a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00105670 <container_get_quota>:

// Get the maximum memory quota of process # [id].
unsigned int container_get_quota(unsigned int id)
{
    // TODO
    return CONTAINER[id].quota;
  105670:	e8 47 ad ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  105675:	81 c2 7f 69 00 00    	add    $0x697f,%edx
{
  10567b:	8b 44 24 04          	mov    0x4(%esp),%eax
    return CONTAINER[id].quota;
  10567f:	8d 04 80             	lea    (%eax,%eax,4),%eax
  105682:	8b 84 82 6c cc 84 00 	mov    0x84cc6c(%edx,%eax,4),%eax
}
  105689:	c3                   	ret
  10568a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00105690 <container_get_usage>:

// Get the current memory usage of process # [id].
unsigned int container_get_usage(unsigned int id)
{
    // TODO
    return CONTAINER[id].usage;
  105690:	e8 27 ad ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  105695:	81 c2 5f 69 00 00    	add    $0x695f,%edx
{
  10569b:	8b 44 24 04          	mov    0x4(%esp),%eax
    return CONTAINER[id].usage;
  10569f:	8d 04 80             	lea    (%eax,%eax,4),%eax
  1056a2:	8b 84 82 70 cc 84 00 	mov    0x84cc70(%edx,%eax,4),%eax
}
  1056a9:	c3                   	ret
  1056aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

001056b0 <container_can_consume>:
// Determines whether the process # [id] can consume an extra
// [n] pages of memory. If so, returns 1, otherwise, returns 0.
unsigned int container_can_consume(unsigned int id, unsigned int n)
{
    // TODO
    return CONTAINER[id].quota - CONTAINER[id].usage >= n;
  1056b0:	e8 07 ad ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  1056b5:	81 c2 3f 69 00 00    	add    $0x693f,%edx
{
  1056bb:	8b 44 24 04          	mov    0x4(%esp),%eax
    return CONTAINER[id].quota - CONTAINER[id].usage >= n;
  1056bf:	8d 0c 80             	lea    (%eax,%eax,4),%ecx
  1056c2:	8b 84 8a 6c cc 84 00 	mov    0x84cc6c(%edx,%ecx,4),%eax
  1056c9:	2b 84 8a 70 cc 84 00 	sub    0x84cc70(%edx,%ecx,4),%eax
  1056d0:	3b 44 24 08          	cmp    0x8(%esp),%eax
  1056d4:	0f 93 c0             	setae  %al
  1056d7:	0f b6 c0             	movzbl %al,%eax
}
  1056da:	c3                   	ret
  1056db:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

001056e0 <container_split>:
 * You can assume it is safe to allocate [quota] pages
 * (the check is already done outside before calling this function).
 * Returns the container index for the new child process.
 */
unsigned int container_split(unsigned int id, unsigned int quota)
{
  1056e0:	57                   	push   %edi
  1056e1:	56                   	push   %esi
  1056e2:	53                   	push   %ebx
  1056e3:	8b 54 24 10          	mov    0x10(%esp),%edx
  1056e7:	e8 d4 ac ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1056ec:	81 c3 08 69 00 00    	add    $0x6908,%ebx
  1056f2:	8b 74 24 14          	mov    0x14(%esp),%esi
    unsigned int child, nc;

    nc = CONTAINER[id].nchildren;
  1056f6:	8d 04 92             	lea    (%edx,%edx,4),%eax
  1056f9:	8d 8c 83 6c cc 84 00 	lea    0x84cc6c(%ebx,%eax,4),%ecx
    child = id * MAX_CHILDREN + 1 + nc; // container index for the child process
  105700:	8d 44 52 01          	lea    0x1(%edx,%edx,2),%eax
    nc = CONTAINER[id].nchildren;
  105704:	8b 79 0c             	mov    0xc(%ecx),%edi
    child = id * MAX_CHILDREN + 1 + nc; // container index for the child process
  105707:	01 f8                	add    %edi,%eax

    if (NUM_IDS <= child)
  105709:	83 f8 3f             	cmp    $0x3f,%eax
  10570c:	77 3a                	ja     105748 <container_split+0x68>

    /**
     * TODO: Update the container structure of both parent and child process appropriately.
     */
    // update parent
    CONTAINER[id].nchildren++;
  10570e:	83 c7 01             	add    $0x1,%edi
    CONTAINER[id].usage += quota;
  105711:	01 71 04             	add    %esi,0x4(%ecx)
    CONTAINER[id].nchildren++;
  105714:	89 79 0c             	mov    %edi,0xc(%ecx)

    // update child
    CONTAINER[child].quota = quota;
  105717:	8d 0c 80             	lea    (%eax,%eax,4),%ecx
  10571a:	c1 e1 02             	shl    $0x2,%ecx
  10571d:	8d bc 0b 6c cc 84 00 	lea    0x84cc6c(%ebx,%ecx,1),%edi
  105724:	89 37                	mov    %esi,(%edi)
    CONTAINER[child].usage = 0;
  105726:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%edi)
    CONTAINER[child].parent = id;
  10572d:	89 57 08             	mov    %edx,0x8(%edi)
    CONTAINER[child].nchildren = 0;
  105730:	c7 47 0c 00 00 00 00 	movl   $0x0,0xc(%edi)
    CONTAINER[child].used = 1;
  105737:	c7 47 10 01 00 00 00 	movl   $0x1,0x10(%edi)

    return child;
}
  10573e:	5b                   	pop    %ebx
  10573f:	5e                   	pop    %esi
  105740:	5f                   	pop    %edi
  105741:	c3                   	ret
  105742:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  105748:	5b                   	pop    %ebx
        return NUM_IDS;
  105749:	b8 40 00 00 00       	mov    $0x40,%eax
}
  10574e:	5e                   	pop    %esi
  10574f:	5f                   	pop    %edi
  105750:	c3                   	ret
  105751:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  105758:	00 
  105759:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00105760 <container_alloc>:
 * Allocates one more page for process # [id], given that this will not exceed the quota.
 * The container structure should be updated accordingly after the allocation.
 * Returns the page index of the allocated page, or 0 in the case of failure.
 */
unsigned int container_alloc(unsigned int id)
{
  105760:	56                   	push   %esi
  105761:	53                   	push   %ebx
  105762:	e8 59 ac ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  105767:	81 c3 8d 68 00 00    	add    $0x688d,%ebx
  10576d:	83 ec 04             	sub    $0x4,%esp
  105770:	8b 74 24 10          	mov    0x10(%esp),%esi
    /*
     * TODO: Implement the function here.
     */
    unsigned int pid; // page id

    pid = palloc();
  105774:	e8 e7 fb ff ff       	call   105360 <palloc>
    if (pid == 0)
  105779:	85 c0                	test   %eax,%eax
  10577b:	74 0b                	je     105788 <container_alloc+0x28>
        return 0; // failure

    CONTAINER[id].usage++;
  10577d:	8d 14 b6             	lea    (%esi,%esi,4),%edx
  105780:	83 84 93 70 cc 84 00 	addl   $0x1,0x84cc70(%ebx,%edx,4)
  105787:	01 
    return pid;
}
  105788:	83 c4 04             	add    $0x4,%esp
  10578b:	5b                   	pop    %ebx
  10578c:	5e                   	pop    %esi
  10578d:	c3                   	ret
  10578e:	66 90                	xchg   %ax,%ax

00105790 <container_free>:

// Frees the physical page and reduces the usage by 1.
void container_free(unsigned int id, unsigned int page_index)
{
  105790:	56                   	push   %esi
  105791:	53                   	push   %ebx
  105792:	e8 29 ac ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  105797:	81 c3 5d 68 00 00    	add    $0x685d,%ebx
  10579d:	83 ec 10             	sub    $0x10,%esp
  1057a0:	8b 74 24 1c          	mov    0x1c(%esp),%esi
    // TODO
    pfree(page_index);
  1057a4:	ff 74 24 20          	push   0x20(%esp)
  1057a8:	e8 73 fc ff ff       	call   105420 <pfree>
    CONTAINER[id].usage--;
  1057ad:	8d 04 b6             	lea    (%esi,%esi,4),%eax
  1057b0:	83 ac 83 70 cc 84 00 	subl   $0x1,0x84cc70(%ebx,%eax,4)
  1057b7:	01 
}
  1057b8:	83 c4 14             	add    $0x14,%esp
  1057bb:	5b                   	pop    %ebx
  1057bc:	5e                   	pop    %esi
  1057bd:	c3                   	ret
  1057be:	66 90                	xchg   %ax,%ax

001057c0 <MContainer_test1>:
#include <lib/debug.h>
#include "export.h"

int MContainer_test1()
{
  1057c0:	53                   	push   %ebx
  1057c1:	e8 fa ab ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1057c6:	81 c3 2e 68 00 00    	add    $0x682e,%ebx
  1057cc:	83 ec 14             	sub    $0x14,%esp
    if (container_get_quota(0) <= 10000) {
  1057cf:	6a 00                	push   $0x0
  1057d1:	e8 9a fe ff ff       	call   105670 <container_get_quota>
  1057d6:	83 c4 10             	add    $0x10,%esp
  1057d9:	3d 10 27 00 00       	cmp    $0x2710,%eax
  1057de:	0f 86 7c 00 00 00    	jbe    105860 <MContainer_test1+0xa0>
        dprintf("test 1.1 failed: (%d <= 10000)\n", container_get_quota(0));
        return 1;
    }
    if (container_can_consume(0, 10000) != 1) {
  1057e4:	83 ec 08             	sub    $0x8,%esp
  1057e7:	68 10 27 00 00       	push   $0x2710
  1057ec:	6a 00                	push   $0x0
  1057ee:	e8 bd fe ff ff       	call   1056b0 <container_can_consume>
  1057f3:	83 c4 10             	add    $0x10,%esp
  1057f6:	83 f8 01             	cmp    $0x1,%eax
  1057f9:	75 35                	jne    105830 <MContainer_test1+0x70>
        dprintf("test 1.2 failed: (%d != 1)\n", container_can_consume(0, 10000));
        return 1;
    }
    if (container_can_consume(0, 10000000) != 0) {
  1057fb:	83 ec 08             	sub    $0x8,%esp
  1057fe:	68 80 96 98 00       	push   $0x989680
  105803:	6a 00                	push   $0x0
  105805:	e8 a6 fe ff ff       	call   1056b0 <container_can_consume>
  10580a:	83 c4 10             	add    $0x10,%esp
  10580d:	85 c0                	test   %eax,%eax
  10580f:	75 6f                	jne    105880 <MContainer_test1+0xc0>
        dprintf("test 1.3 failed: (%d != 0)\n", container_can_consume(0, 10000000));
        return 1;
    }
    dprintf("test 1 passed.\n");
  105811:	83 ec 0c             	sub    $0xc,%esp
  105814:	8d 83 93 b8 ff ff    	lea    -0x476d(%ebx),%eax
  10581a:	50                   	push   %eax
  10581b:	e8 4c d5 ff ff       	call   102d6c <dprintf>
    return 0;
  105820:	83 c4 10             	add    $0x10,%esp
  105823:	31 c0                	xor    %eax,%eax
}
  105825:	83 c4 08             	add    $0x8,%esp
  105828:	5b                   	pop    %ebx
  105829:	c3                   	ret
  10582a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        dprintf("test 1.2 failed: (%d != 1)\n", container_can_consume(0, 10000));
  105830:	83 ec 08             	sub    $0x8,%esp
  105833:	68 10 27 00 00       	push   $0x2710
  105838:	6a 00                	push   $0x0
  10583a:	e8 71 fe ff ff       	call   1056b0 <container_can_consume>
  10583f:	5a                   	pop    %edx
  105840:	59                   	pop    %ecx
  105841:	50                   	push   %eax
  105842:	8d 83 17 b9 ff ff    	lea    -0x46e9(%ebx),%eax
  105848:	50                   	push   %eax
  105849:	e8 1e d5 ff ff       	call   102d6c <dprintf>
        return 1;
  10584e:	83 c4 10             	add    $0x10,%esp
}
  105851:	83 c4 08             	add    $0x8,%esp
        return 1;
  105854:	b8 01 00 00 00       	mov    $0x1,%eax
}
  105859:	5b                   	pop    %ebx
  10585a:	c3                   	ret
  10585b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.1 failed: (%d <= 10000)\n", container_get_quota(0));
  105860:	83 ec 0c             	sub    $0xc,%esp
  105863:	6a 00                	push   $0x0
  105865:	e8 06 fe ff ff       	call   105670 <container_get_quota>
  10586a:	5a                   	pop    %edx
  10586b:	59                   	pop    %ecx
  10586c:	50                   	push   %eax
  10586d:	8d 83 fc bc ff ff    	lea    -0x4304(%ebx),%eax
  105873:	50                   	push   %eax
  105874:	e8 f3 d4 ff ff       	call   102d6c <dprintf>
        return 1;
  105879:	83 c4 10             	add    $0x10,%esp
  10587c:	eb d3                	jmp    105851 <MContainer_test1+0x91>
  10587e:	66 90                	xchg   %ax,%ax
        dprintf("test 1.3 failed: (%d != 0)\n", container_can_consume(0, 10000000));
  105880:	83 ec 08             	sub    $0x8,%esp
  105883:	68 80 96 98 00       	push   $0x989680
  105888:	6a 00                	push   $0x0
  10588a:	e8 21 fe ff ff       	call   1056b0 <container_can_consume>
  10588f:	5a                   	pop    %edx
  105890:	59                   	pop    %ecx
  105891:	50                   	push   %eax
  105892:	8d 83 7d b9 ff ff    	lea    -0x4683(%ebx),%eax
  105898:	50                   	push   %eax
  105899:	e8 ce d4 ff ff       	call   102d6c <dprintf>
        return 1;
  10589e:	83 c4 10             	add    $0x10,%esp
  1058a1:	eb ae                	jmp    105851 <MContainer_test1+0x91>
  1058a3:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1058aa:	00 
  1058ab:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

001058b0 <MContainer_test2>:

int MContainer_test2()
{
  1058b0:	55                   	push   %ebp
  1058b1:	57                   	push   %edi
  1058b2:	56                   	push   %esi
  1058b3:	53                   	push   %ebx
  1058b4:	e8 07 ab ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1058b9:	81 c3 3b 67 00 00    	add    $0x673b,%ebx
  1058bf:	83 ec 38             	sub    $0x38,%esp
    unsigned int old_usage = container_get_usage(0);
  1058c2:	6a 00                	push   $0x0
  1058c4:	e8 c7 fd ff ff       	call   105690 <container_get_usage>
    unsigned int old_nchildren = container_get_nchildren(0);
  1058c9:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    unsigned int old_usage = container_get_usage(0);
  1058d0:	89 c5                	mov    %eax,%ebp
    unsigned int old_nchildren = container_get_nchildren(0);
  1058d2:	e8 79 fd ff ff       	call   105650 <container_get_nchildren>
  1058d7:	89 c7                	mov    %eax,%edi
    unsigned int chid = container_split(0, 100);
  1058d9:	58                   	pop    %eax
  1058da:	5a                   	pop    %edx
  1058db:	6a 64                	push   $0x64
  1058dd:	6a 00                	push   $0x0
  1058df:	e8 fc fd ff ff       	call   1056e0 <container_split>
    if (container_get_quota(chid) != 100
  1058e4:	89 04 24             	mov    %eax,(%esp)
    unsigned int chid = container_split(0, 100);
  1058e7:	89 c6                	mov    %eax,%esi
    if (container_get_quota(chid) != 100
  1058e9:	e8 82 fd ff ff       	call   105670 <container_get_quota>
  1058ee:	83 c4 10             	add    $0x10,%esp
  1058f1:	83 f8 64             	cmp    $0x64,%eax
  1058f4:	0f 84 8e 00 00 00    	je     105988 <MContainer_test2+0xd8>
        || container_get_parent(chid) != 0
        || container_get_usage(chid) != 0
        || container_get_nchildren(chid) != 0
        || container_get_usage(0) != old_usage + 100
  1058fa:	8d 45 64             	lea    0x64(%ebp),%eax
  1058fd:	89 44 24 10          	mov    %eax,0x10(%esp)
        || container_get_nchildren(0) != old_nchildren + 1) {
  105901:	8d 47 01             	lea    0x1(%edi),%eax
  105904:	89 44 24 0c          	mov    %eax,0xc(%esp)
        dprintf("test 2.1 failed:\n"
  105908:	83 ec 0c             	sub    $0xc,%esp
  10590b:	6a 00                	push   $0x0
  10590d:	e8 3e fd ff ff       	call   105650 <container_get_nchildren>
  105912:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  105919:	89 44 24 2c          	mov    %eax,0x2c(%esp)
  10591d:	e8 6e fd ff ff       	call   105690 <container_get_usage>
  105922:	89 34 24             	mov    %esi,(%esp)
  105925:	89 44 24 28          	mov    %eax,0x28(%esp)
  105929:	e8 22 fd ff ff       	call   105650 <container_get_nchildren>
  10592e:	89 34 24             	mov    %esi,(%esp)
  105931:	89 44 24 24          	mov    %eax,0x24(%esp)
  105935:	e8 56 fd ff ff       	call   105690 <container_get_usage>
  10593a:	89 34 24             	mov    %esi,(%esp)
  10593d:	89 c5                	mov    %eax,%ebp
  10593f:	e8 ec fc ff ff       	call   105630 <container_get_parent>
  105944:	89 34 24             	mov    %esi,(%esp)
  105947:	89 c7                	mov    %eax,%edi
  105949:	e8 22 fd ff ff       	call   105670 <container_get_quota>
  10594e:	5e                   	pop    %esi
  10594f:	ff 74 24 18          	push   0x18(%esp)
  105953:	8b 54 24 2c          	mov    0x2c(%esp),%edx
  105957:	52                   	push   %edx
  105958:	ff 74 24 24          	push   0x24(%esp)
  10595c:	8b 4c 24 30          	mov    0x30(%esp),%ecx
  105960:	51                   	push   %ecx
  105961:	ff 74 24 30          	push   0x30(%esp)
  105965:	55                   	push   %ebp
  105966:	57                   	push   %edi
  105967:	50                   	push   %eax
  105968:	8d 83 1c bd ff ff    	lea    -0x42e4(%ebx),%eax
  10596e:	50                   	push   %eax
  10596f:	e8 f8 d3 ff ff       	call   102d6c <dprintf>
                container_get_parent(chid),
                container_get_usage(chid),
                container_get_nchildren(chid),
                container_get_usage(0), old_usage + 100,
                container_get_nchildren(0), old_nchildren + 1);
        return 1;
  105974:	83 c4 30             	add    $0x30,%esp
  105977:	b8 01 00 00 00       	mov    $0x1,%eax
        dprintf("test 2.2 failed: (%d != 1)\n", container_get_usage(chid));
        return 1;
    }
    dprintf("test 2 passed.\n");
    return 0;
}
  10597c:	83 c4 2c             	add    $0x2c,%esp
  10597f:	5b                   	pop    %ebx
  105980:	5e                   	pop    %esi
  105981:	5f                   	pop    %edi
  105982:	5d                   	pop    %ebp
  105983:	c3                   	ret
  105984:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        || container_get_parent(chid) != 0
  105988:	83 ec 0c             	sub    $0xc,%esp
        || container_get_usage(0) != old_usage + 100
  10598b:	83 c5 64             	add    $0x64,%ebp
        || container_get_parent(chid) != 0
  10598e:	56                   	push   %esi
  10598f:	e8 9c fc ff ff       	call   105630 <container_get_parent>
        || container_get_nchildren(0) != old_nchildren + 1) {
  105994:	8d 57 01             	lea    0x1(%edi),%edx
        || container_get_usage(0) != old_usage + 100
  105997:	89 6c 24 20          	mov    %ebp,0x20(%esp)
        || container_get_nchildren(0) != old_nchildren + 1) {
  10599b:	89 54 24 1c          	mov    %edx,0x1c(%esp)
        || container_get_parent(chid) != 0
  10599f:	83 c4 10             	add    $0x10,%esp
  1059a2:	85 c0                	test   %eax,%eax
  1059a4:	0f 85 5e ff ff ff    	jne    105908 <MContainer_test2+0x58>
        || container_get_usage(chid) != 0
  1059aa:	83 ec 0c             	sub    $0xc,%esp
  1059ad:	56                   	push   %esi
  1059ae:	e8 dd fc ff ff       	call   105690 <container_get_usage>
  1059b3:	83 c4 10             	add    $0x10,%esp
  1059b6:	85 c0                	test   %eax,%eax
  1059b8:	0f 85 4a ff ff ff    	jne    105908 <MContainer_test2+0x58>
        || container_get_nchildren(chid) != 0
  1059be:	83 ec 0c             	sub    $0xc,%esp
  1059c1:	56                   	push   %esi
  1059c2:	e8 89 fc ff ff       	call   105650 <container_get_nchildren>
  1059c7:	83 c4 10             	add    $0x10,%esp
  1059ca:	85 c0                	test   %eax,%eax
  1059cc:	0f 85 36 ff ff ff    	jne    105908 <MContainer_test2+0x58>
        || container_get_usage(0) != old_usage + 100
  1059d2:	83 ec 0c             	sub    $0xc,%esp
  1059d5:	6a 00                	push   $0x0
  1059d7:	e8 b4 fc ff ff       	call   105690 <container_get_usage>
  1059dc:	83 c4 10             	add    $0x10,%esp
  1059df:	39 e8                	cmp    %ebp,%eax
  1059e1:	0f 85 21 ff ff ff    	jne    105908 <MContainer_test2+0x58>
        || container_get_nchildren(0) != old_nchildren + 1) {
  1059e7:	83 ec 0c             	sub    $0xc,%esp
  1059ea:	6a 00                	push   $0x0
  1059ec:	e8 5f fc ff ff       	call   105650 <container_get_nchildren>
  1059f1:	8b 4c 24 1c          	mov    0x1c(%esp),%ecx
  1059f5:	83 c4 10             	add    $0x10,%esp
  1059f8:	39 c8                	cmp    %ecx,%eax
  1059fa:	0f 85 08 ff ff ff    	jne    105908 <MContainer_test2+0x58>
    container_alloc(chid);
  105a00:	83 ec 0c             	sub    $0xc,%esp
  105a03:	56                   	push   %esi
  105a04:	e8 57 fd ff ff       	call   105760 <container_alloc>
    if (container_get_usage(chid) != 1) {
  105a09:	89 34 24             	mov    %esi,(%esp)
  105a0c:	e8 7f fc ff ff       	call   105690 <container_get_usage>
  105a11:	83 c4 10             	add    $0x10,%esp
  105a14:	83 f8 01             	cmp    $0x1,%eax
  105a17:	74 20                	je     105a39 <MContainer_test2+0x189>
        dprintf("test 2.2 failed: (%d != 1)\n", container_get_usage(chid));
  105a19:	83 ec 0c             	sub    $0xc,%esp
  105a1c:	56                   	push   %esi
  105a1d:	e8 6e fc ff ff       	call   105690 <container_get_usage>
  105a22:	5a                   	pop    %edx
  105a23:	59                   	pop    %ecx
  105a24:	50                   	push   %eax
  105a25:	8d 83 99 b9 ff ff    	lea    -0x4667(%ebx),%eax
  105a2b:	50                   	push   %eax
  105a2c:	e8 3b d3 ff ff       	call   102d6c <dprintf>
        return 1;
  105a31:	83 c4 10             	add    $0x10,%esp
  105a34:	e9 3e ff ff ff       	jmp    105977 <MContainer_test2+0xc7>
    dprintf("test 2 passed.\n");
  105a39:	83 ec 0c             	sub    $0xc,%esp
  105a3c:	8d 83 a3 b8 ff ff    	lea    -0x475d(%ebx),%eax
  105a42:	50                   	push   %eax
  105a43:	e8 24 d3 ff ff       	call   102d6c <dprintf>
    return 0;
  105a48:	83 c4 10             	add    $0x10,%esp
  105a4b:	31 c0                	xor    %eax,%eax
  105a4d:	e9 2a ff ff ff       	jmp    10597c <MContainer_test2+0xcc>
  105a52:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  105a59:	00 
  105a5a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00105a60 <MContainer_test_own>:
int MContainer_test_own()
{
    // TODO (optional)
    // dprintf("own test passed.\n");
    return 0;
}
  105a60:	31 c0                	xor    %eax,%eax
  105a62:	c3                   	ret
  105a63:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  105a6a:	00 
  105a6b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00105a70 <test_MContainer>:

int test_MContainer()
{
  105a70:	53                   	push   %ebx
  105a71:	83 ec 08             	sub    $0x8,%esp
    return MContainer_test1() + MContainer_test2() + MContainer_test_own();
  105a74:	e8 47 fd ff ff       	call   1057c0 <MContainer_test1>
  105a79:	89 c3                	mov    %eax,%ebx
  105a7b:	e8 30 fe ff ff       	call   1058b0 <MContainer_test2>
}
  105a80:	83 c4 08             	add    $0x8,%esp
    return MContainer_test1() + MContainer_test2() + MContainer_test_own();
  105a83:	01 d8                	add    %ebx,%eax
}
  105a85:	5b                   	pop    %ebx
  105a86:	c3                   	ret
  105a87:	66 90                	xchg   %ax,%ax
  105a89:	66 90                	xchg   %ax,%ax
  105a8b:	66 90                	xchg   %ax,%ax
  105a8d:	66 90                	xchg   %ax,%ax
  105a8f:	90                   	nop

00105a90 <set_pdir_base>:
 */
unsigned int IDPTbl[1024][1024] gcc_aligned(PAGESIZE);

// Sets the CR3 register with the start address of the page structure for process # [index].
void set_pdir_base(unsigned int index)
{
  105a90:	53                   	push   %ebx
  105a91:	e8 2a a9 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  105a96:	81 c3 5e 65 00 00    	add    $0x655e,%ebx
  105a9c:	83 ec 14             	sub    $0x14,%esp
    // TODO
    set_cr3(PDirPool[index]);
  105a9f:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  105aa3:	c1 e0 0c             	shl    $0xc,%eax
  105aa6:	8d 84 03 0c e0 c4 00 	lea    0xc4e00c(%ebx,%eax,1),%eax
  105aad:	50                   	push   %eax
  105aae:	e8 f7 b6 ff ff       	call   1011aa <set_cr3>
}
  105ab3:	83 c4 18             	add    $0x18,%esp
  105ab6:	5b                   	pop    %ebx
  105ab7:	c3                   	ret
  105ab8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  105abf:	00 

00105ac0 <get_pdir_entry>:
// Returns the page directory entry # [pde_index] of the process # [proc_index].
// This can be used to test whether the page directory entry is mapped.
unsigned int get_pdir_entry(unsigned int proc_index, unsigned int pde_index)
{
    // TODO
    return (unsigned int)PDirPool[proc_index][pde_index];
  105ac0:	e8 f7 a8 ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  105ac5:	81 c2 2f 65 00 00    	add    $0x652f,%edx
  105acb:	8b 44 24 04          	mov    0x4(%esp),%eax
  105acf:	c1 e0 0a             	shl    $0xa,%eax
  105ad2:	03 44 24 08          	add    0x8(%esp),%eax
  105ad6:	8b 84 82 0c e0 c4 00 	mov    0xc4e00c(%edx,%eax,4),%eax
}
  105add:	c3                   	ret
  105ade:	66 90                	xchg   %ax,%ax

00105ae0 <set_pdir_entry>:
void set_pdir_entry(unsigned int proc_index, unsigned int pde_index,
                    unsigned int page_index)
{
    // TODO
    unsigned int value = (page_index << 12) | PT_PERM_PTU;
    PDirPool[proc_index][pde_index] = (char *)value;
  105ae0:	e8 69 01 00 00       	call   105c4e <__x86.get_pc_thunk.cx>
  105ae5:	81 c1 0f 65 00 00    	add    $0x650f,%ecx
    unsigned int value = (page_index << 12) | PT_PERM_PTU;
  105aeb:	8b 54 24 0c          	mov    0xc(%esp),%edx
    PDirPool[proc_index][pde_index] = (char *)value;
  105aef:	8b 44 24 04          	mov    0x4(%esp),%eax
    unsigned int value = (page_index << 12) | PT_PERM_PTU;
  105af3:	c1 e2 0c             	shl    $0xc,%edx
    PDirPool[proc_index][pde_index] = (char *)value;
  105af6:	c1 e0 0a             	shl    $0xa,%eax
  105af9:	03 44 24 08          	add    0x8(%esp),%eax
    unsigned int value = (page_index << 12) | PT_PERM_PTU;
  105afd:	83 ca 07             	or     $0x7,%edx
  105b00:	89 94 81 0c e0 c4 00 	mov    %edx,0xc4e00c(%ecx,%eax,4)
}
  105b07:	c3                   	ret
  105b08:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  105b0f:	00 

00105b10 <set_pdir_entry_identity>:
// You should also set the permissions PTE_P, PTE_W, and PTE_U.
// This will be used to map a page directory entry to an identity page table.
void set_pdir_entry_identity(unsigned int proc_index, unsigned int pde_index)
{
    // TODO
    unsigned int value = (unsigned int)IDPTbl[pde_index];
  105b10:	e8 39 01 00 00       	call   105c4e <__x86.get_pc_thunk.cx>
  105b15:	81 c1 df 64 00 00    	add    $0x64df,%ecx
{
  105b1b:	53                   	push   %ebx
  105b1c:	8b 5c 24 0c          	mov    0xc(%esp),%ebx
    unsigned int value = (unsigned int)IDPTbl[pde_index];
  105b20:	89 d8                	mov    %ebx,%eax
  105b22:	c1 e0 0c             	shl    $0xc,%eax
  105b25:	8d 94 01 0c e0 84 00 	lea    0x84e00c(%ecx,%eax,1),%edx
    value |= PT_PERM_PTU;
    PDirPool[proc_index][pde_index] = (char *)value;
  105b2c:	8b 44 24 08          	mov    0x8(%esp),%eax
    value |= PT_PERM_PTU;
  105b30:	83 ca 07             	or     $0x7,%edx
    PDirPool[proc_index][pde_index] = (char *)value;
  105b33:	c1 e0 0a             	shl    $0xa,%eax
  105b36:	01 d8                	add    %ebx,%eax
}
  105b38:	5b                   	pop    %ebx
    value |= PT_PERM_PTU;
  105b39:	89 94 81 0c e0 c4 00 	mov    %edx,0xc4e00c(%ecx,%eax,4)
}
  105b40:	c3                   	ret
  105b41:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  105b48:	00 
  105b49:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00105b50 <rmv_pdir_entry>:
// Removes the specified page directory entry (sets the page directory entry to 0).
// Don't forget to cast the value to (unsigned int *).
void rmv_pdir_entry(unsigned int proc_index, unsigned int pde_index)
{
    // TODO
    PDirPool[proc_index][pde_index] = (char *)0x00000000;
  105b50:	e8 67 a8 ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  105b55:	81 c2 9f 64 00 00    	add    $0x649f,%edx
  105b5b:	8b 44 24 04          	mov    0x4(%esp),%eax
  105b5f:	c1 e0 0a             	shl    $0xa,%eax
  105b62:	03 44 24 08          	add    0x8(%esp),%eax
  105b66:	c7 84 82 0c e0 c4 00 	movl   $0x0,0xc4e00c(%edx,%eax,4)
  105b6d:	00 00 00 00 
}
  105b71:	c3                   	ret
  105b72:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  105b79:	00 
  105b7a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00105b80 <get_ptbl_entry>:
// Do not forget that the permission info is also stored in the page directory entries.
unsigned int get_ptbl_entry(unsigned int proc_index, unsigned int pde_index,
                            unsigned int pte_index)
{
    // TODO
    unsigned int pte_addr = (unsigned int)PDirPool[proc_index][pde_index];
  105b80:	e8 37 a8 ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  105b85:	81 c2 6f 64 00 00    	add    $0x646f,%edx
  105b8b:	8b 44 24 04          	mov    0x4(%esp),%eax
  105b8f:	c1 e0 0a             	shl    $0xa,%eax
  105b92:	03 44 24 08          	add    0x8(%esp),%eax
  105b96:	8b 84 82 0c e0 c4 00 	mov    0xc4e00c(%edx,%eax,4),%eax
    pte_addr &= 0xfffff000;     // remove perm bits
    pte_addr += pte_index << 2; //
    return *(unsigned int *)pte_addr;
  105b9d:	8b 54 24 0c          	mov    0xc(%esp),%edx
    pte_addr &= 0xfffff000;     // remove perm bits
  105ba1:	25 00 f0 ff ff       	and    $0xfffff000,%eax
    return *(unsigned int *)pte_addr;
  105ba6:	8b 04 90             	mov    (%eax,%edx,4),%eax
}
  105ba9:	c3                   	ret
  105baa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00105bb0 <set_ptbl_entry>:
                    unsigned int pte_index, unsigned int page_index,
                    unsigned int perm)
{
    // TODO
    unsigned int *pte;
    unsigned int pte_addr = (unsigned int)PDirPool[proc_index][pde_index];
  105bb0:	e8 07 a8 ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  105bb5:	81 c2 3f 64 00 00    	add    $0x643f,%edx
  105bbb:	8b 44 24 04          	mov    0x4(%esp),%eax
    pte_addr += pte_index << 2;

    pte = (unsigned int *)pte_addr;
    *pte &= 0x00000000;
    *pte = page_index << 12;
    *pte |= (perm & 0x00000fff);
  105bbf:	8b 4c 24 14          	mov    0x14(%esp),%ecx
    unsigned int pte_addr = (unsigned int)PDirPool[proc_index][pde_index];
  105bc3:	c1 e0 0a             	shl    $0xa,%eax
  105bc6:	03 44 24 08          	add    0x8(%esp),%eax
    *pte |= (perm & 0x00000fff);
  105bca:	81 e1 ff 0f 00 00    	and    $0xfff,%ecx
    unsigned int pte_addr = (unsigned int)PDirPool[proc_index][pde_index];
  105bd0:	8b 94 82 0c e0 c4 00 	mov    0xc4e00c(%edx,%eax,4),%edx
    *pte = page_index << 12;
  105bd7:	8b 44 24 10          	mov    0x10(%esp),%eax
  105bdb:	c1 e0 0c             	shl    $0xc,%eax
    pte_addr &= 0xfffff000; // rmove perm bits
  105bde:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
    *pte |= (perm & 0x00000fff);
  105be4:	09 c8                	or     %ecx,%eax
  105be6:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
  105bea:	89 04 8a             	mov    %eax,(%edx,%ecx,4)
}
  105bed:	c3                   	ret
  105bee:	66 90                	xchg   %ax,%ax

00105bf0 <set_ptbl_entry_identity>:
void set_ptbl_entry_identity(unsigned int pde_index, unsigned int pte_index,
                             unsigned int perm)
{
    // TODO
    IDPTbl[pde_index][pte_index] = ((pde_index << 10) + pte_index) << 12;
    IDPTbl[pde_index][pte_index] |= perm;
  105bf0:	e8 59 00 00 00       	call   105c4e <__x86.get_pc_thunk.cx>
  105bf5:	81 c1 ff 63 00 00    	add    $0x63ff,%ecx
  105bfb:	8b 44 24 04          	mov    0x4(%esp),%eax
  105bff:	c1 e0 0a             	shl    $0xa,%eax
  105c02:	03 44 24 08          	add    0x8(%esp),%eax
    IDPTbl[pde_index][pte_index] = ((pde_index << 10) + pte_index) << 12;
  105c06:	89 c2                	mov    %eax,%edx
  105c08:	c1 e2 0c             	shl    $0xc,%edx
    IDPTbl[pde_index][pte_index] |= perm;
  105c0b:	0b 54 24 0c          	or     0xc(%esp),%edx
  105c0f:	89 94 81 0c e0 84 00 	mov    %edx,0x84e00c(%ecx,%eax,4)
}
  105c16:	c3                   	ret
  105c17:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  105c1e:	00 
  105c1f:	90                   	nop

00105c20 <rmv_ptbl_entry>:
void rmv_ptbl_entry(unsigned int proc_index, unsigned int pde_index,
                    unsigned int pte_index)
{
    // TODO
    unsigned int *pte;
    unsigned int pte_addr = (unsigned int)PDirPool[proc_index][pde_index];
  105c20:	e8 97 a7 ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  105c25:	81 c2 cf 63 00 00    	add    $0x63cf,%edx
  105c2b:	8b 44 24 04          	mov    0x4(%esp),%eax
  105c2f:	c1 e0 0a             	shl    $0xa,%eax
  105c32:	03 44 24 08          	add    0x8(%esp),%eax
  105c36:	8b 84 82 0c e0 c4 00 	mov    0xc4e00c(%edx,%eax,4),%eax
    pte_addr &= 0xfffff000; // remove perm bits
    pte_addr += pte_index << 2;
    pte = (unsigned int *)pte_addr;
    *pte &= 0x00000000;
  105c3d:	8b 54 24 0c          	mov    0xc(%esp),%edx
    pte_addr &= 0xfffff000; // remove perm bits
  105c41:	25 00 f0 ff ff       	and    $0xfffff000,%eax
    *pte &= 0x00000000;
  105c46:	c7 04 90 00 00 00 00 	movl   $0x0,(%eax,%edx,4)
  105c4d:	c3                   	ret

00105c4e <__x86.get_pc_thunk.cx>:
  105c4e:	8b 0c 24             	mov    (%esp),%ecx
  105c51:	c3                   	ret
  105c52:	66 90                	xchg   %ax,%ax
  105c54:	66 90                	xchg   %ax,%ax
  105c56:	66 90                	xchg   %ax,%ax
  105c58:	66 90                	xchg   %ax,%ax
  105c5a:	66 90                	xchg   %ax,%ax
  105c5c:	66 90                	xchg   %ax,%ax
  105c5e:	66 90                	xchg   %ax,%ax

00105c60 <MPTIntro_test1>:

extern char *PDirPool[NUM_IDS][1024];
extern unsigned int IDPTbl[1024][1024];

int MPTIntro_test1()
{
  105c60:	56                   	push   %esi
  105c61:	53                   	push   %ebx
  105c62:	e8 59 a7 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  105c67:	81 c3 8d 63 00 00    	add    $0x638d,%ebx
  105c6d:	83 ec 10             	sub    $0x10,%esp
    set_pdir_base(0);
  105c70:	6a 00                	push   $0x0
  105c72:	e8 19 fe ff ff       	call   105a90 <set_pdir_base>
    if ((unsigned int) PDirPool[0] != rcr3()) {
  105c77:	e8 3a dd ff ff       	call   1039b6 <rcr3>
  105c7c:	c7 c6 00 a0 d5 00    	mov    $0xd5a000,%esi
  105c82:	83 c4 10             	add    $0x10,%esp
  105c85:	39 f0                	cmp    %esi,%eax
  105c87:	74 27                	je     105cb0 <MPTIntro_test1+0x50>
        dprintf("test 1.1 failed: (%d != %d)\n",
  105c89:	e8 28 dd ff ff       	call   1039b6 <rcr3>
  105c8e:	83 ec 04             	sub    $0x4,%esp
  105c91:	50                   	push   %eax
  105c92:	8d 83 b5 b9 ff ff    	lea    -0x464b(%ebx),%eax
  105c98:	56                   	push   %esi
  105c99:	50                   	push   %eax
  105c9a:	e8 cd d0 ff ff       	call   102d6c <dprintf>
                (unsigned int) PDirPool[0], rcr3());
        return 1;
  105c9f:	83 c4 10             	add    $0x10,%esp
  105ca2:	b8 01 00 00 00       	mov    $0x1,%eax
                get_pdir_entry(1, 1), get_pdir_entry(1, 2));
        return 1;
    }
    dprintf("test 1 passed.\n");
    return 0;
}
  105ca7:	83 c4 04             	add    $0x4,%esp
  105caa:	5b                   	pop    %ebx
  105cab:	5e                   	pop    %esi
  105cac:	c3                   	ret
  105cad:	8d 76 00             	lea    0x0(%esi),%esi
    set_pdir_entry_identity(1, 1);
  105cb0:	83 ec 08             	sub    $0x8,%esp
  105cb3:	6a 01                	push   $0x1
  105cb5:	6a 01                	push   $0x1
  105cb7:	e8 54 fe ff ff       	call   105b10 <set_pdir_entry_identity>
    set_pdir_entry(1, 2, 100);
  105cbc:	83 c4 0c             	add    $0xc,%esp
  105cbf:	6a 64                	push   $0x64
  105cc1:	6a 02                	push   $0x2
  105cc3:	6a 01                	push   $0x1
  105cc5:	e8 16 fe ff ff       	call   105ae0 <set_pdir_entry>
    if (get_pdir_entry(1, 1) != (unsigned int) IDPTbl[1] + 7) {
  105cca:	58                   	pop    %eax
  105ccb:	5a                   	pop    %edx
  105ccc:	6a 01                	push   $0x1
  105cce:	6a 01                	push   $0x1
  105cd0:	e8 eb fd ff ff       	call   105ac0 <get_pdir_entry>
  105cd5:	c7 c6 00 a0 95 00    	mov    $0x95a000,%esi
  105cdb:	83 c4 10             	add    $0x10,%esp
  105cde:	81 c6 07 10 00 00    	add    $0x1007,%esi
  105ce4:	39 c6                	cmp    %eax,%esi
  105ce6:	74 28                	je     105d10 <MPTIntro_test1+0xb0>
        dprintf("test 1.2 failed: (%d != %d)\n",
  105ce8:	83 ec 08             	sub    $0x8,%esp
  105ceb:	6a 01                	push   $0x1
  105ced:	6a 01                	push   $0x1
  105cef:	e8 cc fd ff ff       	call   105ac0 <get_pdir_entry>
  105cf4:	83 c4 0c             	add    $0xc,%esp
  105cf7:	56                   	push   %esi
  105cf8:	50                   	push   %eax
  105cf9:	8d 83 d2 b9 ff ff    	lea    -0x462e(%ebx),%eax
  105cff:	50                   	push   %eax
  105d00:	e8 67 d0 ff ff       	call   102d6c <dprintf>
        return 1;
  105d05:	83 c4 10             	add    $0x10,%esp
  105d08:	eb 98                	jmp    105ca2 <MPTIntro_test1+0x42>
  105d0a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if (get_pdir_entry(1, 2) != 409607) {
  105d10:	83 ec 08             	sub    $0x8,%esp
  105d13:	6a 02                	push   $0x2
  105d15:	6a 01                	push   $0x1
  105d17:	e8 a4 fd ff ff       	call   105ac0 <get_pdir_entry>
  105d1c:	83 c4 10             	add    $0x10,%esp
  105d1f:	3d 07 40 06 00       	cmp    $0x64007,%eax
  105d24:	75 72                	jne    105d98 <MPTIntro_test1+0x138>
    rmv_pdir_entry(1, 1);
  105d26:	83 ec 08             	sub    $0x8,%esp
  105d29:	6a 01                	push   $0x1
  105d2b:	6a 01                	push   $0x1
  105d2d:	e8 1e fe ff ff       	call   105b50 <rmv_pdir_entry>
    rmv_pdir_entry(1, 2);
  105d32:	59                   	pop    %ecx
  105d33:	5e                   	pop    %esi
  105d34:	6a 02                	push   $0x2
  105d36:	6a 01                	push   $0x1
  105d38:	e8 13 fe ff ff       	call   105b50 <rmv_pdir_entry>
    if (get_pdir_entry(1, 1) != 0 || get_pdir_entry(1, 2) != 0) {
  105d3d:	58                   	pop    %eax
  105d3e:	5a                   	pop    %edx
  105d3f:	6a 01                	push   $0x1
  105d41:	6a 01                	push   $0x1
  105d43:	e8 78 fd ff ff       	call   105ac0 <get_pdir_entry>
  105d48:	83 c4 10             	add    $0x10,%esp
  105d4b:	85 c0                	test   %eax,%eax
  105d4d:	75 13                	jne    105d62 <MPTIntro_test1+0x102>
  105d4f:	83 ec 08             	sub    $0x8,%esp
  105d52:	6a 02                	push   $0x2
  105d54:	6a 01                	push   $0x1
  105d56:	e8 65 fd ff ff       	call   105ac0 <get_pdir_entry>
  105d5b:	83 c4 10             	add    $0x10,%esp
  105d5e:	85 c0                	test   %eax,%eax
  105d60:	74 5e                	je     105dc0 <MPTIntro_test1+0x160>
        dprintf("test 1.4 failed: (%d != 0 || %d != 0)\n",
  105d62:	83 ec 08             	sub    $0x8,%esp
  105d65:	6a 02                	push   $0x2
  105d67:	6a 01                	push   $0x1
  105d69:	e8 52 fd ff ff       	call   105ac0 <get_pdir_entry>
  105d6e:	89 c6                	mov    %eax,%esi
  105d70:	58                   	pop    %eax
  105d71:	5a                   	pop    %edx
  105d72:	6a 01                	push   $0x1
  105d74:	6a 01                	push   $0x1
  105d76:	e8 45 fd ff ff       	call   105ac0 <get_pdir_entry>
  105d7b:	83 c4 0c             	add    $0xc,%esp
  105d7e:	56                   	push   %esi
  105d7f:	50                   	push   %eax
  105d80:	8d 83 98 bd ff ff    	lea    -0x4268(%ebx),%eax
  105d86:	50                   	push   %eax
  105d87:	e8 e0 cf ff ff       	call   102d6c <dprintf>
        return 1;
  105d8c:	83 c4 10             	add    $0x10,%esp
  105d8f:	e9 0e ff ff ff       	jmp    105ca2 <MPTIntro_test1+0x42>
  105d94:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        dprintf("test 1.3 failed: (%d != 409607)\n", get_pdir_entry(1, 2));
  105d98:	83 ec 08             	sub    $0x8,%esp
  105d9b:	6a 02                	push   $0x2
  105d9d:	6a 01                	push   $0x1
  105d9f:	e8 1c fd ff ff       	call   105ac0 <get_pdir_entry>
  105da4:	59                   	pop    %ecx
  105da5:	5e                   	pop    %esi
  105da6:	50                   	push   %eax
  105da7:	8d 83 74 bd ff ff    	lea    -0x428c(%ebx),%eax
  105dad:	50                   	push   %eax
  105dae:	e8 b9 cf ff ff       	call   102d6c <dprintf>
        return 1;
  105db3:	83 c4 10             	add    $0x10,%esp
  105db6:	e9 e7 fe ff ff       	jmp    105ca2 <MPTIntro_test1+0x42>
  105dbb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    dprintf("test 1 passed.\n");
  105dc0:	83 ec 0c             	sub    $0xc,%esp
  105dc3:	8d 83 93 b8 ff ff    	lea    -0x476d(%ebx),%eax
  105dc9:	50                   	push   %eax
  105dca:	e8 9d cf ff ff       	call   102d6c <dprintf>
    return 0;
  105dcf:	83 c4 10             	add    $0x10,%esp
  105dd2:	31 c0                	xor    %eax,%eax
  105dd4:	e9 ce fe ff ff       	jmp    105ca7 <MPTIntro_test1+0x47>
  105dd9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00105de0 <MPTIntro_test2>:

int MPTIntro_test2()
{
  105de0:	53                   	push   %ebx
  105de1:	e8 da a5 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  105de6:	81 c3 0e 62 00 00    	add    $0x620e,%ebx
  105dec:	83 ec 0c             	sub    $0xc,%esp
    set_pdir_entry(1, 1, 10000);
  105def:	68 10 27 00 00       	push   $0x2710
  105df4:	6a 01                	push   $0x1
  105df6:	6a 01                	push   $0x1
  105df8:	e8 e3 fc ff ff       	call   105ae0 <set_pdir_entry>
    set_ptbl_entry(1, 1, 1, 10000, 259);
  105dfd:	c7 04 24 03 01 00 00 	movl   $0x103,(%esp)
  105e04:	68 10 27 00 00       	push   $0x2710
  105e09:	6a 01                	push   $0x1
  105e0b:	6a 01                	push   $0x1
  105e0d:	6a 01                	push   $0x1
  105e0f:	e8 9c fd ff ff       	call   105bb0 <set_ptbl_entry>
    if (get_ptbl_entry(1, 1, 1) != 40960259) {
  105e14:	83 c4 1c             	add    $0x1c,%esp
  105e17:	6a 01                	push   $0x1
  105e19:	6a 01                	push   $0x1
  105e1b:	6a 01                	push   $0x1
  105e1d:	e8 5e fd ff ff       	call   105b80 <get_ptbl_entry>
  105e22:	83 c4 10             	add    $0x10,%esp
  105e25:	3d 03 01 71 02       	cmp    $0x2710103,%eax
  105e2a:	74 34                	je     105e60 <MPTIntro_test2+0x80>
        dprintf("test 2.1 failed: (%d != 40960259)\n", get_ptbl_entry(1, 1, 1));
  105e2c:	83 ec 04             	sub    $0x4,%esp
  105e2f:	6a 01                	push   $0x1
  105e31:	6a 01                	push   $0x1
  105e33:	6a 01                	push   $0x1
  105e35:	e8 46 fd ff ff       	call   105b80 <get_ptbl_entry>
  105e3a:	5a                   	pop    %edx
  105e3b:	59                   	pop    %ecx
  105e3c:	50                   	push   %eax
  105e3d:	8d 83 c0 bd ff ff    	lea    -0x4240(%ebx),%eax
  105e43:	50                   	push   %eax
  105e44:	e8 23 cf ff ff       	call   102d6c <dprintf>
        return 1;
  105e49:	83 c4 10             	add    $0x10,%esp
        return 1;
    }
    rmv_pdir_entry(1, 1);
    dprintf("test 2 passed.\n");
    return 0;
}
  105e4c:	83 c4 08             	add    $0x8,%esp
        return 1;
  105e4f:	b8 01 00 00 00       	mov    $0x1,%eax
}
  105e54:	5b                   	pop    %ebx
  105e55:	c3                   	ret
  105e56:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  105e5d:	00 
  105e5e:	66 90                	xchg   %ax,%ax
    rmv_ptbl_entry(1, 1, 1);
  105e60:	83 ec 04             	sub    $0x4,%esp
  105e63:	6a 01                	push   $0x1
  105e65:	6a 01                	push   $0x1
  105e67:	6a 01                	push   $0x1
  105e69:	e8 b2 fd ff ff       	call   105c20 <rmv_ptbl_entry>
    if (get_ptbl_entry(1, 1, 1) != 0) {
  105e6e:	83 c4 0c             	add    $0xc,%esp
  105e71:	6a 01                	push   $0x1
  105e73:	6a 01                	push   $0x1
  105e75:	6a 01                	push   $0x1
  105e77:	e8 04 fd ff ff       	call   105b80 <get_ptbl_entry>
  105e7c:	83 c4 10             	add    $0x10,%esp
  105e7f:	85 c0                	test   %eax,%eax
  105e81:	75 2d                	jne    105eb0 <MPTIntro_test2+0xd0>
    rmv_pdir_entry(1, 1);
  105e83:	83 ec 08             	sub    $0x8,%esp
  105e86:	6a 01                	push   $0x1
  105e88:	6a 01                	push   $0x1
  105e8a:	e8 c1 fc ff ff       	call   105b50 <rmv_pdir_entry>
    dprintf("test 2 passed.\n");
  105e8f:	8d 83 a3 b8 ff ff    	lea    -0x475d(%ebx),%eax
  105e95:	89 04 24             	mov    %eax,(%esp)
  105e98:	e8 cf ce ff ff       	call   102d6c <dprintf>
    return 0;
  105e9d:	83 c4 10             	add    $0x10,%esp
  105ea0:	31 c0                	xor    %eax,%eax
}
  105ea2:	83 c4 08             	add    $0x8,%esp
  105ea5:	5b                   	pop    %ebx
  105ea6:	c3                   	ret
  105ea7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  105eae:	00 
  105eaf:	90                   	nop
        dprintf("test 2.2 failed: (%d != 0)\n", get_ptbl_entry(1, 1, 1));
  105eb0:	83 ec 04             	sub    $0x4,%esp
  105eb3:	6a 01                	push   $0x1
  105eb5:	6a 01                	push   $0x1
  105eb7:	6a 01                	push   $0x1
  105eb9:	e8 c2 fc ff ff       	call   105b80 <get_ptbl_entry>
  105ebe:	5a                   	pop    %edx
  105ebf:	59                   	pop    %ecx
  105ec0:	50                   	push   %eax
  105ec1:	8d 83 ef b9 ff ff    	lea    -0x4611(%ebx),%eax
  105ec7:	50                   	push   %eax
  105ec8:	e8 9f ce ff ff       	call   102d6c <dprintf>
        return 1;
  105ecd:	83 c4 10             	add    $0x10,%esp
  105ed0:	e9 77 ff ff ff       	jmp    105e4c <MPTIntro_test2+0x6c>
  105ed5:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  105edc:	00 
  105edd:	8d 76 00             	lea    0x0(%esi),%esi

00105ee0 <MPTIntro_test_own>:
int MPTIntro_test_own()
{
    // TODO (optional)
    // dprintf("own test passed.\n");
    return 0;
}
  105ee0:	31 c0                	xor    %eax,%eax
  105ee2:	c3                   	ret
  105ee3:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  105eea:	00 
  105eeb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00105ef0 <test_MPTIntro>:

int test_MPTIntro()
{
  105ef0:	53                   	push   %ebx
  105ef1:	83 ec 08             	sub    $0x8,%esp
    return MPTIntro_test1() + MPTIntro_test2() + MPTIntro_test_own();
  105ef4:	e8 67 fd ff ff       	call   105c60 <MPTIntro_test1>
  105ef9:	89 c3                	mov    %eax,%ebx
  105efb:	e8 e0 fe ff ff       	call   105de0 <MPTIntro_test2>
}
  105f00:	83 c4 08             	add    $0x8,%esp
    return MPTIntro_test1() + MPTIntro_test2() + MPTIntro_test_own();
  105f03:	01 d8                	add    %ebx,%eax
}
  105f05:	5b                   	pop    %ebx
  105f06:	c3                   	ret
  105f07:	66 90                	xchg   %ax,%ax
  105f09:	66 90                	xchg   %ax,%ax
  105f0b:	66 90                	xchg   %ax,%ax
  105f0d:	66 90                	xchg   %ax,%ax
  105f0f:	90                   	nop

00105f10 <get_ptbl_entry_by_va>:
 * Returns the page table entry corresponding to the virtual address,
 * according to the page structure of process # [proc_index].
 * Returns 0 if the mapping does not exist.
 */
unsigned int get_ptbl_entry_by_va(unsigned int proc_index, unsigned int vaddr)
{
  105f10:	55                   	push   %ebp
  105f11:	57                   	push   %edi
  105f12:	56                   	push   %esi
  105f13:	53                   	push   %ebx
  105f14:	e8 a7 a4 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  105f19:	81 c3 db 60 00 00    	add    $0x60db,%ebx
  105f1f:	83 ec 14             	sub    $0x14,%esp
  105f22:	8b 74 24 2c          	mov    0x2c(%esp),%esi
  105f26:	8b 7c 24 28          	mov    0x28(%esp),%edi
    // TODO
    unsigned int pde_index = (vaddr & VA_PDIR_MASK) >> 22;
  105f2a:	89 f5                	mov    %esi,%ebp
  105f2c:	c1 ed 16             	shr    $0x16,%ebp
    unsigned int pte_index = (vaddr & VA_PTBL_MASK) >> 12;

    unsigned int pde = get_pdir_entry(proc_index, pde_index);
  105f2f:	55                   	push   %ebp
  105f30:	57                   	push   %edi
  105f31:	e8 8a fb ff ff       	call   105ac0 <get_pdir_entry>
    // check the present bit of page directory entry
    if ((pde & PTE_P) == 0)
  105f36:	83 c4 10             	add    $0x10,%esp
  105f39:	a8 01                	test   $0x1,%al
  105f3b:	75 13                	jne    105f50 <get_ptbl_entry_by_va+0x40>
    if ((pte & PTE_P) == 0)
    {
        return 0;
    }
    return pte;
}
  105f3d:	83 c4 0c             	add    $0xc,%esp
        return 0;
  105f40:	31 c0                	xor    %eax,%eax
}
  105f42:	5b                   	pop    %ebx
  105f43:	5e                   	pop    %esi
  105f44:	5f                   	pop    %edi
  105f45:	5d                   	pop    %ebp
  105f46:	c3                   	ret
  105f47:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  105f4e:	00 
  105f4f:	90                   	nop
    unsigned int pte_index = (vaddr & VA_PTBL_MASK) >> 12;
  105f50:	c1 ee 0c             	shr    $0xc,%esi
    unsigned int pte = get_ptbl_entry(proc_index, pde_index, pte_index);
  105f53:	83 ec 04             	sub    $0x4,%esp
    unsigned int pte_index = (vaddr & VA_PTBL_MASK) >> 12;
  105f56:	81 e6 ff 03 00 00    	and    $0x3ff,%esi
    unsigned int pte = get_ptbl_entry(proc_index, pde_index, pte_index);
  105f5c:	56                   	push   %esi
  105f5d:	55                   	push   %ebp
  105f5e:	57                   	push   %edi
  105f5f:	e8 1c fc ff ff       	call   105b80 <get_ptbl_entry>
    if ((pte & PTE_P) == 0)
  105f64:	83 c4 10             	add    $0x10,%esp
  105f67:	a8 01                	test   $0x1,%al
  105f69:	74 d2                	je     105f3d <get_ptbl_entry_by_va+0x2d>
}
  105f6b:	83 c4 0c             	add    $0xc,%esp
  105f6e:	5b                   	pop    %ebx
  105f6f:	5e                   	pop    %esi
  105f70:	5f                   	pop    %edi
  105f71:	5d                   	pop    %ebp
  105f72:	c3                   	ret
  105f73:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  105f7a:	00 
  105f7b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00105f80 <get_pdir_entry_by_va>:

// Returns the page directory entry corresponding to the given virtual address.
unsigned int get_pdir_entry_by_va(unsigned int proc_index, unsigned int vaddr)
{
  105f80:	53                   	push   %ebx
  105f81:	e8 3a a4 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  105f86:	81 c3 6e 60 00 00    	add    $0x606e,%ebx
  105f8c:	83 ec 10             	sub    $0x10,%esp
    // TODO
    unsigned int pde_index = (vaddr & VA_PDIR_MASK) >> 22;
  105f8f:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  105f93:	c1 e8 16             	shr    $0x16,%eax
    unsigned int pde = get_pdir_entry(proc_index, pde_index);
  105f96:	50                   	push   %eax
  105f97:	ff 74 24 1c          	push   0x1c(%esp)
  105f9b:	e8 20 fb ff ff       	call   105ac0 <get_pdir_entry>
    return pde;
}
  105fa0:	83 c4 18             	add    $0x18,%esp
  105fa3:	5b                   	pop    %ebx
  105fa4:	c3                   	ret
  105fa5:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  105fac:	00 
  105fad:	8d 76 00             	lea    0x0(%esi),%esi

00105fb0 <rmv_ptbl_entry_by_va>:

// Removes the page table entry for the given virtual address.
void rmv_ptbl_entry_by_va(unsigned int proc_index, unsigned int vaddr)
{
  105fb0:	55                   	push   %ebp
  105fb1:	57                   	push   %edi
  105fb2:	56                   	push   %esi
  105fb3:	53                   	push   %ebx
  105fb4:	e8 07 a4 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  105fb9:	81 c3 3b 60 00 00    	add    $0x603b,%ebx
  105fbf:	83 ec 14             	sub    $0x14,%esp
  105fc2:	8b 74 24 2c          	mov    0x2c(%esp),%esi
  105fc6:	8b 7c 24 28          	mov    0x28(%esp),%edi
    // TODO
    unsigned int pde_index = (vaddr & VA_PDIR_MASK) >> 22;
  105fca:	89 f5                	mov    %esi,%ebp
  105fcc:	c1 ed 16             	shr    $0x16,%ebp
    unsigned int pte_index = (vaddr & VA_PTBL_MASK) >> 12;

    unsigned int pde = get_pdir_entry(proc_index, pde_index);
  105fcf:	55                   	push   %ebp
  105fd0:	57                   	push   %edi
  105fd1:	e8 ea fa ff ff       	call   105ac0 <get_pdir_entry>
    // check the present bit of page directory entry
    if ((pde & PTE_P) == 0)
  105fd6:	83 c4 10             	add    $0x10,%esp
  105fd9:	a8 01                	test   $0x1,%al
  105fdb:	74 17                	je     105ff4 <rmv_ptbl_entry_by_va+0x44>
    unsigned int pte_index = (vaddr & VA_PTBL_MASK) >> 12;
  105fdd:	c1 ee 0c             	shr    $0xc,%esi
    {
        // the page directory entry is not valid for address translation
        return;
    }
    rmv_ptbl_entry(proc_index, pde_index, pte_index);
  105fe0:	83 ec 04             	sub    $0x4,%esp
    unsigned int pte_index = (vaddr & VA_PTBL_MASK) >> 12;
  105fe3:	81 e6 ff 03 00 00    	and    $0x3ff,%esi
    rmv_ptbl_entry(proc_index, pde_index, pte_index);
  105fe9:	56                   	push   %esi
  105fea:	55                   	push   %ebp
  105feb:	57                   	push   %edi
  105fec:	e8 2f fc ff ff       	call   105c20 <rmv_ptbl_entry>
  105ff1:	83 c4 10             	add    $0x10,%esp
}
  105ff4:	83 c4 0c             	add    $0xc,%esp
  105ff7:	5b                   	pop    %ebx
  105ff8:	5e                   	pop    %esi
  105ff9:	5f                   	pop    %edi
  105ffa:	5d                   	pop    %ebp
  105ffb:	c3                   	ret
  105ffc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00106000 <rmv_pdir_entry_by_va>:

// Removes the page directory entry for the given virtual address.
void rmv_pdir_entry_by_va(unsigned int proc_index, unsigned int vaddr)
{
  106000:	53                   	push   %ebx
  106001:	e8 ba a3 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106006:	81 c3 ee 5f 00 00    	add    $0x5fee,%ebx
  10600c:	83 ec 10             	sub    $0x10,%esp
    // TODO
    unsigned int pde_index = (vaddr & VA_PDIR_MASK) >> 22;
  10600f:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  106013:	c1 e8 16             	shr    $0x16,%eax
    rmv_pdir_entry(proc_index, pde_index);
  106016:	50                   	push   %eax
  106017:	ff 74 24 1c          	push   0x1c(%esp)
  10601b:	e8 30 fb ff ff       	call   105b50 <rmv_pdir_entry>
}
  106020:	83 c4 18             	add    $0x18,%esp
  106023:	5b                   	pop    %ebx
  106024:	c3                   	ret
  106025:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10602c:	00 
  10602d:	8d 76 00             	lea    0x0(%esi),%esi

00106030 <set_ptbl_entry_by_va>:

// Maps the virtual address [vaddr] to the physical page # [page_index] with permission [perm].
// You do not need to worry about the page directory entry. just map the page table entry.
void set_ptbl_entry_by_va(unsigned int proc_index, unsigned int vaddr,
                          unsigned int page_index, unsigned int perm)
{
  106030:	53                   	push   %ebx
  106031:	e8 8a a3 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106036:	81 c3 be 5f 00 00    	add    $0x5fbe,%ebx
  10603c:	83 ec 14             	sub    $0x14,%esp
  10603f:	8b 44 24 20          	mov    0x20(%esp),%eax
    // TODO
    unsigned int pde_index = (vaddr & VA_PDIR_MASK) >> 22;
    unsigned int pte_index = (vaddr & VA_PTBL_MASK) >> 12;
    set_ptbl_entry(proc_index, pde_index, pte_index, page_index, perm);
  106043:	ff 74 24 28          	push   0x28(%esp)
  106047:	ff 74 24 28          	push   0x28(%esp)
    unsigned int pte_index = (vaddr & VA_PTBL_MASK) >> 12;
  10604b:	89 c2                	mov    %eax,%edx
    unsigned int pde_index = (vaddr & VA_PDIR_MASK) >> 22;
  10604d:	c1 e8 16             	shr    $0x16,%eax
    unsigned int pte_index = (vaddr & VA_PTBL_MASK) >> 12;
  106050:	c1 ea 0c             	shr    $0xc,%edx
  106053:	81 e2 ff 03 00 00    	and    $0x3ff,%edx
    set_ptbl_entry(proc_index, pde_index, pte_index, page_index, perm);
  106059:	52                   	push   %edx
  10605a:	50                   	push   %eax
  10605b:	ff 74 24 2c          	push   0x2c(%esp)
  10605f:	e8 4c fb ff ff       	call   105bb0 <set_ptbl_entry>
}
  106064:	83 c4 28             	add    $0x28,%esp
  106067:	5b                   	pop    %ebx
  106068:	c3                   	ret
  106069:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00106070 <set_pdir_entry_by_va>:

// Registers the mapping from [vaddr] to physical page # [page_index] in the page directory.
void set_pdir_entry_by_va(unsigned int proc_index, unsigned int vaddr,
                          unsigned int page_index)
{
  106070:	53                   	push   %ebx
  106071:	e8 4a a3 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106076:	81 c3 7e 5f 00 00    	add    $0x5f7e,%ebx
  10607c:	83 ec 0c             	sub    $0xc,%esp
    // TODO
    unsigned int pde_index = (vaddr & VA_PDIR_MASK) >> 22;
    set_pdir_entry(proc_index, pde_index, page_index);
  10607f:	ff 74 24 1c          	push   0x1c(%esp)
    unsigned int pde_index = (vaddr & VA_PDIR_MASK) >> 22;
  106083:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  106087:	c1 e8 16             	shr    $0x16,%eax
    set_pdir_entry(proc_index, pde_index, page_index);
  10608a:	50                   	push   %eax
  10608b:	ff 74 24 1c          	push   0x1c(%esp)
  10608f:	e8 4c fa ff ff       	call   105ae0 <set_pdir_entry>
}
  106094:	83 c4 18             	add    $0x18,%esp
  106097:	5b                   	pop    %ebx
  106098:	c3                   	ret
  106099:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

001060a0 <idptbl_init>:

// Initializes the identity page table.
// The permission for the kernel memory should be PTE_P, PTE_W, and PTE_G,
// While the permission for the rest should be PTE_P and PTE_W.
void idptbl_init(unsigned int mbi_addr)
{
  1060a0:	56                   	push   %esi
    unsigned int addr;

    container_init(mbi_addr);

    // TODO
    for (addr = 0; addr < 0xFFFFF000; addr += PAGESIZE)
  1060a1:	31 f6                	xor    %esi,%esi
{
  1060a3:	53                   	push   %ebx
  1060a4:	e8 17 a3 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1060a9:	81 c3 4b 5f 00 00    	add    $0x5f4b,%ebx
  1060af:	83 ec 10             	sub    $0x10,%esp
    container_init(mbi_addr);
  1060b2:	ff 74 24 1c          	push   0x1c(%esp)
  1060b6:	e8 a5 f4 ff ff       	call   105560 <container_init>
  1060bb:	83 c4 10             	add    $0x10,%esp
  1060be:	66 90                	xchg   %ax,%ax
    {
        unsigned int pde_index = (addr & VA_PDIR_MASK) >> 22;
        unsigned int pte_index = (addr & VA_PTBL_MASK) >> 12;
  1060c0:	89 f0                	mov    %esi,%eax
        unsigned int pde_index = (addr & VA_PDIR_MASK) >> 22;
  1060c2:	89 f2                	mov    %esi,%edx
        if (addr < VM_USERLO || addr >= VM_USERHI)
  1060c4:	8d 8e 00 00 00 c0    	lea    -0x40000000(%esi),%ecx
        unsigned int pte_index = (addr & VA_PTBL_MASK) >> 12;
  1060ca:	c1 e8 0c             	shr    $0xc,%eax
        unsigned int pde_index = (addr & VA_PDIR_MASK) >> 22;
  1060cd:	c1 ea 16             	shr    $0x16,%edx
        unsigned int pte_index = (addr & VA_PTBL_MASK) >> 12;
  1060d0:	25 ff 03 00 00       	and    $0x3ff,%eax
        if (addr < VM_USERLO || addr >= VM_USERHI)
  1060d5:	81 f9 ff ff ff af    	cmp    $0xafffffff,%ecx
  1060db:	76 26                	jbe    106103 <idptbl_init+0x63>
        {
            // kernel pages
            set_ptbl_entry_identity(pde_index, pte_index, PT_PERM_PWG);
  1060dd:	83 ec 04             	sub    $0x4,%esp
    for (addr = 0; addr < 0xFFFFF000; addr += PAGESIZE)
  1060e0:	81 c6 00 10 00 00    	add    $0x1000,%esi
            set_ptbl_entry_identity(pde_index, pte_index, PT_PERM_PWG);
  1060e6:	68 03 01 00 00       	push   $0x103
  1060eb:	50                   	push   %eax
  1060ec:	52                   	push   %edx
  1060ed:	e8 fe fa ff ff       	call   105bf0 <set_ptbl_entry_identity>
    for (addr = 0; addr < 0xFFFFF000; addr += PAGESIZE)
  1060f2:	83 c4 10             	add    $0x10,%esp
  1060f5:	81 fe 00 f0 ff ff    	cmp    $0xfffff000,%esi
  1060fb:	75 c3                	jne    1060c0 <idptbl_init+0x20>
        {
            // not kernel pages
            set_ptbl_entry_identity(pde_index, pte_index, PT_PERM_PW);
        }
    }
}
  1060fd:	83 c4 04             	add    $0x4,%esp
  106100:	5b                   	pop    %ebx
  106101:	5e                   	pop    %esi
  106102:	c3                   	ret
            set_ptbl_entry_identity(pde_index, pte_index, PT_PERM_PW);
  106103:	51                   	push   %ecx
    for (addr = 0; addr < 0xFFFFF000; addr += PAGESIZE)
  106104:	81 c6 00 10 00 00    	add    $0x1000,%esi
            set_ptbl_entry_identity(pde_index, pte_index, PT_PERM_PW);
  10610a:	6a 03                	push   $0x3
  10610c:	50                   	push   %eax
  10610d:	52                   	push   %edx
  10610e:	e8 dd fa ff ff       	call   105bf0 <set_ptbl_entry_identity>
    for (addr = 0; addr < 0xFFFFF000; addr += PAGESIZE)
  106113:	83 c4 10             	add    $0x10,%esp
  106116:	eb a8                	jmp    1060c0 <idptbl_init+0x20>
  106118:	66 90                	xchg   %ax,%ax
  10611a:	66 90                	xchg   %ax,%ax
  10611c:	66 90                	xchg   %ax,%ax
  10611e:	66 90                	xchg   %ax,%ax

00106120 <MPTOp_test1>:
#include <lib/debug.h>
#include "export.h"

int MPTOp_test1()
{
  106120:	53                   	push   %ebx
  106121:	e8 9a a2 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106126:	81 c3 ce 5e 00 00    	add    $0x5ece,%ebx
  10612c:	83 ec 10             	sub    $0x10,%esp
    unsigned int vaddr = 4096 * 1024 * 300;
    if (get_ptbl_entry_by_va(10, vaddr) != 0) {
  10612f:	68 00 00 00 4b       	push   $0x4b000000
  106134:	6a 0a                	push   $0xa
  106136:	e8 d5 fd ff ff       	call   105f10 <get_ptbl_entry_by_va>
  10613b:	83 c4 10             	add    $0x10,%esp
  10613e:	85 c0                	test   %eax,%eax
  106140:	0f 85 0a 01 00 00    	jne    106250 <MPTOp_test1+0x130>
        dprintf("test 1.1 failed: (%d != 0)\n", get_ptbl_entry_by_va(10, vaddr));
        return 1;
    }
    if (get_pdir_entry_by_va(10, vaddr) != 0) {
  106146:	83 ec 08             	sub    $0x8,%esp
  106149:	68 00 00 00 4b       	push   $0x4b000000
  10614e:	6a 0a                	push   $0xa
  106150:	e8 2b fe ff ff       	call   105f80 <get_pdir_entry_by_va>
  106155:	83 c4 10             	add    $0x10,%esp
  106158:	85 c0                	test   %eax,%eax
  10615a:	0f 85 c0 00 00 00    	jne    106220 <MPTOp_test1+0x100>
        dprintf("test 1.2 failed: (%d != 0)\n", get_pdir_entry_by_va(10, vaddr));
        return 1;
    }
    set_pdir_entry_by_va(10, vaddr, 100);
  106160:	83 ec 04             	sub    $0x4,%esp
  106163:	6a 64                	push   $0x64
  106165:	68 00 00 00 4b       	push   $0x4b000000
  10616a:	6a 0a                	push   $0xa
  10616c:	e8 ff fe ff ff       	call   106070 <set_pdir_entry_by_va>
    set_ptbl_entry_by_va(10, vaddr, 100, 259);
  106171:	68 03 01 00 00       	push   $0x103
  106176:	6a 64                	push   $0x64
  106178:	68 00 00 00 4b       	push   $0x4b000000
  10617d:	6a 0a                	push   $0xa
  10617f:	e8 ac fe ff ff       	call   106030 <set_ptbl_entry_by_va>
    if (get_ptbl_entry_by_va(10, vaddr) == 0) {
  106184:	83 c4 18             	add    $0x18,%esp
  106187:	68 00 00 00 4b       	push   $0x4b000000
  10618c:	6a 0a                	push   $0xa
  10618e:	e8 7d fd ff ff       	call   105f10 <get_ptbl_entry_by_va>
  106193:	83 c4 10             	add    $0x10,%esp
  106196:	85 c0                	test   %eax,%eax
  106198:	0f 84 02 01 00 00    	je     1062a0 <MPTOp_test1+0x180>
        dprintf("test 1.3 failed: (%d == 0)\n", get_ptbl_entry_by_va(10, vaddr));
        return 1;
    }
    if (get_pdir_entry_by_va(10, vaddr) == 0) {
  10619e:	83 ec 08             	sub    $0x8,%esp
  1061a1:	68 00 00 00 4b       	push   $0x4b000000
  1061a6:	6a 0a                	push   $0xa
  1061a8:	e8 d3 fd ff ff       	call   105f80 <get_pdir_entry_by_va>
  1061ad:	83 c4 10             	add    $0x10,%esp
  1061b0:	85 c0                	test   %eax,%eax
  1061b2:	0f 84 c0 00 00 00    	je     106278 <MPTOp_test1+0x158>
        dprintf("test 1.4 failed: (%d == 0)\n", get_pdir_entry_by_va(10, vaddr));
        return 1;
    }
    rmv_ptbl_entry_by_va(10, vaddr);
  1061b8:	83 ec 08             	sub    $0x8,%esp
  1061bb:	68 00 00 00 4b       	push   $0x4b000000
  1061c0:	6a 0a                	push   $0xa
  1061c2:	e8 e9 fd ff ff       	call   105fb0 <rmv_ptbl_entry_by_va>
    rmv_pdir_entry_by_va(10, vaddr);
  1061c7:	58                   	pop    %eax
  1061c8:	5a                   	pop    %edx
  1061c9:	68 00 00 00 4b       	push   $0x4b000000
  1061ce:	6a 0a                	push   $0xa
  1061d0:	e8 2b fe ff ff       	call   106000 <rmv_pdir_entry_by_va>
    if (get_ptbl_entry_by_va(10, vaddr) != 0) {
  1061d5:	59                   	pop    %ecx
  1061d6:	58                   	pop    %eax
  1061d7:	68 00 00 00 4b       	push   $0x4b000000
  1061dc:	6a 0a                	push   $0xa
  1061de:	e8 2d fd ff ff       	call   105f10 <get_ptbl_entry_by_va>
  1061e3:	83 c4 10             	add    $0x10,%esp
  1061e6:	85 c0                	test   %eax,%eax
  1061e8:	0f 85 e2 00 00 00    	jne    1062d0 <MPTOp_test1+0x1b0>
        dprintf("test 1.5 failed: (%d != 0)\n", get_ptbl_entry_by_va(10, vaddr));
        return 1;
    }
    if (get_pdir_entry_by_va(10, vaddr) != 0) {
  1061ee:	83 ec 08             	sub    $0x8,%esp
  1061f1:	68 00 00 00 4b       	push   $0x4b000000
  1061f6:	6a 0a                	push   $0xa
  1061f8:	e8 83 fd ff ff       	call   105f80 <get_pdir_entry_by_va>
  1061fd:	83 c4 10             	add    $0x10,%esp
  106200:	85 c0                	test   %eax,%eax
  106202:	0f 85 f8 00 00 00    	jne    106300 <MPTOp_test1+0x1e0>
        dprintf("test 1.6 failed: (%d != 0)\n", get_pdir_entry_by_va(10, vaddr));
        return 1;
    }
    dprintf("test 1 passed.\n");
  106208:	83 ec 0c             	sub    $0xc,%esp
  10620b:	8d 83 93 b8 ff ff    	lea    -0x476d(%ebx),%eax
  106211:	50                   	push   %eax
  106212:	e8 55 cb ff ff       	call   102d6c <dprintf>
    return 0;
  106217:	83 c4 10             	add    $0x10,%esp
  10621a:	31 c0                	xor    %eax,%eax
  10621c:	eb 28                	jmp    106246 <MPTOp_test1+0x126>
  10621e:	66 90                	xchg   %ax,%ax
        dprintf("test 1.2 failed: (%d != 0)\n", get_pdir_entry_by_va(10, vaddr));
  106220:	83 ec 08             	sub    $0x8,%esp
  106223:	68 00 00 00 4b       	push   $0x4b000000
  106228:	6a 0a                	push   $0xa
  10622a:	e8 51 fd ff ff       	call   105f80 <get_pdir_entry_by_va>
  10622f:	5a                   	pop    %edx
  106230:	59                   	pop    %ecx
  106231:	50                   	push   %eax
  106232:	8d 83 27 ba ff ff    	lea    -0x45d9(%ebx),%eax
  106238:	50                   	push   %eax
  106239:	e8 2e cb ff ff       	call   102d6c <dprintf>
        return 1;
  10623e:	83 c4 10             	add    $0x10,%esp
        return 1;
  106241:	b8 01 00 00 00       	mov    $0x1,%eax
}
  106246:	83 c4 08             	add    $0x8,%esp
  106249:	5b                   	pop    %ebx
  10624a:	c3                   	ret
  10624b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.1 failed: (%d != 0)\n", get_ptbl_entry_by_va(10, vaddr));
  106250:	83 ec 08             	sub    $0x8,%esp
  106253:	68 00 00 00 4b       	push   $0x4b000000
  106258:	6a 0a                	push   $0xa
  10625a:	e8 b1 fc ff ff       	call   105f10 <get_ptbl_entry_by_va>
  10625f:	5a                   	pop    %edx
  106260:	59                   	pop    %ecx
  106261:	50                   	push   %eax
  106262:	8d 83 0b ba ff ff    	lea    -0x45f5(%ebx),%eax
  106268:	50                   	push   %eax
  106269:	e8 fe ca ff ff       	call   102d6c <dprintf>
        return 1;
  10626e:	83 c4 10             	add    $0x10,%esp
  106271:	eb ce                	jmp    106241 <MPTOp_test1+0x121>
  106273:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.4 failed: (%d == 0)\n", get_pdir_entry_by_va(10, vaddr));
  106278:	83 ec 08             	sub    $0x8,%esp
  10627b:	68 00 00 00 4b       	push   $0x4b000000
  106280:	6a 0a                	push   $0xa
  106282:	e8 f9 fc ff ff       	call   105f80 <get_pdir_entry_by_va>
  106287:	5a                   	pop    %edx
  106288:	59                   	pop    %ecx
  106289:	50                   	push   %eax
  10628a:	8d 83 5f ba ff ff    	lea    -0x45a1(%ebx),%eax
  106290:	50                   	push   %eax
  106291:	e8 d6 ca ff ff       	call   102d6c <dprintf>
        return 1;
  106296:	83 c4 10             	add    $0x10,%esp
  106299:	eb a6                	jmp    106241 <MPTOp_test1+0x121>
  10629b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.3 failed: (%d == 0)\n", get_ptbl_entry_by_va(10, vaddr));
  1062a0:	83 ec 08             	sub    $0x8,%esp
  1062a3:	68 00 00 00 4b       	push   $0x4b000000
  1062a8:	6a 0a                	push   $0xa
  1062aa:	e8 61 fc ff ff       	call   105f10 <get_ptbl_entry_by_va>
  1062af:	5a                   	pop    %edx
  1062b0:	59                   	pop    %ecx
  1062b1:	50                   	push   %eax
  1062b2:	8d 83 43 ba ff ff    	lea    -0x45bd(%ebx),%eax
  1062b8:	50                   	push   %eax
  1062b9:	e8 ae ca ff ff       	call   102d6c <dprintf>
        return 1;
  1062be:	83 c4 10             	add    $0x10,%esp
  1062c1:	e9 7b ff ff ff       	jmp    106241 <MPTOp_test1+0x121>
  1062c6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1062cd:	00 
  1062ce:	66 90                	xchg   %ax,%ax
        dprintf("test 1.5 failed: (%d != 0)\n", get_ptbl_entry_by_va(10, vaddr));
  1062d0:	83 ec 08             	sub    $0x8,%esp
  1062d3:	68 00 00 00 4b       	push   $0x4b000000
  1062d8:	6a 0a                	push   $0xa
  1062da:	e8 31 fc ff ff       	call   105f10 <get_ptbl_entry_by_va>
  1062df:	5a                   	pop    %edx
  1062e0:	59                   	pop    %ecx
  1062e1:	50                   	push   %eax
  1062e2:	8d 83 7b ba ff ff    	lea    -0x4585(%ebx),%eax
  1062e8:	50                   	push   %eax
  1062e9:	e8 7e ca ff ff       	call   102d6c <dprintf>
        return 1;
  1062ee:	83 c4 10             	add    $0x10,%esp
  1062f1:	e9 4b ff ff ff       	jmp    106241 <MPTOp_test1+0x121>
  1062f6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1062fd:	00 
  1062fe:	66 90                	xchg   %ax,%ax
        dprintf("test 1.6 failed: (%d != 0)\n", get_pdir_entry_by_va(10, vaddr));
  106300:	83 ec 08             	sub    $0x8,%esp
  106303:	68 00 00 00 4b       	push   $0x4b000000
  106308:	6a 0a                	push   $0xa
  10630a:	e8 71 fc ff ff       	call   105f80 <get_pdir_entry_by_va>
  10630f:	5a                   	pop    %edx
  106310:	59                   	pop    %ecx
  106311:	50                   	push   %eax
  106312:	8d 83 97 ba ff ff    	lea    -0x4569(%ebx),%eax
  106318:	50                   	push   %eax
  106319:	e8 4e ca ff ff       	call   102d6c <dprintf>
        return 1;
  10631e:	83 c4 10             	add    $0x10,%esp
  106321:	e9 1b ff ff ff       	jmp    106241 <MPTOp_test1+0x121>
  106326:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10632d:	00 
  10632e:	66 90                	xchg   %ax,%ax

00106330 <MPTOp_test_own>:
int MPTOp_test_own()
{
    // TODO (optional)
    // dprintf("own test passed.\n");
    return 0;
}
  106330:	31 c0                	xor    %eax,%eax
  106332:	c3                   	ret
  106333:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10633a:	00 
  10633b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00106340 <test_MPTOp>:

int test_MPTOp()
{
    return MPTOp_test1() + MPTOp_test_own();
  106340:	e9 db fd ff ff       	jmp    106120 <MPTOp_test1>
  106345:	66 90                	xchg   %ax,%ax
  106347:	66 90                	xchg   %ax,%ax
  106349:	66 90                	xchg   %ax,%ax
  10634b:	66 90                	xchg   %ax,%ax
  10634d:	66 90                	xchg   %ax,%ax
  10634f:	90                   	nop

00106350 <pdir_init>:
 * For each process from id 0 to NUM_IDS - 1,
 * set up the page directory entries so that the kernel portion of the map is
 * the identity map, and the rest of the page directories are unmapped.
 */
void pdir_init(unsigned int mbi_addr)
{
  106350:	57                   	push   %edi

    idptbl_init(mbi_addr);

    // TODO
    // set other processes
    for (i = 0; i < NUM_IDS; i++)
  106351:	31 ff                	xor    %edi,%edi
{
  106353:	56                   	push   %esi
  106354:	53                   	push   %ebx
  106355:	e8 66 a0 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  10635a:	81 c3 9a 5c 00 00    	add    $0x5c9a,%ebx
    idptbl_init(mbi_addr);
  106360:	83 ec 0c             	sub    $0xc,%esp
  106363:	ff 74 24 1c          	push   0x1c(%esp)
  106367:	e8 34 fd ff ff       	call   1060a0 <idptbl_init>
  10636c:	83 c4 10             	add    $0x10,%esp
  10636f:	90                   	nop
    {
        // kernel address, set to identity
        for (j = 0; j < (VM_USERLO_PI >> 10); j++)
  106370:	31 f6                	xor    %esi,%esi
  106372:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        {
            set_pdir_entry_identity(i, j);
  106378:	83 ec 08             	sub    $0x8,%esp
  10637b:	56                   	push   %esi
        for (j = 0; j < (VM_USERLO_PI >> 10); j++)
  10637c:	83 c6 01             	add    $0x1,%esi
            set_pdir_entry_identity(i, j);
  10637f:	57                   	push   %edi
  106380:	e8 8b f7 ff ff       	call   105b10 <set_pdir_entry_identity>
        for (j = 0; j < (VM_USERLO_PI >> 10); j++)
  106385:	83 c4 10             	add    $0x10,%esp
  106388:	81 fe 00 01 00 00    	cmp    $0x100,%esi
  10638e:	75 e8                	jne    106378 <pdir_init+0x28>
        }
        // normal address, set to unmap
        for (j = VM_USERLO_PI >> 10; j < VM_USERHI_PI >> 10; j++)
        {
            rmv_pdir_entry(i, j);
  106390:	83 ec 08             	sub    $0x8,%esp
  106393:	56                   	push   %esi
        for (j = VM_USERLO_PI >> 10; j < VM_USERHI_PI >> 10; j++)
  106394:	83 c6 01             	add    $0x1,%esi
            rmv_pdir_entry(i, j);
  106397:	57                   	push   %edi
  106398:	e8 b3 f7 ff ff       	call   105b50 <rmv_pdir_entry>
        for (j = VM_USERLO_PI >> 10; j < VM_USERHI_PI >> 10; j++)
  10639d:	83 c4 10             	add    $0x10,%esp
  1063a0:	81 fe c0 03 00 00    	cmp    $0x3c0,%esi
  1063a6:	75 e8                	jne    106390 <pdir_init+0x40>
  1063a8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1063af:	00 
        }
        // kernel address, set to identity
        for (j = VM_USERHI_PI >> 10; j < 1024; j++)
        {
            set_pdir_entry_identity(i, j);
  1063b0:	83 ec 08             	sub    $0x8,%esp
  1063b3:	56                   	push   %esi
        for (j = VM_USERHI_PI >> 10; j < 1024; j++)
  1063b4:	83 c6 01             	add    $0x1,%esi
            set_pdir_entry_identity(i, j);
  1063b7:	57                   	push   %edi
  1063b8:	e8 53 f7 ff ff       	call   105b10 <set_pdir_entry_identity>
        for (j = VM_USERHI_PI >> 10; j < 1024; j++)
  1063bd:	83 c4 10             	add    $0x10,%esp
  1063c0:	81 fe 00 04 00 00    	cmp    $0x400,%esi
  1063c6:	75 e8                	jne    1063b0 <pdir_init+0x60>
    for (i = 0; i < NUM_IDS; i++)
  1063c8:	83 c7 01             	add    $0x1,%edi
  1063cb:	83 ff 40             	cmp    $0x40,%edi
  1063ce:	75 a0                	jne    106370 <pdir_init+0x20>
        }
    }
}
  1063d0:	5b                   	pop    %ebx
  1063d1:	5e                   	pop    %esi
  1063d2:	5f                   	pop    %edi
  1063d3:	c3                   	ret
  1063d4:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1063db:	00 
  1063dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

001063e0 <alloc_ptbl>:
 * and clears (set to 0) all page table entries for this newly mapped page table.
 * It returns the page index of the newly allocated physical page.
 * In the case when there's no physical page available, it returns 0.
 */
unsigned int alloc_ptbl(unsigned int proc_index, unsigned int vaddr)
{
  1063e0:	57                   	push   %edi
  1063e1:	56                   	push   %esi
  1063e2:	53                   	push   %ebx
  1063e3:	8b 7c 24 10          	mov    0x10(%esp),%edi
  1063e7:	e8 d4 9f ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1063ec:	81 c3 08 5c 00 00    	add    $0x5c08,%ebx
    // TODO
    unsigned int addr;
    unsigned int page_index;
    page_index = container_alloc(proc_index);
  1063f2:	83 ec 0c             	sub    $0xc,%esp
  1063f5:	57                   	push   %edi
  1063f6:	e8 65 f3 ff ff       	call   105760 <container_alloc>
    if (page_index == 0)
  1063fb:	83 c4 10             	add    $0x10,%esp
    page_index = container_alloc(proc_index);
  1063fe:	89 c6                	mov    %eax,%esi
    if (page_index == 0)
  106400:	85 c0                	test   %eax,%eax
  106402:	75 0c                	jne    106410 <alloc_ptbl+0x30>
    for (addr = page_index << 12; addr < (page_index + 1) << 12; addr += 4)
    {
        *(unsigned int *)addr &= 0x00000000;
    }
    return page_index;
}
  106404:	89 f0                	mov    %esi,%eax
  106406:	5b                   	pop    %ebx
  106407:	5e                   	pop    %esi
  106408:	5f                   	pop    %edi
  106409:	c3                   	ret
  10640a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    set_pdir_entry_by_va(proc_index, vaddr, page_index);
  106410:	83 ec 04             	sub    $0x4,%esp
  106413:	50                   	push   %eax
  106414:	ff 74 24 1c          	push   0x1c(%esp)
  106418:	57                   	push   %edi
  106419:	e8 52 fc ff ff       	call   106070 <set_pdir_entry_by_va>
    for (addr = page_index << 12; addr < (page_index + 1) << 12; addr += 4)
  10641e:	89 f0                	mov    %esi,%eax
  106420:	8d 56 01             	lea    0x1(%esi),%edx
  106423:	83 c4 10             	add    $0x10,%esp
  106426:	c1 e0 0c             	shl    $0xc,%eax
  106429:	c1 e2 0c             	shl    $0xc,%edx
  10642c:	39 d0                	cmp    %edx,%eax
  10642e:	73 d4                	jae    106404 <alloc_ptbl+0x24>
        *(unsigned int *)addr &= 0x00000000;
  106430:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
    for (addr = page_index << 12; addr < (page_index + 1) << 12; addr += 4)
  106436:	83 c0 04             	add    $0x4,%eax
  106439:	39 d0                	cmp    %edx,%eax
  10643b:	73 c7                	jae    106404 <alloc_ptbl+0x24>
  10643d:	b9 01 00 00 00       	mov    $0x1,%ecx
  106442:	85 c9                	test   %ecx,%ecx
  106444:	74 12                	je     106458 <alloc_ptbl+0x78>
        *(unsigned int *)addr &= 0x00000000;
  106446:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
    for (addr = page_index << 12; addr < (page_index + 1) << 12; addr += 4)
  10644c:	83 c0 04             	add    $0x4,%eax
  10644f:	39 d0                	cmp    %edx,%eax
  106451:	73 b1                	jae    106404 <alloc_ptbl+0x24>
  106453:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        *(unsigned int *)addr &= 0x00000000;
  106458:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
    for (addr = page_index << 12; addr < (page_index + 1) << 12; addr += 4)
  10645e:	83 c0 08             	add    $0x8,%eax
        *(unsigned int *)addr &= 0x00000000;
  106461:	c7 40 fc 00 00 00 00 	movl   $0x0,-0x4(%eax)
    for (addr = page_index << 12; addr < (page_index + 1) << 12; addr += 4)
  106468:	39 d0                	cmp    %edx,%eax
  10646a:	72 ec                	jb     106458 <alloc_ptbl+0x78>
  10646c:	eb 96                	jmp    106404 <alloc_ptbl+0x24>
  10646e:	66 90                	xchg   %ax,%ax

00106470 <free_ptbl>:

// Reverse operation of alloc_ptbl.
// Removes corresponding the page directory entry,
// and frees the page for the page table entries (with container_free).
void free_ptbl(unsigned int proc_index, unsigned int vaddr)
{
  106470:	55                   	push   %ebp
  106471:	57                   	push   %edi
  106472:	56                   	push   %esi
  106473:	53                   	push   %ebx
  106474:	e8 47 9f ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106479:	81 c3 7b 5b 00 00    	add    $0x5b7b,%ebx
  10647f:	83 ec 14             	sub    $0x14,%esp
  106482:	8b 7c 24 28          	mov    0x28(%esp),%edi
  106486:	8b 6c 24 2c          	mov    0x2c(%esp),%ebp
    // TODO
    unsigned int pdir_entry;
    unsigned int page_index;
    pdir_entry = get_pdir_entry_by_va(proc_index, vaddr);
  10648a:	55                   	push   %ebp
  10648b:	57                   	push   %edi
  10648c:	e8 ef fa ff ff       	call   105f80 <get_pdir_entry_by_va>
  106491:	89 c6                	mov    %eax,%esi
    page_index = pdir_entry >> 12;
    // remove page directory entry
    rmv_pdir_entry_by_va(proc_index, vaddr);
  106493:	58                   	pop    %eax
  106494:	5a                   	pop    %edx
  106495:	55                   	push   %ebp
  106496:	57                   	push   %edi
    page_index = pdir_entry >> 12;
  106497:	c1 ee 0c             	shr    $0xc,%esi
    rmv_pdir_entry_by_va(proc_index, vaddr);
  10649a:	e8 61 fb ff ff       	call   106000 <rmv_pdir_entry_by_va>

    // free the page for the page table entities
    container_free(proc_index, page_index);
  10649f:	59                   	pop    %ecx
  1064a0:	5d                   	pop    %ebp
  1064a1:	56                   	push   %esi
  1064a2:	57                   	push   %edi
  1064a3:	e8 e8 f2 ff ff       	call   105790 <container_free>
  1064a8:	83 c4 1c             	add    $0x1c,%esp
  1064ab:	5b                   	pop    %ebx
  1064ac:	5e                   	pop    %esi
  1064ad:	5f                   	pop    %edi
  1064ae:	5d                   	pop    %ebp
  1064af:	c3                   	ret

001064b0 <MPTComm_test1>:
#include <pmm/MContainer/export.h>
#include <vmm/MPTOp/export.h>
#include "export.h"

int MPTComm_test1()
{
  1064b0:	55                   	push   %ebp
  1064b1:	57                   	push   %edi
  1064b2:	bf 03 01 00 00       	mov    $0x103,%edi
  1064b7:	56                   	push   %esi
    unsigned int i;
    for (i = 0; i < 1024; i++) {
  1064b8:	31 f6                	xor    %esi,%esi
{
  1064ba:	53                   	push   %ebx
  1064bb:	e8 00 9f ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1064c0:	81 c3 34 5b 00 00    	add    $0x5b34,%ebx
  1064c6:	83 ec 0c             	sub    $0xc,%esp
  1064c9:	eb 0e                	jmp    1064d9 <MPTComm_test1+0x29>
  1064cb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    for (i = 0; i < 1024; i++) {
  1064d0:	83 c6 01             	add    $0x1,%esi
  1064d3:	81 c7 00 00 40 00    	add    $0x400000,%edi
        if (i < 256 || i >= 960) {
  1064d9:	8d 86 00 ff ff ff    	lea    -0x100(%esi),%eax
  1064df:	3d bf 02 00 00       	cmp    $0x2bf,%eax
  1064e4:	76 ea                	jbe    1064d0 <MPTComm_test1+0x20>
            if (get_ptbl_entry_by_va(10, i * 4096 * 1024) !=
  1064e6:	89 f5                	mov    %esi,%ebp
  1064e8:	52                   	push   %edx
  1064e9:	c1 e5 16             	shl    $0x16,%ebp
  1064ec:	52                   	push   %edx
  1064ed:	55                   	push   %ebp
  1064ee:	6a 0a                	push   $0xa
  1064f0:	e8 1b fa ff ff       	call   105f10 <get_ptbl_entry_by_va>
  1064f5:	83 c4 10             	add    $0x10,%esp
  1064f8:	39 f8                	cmp    %edi,%eax
  1064fa:	75 2d                	jne    106529 <MPTComm_test1+0x79>
    for (i = 0; i < 1024; i++) {
  1064fc:	83 c6 01             	add    $0x1,%esi
  1064ff:	81 c7 00 00 40 00    	add    $0x400000,%edi
  106505:	81 fe 00 04 00 00    	cmp    $0x400,%esi
  10650b:	75 cc                	jne    1064d9 <MPTComm_test1+0x29>
                        i * 4096 * 1024 + 259);
                return 1;
            }
        }
    }
    dprintf("test 1 passed.\n");
  10650d:	83 ec 0c             	sub    $0xc,%esp
  106510:	8d 83 93 b8 ff ff    	lea    -0x476d(%ebx),%eax
  106516:	50                   	push   %eax
  106517:	e8 50 c8 ff ff       	call   102d6c <dprintf>
    return 0;
  10651c:	83 c4 10             	add    $0x10,%esp
  10651f:	31 c0                	xor    %eax,%eax
}
  106521:	83 c4 0c             	add    $0xc,%esp
  106524:	5b                   	pop    %ebx
  106525:	5e                   	pop    %esi
  106526:	5f                   	pop    %edi
  106527:	5d                   	pop    %ebp
  106528:	c3                   	ret
                dprintf("test 1.1 failed (i = %d): (%d != %d)\n",
  106529:	50                   	push   %eax
  10652a:	50                   	push   %eax
  10652b:	55                   	push   %ebp
  10652c:	6a 0a                	push   $0xa
  10652e:	e8 dd f9 ff ff       	call   105f10 <get_ptbl_entry_by_va>
  106533:	57                   	push   %edi
  106534:	50                   	push   %eax
  106535:	8d 83 64 bb ff ff    	lea    -0x449c(%ebx),%eax
  10653b:	56                   	push   %esi
  10653c:	50                   	push   %eax
  10653d:	e8 2a c8 ff ff       	call   102d6c <dprintf>
                return 1;
  106542:	83 c4 20             	add    $0x20,%esp
  106545:	b8 01 00 00 00       	mov    $0x1,%eax
  10654a:	eb d5                	jmp    106521 <MPTComm_test1+0x71>
  10654c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00106550 <MPTComm_test2>:

int MPTComm_test2()
{
  106550:	53                   	push   %ebx
  106551:	e8 6a 9e ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106556:	81 c3 9e 5a 00 00    	add    $0x5a9e,%ebx
  10655c:	83 ec 10             	sub    $0x10,%esp
    unsigned int vaddr = 300 * 4096 * 1024;
    container_split(0, 100);
  10655f:	6a 64                	push   $0x64
  106561:	6a 00                	push   $0x0
  106563:	e8 78 f1 ff ff       	call   1056e0 <container_split>
    alloc_ptbl(1, vaddr);
  106568:	59                   	pop    %ecx
  106569:	58                   	pop    %eax
  10656a:	68 00 00 00 4b       	push   $0x4b000000
  10656f:	6a 01                	push   $0x1
  106571:	e8 6a fe ff ff       	call   1063e0 <alloc_ptbl>
    if (get_pdir_entry_by_va(1, vaddr) == 0) {
  106576:	58                   	pop    %eax
  106577:	5a                   	pop    %edx
  106578:	68 00 00 00 4b       	push   $0x4b000000
  10657d:	6a 01                	push   $0x1
  10657f:	e8 fc f9 ff ff       	call   105f80 <get_pdir_entry_by_va>
  106584:	83 c4 10             	add    $0x10,%esp
  106587:	85 c0                	test   %eax,%eax
  106589:	0f 84 89 00 00 00    	je     106618 <MPTComm_test2+0xc8>
        dprintf("test 2.1 failed: (%d == 0)\n", get_pdir_entry_by_va(1, vaddr));
        return 1;
    }
    if (get_ptbl_entry_by_va(1, vaddr) != 0) {
  10658f:	83 ec 08             	sub    $0x8,%esp
  106592:	68 00 00 00 4b       	push   $0x4b000000
  106597:	6a 01                	push   $0x1
  106599:	e8 72 f9 ff ff       	call   105f10 <get_ptbl_entry_by_va>
  10659e:	83 c4 10             	add    $0x10,%esp
  1065a1:	85 c0                	test   %eax,%eax
  1065a3:	75 43                	jne    1065e8 <MPTComm_test2+0x98>
        dprintf("test 2.2 failed: (%d != 0)\n", get_ptbl_entry_by_va(1, vaddr));
        return 1;
    }
    free_ptbl(1, vaddr);
  1065a5:	83 ec 08             	sub    $0x8,%esp
  1065a8:	68 00 00 00 4b       	push   $0x4b000000
  1065ad:	6a 01                	push   $0x1
  1065af:	e8 bc fe ff ff       	call   106470 <free_ptbl>
    if (get_pdir_entry_by_va(1, vaddr) != 0) {
  1065b4:	58                   	pop    %eax
  1065b5:	5a                   	pop    %edx
  1065b6:	68 00 00 00 4b       	push   $0x4b000000
  1065bb:	6a 01                	push   $0x1
  1065bd:	e8 be f9 ff ff       	call   105f80 <get_pdir_entry_by_va>
  1065c2:	83 c4 10             	add    $0x10,%esp
  1065c5:	85 c0                	test   %eax,%eax
  1065c7:	75 77                	jne    106640 <MPTComm_test2+0xf0>
        dprintf("test 2.3 failed: (%d != 0)\n", get_pdir_entry_by_va(1, vaddr));
        return 1;
    }
    dprintf("test 2 passed.\n");
  1065c9:	83 ec 0c             	sub    $0xc,%esp
  1065cc:	8d 83 a3 b8 ff ff    	lea    -0x475d(%ebx),%eax
  1065d2:	50                   	push   %eax
  1065d3:	e8 94 c7 ff ff       	call   102d6c <dprintf>
    return 0;
  1065d8:	83 c4 10             	add    $0x10,%esp
  1065db:	31 c0                	xor    %eax,%eax
}
  1065dd:	83 c4 08             	add    $0x8,%esp
  1065e0:	5b                   	pop    %ebx
  1065e1:	c3                   	ret
  1065e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        dprintf("test 2.2 failed: (%d != 0)\n", get_ptbl_entry_by_va(1, vaddr));
  1065e8:	83 ec 08             	sub    $0x8,%esp
  1065eb:	68 00 00 00 4b       	push   $0x4b000000
  1065f0:	6a 01                	push   $0x1
  1065f2:	e8 19 f9 ff ff       	call   105f10 <get_ptbl_entry_by_va>
  1065f7:	59                   	pop    %ecx
  1065f8:	5a                   	pop    %edx
  1065f9:	50                   	push   %eax
  1065fa:	8d 83 ef b9 ff ff    	lea    -0x4611(%ebx),%eax
  106600:	50                   	push   %eax
  106601:	e8 66 c7 ff ff       	call   102d6c <dprintf>
        return 1;
  106606:	83 c4 10             	add    $0x10,%esp
}
  106609:	83 c4 08             	add    $0x8,%esp
        return 1;
  10660c:	b8 01 00 00 00       	mov    $0x1,%eax
}
  106611:	5b                   	pop    %ebx
  106612:	c3                   	ret
  106613:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 2.1 failed: (%d == 0)\n", get_pdir_entry_by_va(1, vaddr));
  106618:	83 ec 08             	sub    $0x8,%esp
  10661b:	68 00 00 00 4b       	push   $0x4b000000
  106620:	6a 01                	push   $0x1
  106622:	e8 59 f9 ff ff       	call   105f80 <get_pdir_entry_by_va>
  106627:	59                   	pop    %ecx
  106628:	5a                   	pop    %edx
  106629:	50                   	push   %eax
  10662a:	8d 83 b3 ba ff ff    	lea    -0x454d(%ebx),%eax
  106630:	50                   	push   %eax
  106631:	e8 36 c7 ff ff       	call   102d6c <dprintf>
        return 1;
  106636:	83 c4 10             	add    $0x10,%esp
  106639:	eb ce                	jmp    106609 <MPTComm_test2+0xb9>
  10663b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 2.3 failed: (%d != 0)\n", get_pdir_entry_by_va(1, vaddr));
  106640:	83 ec 08             	sub    $0x8,%esp
  106643:	68 00 00 00 4b       	push   $0x4b000000
  106648:	6a 01                	push   $0x1
  10664a:	e8 31 f9 ff ff       	call   105f80 <get_pdir_entry_by_va>
  10664f:	5a                   	pop    %edx
  106650:	59                   	pop    %ecx
  106651:	50                   	push   %eax
  106652:	8d 83 cf ba ff ff    	lea    -0x4531(%ebx),%eax
  106658:	50                   	push   %eax
  106659:	e8 0e c7 ff ff       	call   102d6c <dprintf>
        return 1;
  10665e:	83 c4 10             	add    $0x10,%esp
  106661:	eb a6                	jmp    106609 <MPTComm_test2+0xb9>
  106663:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10666a:	00 
  10666b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00106670 <MPTComm_test_own>:
int MPTComm_test_own()
{
    // TODO (optional)
    // dprintf("own test passed.\n");
    return 0;
}
  106670:	31 c0                	xor    %eax,%eax
  106672:	c3                   	ret
  106673:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10667a:	00 
  10667b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00106680 <test_MPTComm>:

int test_MPTComm()
{
  106680:	53                   	push   %ebx
  106681:	83 ec 08             	sub    $0x8,%esp
    return MPTComm_test1() + MPTComm_test2() + MPTComm_test_own();
  106684:	e8 27 fe ff ff       	call   1064b0 <MPTComm_test1>
  106689:	89 c3                	mov    %eax,%ebx
  10668b:	e8 c0 fe ff ff       	call   106550 <MPTComm_test2>
}
  106690:	83 c4 08             	add    $0x8,%esp
    return MPTComm_test1() + MPTComm_test2() + MPTComm_test_own();
  106693:	01 d8                	add    %ebx,%eax
}
  106695:	5b                   	pop    %ebx
  106696:	c3                   	ret
  106697:	66 90                	xchg   %ax,%ax
  106699:	66 90                	xchg   %ax,%ax
  10669b:	66 90                	xchg   %ax,%ax
  10669d:	66 90                	xchg   %ax,%ax
  10669f:	90                   	nop

001066a0 <pdir_init_kern>:
/**
 * Sets the entire page map for process 0 as the identity map.
 * Note that part of the task is already completed by pdir_init.
 */
void pdir_init_kern(unsigned int mbi_addr)
{
  1066a0:	56                   	push   %esi
    // TODO: Define your local variables here.
    unsigned int pde_index = 0;
  1066a1:	31 f6                	xor    %esi,%esi
{
  1066a3:	53                   	push   %ebx
  1066a4:	e8 17 9d ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1066a9:	81 c3 4b 59 00 00    	add    $0x594b,%ebx
  1066af:	83 ec 10             	sub    $0x10,%esp

    pdir_init(mbi_addr);
  1066b2:	ff 74 24 1c          	push   0x1c(%esp)
  1066b6:	e8 95 fc ff ff       	call   106350 <pdir_init>
  1066bb:	83 c4 10             	add    $0x10,%esp
  1066be:	66 90                	xchg   %ax,%ax

    // TODO

    for (; pde_index < 1024; pde_index++)
    {
        set_pdir_entry_identity(0, pde_index);
  1066c0:	83 ec 08             	sub    $0x8,%esp
  1066c3:	56                   	push   %esi
    for (; pde_index < 1024; pde_index++)
  1066c4:	83 c6 01             	add    $0x1,%esi
        set_pdir_entry_identity(0, pde_index);
  1066c7:	6a 00                	push   $0x0
  1066c9:	e8 42 f4 ff ff       	call   105b10 <set_pdir_entry_identity>
    for (; pde_index < 1024; pde_index++)
  1066ce:	83 c4 10             	add    $0x10,%esp
  1066d1:	81 fe 00 04 00 00    	cmp    $0x400,%esi
  1066d7:	75 e7                	jne    1066c0 <pdir_init_kern+0x20>
    }
}
  1066d9:	83 c4 04             	add    $0x4,%esp
  1066dc:	5b                   	pop    %ebx
  1066dd:	5e                   	pop    %esi
  1066de:	c3                   	ret
  1066df:	90                   	nop

001066e0 <map_page>:
 * otherwise, it returns the physical page index registered in the page directory,
 * (the return value of get_pdir_entry_by_va or alloc_ptbl).
 */
unsigned int map_page(unsigned int proc_index, unsigned int vaddr,
                      unsigned int page_index, unsigned int perm)
{
  1066e0:	57                   	push   %edi
  1066e1:	56                   	push   %esi
  1066e2:	53                   	push   %ebx
  1066e3:	8b 74 24 10          	mov    0x10(%esp),%esi
  1066e7:	e8 d4 9c ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1066ec:	81 c3 08 59 00 00    	add    $0x5908,%ebx
  1066f2:	8b 7c 24 14          	mov    0x14(%esp),%edi
    // TODO
    unsigned int pde = get_pdir_entry_by_va(proc_index, vaddr);
  1066f6:	83 ec 08             	sub    $0x8,%esp
  1066f9:	57                   	push   %edi
  1066fa:	56                   	push   %esi
  1066fb:	e8 80 f8 ff ff       	call   105f80 <get_pdir_entry_by_va>
    unsigned int ptbl;
    if ((pde & PTE_P) == 0)
  106700:	83 c4 10             	add    $0x10,%esp
  106703:	a8 01                	test   $0x1,%al
  106705:	75 11                	jne    106718 <map_page+0x38>
    {
        ptbl = alloc_ptbl(proc_index, vaddr);
  106707:	83 ec 08             	sub    $0x8,%esp
  10670a:	57                   	push   %edi
  10670b:	56                   	push   %esi
  10670c:	e8 cf fc ff ff       	call   1063e0 <alloc_ptbl>
        if (ptbl == 0)
  106711:	83 c4 10             	add    $0x10,%esp
  106714:	85 c0                	test   %eax,%eax
  106716:	74 28                	je     106740 <map_page+0x60>
        {
            // no physical page available
            return MagicNumber;
        }
    }
    set_ptbl_entry_by_va(proc_index, vaddr, page_index, perm);
  106718:	ff 74 24 1c          	push   0x1c(%esp)
  10671c:	ff 74 24 1c          	push   0x1c(%esp)
  106720:	57                   	push   %edi
  106721:	56                   	push   %esi
  106722:	e8 09 f9 ff ff       	call   106030 <set_ptbl_entry_by_va>
    pde = get_pdir_entry_by_va(proc_index, vaddr);
  106727:	58                   	pop    %eax
  106728:	5a                   	pop    %edx
  106729:	57                   	push   %edi
  10672a:	56                   	push   %esi
  10672b:	e8 50 f8 ff ff       	call   105f80 <get_pdir_entry_by_va>
    return pde >> 12;
  106730:	83 c4 10             	add    $0x10,%esp
}
  106733:	5b                   	pop    %ebx
    return pde >> 12;
  106734:	c1 e8 0c             	shr    $0xc,%eax
}
  106737:	5e                   	pop    %esi
  106738:	5f                   	pop    %edi
  106739:	c3                   	ret
  10673a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  106740:	5b                   	pop    %ebx
            return MagicNumber;
  106741:	b8 01 00 10 00       	mov    $0x100001,%eax
}
  106746:	5e                   	pop    %esi
  106747:	5f                   	pop    %edi
  106748:	c3                   	ret
  106749:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00106750 <unmap_page>:
 * Nothing should be done if the mapping no longer exists.
 * You do not need to unmap the page table from the page directory.
 * It should return the corresponding page table entry.
 */
unsigned int unmap_page(unsigned int proc_index, unsigned int vaddr)
{
  106750:	57                   	push   %edi
  106751:	56                   	push   %esi
  106752:	53                   	push   %ebx
  106753:	8b 74 24 10          	mov    0x10(%esp),%esi
  106757:	e8 64 9c ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  10675c:	81 c3 98 58 00 00    	add    $0x5898,%ebx
  106762:	8b 7c 24 14          	mov    0x14(%esp),%edi
    // TODO
    unsigned int pte = get_ptbl_entry_by_va(proc_index, vaddr);
  106766:	83 ec 08             	sub    $0x8,%esp
  106769:	57                   	push   %edi
  10676a:	56                   	push   %esi
  10676b:	e8 a0 f7 ff ff       	call   105f10 <get_ptbl_entry_by_va>
    if ((pte & PTE_P) == 0)
  106770:	83 c4 10             	add    $0x10,%esp
  106773:	a8 01                	test   $0x1,%al
  106775:	74 16                	je     10678d <unmap_page+0x3d>
    {
        return pte;
    }
    rmv_ptbl_entry_by_va(proc_index, vaddr);
  106777:	83 ec 08             	sub    $0x8,%esp
  10677a:	57                   	push   %edi
  10677b:	56                   	push   %esi
  10677c:	e8 2f f8 ff ff       	call   105fb0 <rmv_ptbl_entry_by_va>
    pte = get_ptbl_entry_by_va(proc_index, vaddr);
  106781:	58                   	pop    %eax
  106782:	5a                   	pop    %edx
  106783:	57                   	push   %edi
  106784:	56                   	push   %esi
  106785:	e8 86 f7 ff ff       	call   105f10 <get_ptbl_entry_by_va>
    return pte;
  10678a:	83 c4 10             	add    $0x10,%esp
}
  10678d:	5b                   	pop    %ebx
  10678e:	5e                   	pop    %esi
  10678f:	5f                   	pop    %edi
  106790:	c3                   	ret
  106791:	66 90                	xchg   %ax,%ax
  106793:	66 90                	xchg   %ax,%ax
  106795:	66 90                	xchg   %ax,%ax
  106797:	66 90                	xchg   %ax,%ax
  106799:	66 90                	xchg   %ax,%ax
  10679b:	66 90                	xchg   %ax,%ax
  10679d:	66 90                	xchg   %ax,%ax
  10679f:	90                   	nop

001067a0 <MPTKern_test1>:
#include <pmm/MContainer/export.h>
#include <vmm/MPTOp/export.h>
#include "export.h"

int MPTKern_test1()
{
  1067a0:	53                   	push   %ebx
  1067a1:	e8 1a 9c ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1067a6:	81 c3 4e 58 00 00    	add    $0x584e,%ebx
  1067ac:	83 ec 10             	sub    $0x10,%esp
    unsigned int vaddr = 4096 * 1024 * 300;
    container_split(0, 100);
  1067af:	6a 64                	push   $0x64
  1067b1:	6a 00                	push   $0x0
  1067b3:	e8 28 ef ff ff       	call   1056e0 <container_split>
    if (get_ptbl_entry_by_va(1, vaddr) != 0) {
  1067b8:	58                   	pop    %eax
  1067b9:	5a                   	pop    %edx
  1067ba:	68 00 00 00 4b       	push   $0x4b000000
  1067bf:	6a 01                	push   $0x1
  1067c1:	e8 4a f7 ff ff       	call   105f10 <get_ptbl_entry_by_va>
  1067c6:	83 c4 10             	add    $0x10,%esp
  1067c9:	85 c0                	test   %eax,%eax
  1067cb:	0f 85 cf 00 00 00    	jne    1068a0 <MPTKern_test1+0x100>
        dprintf("test 1.1 failed: (%d != 0)\n", get_ptbl_entry_by_va(1, vaddr));
        return 1;
    }
    if (get_pdir_entry_by_va(1, vaddr) != 0) {
  1067d1:	83 ec 08             	sub    $0x8,%esp
  1067d4:	68 00 00 00 4b       	push   $0x4b000000
  1067d9:	6a 01                	push   $0x1
  1067db:	e8 a0 f7 ff ff       	call   105f80 <get_pdir_entry_by_va>
  1067e0:	83 c4 10             	add    $0x10,%esp
  1067e3:	85 c0                	test   %eax,%eax
  1067e5:	0f 85 85 00 00 00    	jne    106870 <MPTKern_test1+0xd0>
        dprintf("test 1.2 failed: (%d != 0)\n", get_pdir_entry_by_va(1, vaddr));
        return 1;
    }
    map_page(1, vaddr, 100, 7);
  1067eb:	6a 07                	push   $0x7
  1067ed:	6a 64                	push   $0x64
  1067ef:	68 00 00 00 4b       	push   $0x4b000000
  1067f4:	6a 01                	push   $0x1
  1067f6:	e8 e5 fe ff ff       	call   1066e0 <map_page>
    if (get_ptbl_entry_by_va(1, vaddr) == 0) {
  1067fb:	59                   	pop    %ecx
  1067fc:	58                   	pop    %eax
  1067fd:	68 00 00 00 4b       	push   $0x4b000000
  106802:	6a 01                	push   $0x1
  106804:	e8 07 f7 ff ff       	call   105f10 <get_ptbl_entry_by_va>
  106809:	83 c4 10             	add    $0x10,%esp
  10680c:	85 c0                	test   %eax,%eax
  10680e:	0f 84 dc 00 00 00    	je     1068f0 <MPTKern_test1+0x150>
        dprintf("test 1.3 failed: (%d == 0)\n", get_ptbl_entry_by_va(1, vaddr));
        return 1;
    }
    if (get_pdir_entry_by_va(1, vaddr) == 0) {
  106814:	83 ec 08             	sub    $0x8,%esp
  106817:	68 00 00 00 4b       	push   $0x4b000000
  10681c:	6a 01                	push   $0x1
  10681e:	e8 5d f7 ff ff       	call   105f80 <get_pdir_entry_by_va>
  106823:	83 c4 10             	add    $0x10,%esp
  106826:	85 c0                	test   %eax,%eax
  106828:	0f 84 9a 00 00 00    	je     1068c8 <MPTKern_test1+0x128>
        dprintf("test 1.4 failed: (%d == 0)\n", get_pdir_entry_by_va(1, vaddr));
        return 1;
    }
    unmap_page(1, vaddr);
  10682e:	83 ec 08             	sub    $0x8,%esp
  106831:	68 00 00 00 4b       	push   $0x4b000000
  106836:	6a 01                	push   $0x1
  106838:	e8 13 ff ff ff       	call   106750 <unmap_page>
    if (get_ptbl_entry_by_va(1, vaddr) != 0) {
  10683d:	58                   	pop    %eax
  10683e:	5a                   	pop    %edx
  10683f:	68 00 00 00 4b       	push   $0x4b000000
  106844:	6a 01                	push   $0x1
  106846:	e8 c5 f6 ff ff       	call   105f10 <get_ptbl_entry_by_va>
  10684b:	83 c4 10             	add    $0x10,%esp
  10684e:	85 c0                	test   %eax,%eax
  106850:	0f 85 ca 00 00 00    	jne    106920 <MPTKern_test1+0x180>
        dprintf("test 1.5 failed: (%d != 0)\n", get_ptbl_entry_by_va(1, vaddr));
        return 1;
    }
    dprintf("test 1 passed.\n");
  106856:	83 ec 0c             	sub    $0xc,%esp
  106859:	8d 83 93 b8 ff ff    	lea    -0x476d(%ebx),%eax
  10685f:	50                   	push   %eax
  106860:	e8 07 c5 ff ff       	call   102d6c <dprintf>
    return 0;
  106865:	83 c4 10             	add    $0x10,%esp
  106868:	31 c0                	xor    %eax,%eax
}
  10686a:	83 c4 08             	add    $0x8,%esp
  10686d:	5b                   	pop    %ebx
  10686e:	c3                   	ret
  10686f:	90                   	nop
        dprintf("test 1.2 failed: (%d != 0)\n", get_pdir_entry_by_va(1, vaddr));
  106870:	83 ec 08             	sub    $0x8,%esp
  106873:	68 00 00 00 4b       	push   $0x4b000000
  106878:	6a 01                	push   $0x1
  10687a:	e8 01 f7 ff ff       	call   105f80 <get_pdir_entry_by_va>
  10687f:	5a                   	pop    %edx
  106880:	59                   	pop    %ecx
  106881:	50                   	push   %eax
  106882:	8d 83 27 ba ff ff    	lea    -0x45d9(%ebx),%eax
  106888:	50                   	push   %eax
  106889:	e8 de c4 ff ff       	call   102d6c <dprintf>
        return 1;
  10688e:	83 c4 10             	add    $0x10,%esp
}
  106891:	83 c4 08             	add    $0x8,%esp
        return 1;
  106894:	b8 01 00 00 00       	mov    $0x1,%eax
}
  106899:	5b                   	pop    %ebx
  10689a:	c3                   	ret
  10689b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.1 failed: (%d != 0)\n", get_ptbl_entry_by_va(1, vaddr));
  1068a0:	83 ec 08             	sub    $0x8,%esp
  1068a3:	68 00 00 00 4b       	push   $0x4b000000
  1068a8:	6a 01                	push   $0x1
  1068aa:	e8 61 f6 ff ff       	call   105f10 <get_ptbl_entry_by_va>
  1068af:	5a                   	pop    %edx
  1068b0:	59                   	pop    %ecx
  1068b1:	50                   	push   %eax
  1068b2:	8d 83 0b ba ff ff    	lea    -0x45f5(%ebx),%eax
  1068b8:	50                   	push   %eax
  1068b9:	e8 ae c4 ff ff       	call   102d6c <dprintf>
        return 1;
  1068be:	83 c4 10             	add    $0x10,%esp
  1068c1:	eb ce                	jmp    106891 <MPTKern_test1+0xf1>
  1068c3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.4 failed: (%d == 0)\n", get_pdir_entry_by_va(1, vaddr));
  1068c8:	83 ec 08             	sub    $0x8,%esp
  1068cb:	68 00 00 00 4b       	push   $0x4b000000
  1068d0:	6a 01                	push   $0x1
  1068d2:	e8 a9 f6 ff ff       	call   105f80 <get_pdir_entry_by_va>
  1068d7:	59                   	pop    %ecx
  1068d8:	5a                   	pop    %edx
  1068d9:	50                   	push   %eax
  1068da:	8d 83 5f ba ff ff    	lea    -0x45a1(%ebx),%eax
  1068e0:	50                   	push   %eax
  1068e1:	e8 86 c4 ff ff       	call   102d6c <dprintf>
        return 1;
  1068e6:	83 c4 10             	add    $0x10,%esp
  1068e9:	eb a6                	jmp    106891 <MPTKern_test1+0xf1>
  1068eb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.3 failed: (%d == 0)\n", get_ptbl_entry_by_va(1, vaddr));
  1068f0:	83 ec 08             	sub    $0x8,%esp
  1068f3:	68 00 00 00 4b       	push   $0x4b000000
  1068f8:	6a 01                	push   $0x1
  1068fa:	e8 11 f6 ff ff       	call   105f10 <get_ptbl_entry_by_va>
  1068ff:	59                   	pop    %ecx
  106900:	5a                   	pop    %edx
  106901:	50                   	push   %eax
  106902:	8d 83 43 ba ff ff    	lea    -0x45bd(%ebx),%eax
  106908:	50                   	push   %eax
  106909:	e8 5e c4 ff ff       	call   102d6c <dprintf>
        return 1;
  10690e:	83 c4 10             	add    $0x10,%esp
  106911:	e9 7b ff ff ff       	jmp    106891 <MPTKern_test1+0xf1>
  106916:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10691d:	00 
  10691e:	66 90                	xchg   %ax,%ax
        dprintf("test 1.5 failed: (%d != 0)\n", get_ptbl_entry_by_va(1, vaddr));
  106920:	83 ec 08             	sub    $0x8,%esp
  106923:	68 00 00 00 4b       	push   $0x4b000000
  106928:	6a 01                	push   $0x1
  10692a:	e8 e1 f5 ff ff       	call   105f10 <get_ptbl_entry_by_va>
  10692f:	5a                   	pop    %edx
  106930:	59                   	pop    %ecx
  106931:	50                   	push   %eax
  106932:	8d 83 7b ba ff ff    	lea    -0x4585(%ebx),%eax
  106938:	50                   	push   %eax
  106939:	e8 2e c4 ff ff       	call   102d6c <dprintf>
        return 1;
  10693e:	83 c4 10             	add    $0x10,%esp
  106941:	e9 4b ff ff ff       	jmp    106891 <MPTKern_test1+0xf1>
  106946:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10694d:	00 
  10694e:	66 90                	xchg   %ax,%ax

00106950 <MPTKern_test2>:

int MPTKern_test2()
{
  106950:	57                   	push   %edi
  106951:	56                   	push   %esi
  106952:	be 03 00 00 40       	mov    $0x40000003,%esi
  106957:	53                   	push   %ebx
  106958:	e8 63 9a ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  10695d:	81 c3 97 56 00 00    	add    $0x5697,%ebx
  106963:	eb 11                	jmp    106976 <MPTKern_test2+0x26>
  106965:	8d 76 00             	lea    0x0(%esi),%esi
    unsigned int i;
    for (i = 256; i < 960; i++) {
  106968:	81 c6 00 00 40 00    	add    $0x400000,%esi
  10696e:	81 fe 03 00 00 f0    	cmp    $0xf0000003,%esi
  106974:	74 3d                	je     1069b3 <MPTKern_test2+0x63>
        if (get_ptbl_entry_by_va(0, i * 4096 * 1024L) !=
  106976:	83 ec 08             	sub    $0x8,%esp
  106979:	8d 7e fd             	lea    -0x3(%esi),%edi
  10697c:	57                   	push   %edi
  10697d:	6a 00                	push   $0x0
  10697f:	e8 8c f5 ff ff       	call   105f10 <get_ptbl_entry_by_va>
  106984:	83 c4 10             	add    $0x10,%esp
  106987:	39 f0                	cmp    %esi,%eax
  106989:	74 dd                	je     106968 <MPTKern_test2+0x18>
            i * 4096 * 1024L + 3) {
            dprintf("test 2.1 failed (i = %d): (%d != %d)\n",
  10698b:	83 ec 08             	sub    $0x8,%esp
  10698e:	57                   	push   %edi
  10698f:	6a 00                	push   $0x0
  106991:	e8 7a f5 ff ff       	call   105f10 <get_ptbl_entry_by_va>
  106996:	83 c4 0c             	add    $0xc,%esp
  106999:	56                   	push   %esi
  10699a:	50                   	push   %eax
  10699b:	8d 83 e4 bd ff ff    	lea    -0x421c(%ebx),%eax
  1069a1:	50                   	push   %eax
  1069a2:	e8 c5 c3 ff ff       	call   102d6c <dprintf>
                    get_ptbl_entry_by_va(0, i * 4096 * 1024L),
                    i * 4096 * 1024L + 3);
            return 1;
  1069a7:	83 c4 10             	add    $0x10,%esp
  1069aa:	b8 01 00 00 00       	mov    $0x1,%eax
        }
    }
    dprintf("test 2 passed.\n");
    return 0;
}
  1069af:	5b                   	pop    %ebx
  1069b0:	5e                   	pop    %esi
  1069b1:	5f                   	pop    %edi
  1069b2:	c3                   	ret
    dprintf("test 2 passed.\n");
  1069b3:	83 ec 0c             	sub    $0xc,%esp
  1069b6:	8d 83 a3 b8 ff ff    	lea    -0x475d(%ebx),%eax
  1069bc:	50                   	push   %eax
  1069bd:	e8 aa c3 ff ff       	call   102d6c <dprintf>
    return 0;
  1069c2:	83 c4 10             	add    $0x10,%esp
  1069c5:	31 c0                	xor    %eax,%eax
}
  1069c7:	5b                   	pop    %ebx
  1069c8:	5e                   	pop    %esi
  1069c9:	5f                   	pop    %edi
  1069ca:	c3                   	ret
  1069cb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

001069d0 <MPTKern_test_own>:
int MPTKern_test_own()
{
    // TODO (optional)
    // dprintf("own test passed.\n");
    return 0;
}
  1069d0:	31 c0                	xor    %eax,%eax
  1069d2:	c3                   	ret
  1069d3:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1069da:	00 
  1069db:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

001069e0 <test_MPTKern>:

int test_MPTKern()
{
  1069e0:	53                   	push   %ebx
  1069e1:	83 ec 08             	sub    $0x8,%esp
    return MPTKern_test1() + MPTKern_test2() + MPTKern_test_own();
  1069e4:	e8 b7 fd ff ff       	call   1067a0 <MPTKern_test1>
  1069e9:	89 c3                	mov    %eax,%ebx
  1069eb:	e8 60 ff ff ff       	call   106950 <MPTKern_test2>
}
  1069f0:	83 c4 08             	add    $0x8,%esp
    return MPTKern_test1() + MPTKern_test2() + MPTKern_test_own();
  1069f3:	01 d8                	add    %ebx,%eax
}
  1069f5:	5b                   	pop    %ebx
  1069f6:	c3                   	ret
  1069f7:	66 90                	xchg   %ax,%ax
  1069f9:	66 90                	xchg   %ax,%ax
  1069fb:	66 90                	xchg   %ax,%ax
  1069fd:	66 90                	xchg   %ax,%ax
  1069ff:	90                   	nop

00106a00 <paging_init>:
/**
 * Initializes the page structures, moves to the kernel page structure (0),
 * and turns on the paging.
 */
void paging_init(unsigned int mbi_addr)
{
  106a00:	53                   	push   %ebx
  106a01:	e8 ba 99 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106a06:	81 c3 ee 55 00 00    	add    $0x55ee,%ebx
  106a0c:	83 ec 14             	sub    $0x14,%esp
    pdir_init_kern(mbi_addr);
  106a0f:	ff 74 24 1c          	push   0x1c(%esp)
  106a13:	e8 88 fc ff ff       	call   1066a0 <pdir_init_kern>
    set_pdir_base(0);
  106a18:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  106a1f:	e8 6c f0 ff ff       	call   105a90 <set_pdir_base>
    enable_paging();
  106a24:	e8 a9 a7 ff ff       	call   1011d2 <enable_paging>
}
  106a29:	83 c4 18             	add    $0x18,%esp
  106a2c:	5b                   	pop    %ebx
  106a2d:	c3                   	ret
  106a2e:	66 90                	xchg   %ax,%ax

00106a30 <alloc_page>:
 * return value from map_page.
 * In the case of error, it should return the constant MagicNumber.
 */
unsigned int alloc_page(unsigned int proc_index, unsigned int vaddr,
                        unsigned int perm)
{
  106a30:	56                   	push   %esi
  106a31:	53                   	push   %ebx
  106a32:	e8 89 99 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106a37:	81 c3 bd 55 00 00    	add    $0x55bd,%ebx
  106a3d:	83 ec 10             	sub    $0x10,%esp
  106a40:	8b 74 24 1c          	mov    0x1c(%esp),%esi
    // TODO
    unsigned int page_index;
    unsigned int ptbl;
    page_index = container_alloc(proc_index);
  106a44:	56                   	push   %esi
  106a45:	e8 16 ed ff ff       	call   105760 <container_alloc>
    if (page_index == 0)
  106a4a:	83 c4 10             	add    $0x10,%esp
  106a4d:	ba 01 00 10 00       	mov    $0x100001,%edx
  106a52:	85 c0                	test   %eax,%eax
  106a54:	74 14                	je     106a6a <alloc_page+0x3a>
        return MagicNumber;
    ptbl = map_page(proc_index, vaddr, page_index, perm);
  106a56:	ff 74 24 18          	push   0x18(%esp)
  106a5a:	50                   	push   %eax
  106a5b:	ff 74 24 1c          	push   0x1c(%esp)
  106a5f:	56                   	push   %esi
  106a60:	e8 7b fc ff ff       	call   1066e0 <map_page>
    return ptbl;
  106a65:	83 c4 10             	add    $0x10,%esp
    ptbl = map_page(proc_index, vaddr, page_index, perm);
  106a68:	89 c2                	mov    %eax,%edx
}
  106a6a:	83 c4 04             	add    $0x4,%esp
  106a6d:	89 d0                	mov    %edx,%eax
  106a6f:	5b                   	pop    %ebx
  106a70:	5e                   	pop    %esi
  106a71:	c3                   	ret
  106a72:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  106a79:	00 
  106a7a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00106a80 <alloc_mem_quota>:

/**
 * Designate some memory quota for the next child process.
 */
unsigned int alloc_mem_quota(unsigned int id, unsigned int quota)
{
  106a80:	53                   	push   %ebx
  106a81:	e8 3a 99 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106a86:	81 c3 6e 55 00 00    	add    $0x556e,%ebx
  106a8c:	83 ec 10             	sub    $0x10,%esp
    unsigned int child;
    child = container_split(id, quota);
  106a8f:	ff 74 24 1c          	push   0x1c(%esp)
  106a93:	ff 74 24 1c          	push   0x1c(%esp)
  106a97:	e8 44 ec ff ff       	call   1056e0 <container_split>
    return child;
}
  106a9c:	83 c4 18             	add    $0x18,%esp
  106a9f:	5b                   	pop    %ebx
  106aa0:	c3                   	ret
  106aa1:	66 90                	xchg   %ax,%ax
  106aa3:	66 90                	xchg   %ax,%ax
  106aa5:	66 90                	xchg   %ax,%ax
  106aa7:	66 90                	xchg   %ax,%ax
  106aa9:	66 90                	xchg   %ax,%ax
  106aab:	66 90                	xchg   %ax,%ax
  106aad:	66 90                	xchg   %ax,%ax
  106aaf:	90                   	nop

00106ab0 <MPTNew_test1>:
#include <vmm/MPTOp/export.h>
#include <vmm/MPTNew/export.h>
#include "export.h"

int MPTNew_test1()
{
  106ab0:	53                   	push   %ebx
  106ab1:	e8 0a 99 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106ab6:	81 c3 3e 55 00 00    	add    $0x553e,%ebx
  106abc:	83 ec 10             	sub    $0x10,%esp
    unsigned int vaddr = 4096 * 1024 * 400;
    container_split(0, 100);
  106abf:	6a 64                	push   $0x64
  106ac1:	6a 00                	push   $0x0
  106ac3:	e8 18 ec ff ff       	call   1056e0 <container_split>
    if (get_ptbl_entry_by_va(1, vaddr) != 0) {
  106ac8:	59                   	pop    %ecx
  106ac9:	58                   	pop    %eax
  106aca:	68 00 00 00 64       	push   $0x64000000
  106acf:	6a 01                	push   $0x1
  106ad1:	e8 3a f4 ff ff       	call   105f10 <get_ptbl_entry_by_va>
  106ad6:	83 c4 10             	add    $0x10,%esp
  106ad9:	85 c0                	test   %eax,%eax
  106adb:	0f 85 9f 00 00 00    	jne    106b80 <MPTNew_test1+0xd0>
        dprintf("test 1.1 failed: (%d != 0)\n", get_ptbl_entry_by_va(1, vaddr));
        return 1;
    }
    if (get_pdir_entry_by_va(1, vaddr) != 0) {
  106ae1:	83 ec 08             	sub    $0x8,%esp
  106ae4:	68 00 00 00 64       	push   $0x64000000
  106ae9:	6a 01                	push   $0x1
  106aeb:	e8 90 f4 ff ff       	call   105f80 <get_pdir_entry_by_va>
  106af0:	83 c4 10             	add    $0x10,%esp
  106af3:	85 c0                	test   %eax,%eax
  106af5:	75 59                	jne    106b50 <MPTNew_test1+0xa0>
        dprintf("test 1.2 failed: (%d != 0)\n", get_pdir_entry_by_va(1, vaddr));
        return 1;
    }
    alloc_page(1, vaddr, 7);
  106af7:	83 ec 04             	sub    $0x4,%esp
  106afa:	6a 07                	push   $0x7
  106afc:	68 00 00 00 64       	push   $0x64000000
  106b01:	6a 01                	push   $0x1
  106b03:	e8 28 ff ff ff       	call   106a30 <alloc_page>
    if (get_ptbl_entry_by_va(1, vaddr) == 0) {
  106b08:	58                   	pop    %eax
  106b09:	5a                   	pop    %edx
  106b0a:	68 00 00 00 64       	push   $0x64000000
  106b0f:	6a 01                	push   $0x1
  106b11:	e8 fa f3 ff ff       	call   105f10 <get_ptbl_entry_by_va>
  106b16:	83 c4 10             	add    $0x10,%esp
  106b19:	85 c0                	test   %eax,%eax
  106b1b:	0f 84 af 00 00 00    	je     106bd0 <MPTNew_test1+0x120>
        dprintf("test 1.3 failed: (%d == 0)\n", get_ptbl_entry_by_va(1, vaddr));
        return 1;
    }
    if (get_pdir_entry_by_va(1, vaddr) == 0) {
  106b21:	83 ec 08             	sub    $0x8,%esp
  106b24:	68 00 00 00 64       	push   $0x64000000
  106b29:	6a 01                	push   $0x1
  106b2b:	e8 50 f4 ff ff       	call   105f80 <get_pdir_entry_by_va>
  106b30:	83 c4 10             	add    $0x10,%esp
  106b33:	85 c0                	test   %eax,%eax
  106b35:	74 71                	je     106ba8 <MPTNew_test1+0xf8>
        dprintf("test 1.4 failed: (%d == 0)\n", get_pdir_entry_by_va(1, vaddr));
        return 1;
    }
    dprintf("test 1 passed.\n");
  106b37:	83 ec 0c             	sub    $0xc,%esp
  106b3a:	8d 83 93 b8 ff ff    	lea    -0x476d(%ebx),%eax
  106b40:	50                   	push   %eax
  106b41:	e8 26 c2 ff ff       	call   102d6c <dprintf>
    return 0;
  106b46:	83 c4 10             	add    $0x10,%esp
  106b49:	31 c0                	xor    %eax,%eax
}
  106b4b:	83 c4 08             	add    $0x8,%esp
  106b4e:	5b                   	pop    %ebx
  106b4f:	c3                   	ret
        dprintf("test 1.2 failed: (%d != 0)\n", get_pdir_entry_by_va(1, vaddr));
  106b50:	83 ec 08             	sub    $0x8,%esp
  106b53:	68 00 00 00 64       	push   $0x64000000
  106b58:	6a 01                	push   $0x1
  106b5a:	e8 21 f4 ff ff       	call   105f80 <get_pdir_entry_by_va>
  106b5f:	59                   	pop    %ecx
  106b60:	5a                   	pop    %edx
  106b61:	50                   	push   %eax
  106b62:	8d 83 27 ba ff ff    	lea    -0x45d9(%ebx),%eax
  106b68:	50                   	push   %eax
  106b69:	e8 fe c1 ff ff       	call   102d6c <dprintf>
        return 1;
  106b6e:	83 c4 10             	add    $0x10,%esp
}
  106b71:	83 c4 08             	add    $0x8,%esp
        return 1;
  106b74:	b8 01 00 00 00       	mov    $0x1,%eax
}
  106b79:	5b                   	pop    %ebx
  106b7a:	c3                   	ret
  106b7b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.1 failed: (%d != 0)\n", get_ptbl_entry_by_va(1, vaddr));
  106b80:	83 ec 08             	sub    $0x8,%esp
  106b83:	68 00 00 00 64       	push   $0x64000000
  106b88:	6a 01                	push   $0x1
  106b8a:	e8 81 f3 ff ff       	call   105f10 <get_ptbl_entry_by_va>
  106b8f:	59                   	pop    %ecx
  106b90:	5a                   	pop    %edx
  106b91:	50                   	push   %eax
  106b92:	8d 83 0b ba ff ff    	lea    -0x45f5(%ebx),%eax
  106b98:	50                   	push   %eax
  106b99:	e8 ce c1 ff ff       	call   102d6c <dprintf>
        return 1;
  106b9e:	83 c4 10             	add    $0x10,%esp
  106ba1:	eb ce                	jmp    106b71 <MPTNew_test1+0xc1>
  106ba3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.4 failed: (%d == 0)\n", get_pdir_entry_by_va(1, vaddr));
  106ba8:	83 ec 08             	sub    $0x8,%esp
  106bab:	68 00 00 00 64       	push   $0x64000000
  106bb0:	6a 01                	push   $0x1
  106bb2:	e8 c9 f3 ff ff       	call   105f80 <get_pdir_entry_by_va>
  106bb7:	5a                   	pop    %edx
  106bb8:	59                   	pop    %ecx
  106bb9:	50                   	push   %eax
  106bba:	8d 83 5f ba ff ff    	lea    -0x45a1(%ebx),%eax
  106bc0:	50                   	push   %eax
  106bc1:	e8 a6 c1 ff ff       	call   102d6c <dprintf>
        return 1;
  106bc6:	83 c4 10             	add    $0x10,%esp
  106bc9:	eb a6                	jmp    106b71 <MPTNew_test1+0xc1>
  106bcb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.3 failed: (%d == 0)\n", get_ptbl_entry_by_va(1, vaddr));
  106bd0:	83 ec 08             	sub    $0x8,%esp
  106bd3:	68 00 00 00 64       	push   $0x64000000
  106bd8:	6a 01                	push   $0x1
  106bda:	e8 31 f3 ff ff       	call   105f10 <get_ptbl_entry_by_va>
  106bdf:	5a                   	pop    %edx
  106be0:	59                   	pop    %ecx
  106be1:	50                   	push   %eax
  106be2:	8d 83 43 ba ff ff    	lea    -0x45bd(%ebx),%eax
  106be8:	50                   	push   %eax
  106be9:	e8 7e c1 ff ff       	call   102d6c <dprintf>
        return 1;
  106bee:	83 c4 10             	add    $0x10,%esp
  106bf1:	e9 7b ff ff ff       	jmp    106b71 <MPTNew_test1+0xc1>
  106bf6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  106bfd:	00 
  106bfe:	66 90                	xchg   %ax,%ax

00106c00 <MPTNew_test_own>:
int MPTNew_test_own()
{
    // TODO (optional)
    // dprintf("own test passed.\n");
    return 0;
}
  106c00:	31 c0                	xor    %eax,%eax
  106c02:	c3                   	ret
  106c03:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  106c0a:	00 
  106c0b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00106c10 <test_MPTNew>:

int test_MPTNew()
{
    return MPTNew_test1() + MPTNew_test_own();
  106c10:	e9 9b fe ff ff       	jmp    106ab0 <MPTNew_test1>
  106c15:	66 90                	xchg   %ax,%ax
  106c17:	66 90                	xchg   %ax,%ax
  106c19:	66 90                	xchg   %ax,%ax
  106c1b:	66 90                	xchg   %ax,%ax
  106c1d:	66 90                	xchg   %ax,%ax
  106c1f:	90                   	nop

00106c20 <__udivdi3>:
  106c20:	f3 0f 1e fb          	endbr32
  106c24:	55                   	push   %ebp
  106c25:	89 e5                	mov    %esp,%ebp
  106c27:	57                   	push   %edi
  106c28:	56                   	push   %esi
  106c29:	53                   	push   %ebx
  106c2a:	83 ec 1c             	sub    $0x1c,%esp
  106c2d:	8b 7d 08             	mov    0x8(%ebp),%edi
  106c30:	8b 45 14             	mov    0x14(%ebp),%eax
  106c33:	8b 75 0c             	mov    0xc(%ebp),%esi
  106c36:	8b 5d 10             	mov    0x10(%ebp),%ebx
  106c39:	89 7d e4             	mov    %edi,-0x1c(%ebp)
  106c3c:	85 c0                	test   %eax,%eax
  106c3e:	75 20                	jne    106c60 <__udivdi3+0x40>
  106c40:	39 de                	cmp    %ebx,%esi
  106c42:	73 54                	jae    106c98 <__udivdi3+0x78>
  106c44:	89 f8                	mov    %edi,%eax
  106c46:	31 ff                	xor    %edi,%edi
  106c48:	89 f2                	mov    %esi,%edx
  106c4a:	f7 f3                	div    %ebx
  106c4c:	89 fa                	mov    %edi,%edx
  106c4e:	83 c4 1c             	add    $0x1c,%esp
  106c51:	5b                   	pop    %ebx
  106c52:	5e                   	pop    %esi
  106c53:	5f                   	pop    %edi
  106c54:	5d                   	pop    %ebp
  106c55:	c3                   	ret
  106c56:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  106c5d:	00 
  106c5e:	66 90                	xchg   %ax,%ax
  106c60:	39 c6                	cmp    %eax,%esi
  106c62:	73 14                	jae    106c78 <__udivdi3+0x58>
  106c64:	31 ff                	xor    %edi,%edi
  106c66:	31 c0                	xor    %eax,%eax
  106c68:	89 fa                	mov    %edi,%edx
  106c6a:	83 c4 1c             	add    $0x1c,%esp
  106c6d:	5b                   	pop    %ebx
  106c6e:	5e                   	pop    %esi
  106c6f:	5f                   	pop    %edi
  106c70:	5d                   	pop    %ebp
  106c71:	c3                   	ret
  106c72:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  106c78:	0f bd f8             	bsr    %eax,%edi
  106c7b:	83 f7 1f             	xor    $0x1f,%edi
  106c7e:	75 48                	jne    106cc8 <__udivdi3+0xa8>
  106c80:	39 f0                	cmp    %esi,%eax
  106c82:	72 07                	jb     106c8b <__udivdi3+0x6b>
  106c84:	31 c0                	xor    %eax,%eax
  106c86:	39 5d e4             	cmp    %ebx,-0x1c(%ebp)
  106c89:	72 dd                	jb     106c68 <__udivdi3+0x48>
  106c8b:	b8 01 00 00 00       	mov    $0x1,%eax
  106c90:	eb d6                	jmp    106c68 <__udivdi3+0x48>
  106c92:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  106c98:	89 d9                	mov    %ebx,%ecx
  106c9a:	85 db                	test   %ebx,%ebx
  106c9c:	75 0b                	jne    106ca9 <__udivdi3+0x89>
  106c9e:	b8 01 00 00 00       	mov    $0x1,%eax
  106ca3:	31 d2                	xor    %edx,%edx
  106ca5:	f7 f3                	div    %ebx
  106ca7:	89 c1                	mov    %eax,%ecx
  106ca9:	31 d2                	xor    %edx,%edx
  106cab:	89 f0                	mov    %esi,%eax
  106cad:	f7 f1                	div    %ecx
  106caf:	89 c6                	mov    %eax,%esi
  106cb1:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  106cb4:	89 f7                	mov    %esi,%edi
  106cb6:	f7 f1                	div    %ecx
  106cb8:	89 fa                	mov    %edi,%edx
  106cba:	83 c4 1c             	add    $0x1c,%esp
  106cbd:	5b                   	pop    %ebx
  106cbe:	5e                   	pop    %esi
  106cbf:	5f                   	pop    %edi
  106cc0:	5d                   	pop    %ebp
  106cc1:	c3                   	ret
  106cc2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  106cc8:	89 f9                	mov    %edi,%ecx
  106cca:	ba 20 00 00 00       	mov    $0x20,%edx
  106ccf:	29 fa                	sub    %edi,%edx
  106cd1:	d3 e0                	shl    %cl,%eax
  106cd3:	89 45 e0             	mov    %eax,-0x20(%ebp)
  106cd6:	89 d1                	mov    %edx,%ecx
  106cd8:	89 d8                	mov    %ebx,%eax
  106cda:	d3 e8                	shr    %cl,%eax
  106cdc:	89 c1                	mov    %eax,%ecx
  106cde:	8b 45 e0             	mov    -0x20(%ebp),%eax
  106ce1:	09 c1                	or     %eax,%ecx
  106ce3:	89 f0                	mov    %esi,%eax
  106ce5:	89 4d e0             	mov    %ecx,-0x20(%ebp)
  106ce8:	89 f9                	mov    %edi,%ecx
  106cea:	d3 e3                	shl    %cl,%ebx
  106cec:	89 d1                	mov    %edx,%ecx
  106cee:	d3 e8                	shr    %cl,%eax
  106cf0:	89 5d dc             	mov    %ebx,-0x24(%ebp)
  106cf3:	89 f9                	mov    %edi,%ecx
  106cf5:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
  106cf8:	d3 e6                	shl    %cl,%esi
  106cfa:	89 d1                	mov    %edx,%ecx
  106cfc:	d3 eb                	shr    %cl,%ebx
  106cfe:	09 f3                	or     %esi,%ebx
  106d00:	89 c6                	mov    %eax,%esi
  106d02:	89 f2                	mov    %esi,%edx
  106d04:	89 d8                	mov    %ebx,%eax
  106d06:	f7 75 e0             	divl   -0x20(%ebp)
  106d09:	89 d6                	mov    %edx,%esi
  106d0b:	89 c3                	mov    %eax,%ebx
  106d0d:	f7 65 dc             	mull   -0x24(%ebp)
  106d10:	89 55 e0             	mov    %edx,-0x20(%ebp)
  106d13:	39 d6                	cmp    %edx,%esi
  106d15:	72 21                	jb     106d38 <__udivdi3+0x118>
  106d17:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  106d1a:	89 f9                	mov    %edi,%ecx
  106d1c:	d3 e2                	shl    %cl,%edx
  106d1e:	39 c2                	cmp    %eax,%edx
  106d20:	73 07                	jae    106d29 <__udivdi3+0x109>
  106d22:	8b 55 e0             	mov    -0x20(%ebp),%edx
  106d25:	39 d6                	cmp    %edx,%esi
  106d27:	74 0f                	je     106d38 <__udivdi3+0x118>
  106d29:	89 d8                	mov    %ebx,%eax
  106d2b:	31 ff                	xor    %edi,%edi
  106d2d:	e9 36 ff ff ff       	jmp    106c68 <__udivdi3+0x48>
  106d32:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  106d38:	8d 43 ff             	lea    -0x1(%ebx),%eax
  106d3b:	31 ff                	xor    %edi,%edi
  106d3d:	e9 26 ff ff ff       	jmp    106c68 <__udivdi3+0x48>
  106d42:	66 90                	xchg   %ax,%ax
  106d44:	66 90                	xchg   %ax,%ax
  106d46:	66 90                	xchg   %ax,%ax
  106d48:	66 90                	xchg   %ax,%ax
  106d4a:	66 90                	xchg   %ax,%ax
  106d4c:	66 90                	xchg   %ax,%ax
  106d4e:	66 90                	xchg   %ax,%ax

00106d50 <__umoddi3>:
  106d50:	f3 0f 1e fb          	endbr32
  106d54:	55                   	push   %ebp
  106d55:	89 e5                	mov    %esp,%ebp
  106d57:	57                   	push   %edi
  106d58:	56                   	push   %esi
  106d59:	53                   	push   %ebx
  106d5a:	83 ec 2c             	sub    $0x2c,%esp
  106d5d:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  106d60:	8b 45 14             	mov    0x14(%ebp),%eax
  106d63:	8b 75 08             	mov    0x8(%ebp),%esi
  106d66:	8b 7d 10             	mov    0x10(%ebp),%edi
  106d69:	89 da                	mov    %ebx,%edx
  106d6b:	85 c0                	test   %eax,%eax
  106d6d:	75 19                	jne    106d88 <__umoddi3+0x38>
  106d6f:	39 fb                	cmp    %edi,%ebx
  106d71:	73 5d                	jae    106dd0 <__umoddi3+0x80>
  106d73:	89 f0                	mov    %esi,%eax
  106d75:	f7 f7                	div    %edi
  106d77:	89 d0                	mov    %edx,%eax
  106d79:	31 d2                	xor    %edx,%edx
  106d7b:	83 c4 2c             	add    $0x2c,%esp
  106d7e:	5b                   	pop    %ebx
  106d7f:	5e                   	pop    %esi
  106d80:	5f                   	pop    %edi
  106d81:	5d                   	pop    %ebp
  106d82:	c3                   	ret
  106d83:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
  106d88:	89 75 e0             	mov    %esi,-0x20(%ebp)
  106d8b:	39 c3                	cmp    %eax,%ebx
  106d8d:	73 11                	jae    106da0 <__umoddi3+0x50>
  106d8f:	89 f0                	mov    %esi,%eax
  106d91:	83 c4 2c             	add    $0x2c,%esp
  106d94:	5b                   	pop    %ebx
  106d95:	5e                   	pop    %esi
  106d96:	5f                   	pop    %edi
  106d97:	5d                   	pop    %ebp
  106d98:	c3                   	ret
  106d99:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  106da0:	0f bd c8             	bsr    %eax,%ecx
  106da3:	83 f1 1f             	xor    $0x1f,%ecx
  106da6:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
  106da9:	75 45                	jne    106df0 <__umoddi3+0xa0>
  106dab:	39 d8                	cmp    %ebx,%eax
  106dad:	0f 82 d5 00 00 00    	jb     106e88 <__umoddi3+0x138>
  106db3:	39 fe                	cmp    %edi,%esi
  106db5:	0f 83 cd 00 00 00    	jae    106e88 <__umoddi3+0x138>
  106dbb:	8b 45 e0             	mov    -0x20(%ebp),%eax
  106dbe:	83 c4 2c             	add    $0x2c,%esp
  106dc1:	5b                   	pop    %ebx
  106dc2:	5e                   	pop    %esi
  106dc3:	5f                   	pop    %edi
  106dc4:	5d                   	pop    %ebp
  106dc5:	c3                   	ret
  106dc6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  106dcd:	00 
  106dce:	66 90                	xchg   %ax,%ax
  106dd0:	89 f9                	mov    %edi,%ecx
  106dd2:	85 ff                	test   %edi,%edi
  106dd4:	75 0b                	jne    106de1 <__umoddi3+0x91>
  106dd6:	b8 01 00 00 00       	mov    $0x1,%eax
  106ddb:	31 d2                	xor    %edx,%edx
  106ddd:	f7 f7                	div    %edi
  106ddf:	89 c1                	mov    %eax,%ecx
  106de1:	89 d8                	mov    %ebx,%eax
  106de3:	31 d2                	xor    %edx,%edx
  106de5:	f7 f1                	div    %ecx
  106de7:	89 f0                	mov    %esi,%eax
  106de9:	f7 f1                	div    %ecx
  106deb:	eb 8a                	jmp    106d77 <__umoddi3+0x27>
  106ded:	8d 76 00             	lea    0x0(%esi),%esi
  106df0:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
  106df3:	ba 20 00 00 00       	mov    $0x20,%edx
  106df8:	29 ca                	sub    %ecx,%edx
  106dfa:	d3 e0                	shl    %cl,%eax
  106dfc:	89 45 dc             	mov    %eax,-0x24(%ebp)
  106dff:	89 d1                	mov    %edx,%ecx
  106e01:	89 f8                	mov    %edi,%eax
  106e03:	d3 e8                	shr    %cl,%eax
  106e05:	89 55 e0             	mov    %edx,-0x20(%ebp)
  106e08:	0f b6 4d e4          	movzbl -0x1c(%ebp),%ecx
  106e0c:	89 c2                	mov    %eax,%edx
  106e0e:	8b 45 dc             	mov    -0x24(%ebp),%eax
  106e11:	d3 e7                	shl    %cl,%edi
  106e13:	09 c2                	or     %eax,%edx
  106e15:	8b 45 e0             	mov    -0x20(%ebp),%eax
  106e18:	89 7d d8             	mov    %edi,-0x28(%ebp)
  106e1b:	89 f7                	mov    %esi,%edi
  106e1d:	89 55 dc             	mov    %edx,-0x24(%ebp)
  106e20:	89 da                	mov    %ebx,%edx
  106e22:	89 c1                	mov    %eax,%ecx
  106e24:	d3 ea                	shr    %cl,%edx
  106e26:	0f b6 4d e4          	movzbl -0x1c(%ebp),%ecx
  106e2a:	d3 e3                	shl    %cl,%ebx
  106e2c:	89 c1                	mov    %eax,%ecx
  106e2e:	d3 ef                	shr    %cl,%edi
  106e30:	0f b6 4d e4          	movzbl -0x1c(%ebp),%ecx
  106e34:	89 f8                	mov    %edi,%eax
  106e36:	d3 e6                	shl    %cl,%esi
  106e38:	09 d8                	or     %ebx,%eax
  106e3a:	f7 75 dc             	divl   -0x24(%ebp)
  106e3d:	89 d3                	mov    %edx,%ebx
  106e3f:	89 75 d4             	mov    %esi,-0x2c(%ebp)
  106e42:	89 f7                	mov    %esi,%edi
  106e44:	f7 65 d8             	mull   -0x28(%ebp)
  106e47:	89 c6                	mov    %eax,%esi
  106e49:	89 d1                	mov    %edx,%ecx
  106e4b:	39 d3                	cmp    %edx,%ebx
  106e4d:	72 06                	jb     106e55 <__umoddi3+0x105>
  106e4f:	75 0e                	jne    106e5f <__umoddi3+0x10f>
  106e51:	39 c7                	cmp    %eax,%edi
  106e53:	73 0a                	jae    106e5f <__umoddi3+0x10f>
  106e55:	2b 45 d8             	sub    -0x28(%ebp),%eax
  106e58:	1b 55 dc             	sbb    -0x24(%ebp),%edx
  106e5b:	89 d1                	mov    %edx,%ecx
  106e5d:	89 c6                	mov    %eax,%esi
  106e5f:	8b 45 d4             	mov    -0x2c(%ebp),%eax
  106e62:	8b 7d e4             	mov    -0x1c(%ebp),%edi
  106e65:	29 f0                	sub    %esi,%eax
  106e67:	19 cb                	sbb    %ecx,%ebx
  106e69:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
  106e6d:	89 da                	mov    %ebx,%edx
  106e6f:	d3 e2                	shl    %cl,%edx
  106e71:	89 f9                	mov    %edi,%ecx
  106e73:	d3 e8                	shr    %cl,%eax
  106e75:	d3 eb                	shr    %cl,%ebx
  106e77:	09 d0                	or     %edx,%eax
  106e79:	89 da                	mov    %ebx,%edx
  106e7b:	83 c4 2c             	add    $0x2c,%esp
  106e7e:	5b                   	pop    %ebx
  106e7f:	5e                   	pop    %esi
  106e80:	5f                   	pop    %edi
  106e81:	5d                   	pop    %ebp
  106e82:	c3                   	ret
  106e83:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
  106e88:	89 da                	mov    %ebx,%edx
  106e8a:	29 fe                	sub    %edi,%esi
  106e8c:	19 c2                	sbb    %eax,%edx
  106e8e:	89 75 e0             	mov    %esi,-0x20(%ebp)
  106e91:	e9 25 ff ff ff       	jmp    106dbb <__umoddi3+0x6b>
