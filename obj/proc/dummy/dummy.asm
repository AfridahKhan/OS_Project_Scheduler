
obj/proc/dummy/dummy:     file format elf32-i386


Disassembly of section .text:

400000e0 <main>:
400000e0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
400000e4:	83 e4 f0             	and    $0xfffffff0,%esp
400000e7:	ff 71 fc             	push   -0x4(%ecx)
400000ea:	55                   	push   %ebp
400000eb:	89 e5                	mov    %esp,%ebp
400000ed:	57                   	push   %edi
400000ee:	56                   	push   %esi
400000ef:	53                   	push   %ebx
400000f0:	e8 d2 02 00 00       	call   400003c7 <__x86.get_pc_thunk.bx>
400000f5:	81 c3 ff 3e 00 00    	add    $0x3eff,%ebx
400000fb:	51                   	push   %ecx
400000fc:	83 ec 24             	sub    $0x24,%esp
400000ff:	8d 83 88 d7 ff ff    	lea    -0x2878(%ebx),%eax
40000105:	50                   	push   %eax
40000106:	e8 f5 04 00 00       	call   40000600 <printf>
4000010b:	8d 83 bc d7 ff ff    	lea    -0x2844(%ebx),%eax
40000111:	89 04 24             	mov    %eax,(%esp)
40000114:	e8 e7 04 00 00       	call   40000600 <printf>
40000119:	8d 83 d3 d5 ff ff    	lea    -0x2a2d(%ebx),%eax
4000011f:	89 45 d8             	mov    %eax,-0x28(%ebp)
40000122:	89 04 24             	mov    %eax,(%esp)
40000125:	e8 d6 04 00 00       	call   40000600 <printf>
4000012a:	8d 83 00 d6 ff ff    	lea    -0x2a00(%ebx),%eax
40000130:	83 c4 10             	add    $0x10,%esp
40000133:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
4000013a:	89 45 e0             	mov    %eax,-0x20(%ebp)
4000013d:	e8 4e 11 00 00       	call   40001290 <sys_getc>
40000142:	83 f8 1a             	cmp    $0x1a,%eax
40000145:	0f 84 ec 00 00 00    	je     40000237 <main+0x157>
4000014b:	0f 8f 9f 00 00 00    	jg     400001f0 <main+0x110>
40000151:	83 f8 0a             	cmp    $0xa,%eax
40000154:	74 05                	je     4000015b <main+0x7b>
40000156:	83 f8 0d             	cmp    $0xd,%eax
40000159:	75 e2                	jne    4000013d <main+0x5d>
4000015b:	83 ec 0c             	sub    $0xc,%esp
4000015e:	8d 83 28 d6 ff ff    	lea    -0x29d8(%ebx),%eax
40000164:	50                   	push   %eax
40000165:	e8 96 04 00 00       	call   40000600 <printf>
4000016a:	8d 83 e7 d5 ff ff    	lea    -0x2a19(%ebx),%eax
40000170:	5e                   	pop    %esi
40000171:	5f                   	pop    %edi
40000172:	ff 75 dc             	push   -0x24(%ebp)
40000175:	8d bb 18 d8 ff ff    	lea    -0x27e8(%ebx),%edi
4000017b:	8d b3 fc d5 ff ff    	lea    -0x2a04(%ebx),%esi
40000181:	50                   	push   %eax
40000182:	e8 79 04 00 00       	call   40000600 <printf>
40000187:	89 3c 24             	mov    %edi,(%esp)
4000018a:	e8 71 04 00 00       	call   40000600 <printf>
4000018f:	83 c4 10             	add    $0x10,%esp
40000192:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
40000198:	e8 f3 10 00 00       	call   40001290 <sys_getc>
4000019d:	89 c2                	mov    %eax,%edx
4000019f:	84 c0                	test   %al,%al
400001a1:	74 f5                	je     40000198 <main+0xb8>
400001a3:	83 ec 08             	sub    $0x8,%esp
400001a6:	0f be c0             	movsbl %al,%eax
400001a9:	89 55 e4             	mov    %edx,-0x1c(%ebp)
400001ac:	50                   	push   %eax
400001ad:	56                   	push   %esi
400001ae:	e8 4d 04 00 00       	call   40000600 <printf>
400001b3:	8b 55 e4             	mov    -0x1c(%ebp),%edx
400001b6:	83 c4 10             	add    $0x10,%esp
400001b9:	80 fa 72             	cmp    $0x72,%dl
400001bc:	0f 84 95 00 00 00    	je     40000257 <main+0x177>
400001c2:	80 fa 77             	cmp    $0x77,%dl
400001c5:	0f 84 c7 00 00 00    	je     40000292 <main+0x1b2>
400001cb:	83 ec 0c             	sub    $0xc,%esp
400001ce:	ff 75 e0             	push   -0x20(%ebp)
400001d1:	e8 2a 04 00 00       	call   40000600 <printf>
400001d6:	89 3c 24             	mov    %edi,(%esp)
400001d9:	e8 22 04 00 00       	call   40000600 <printf>
400001de:	83 c4 10             	add    $0x10,%esp
400001e1:	e8 aa 10 00 00       	call   40001290 <sys_getc>
400001e6:	89 c2                	mov    %eax,%edx
400001e8:	84 c0                	test   %al,%al
400001ea:	75 b7                	jne    400001a3 <main+0xc3>
400001ec:	eb aa                	jmp    40000198 <main+0xb8>
400001ee:	66 90                	xchg   %ax,%ax
400001f0:	8d 50 d0             	lea    -0x30(%eax),%edx
400001f3:	83 fa 09             	cmp    $0x9,%edx
400001f6:	0f 87 41 ff ff ff    	ja     4000013d <main+0x5d>
400001fc:	81 7d dc 98 99 99 19 	cmpl   $0x19999998,-0x24(%ebp)
40000203:	0f 87 d7 00 00 00    	ja     400002e0 <main+0x200>
40000209:	8b 4d dc             	mov    -0x24(%ebp),%ecx
4000020c:	83 ec 08             	sub    $0x8,%esp
4000020f:	8d 14 89             	lea    (%ecx,%ecx,4),%edx
40000212:	8d 4c 50 d0          	lea    -0x30(%eax,%edx,2),%ecx
40000216:	89 4d dc             	mov    %ecx,-0x24(%ebp)
40000219:	50                   	push   %eax
4000021a:	8d 83 2a d6 ff ff    	lea    -0x29d6(%ebx),%eax
40000220:	50                   	push   %eax
40000221:	e8 da 03 00 00       	call   40000600 <printf>
40000226:	83 c4 10             	add    $0x10,%esp
40000229:	e8 62 10 00 00       	call   40001290 <sys_getc>
4000022e:	83 f8 1a             	cmp    $0x1a,%eax
40000231:	0f 85 14 ff ff ff    	jne    4000014b <main+0x6b>
40000237:	83 ec 0c             	sub    $0xc,%esp
4000023a:	8d 83 f4 d7 ff ff    	lea    -0x280c(%ebx),%eax
40000240:	50                   	push   %eax
40000241:	e8 ba 03 00 00       	call   40000600 <printf>
40000246:	83 c4 10             	add    $0x10,%esp
40000249:	8d 65 f0             	lea    -0x10(%ebp),%esp
4000024c:	31 c0                	xor    %eax,%eax
4000024e:	59                   	pop    %ecx
4000024f:	5b                   	pop    %ebx
40000250:	5e                   	pop    %esi
40000251:	5f                   	pop    %edi
40000252:	5d                   	pop    %ebp
40000253:	8d 61 fc             	lea    -0x4(%ecx),%esp
40000256:	c3                   	ret
40000257:	51                   	push   %ecx
40000258:	8b 45 dc             	mov    -0x24(%ebp),%eax
4000025b:	ff 30                	push   (%eax)
4000025d:	50                   	push   %eax
4000025e:	8d 83 48 d8 ff ff    	lea    -0x27b8(%ebx),%eax
40000264:	50                   	push   %eax
40000265:	e8 96 03 00 00       	call   40000600 <printf>
4000026a:	83 c4 10             	add    $0x10,%esp
4000026d:	83 ec 0c             	sub    $0xc,%esp
40000270:	8d 83 2c d9 ff ff    	lea    -0x26d4(%ebx),%eax
40000276:	50                   	push   %eax
40000277:	e8 84 03 00 00       	call   40000600 <printf>
4000027c:	58                   	pop    %eax
4000027d:	ff 75 d8             	push   -0x28(%ebp)
40000280:	e8 7b 03 00 00       	call   40000600 <printf>
40000285:	31 c0                	xor    %eax,%eax
40000287:	83 c4 10             	add    $0x10,%esp
4000028a:	89 45 dc             	mov    %eax,-0x24(%ebp)
4000028d:	e9 ab fe ff ff       	jmp    4000013d <main+0x5d>
40000292:	83 ec 0c             	sub    $0xc,%esp
40000295:	8d 83 70 d8 ff ff    	lea    -0x2790(%ebx),%eax
4000029b:	50                   	push   %eax
4000029c:	e8 5f 03 00 00       	call   40000600 <printf>
400002a1:	8d 83 a4 d8 ff ff    	lea    -0x275c(%ebx),%eax
400002a7:	89 04 24             	mov    %eax,(%esp)
400002aa:	e8 51 03 00 00       	call   40000600 <printf>
400002af:	83 c4 10             	add    $0x10,%esp
400002b2:	e8 d9 0f 00 00       	call   40001290 <sys_getc>
400002b7:	8d 78 d0             	lea    -0x30(%eax),%edi
400002ba:	83 ff 09             	cmp    $0x9,%edi
400002bd:	77 f3                	ja     400002b2 <main+0x1d2>
400002bf:	52                   	push   %edx
400002c0:	52                   	push   %edx
400002c1:	50                   	push   %eax
400002c2:	56                   	push   %esi
400002c3:	e8 38 03 00 00       	call   40000600 <printf>
400002c8:	8b 45 dc             	mov    -0x24(%ebp),%eax
400002cb:	89 38                	mov    %edi,(%eax)
400002cd:	8d 83 c4 d8 ff ff    	lea    -0x273c(%ebx),%eax
400002d3:	89 04 24             	mov    %eax,(%esp)
400002d6:	e8 25 03 00 00       	call   40000600 <printf>
400002db:	83 c4 10             	add    $0x10,%esp
400002de:	eb 8d                	jmp    4000026d <main+0x18d>
400002e0:	83 ec 0c             	sub    $0xc,%esp
400002e3:	8d 83 12 d6 ff ff    	lea    -0x29ee(%ebx),%eax
400002e9:	eb 8b                	jmp    40000276 <main+0x196>

400002eb <_start>:
400002eb:	60                   	pusha
400002ec:	e8 5f 0f 00 00       	call   40001250 <init>
400002f1:	e8 ea fd ff ff       	call   400000e0 <main>
400002f6:	61                   	popa
400002f7:	c3                   	ret
400002f8:	66 90                	xchg   %ax,%ax
400002fa:	66 90                	xchg   %ax,%ax
400002fc:	66 90                	xchg   %ax,%ax
400002fe:	66 90                	xchg   %ax,%ax

40000300 <debug>:
40000300:	53                   	push   %ebx
40000301:	e8 c1 00 00 00       	call   400003c7 <__x86.get_pc_thunk.bx>
40000306:	81 c3 ee 3c 00 00    	add    $0x3cee,%ebx
4000030c:	83 ec 0c             	sub    $0xc,%esp
4000030f:	ff 74 24 18          	push   0x18(%esp)
40000313:	ff 74 24 18          	push   0x18(%esp)
40000317:	8d 83 94 d5 ff ff    	lea    -0x2a6c(%ebx),%eax
4000031d:	50                   	push   %eax
4000031e:	e8 dd 02 00 00       	call   40000600 <printf>
40000323:	58                   	pop    %eax
40000324:	5a                   	pop    %edx
40000325:	8d 44 24 24          	lea    0x24(%esp),%eax
40000329:	50                   	push   %eax
4000032a:	ff 74 24 24          	push   0x24(%esp)
4000032e:	e8 5d 02 00 00       	call   40000590 <vcprintf>
40000333:	83 c4 18             	add    $0x18,%esp
40000336:	5b                   	pop    %ebx
40000337:	c3                   	ret
40000338:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
4000033f:	00 

40000340 <warn>:
40000340:	53                   	push   %ebx
40000341:	e8 81 00 00 00       	call   400003c7 <__x86.get_pc_thunk.bx>
40000346:	81 c3 ae 3c 00 00    	add    $0x3cae,%ebx
4000034c:	83 ec 0c             	sub    $0xc,%esp
4000034f:	ff 74 24 18          	push   0x18(%esp)
40000353:	ff 74 24 18          	push   0x18(%esp)
40000357:	8d 83 a0 d5 ff ff    	lea    -0x2a60(%ebx),%eax
4000035d:	50                   	push   %eax
4000035e:	e8 9d 02 00 00       	call   40000600 <printf>
40000363:	58                   	pop    %eax
40000364:	5a                   	pop    %edx
40000365:	8d 44 24 24          	lea    0x24(%esp),%eax
40000369:	50                   	push   %eax
4000036a:	ff 74 24 24          	push   0x24(%esp)
4000036e:	e8 1d 02 00 00       	call   40000590 <vcprintf>
40000373:	83 c4 18             	add    $0x18,%esp
40000376:	5b                   	pop    %ebx
40000377:	c3                   	ret
40000378:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
4000037f:	00 

40000380 <panic>:
40000380:	53                   	push   %ebx
40000381:	e8 41 00 00 00       	call   400003c7 <__x86.get_pc_thunk.bx>
40000386:	81 c3 6e 3c 00 00    	add    $0x3c6e,%ebx
4000038c:	83 ec 0c             	sub    $0xc,%esp
4000038f:	ff 74 24 18          	push   0x18(%esp)
40000393:	ff 74 24 18          	push   0x18(%esp)
40000397:	8d 83 ac d5 ff ff    	lea    -0x2a54(%ebx),%eax
4000039d:	50                   	push   %eax
4000039e:	e8 5d 02 00 00       	call   40000600 <printf>
400003a3:	58                   	pop    %eax
400003a4:	5a                   	pop    %edx
400003a5:	8d 44 24 24          	lea    0x24(%esp),%eax
400003a9:	50                   	push   %eax
400003aa:	ff 74 24 24          	push   0x24(%esp)
400003ae:	e8 dd 01 00 00       	call   40000590 <vcprintf>
400003b3:	83 c4 10             	add    $0x10,%esp
400003b6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
400003bd:	00 
400003be:	66 90                	xchg   %ax,%ax
400003c0:	e8 bb 0e 00 00       	call   40001280 <yield>
400003c5:	eb f9                	jmp    400003c0 <panic+0x40>

400003c7 <__x86.get_pc_thunk.bx>:
400003c7:	8b 1c 24             	mov    (%esp),%ebx
400003ca:	c3                   	ret
400003cb:	66 90                	xchg   %ax,%ax
400003cd:	66 90                	xchg   %ax,%ax
400003cf:	90                   	nop

400003d0 <atoi>:
400003d0:	55                   	push   %ebp
400003d1:	57                   	push   %edi
400003d2:	56                   	push   %esi
400003d3:	53                   	push   %ebx
400003d4:	8b 44 24 14          	mov    0x14(%esp),%eax
400003d8:	0f b6 00             	movzbl (%eax),%eax
400003db:	3c 2b                	cmp    $0x2b,%al
400003dd:	0f 84 8d 00 00 00    	je     40000470 <atoi+0xa0>
400003e3:	3c 2d                	cmp    $0x2d,%al
400003e5:	74 59                	je     40000440 <atoi+0x70>
400003e7:	8d 50 d0             	lea    -0x30(%eax),%edx
400003ea:	80 fa 09             	cmp    $0x9,%dl
400003ed:	77 71                	ja     40000460 <atoi+0x90>
400003ef:	31 ff                	xor    %edi,%edi
400003f1:	31 f6                	xor    %esi,%esi
400003f3:	89 f2                	mov    %esi,%edx
400003f5:	31 c9                	xor    %ecx,%ecx
400003f7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
400003fe:	00 
400003ff:	90                   	nop
40000400:	83 e8 30             	sub    $0x30,%eax
40000403:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
40000406:	83 c2 01             	add    $0x1,%edx
40000409:	0f be c0             	movsbl %al,%eax
4000040c:	8d 0c 48             	lea    (%eax,%ecx,2),%ecx
4000040f:	8b 44 24 14          	mov    0x14(%esp),%eax
40000413:	0f b6 04 10          	movzbl (%eax,%edx,1),%eax
40000417:	8d 68 d0             	lea    -0x30(%eax),%ebp
4000041a:	89 eb                	mov    %ebp,%ebx
4000041c:	80 fb 09             	cmp    $0x9,%bl
4000041f:	76 df                	jbe    40000400 <atoi+0x30>
40000421:	39 f2                	cmp    %esi,%edx
40000423:	74 3b                	je     40000460 <atoi+0x90>
40000425:	89 c8                	mov    %ecx,%eax
40000427:	f7 d8                	neg    %eax
40000429:	85 ff                	test   %edi,%edi
4000042b:	0f 45 c8             	cmovne %eax,%ecx
4000042e:	8b 44 24 18          	mov    0x18(%esp),%eax
40000432:	89 08                	mov    %ecx,(%eax)
40000434:	89 d0                	mov    %edx,%eax
40000436:	5b                   	pop    %ebx
40000437:	5e                   	pop    %esi
40000438:	5f                   	pop    %edi
40000439:	5d                   	pop    %ebp
4000043a:	c3                   	ret
4000043b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
40000440:	8b 44 24 14          	mov    0x14(%esp),%eax
40000444:	bf 01 00 00 00       	mov    $0x1,%edi
40000449:	be 01 00 00 00       	mov    $0x1,%esi
4000044e:	0f b6 40 01          	movzbl 0x1(%eax),%eax
40000452:	8d 50 d0             	lea    -0x30(%eax),%edx
40000455:	80 fa 09             	cmp    $0x9,%dl
40000458:	76 99                	jbe    400003f3 <atoi+0x23>
4000045a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
40000460:	31 d2                	xor    %edx,%edx
40000462:	5b                   	pop    %ebx
40000463:	89 d0                	mov    %edx,%eax
40000465:	5e                   	pop    %esi
40000466:	5f                   	pop    %edi
40000467:	5d                   	pop    %ebp
40000468:	c3                   	ret
40000469:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
40000470:	8b 44 24 14          	mov    0x14(%esp),%eax
40000474:	31 ff                	xor    %edi,%edi
40000476:	be 01 00 00 00       	mov    $0x1,%esi
4000047b:	0f b6 40 01          	movzbl 0x1(%eax),%eax
4000047f:	8d 50 d0             	lea    -0x30(%eax),%edx
40000482:	80 fa 09             	cmp    $0x9,%dl
40000485:	0f 86 68 ff ff ff    	jbe    400003f3 <atoi+0x23>
4000048b:	31 d2                	xor    %edx,%edx
4000048d:	eb d3                	jmp    40000462 <atoi+0x92>
4000048f:	90                   	nop

40000490 <putch>:
40000490:	56                   	push   %esi
40000491:	53                   	push   %ebx
40000492:	e8 30 ff ff ff       	call   400003c7 <__x86.get_pc_thunk.bx>
40000497:	81 c3 5d 3b 00 00    	add    $0x3b5d,%ebx
4000049d:	83 ec 04             	sub    $0x4,%esp
400004a0:	8b 74 24 14          	mov    0x14(%esp),%esi
400004a4:	8b 4c 24 10          	mov    0x10(%esp),%ecx
400004a8:	8b 16                	mov    (%esi),%edx
400004aa:	8d 42 01             	lea    0x1(%edx),%eax
400004ad:	89 06                	mov    %eax,(%esi)
400004af:	88 4c 16 08          	mov    %cl,0x8(%esi,%edx,1)
400004b3:	3d ff 01 00 00       	cmp    $0x1ff,%eax
400004b8:	74 0e                	je     400004c8 <putch+0x38>
400004ba:	83 46 04 01          	addl   $0x1,0x4(%esi)
400004be:	83 c4 04             	add    $0x4,%esp
400004c1:	5b                   	pop    %ebx
400004c2:	5e                   	pop    %esi
400004c3:	c3                   	ret
400004c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
400004c8:	83 ec 08             	sub    $0x8,%esp
400004cb:	8d 46 08             	lea    0x8(%esi),%eax
400004ce:	c6 86 07 02 00 00 00 	movb   $0x0,0x207(%esi)
400004d5:	68 ff 01 00 00       	push   $0x1ff
400004da:	50                   	push   %eax
400004db:	e8 d0 0d 00 00       	call   400012b0 <sys_puts>
400004e0:	83 c4 10             	add    $0x10,%esp
400004e3:	c7 06 00 00 00 00    	movl   $0x0,(%esi)
400004e9:	83 46 04 01          	addl   $0x1,0x4(%esi)
400004ed:	83 c4 04             	add    $0x4,%esp
400004f0:	5b                   	pop    %ebx
400004f1:	5e                   	pop    %esi
400004f2:	c3                   	ret
400004f3:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
400004fa:	00 
400004fb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

40000500 <gets>:
40000500:	55                   	push   %ebp
40000501:	57                   	push   %edi
40000502:	56                   	push   %esi
40000503:	53                   	push   %ebx
40000504:	e8 be fe ff ff       	call   400003c7 <__x86.get_pc_thunk.bx>
40000509:	81 c3 eb 3a 00 00    	add    $0x3aeb,%ebx
4000050f:	83 ec 2c             	sub    $0x2c,%esp
40000512:	83 7c 24 44 01       	cmpl   $0x1,0x44(%esp)
40000517:	c6 44 24 1f 00       	movb   $0x0,0x1f(%esp)
4000051c:	7e 46                	jle    40000564 <gets+0x64>
4000051e:	8b 74 24 40          	mov    0x40(%esp),%esi
40000522:	8b 54 24 44          	mov    0x44(%esp),%edx
40000526:	8d 7c 24 1e          	lea    0x1e(%esp),%edi
4000052a:	8d 6c 16 ff          	lea    -0x1(%esi,%edx,1),%ebp
4000052e:	66 90                	xchg   %ax,%ax
40000530:	e8 5b 0d 00 00       	call   40001290 <sys_getc>
40000535:	84 c0                	test   %al,%al
40000537:	74 f7                	je     40000530 <gets+0x30>
40000539:	88 44 24 1e          	mov    %al,0x1e(%esp)
4000053d:	83 ec 08             	sub    $0x8,%esp
40000540:	89 44 24 14          	mov    %eax,0x14(%esp)
40000544:	6a 02                	push   $0x2
40000546:	57                   	push   %edi
40000547:	e8 64 0d 00 00       	call   400012b0 <sys_puts>
4000054c:	8b 44 24 1c          	mov    0x1c(%esp),%eax
40000550:	83 c4 10             	add    $0x10,%esp
40000553:	3c 0a                	cmp    $0xa,%al
40000555:	74 22                	je     40000579 <gets+0x79>
40000557:	3c 0d                	cmp    $0xd,%al
40000559:	74 1e                	je     40000579 <gets+0x79>
4000055b:	88 06                	mov    %al,(%esi)
4000055d:	83 c6 01             	add    $0x1,%esi
40000560:	39 ee                	cmp    %ebp,%esi
40000562:	75 cc                	jne    40000530 <gets+0x30>
40000564:	8b 44 24 40          	mov    0x40(%esp),%eax
40000568:	8b 4c 24 44          	mov    0x44(%esp),%ecx
4000056c:	c6 44 08 ff 00       	movb   $0x0,-0x1(%eax,%ecx,1)
40000571:	83 c4 2c             	add    $0x2c,%esp
40000574:	5b                   	pop    %ebx
40000575:	5e                   	pop    %esi
40000576:	5f                   	pop    %edi
40000577:	5d                   	pop    %ebp
40000578:	c3                   	ret
40000579:	c6 06 00             	movb   $0x0,(%esi)
4000057c:	83 c4 2c             	add    $0x2c,%esp
4000057f:	5b                   	pop    %ebx
40000580:	5e                   	pop    %esi
40000581:	5f                   	pop    %edi
40000582:	5d                   	pop    %ebp
40000583:	c3                   	ret
40000584:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
4000058b:	00 
4000058c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

40000590 <vcprintf>:
40000590:	53                   	push   %ebx
40000591:	e8 31 fe ff ff       	call   400003c7 <__x86.get_pc_thunk.bx>
40000596:	81 c3 5e 3a 00 00    	add    $0x3a5e,%ebx
4000059c:	81 ec 18 02 00 00    	sub    $0x218,%esp
400005a2:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
400005a9:	00 
400005aa:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
400005b1:	00 
400005b2:	ff b4 24 24 02 00 00 	push   0x224(%esp)
400005b9:	ff b4 24 24 02 00 00 	push   0x224(%esp)
400005c0:	8d 44 24 10          	lea    0x10(%esp),%eax
400005c4:	50                   	push   %eax
400005c5:	8d 83 9c c4 ff ff    	lea    -0x3b64(%ebx),%eax
400005cb:	50                   	push   %eax
400005cc:	e8 4f 01 00 00       	call   40000720 <vprintfmt>
400005d1:	8b 44 24 18          	mov    0x18(%esp),%eax
400005d5:	c6 44 04 20 00       	movb   $0x0,0x20(%esp,%eax,1)
400005da:	5a                   	pop    %edx
400005db:	59                   	pop    %ecx
400005dc:	50                   	push   %eax
400005dd:	8d 44 24 1c          	lea    0x1c(%esp),%eax
400005e1:	50                   	push   %eax
400005e2:	e8 c9 0c 00 00       	call   400012b0 <sys_puts>
400005e7:	8b 44 24 1c          	mov    0x1c(%esp),%eax
400005eb:	81 c4 28 02 00 00    	add    $0x228,%esp
400005f1:	5b                   	pop    %ebx
400005f2:	c3                   	ret
400005f3:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
400005fa:	00 
400005fb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

40000600 <printf>:
40000600:	83 ec 14             	sub    $0x14,%esp
40000603:	8d 44 24 1c          	lea    0x1c(%esp),%eax
40000607:	50                   	push   %eax
40000608:	ff 74 24 1c          	push   0x1c(%esp)
4000060c:	e8 7f ff ff ff       	call   40000590 <vcprintf>
40000611:	83 c4 1c             	add    $0x1c,%esp
40000614:	c3                   	ret
40000615:	66 90                	xchg   %ax,%ax
40000617:	66 90                	xchg   %ax,%ax
40000619:	66 90                	xchg   %ax,%ax
4000061b:	66 90                	xchg   %ax,%ax
4000061d:	66 90                	xchg   %ax,%ax
4000061f:	90                   	nop

40000620 <printnum>:
40000620:	e8 86 07 00 00       	call   40000dab <__x86.get_pc_thunk.cx>
40000625:	81 c1 cf 39 00 00    	add    $0x39cf,%ecx
4000062b:	55                   	push   %ebp
4000062c:	57                   	push   %edi
4000062d:	89 d7                	mov    %edx,%edi
4000062f:	56                   	push   %esi
40000630:	89 c6                	mov    %eax,%esi
40000632:	53                   	push   %ebx
40000633:	83 ec 2c             	sub    $0x2c,%esp
40000636:	8b 44 24 40          	mov    0x40(%esp),%eax
4000063a:	8b 54 24 44          	mov    0x44(%esp),%edx
4000063e:	89 4c 24 1c          	mov    %ecx,0x1c(%esp)
40000642:	c7 44 24 14 00 00 00 	movl   $0x0,0x14(%esp)
40000649:	00 
4000064a:	8b 6c 24 50          	mov    0x50(%esp),%ebp
4000064e:	89 44 24 08          	mov    %eax,0x8(%esp)
40000652:	8b 44 24 48          	mov    0x48(%esp),%eax
40000656:	89 54 24 0c          	mov    %edx,0xc(%esp)
4000065a:	8b 54 24 4c          	mov    0x4c(%esp),%edx
4000065e:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
40000662:	39 44 24 08          	cmp    %eax,0x8(%esp)
40000666:	89 44 24 10          	mov    %eax,0x10(%esp)
4000066a:	1b 4c 24 14          	sbb    0x14(%esp),%ecx
4000066e:	8d 5a ff             	lea    -0x1(%edx),%ebx
40000671:	73 55                	jae    400006c8 <printnum+0xa8>
40000673:	83 fa 01             	cmp    $0x1,%edx
40000676:	7e 17                	jle    4000068f <printnum+0x6f>
40000678:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
4000067f:	00 
40000680:	83 ec 08             	sub    $0x8,%esp
40000683:	57                   	push   %edi
40000684:	55                   	push   %ebp
40000685:	ff d6                	call   *%esi
40000687:	83 c4 10             	add    $0x10,%esp
4000068a:	83 eb 01             	sub    $0x1,%ebx
4000068d:	75 f1                	jne    40000680 <printnum+0x60>
4000068f:	89 7c 24 44          	mov    %edi,0x44(%esp)
40000693:	ff 74 24 14          	push   0x14(%esp)
40000697:	ff 74 24 14          	push   0x14(%esp)
4000069b:	ff 74 24 14          	push   0x14(%esp)
4000069f:	ff 74 24 14          	push   0x14(%esp)
400006a3:	8b 5c 24 2c          	mov    0x2c(%esp),%ebx
400006a7:	e8 94 0d 00 00       	call   40001440 <__umoddi3>
400006ac:	0f be 84 03 b8 d5 ff 	movsbl -0x2a48(%ebx,%eax,1),%eax
400006b3:	ff 
400006b4:	89 44 24 50          	mov    %eax,0x50(%esp)
400006b8:	83 c4 3c             	add    $0x3c,%esp
400006bb:	89 f0                	mov    %esi,%eax
400006bd:	5b                   	pop    %ebx
400006be:	5e                   	pop    %esi
400006bf:	5f                   	pop    %edi
400006c0:	5d                   	pop    %ebp
400006c1:	ff e0                	jmp    *%eax
400006c3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
400006c8:	83 ec 0c             	sub    $0xc,%esp
400006cb:	55                   	push   %ebp
400006cc:	53                   	push   %ebx
400006cd:	50                   	push   %eax
400006ce:	83 ec 08             	sub    $0x8,%esp
400006d1:	ff 74 24 34          	push   0x34(%esp)
400006d5:	ff 74 24 34          	push   0x34(%esp)
400006d9:	ff 74 24 34          	push   0x34(%esp)
400006dd:	ff 74 24 34          	push   0x34(%esp)
400006e1:	8b 5c 24 4c          	mov    0x4c(%esp),%ebx
400006e5:	e8 26 0c 00 00       	call   40001310 <__udivdi3>
400006ea:	83 c4 18             	add    $0x18,%esp
400006ed:	52                   	push   %edx
400006ee:	89 fa                	mov    %edi,%edx
400006f0:	50                   	push   %eax
400006f1:	89 f0                	mov    %esi,%eax
400006f3:	e8 28 ff ff ff       	call   40000620 <printnum>
400006f8:	83 c4 20             	add    $0x20,%esp
400006fb:	eb 92                	jmp    4000068f <printnum+0x6f>
400006fd:	8d 76 00             	lea    0x0(%esi),%esi

40000700 <sprintputch>:
40000700:	8b 44 24 08          	mov    0x8(%esp),%eax
40000704:	83 40 08 01          	addl   $0x1,0x8(%eax)
40000708:	8b 10                	mov    (%eax),%edx
4000070a:	3b 50 04             	cmp    0x4(%eax),%edx
4000070d:	73 0b                	jae    4000071a <sprintputch+0x1a>
4000070f:	8d 4a 01             	lea    0x1(%edx),%ecx
40000712:	89 08                	mov    %ecx,(%eax)
40000714:	8b 44 24 04          	mov    0x4(%esp),%eax
40000718:	88 02                	mov    %al,(%edx)
4000071a:	c3                   	ret
4000071b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

40000720 <vprintfmt>:
40000720:	e8 7e 06 00 00       	call   40000da3 <__x86.get_pc_thunk.ax>
40000725:	05 cf 38 00 00       	add    $0x38cf,%eax
4000072a:	55                   	push   %ebp
4000072b:	57                   	push   %edi
4000072c:	56                   	push   %esi
4000072d:	53                   	push   %ebx
4000072e:	83 ec 2c             	sub    $0x2c,%esp
40000731:	8b 74 24 40          	mov    0x40(%esp),%esi
40000735:	8b 7c 24 44          	mov    0x44(%esp),%edi
40000739:	89 44 24 0c          	mov    %eax,0xc(%esp)
4000073d:	8b 6c 24 48          	mov    0x48(%esp),%ebp
40000741:	0f b6 45 00          	movzbl 0x0(%ebp),%eax
40000745:	8d 5d 01             	lea    0x1(%ebp),%ebx
40000748:	83 f8 25             	cmp    $0x25,%eax
4000074b:	75 19                	jne    40000766 <vprintfmt+0x46>
4000074d:	eb 29                	jmp    40000778 <vprintfmt+0x58>
4000074f:	90                   	nop
40000750:	83 ec 08             	sub    $0x8,%esp
40000753:	83 c3 01             	add    $0x1,%ebx
40000756:	57                   	push   %edi
40000757:	50                   	push   %eax
40000758:	ff d6                	call   *%esi
4000075a:	0f b6 43 ff          	movzbl -0x1(%ebx),%eax
4000075e:	83 c4 10             	add    $0x10,%esp
40000761:	83 f8 25             	cmp    $0x25,%eax
40000764:	74 12                	je     40000778 <vprintfmt+0x58>
40000766:	85 c0                	test   %eax,%eax
40000768:	75 e6                	jne    40000750 <vprintfmt+0x30>
4000076a:	83 c4 2c             	add    $0x2c,%esp
4000076d:	5b                   	pop    %ebx
4000076e:	5e                   	pop    %esi
4000076f:	5f                   	pop    %edi
40000770:	5d                   	pop    %ebp
40000771:	c3                   	ret
40000772:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
40000778:	ba ff ff ff ff       	mov    $0xffffffff,%edx
4000077d:	c6 44 24 10 20       	movb   $0x20,0x10(%esp)
40000782:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
40000789:	c7 44 24 08 ff ff ff 	movl   $0xffffffff,0x8(%esp)
40000790:	ff 
40000791:	c7 44 24 18 00 00 00 	movl   $0x0,0x18(%esp)
40000798:	00 
40000799:	89 54 24 14          	mov    %edx,0x14(%esp)
4000079d:	89 74 24 40          	mov    %esi,0x40(%esp)
400007a1:	0f b6 0b             	movzbl (%ebx),%ecx
400007a4:	8d 6b 01             	lea    0x1(%ebx),%ebp
400007a7:	8d 41 dd             	lea    -0x23(%ecx),%eax
400007aa:	3c 55                	cmp    $0x55,%al
400007ac:	77 12                	ja     400007c0 <.L21>
400007ae:	8b 54 24 0c          	mov    0xc(%esp),%edx
400007b2:	0f b6 c0             	movzbl %al,%eax
400007b5:	8b b4 82 30 d6 ff ff 	mov    -0x29d0(%edx,%eax,4),%esi
400007bc:	01 d6                	add    %edx,%esi
400007be:	ff e6                	jmp    *%esi

400007c0 <.L21>:
400007c0:	8b 74 24 40          	mov    0x40(%esp),%esi
400007c4:	83 ec 08             	sub    $0x8,%esp
400007c7:	89 dd                	mov    %ebx,%ebp
400007c9:	57                   	push   %edi
400007ca:	6a 25                	push   $0x25
400007cc:	ff d6                	call   *%esi
400007ce:	83 c4 10             	add    $0x10,%esp
400007d1:	80 7b ff 25          	cmpb   $0x25,-0x1(%ebx)
400007d5:	0f 84 66 ff ff ff    	je     40000741 <vprintfmt+0x21>
400007db:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
400007e0:	83 ed 01             	sub    $0x1,%ebp
400007e3:	80 7d ff 25          	cmpb   $0x25,-0x1(%ebp)
400007e7:	75 f7                	jne    400007e0 <.L21+0x20>
400007e9:	e9 53 ff ff ff       	jmp    40000741 <vprintfmt+0x21>
400007ee:	66 90                	xchg   %ax,%ax

400007f0 <.L31>:
400007f0:	0f be 43 01          	movsbl 0x1(%ebx),%eax
400007f4:	8d 51 d0             	lea    -0x30(%ecx),%edx
400007f7:	89 eb                	mov    %ebp,%ebx
400007f9:	89 54 24 14          	mov    %edx,0x14(%esp)
400007fd:	8d 48 d0             	lea    -0x30(%eax),%ecx
40000800:	83 f9 09             	cmp    $0x9,%ecx
40000803:	77 28                	ja     4000082d <.L31+0x3d>
40000805:	8b 74 24 40          	mov    0x40(%esp),%esi
40000809:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
40000810:	83 c3 01             	add    $0x1,%ebx
40000813:	8d 14 92             	lea    (%edx,%edx,4),%edx
40000816:	8d 54 50 d0          	lea    -0x30(%eax,%edx,2),%edx
4000081a:	0f be 03             	movsbl (%ebx),%eax
4000081d:	8d 48 d0             	lea    -0x30(%eax),%ecx
40000820:	83 f9 09             	cmp    $0x9,%ecx
40000823:	76 eb                	jbe    40000810 <.L31+0x20>
40000825:	89 54 24 14          	mov    %edx,0x14(%esp)
40000829:	89 74 24 40          	mov    %esi,0x40(%esp)
4000082d:	8b 74 24 08          	mov    0x8(%esp),%esi
40000831:	85 f6                	test   %esi,%esi
40000833:	0f 89 68 ff ff ff    	jns    400007a1 <vprintfmt+0x81>
40000839:	8b 44 24 14          	mov    0x14(%esp),%eax
4000083d:	c7 44 24 14 ff ff ff 	movl   $0xffffffff,0x14(%esp)
40000844:	ff 
40000845:	89 44 24 08          	mov    %eax,0x8(%esp)
40000849:	e9 53 ff ff ff       	jmp    400007a1 <vprintfmt+0x81>

4000084e <.L35>:
4000084e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
40000855:	89 eb                	mov    %ebp,%ebx
40000857:	e9 45 ff ff ff       	jmp    400007a1 <vprintfmt+0x81>

4000085c <.L34>:
4000085c:	8b 74 24 40          	mov    0x40(%esp),%esi
40000860:	83 ec 08             	sub    $0x8,%esp
40000863:	57                   	push   %edi
40000864:	6a 25                	push   $0x25
40000866:	ff d6                	call   *%esi
40000868:	83 c4 10             	add    $0x10,%esp
4000086b:	e9 d1 fe ff ff       	jmp    40000741 <vprintfmt+0x21>

40000870 <.L33>:
40000870:	8b 44 24 4c          	mov    0x4c(%esp),%eax
40000874:	89 eb                	mov    %ebp,%ebx
40000876:	8b 00                	mov    (%eax),%eax
40000878:	89 44 24 14          	mov    %eax,0x14(%esp)
4000087c:	8b 44 24 4c          	mov    0x4c(%esp),%eax
40000880:	83 c0 04             	add    $0x4,%eax
40000883:	89 44 24 4c          	mov    %eax,0x4c(%esp)
40000887:	eb a4                	jmp    4000082d <.L31+0x3d>

40000889 <.L32>:
40000889:	8b 4c 24 08          	mov    0x8(%esp),%ecx
4000088d:	31 c0                	xor    %eax,%eax
4000088f:	89 eb                	mov    %ebp,%ebx
40000891:	85 c9                	test   %ecx,%ecx
40000893:	0f 49 c1             	cmovns %ecx,%eax
40000896:	89 44 24 08          	mov    %eax,0x8(%esp)
4000089a:	e9 02 ff ff ff       	jmp    400007a1 <vprintfmt+0x81>

4000089f <.L30>:
4000089f:	8b 44 24 4c          	mov    0x4c(%esp),%eax
400008a3:	8b 74 24 40          	mov    0x40(%esp),%esi
400008a7:	83 ec 08             	sub    $0x8,%esp
400008aa:	57                   	push   %edi
400008ab:	8d 58 04             	lea    0x4(%eax),%ebx
400008ae:	8b 44 24 58          	mov    0x58(%esp),%eax
400008b2:	ff 30                	push   (%eax)
400008b4:	ff d6                	call   *%esi
400008b6:	83 c4 10             	add    $0x10,%esp
400008b9:	89 5c 24 4c          	mov    %ebx,0x4c(%esp)
400008bd:	e9 7f fe ff ff       	jmp    40000741 <vprintfmt+0x21>

400008c2 <.L24>:
400008c2:	83 7c 24 18 01       	cmpl   $0x1,0x18(%esp)
400008c7:	8b 74 24 40          	mov    0x40(%esp),%esi
400008cb:	8b 44 24 4c          	mov    0x4c(%esp),%eax
400008cf:	0f 8f d8 01 00 00    	jg     40000aad <.L25+0xe0>
400008d5:	8b 4c 24 4c          	mov    0x4c(%esp),%ecx
400008d9:	83 c0 04             	add    $0x4,%eax
400008dc:	31 db                	xor    %ebx,%ebx
400008de:	ba 0a 00 00 00       	mov    $0xa,%edx
400008e3:	8b 09                	mov    (%ecx),%ecx
400008e5:	89 44 24 4c          	mov    %eax,0x4c(%esp)
400008e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
400008f0:	83 ec 0c             	sub    $0xc,%esp
400008f3:	0f be 44 24 1c       	movsbl 0x1c(%esp),%eax
400008f8:	50                   	push   %eax
400008f9:	89 f0                	mov    %esi,%eax
400008fb:	ff 74 24 18          	push   0x18(%esp)
400008ff:	52                   	push   %edx
40000900:	89 fa                	mov    %edi,%edx
40000902:	53                   	push   %ebx
40000903:	51                   	push   %ecx
40000904:	e8 17 fd ff ff       	call   40000620 <printnum>
40000909:	83 c4 20             	add    $0x20,%esp
4000090c:	e9 30 fe ff ff       	jmp    40000741 <vprintfmt+0x21>

40000911 <.L26>:
40000911:	8b 74 24 40          	mov    0x40(%esp),%esi
40000915:	83 ec 08             	sub    $0x8,%esp
40000918:	57                   	push   %edi
40000919:	6a 30                	push   $0x30
4000091b:	ff d6                	call   *%esi
4000091d:	59                   	pop    %ecx
4000091e:	5b                   	pop    %ebx
4000091f:	57                   	push   %edi
40000920:	6a 78                	push   $0x78
40000922:	31 db                	xor    %ebx,%ebx
40000924:	ff d6                	call   *%esi
40000926:	8b 44 24 5c          	mov    0x5c(%esp),%eax
4000092a:	ba 10 00 00 00       	mov    $0x10,%edx
4000092f:	8b 08                	mov    (%eax),%ecx
40000931:	83 c4 10             	add    $0x10,%esp
40000934:	83 c0 04             	add    $0x4,%eax
40000937:	89 44 24 4c          	mov    %eax,0x4c(%esp)
4000093b:	eb b3                	jmp    400008f0 <.L24+0x2e>

4000093d <.L22>:
4000093d:	83 7c 24 18 01       	cmpl   $0x1,0x18(%esp)
40000942:	8b 74 24 40          	mov    0x40(%esp),%esi
40000946:	8b 44 24 4c          	mov    0x4c(%esp),%eax
4000094a:	0f 8f 6e 01 00 00    	jg     40000abe <.L25+0xf1>
40000950:	8b 4c 24 4c          	mov    0x4c(%esp),%ecx
40000954:	83 c0 04             	add    $0x4,%eax
40000957:	31 db                	xor    %ebx,%ebx
40000959:	ba 10 00 00 00       	mov    $0x10,%edx
4000095e:	8b 09                	mov    (%ecx),%ecx
40000960:	89 44 24 4c          	mov    %eax,0x4c(%esp)
40000964:	eb 8a                	jmp    400008f0 <.L24+0x2e>

40000966 <.L29>:
40000966:	83 7c 24 18 01       	cmpl   $0x1,0x18(%esp)
4000096b:	8b 74 24 40          	mov    0x40(%esp),%esi
4000096f:	8b 44 24 4c          	mov    0x4c(%esp),%eax
40000973:	0f 8f 5b 01 00 00    	jg     40000ad4 <.L25+0x107>
40000979:	8b 00                	mov    (%eax),%eax
4000097b:	89 c3                	mov    %eax,%ebx
4000097d:	89 c1                	mov    %eax,%ecx
4000097f:	8b 44 24 4c          	mov    0x4c(%esp),%eax
40000983:	c1 fb 1f             	sar    $0x1f,%ebx
40000986:	83 c0 04             	add    $0x4,%eax
40000989:	89 44 24 4c          	mov    %eax,0x4c(%esp)
4000098d:	85 db                	test   %ebx,%ebx
4000098f:	0f 88 68 01 00 00    	js     40000afd <.L19+0xc>
40000995:	ba 0a 00 00 00       	mov    $0xa,%edx
4000099a:	e9 51 ff ff ff       	jmp    400008f0 <.L24+0x2e>

4000099f <.L28>:
4000099f:	83 44 24 18 01       	addl   $0x1,0x18(%esp)
400009a4:	89 eb                	mov    %ebp,%ebx
400009a6:	e9 f6 fd ff ff       	jmp    400007a1 <vprintfmt+0x81>

400009ab <.L27>:
400009ab:	8b 74 24 40          	mov    0x40(%esp),%esi
400009af:	83 ec 08             	sub    $0x8,%esp
400009b2:	57                   	push   %edi
400009b3:	6a 58                	push   $0x58
400009b5:	ff d6                	call   *%esi
400009b7:	58                   	pop    %eax
400009b8:	5a                   	pop    %edx
400009b9:	57                   	push   %edi
400009ba:	6a 58                	push   $0x58
400009bc:	ff d6                	call   *%esi
400009be:	59                   	pop    %ecx
400009bf:	5b                   	pop    %ebx
400009c0:	57                   	push   %edi
400009c1:	6a 58                	push   $0x58
400009c3:	ff d6                	call   *%esi
400009c5:	83 c4 10             	add    $0x10,%esp
400009c8:	e9 74 fd ff ff       	jmp    40000741 <vprintfmt+0x21>

400009cd <.L25>:
400009cd:	8b 44 24 4c          	mov    0x4c(%esp),%eax
400009d1:	8b 4c 24 08          	mov    0x8(%esp),%ecx
400009d5:	8b 54 24 14          	mov    0x14(%esp),%edx
400009d9:	8b 74 24 40          	mov    0x40(%esp),%esi
400009dd:	83 c0 04             	add    $0x4,%eax
400009e0:	80 7c 24 10 2d       	cmpb   $0x2d,0x10(%esp)
400009e5:	89 44 24 14          	mov    %eax,0x14(%esp)
400009e9:	8b 44 24 4c          	mov    0x4c(%esp),%eax
400009ed:	8b 18                	mov    (%eax),%ebx
400009ef:	0f 95 c0             	setne  %al
400009f2:	85 c9                	test   %ecx,%ecx
400009f4:	0f 9f c1             	setg   %cl
400009f7:	89 5c 24 18          	mov    %ebx,0x18(%esp)
400009fb:	21 c8                	and    %ecx,%eax
400009fd:	85 db                	test   %ebx,%ebx
400009ff:	0f 84 21 01 00 00    	je     40000b26 <.L19+0x35>
40000a05:	84 c0                	test   %al,%al
40000a07:	0f 85 48 01 00 00    	jne    40000b55 <.L19+0x64>
40000a0d:	89 d8                	mov    %ebx,%eax
40000a0f:	8d 5b 01             	lea    0x1(%ebx),%ebx
40000a12:	0f be 08             	movsbl (%eax),%ecx
40000a15:	89 c8                	mov    %ecx,%eax
40000a17:	85 c9                	test   %ecx,%ecx
40000a19:	74 64                	je     40000a7f <.L25+0xb2>
40000a1b:	89 74 24 40          	mov    %esi,0x40(%esp)
40000a1f:	89 d6                	mov    %edx,%esi
40000a21:	89 6c 24 48          	mov    %ebp,0x48(%esp)
40000a25:	8b 6c 24 08          	mov    0x8(%esp),%ebp
40000a29:	eb 2a                	jmp    40000a55 <.L25+0x88>
40000a2b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
40000a30:	83 e8 20             	sub    $0x20,%eax
40000a33:	83 f8 5e             	cmp    $0x5e,%eax
40000a36:	76 2d                	jbe    40000a65 <.L25+0x98>
40000a38:	83 ec 08             	sub    $0x8,%esp
40000a3b:	57                   	push   %edi
40000a3c:	6a 3f                	push   $0x3f
40000a3e:	ff 54 24 50          	call   *0x50(%esp)
40000a42:	83 c4 10             	add    $0x10,%esp
40000a45:	0f be 03             	movsbl (%ebx),%eax
40000a48:	83 c3 01             	add    $0x1,%ebx
40000a4b:	83 ed 01             	sub    $0x1,%ebp
40000a4e:	0f be c8             	movsbl %al,%ecx
40000a51:	85 c9                	test   %ecx,%ecx
40000a53:	74 1e                	je     40000a73 <.L25+0xa6>
40000a55:	85 f6                	test   %esi,%esi
40000a57:	78 05                	js     40000a5e <.L25+0x91>
40000a59:	83 ee 01             	sub    $0x1,%esi
40000a5c:	72 15                	jb     40000a73 <.L25+0xa6>
40000a5e:	8b 14 24             	mov    (%esp),%edx
40000a61:	85 d2                	test   %edx,%edx
40000a63:	75 cb                	jne    40000a30 <.L25+0x63>
40000a65:	83 ec 08             	sub    $0x8,%esp
40000a68:	57                   	push   %edi
40000a69:	51                   	push   %ecx
40000a6a:	ff 54 24 50          	call   *0x50(%esp)
40000a6e:	83 c4 10             	add    $0x10,%esp
40000a71:	eb d2                	jmp    40000a45 <.L25+0x78>
40000a73:	89 6c 24 08          	mov    %ebp,0x8(%esp)
40000a77:	8b 74 24 40          	mov    0x40(%esp),%esi
40000a7b:	8b 6c 24 48          	mov    0x48(%esp),%ebp
40000a7f:	8b 44 24 08          	mov    0x8(%esp),%eax
40000a83:	85 c0                	test   %eax,%eax
40000a85:	7e 19                	jle    40000aa0 <.L25+0xd3>
40000a87:	89 c3                	mov    %eax,%ebx
40000a89:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
40000a90:	83 ec 08             	sub    $0x8,%esp
40000a93:	57                   	push   %edi
40000a94:	6a 20                	push   $0x20
40000a96:	ff d6                	call   *%esi
40000a98:	83 c4 10             	add    $0x10,%esp
40000a9b:	83 eb 01             	sub    $0x1,%ebx
40000a9e:	75 f0                	jne    40000a90 <.L25+0xc3>
40000aa0:	8b 44 24 14          	mov    0x14(%esp),%eax
40000aa4:	89 44 24 4c          	mov    %eax,0x4c(%esp)
40000aa8:	e9 94 fc ff ff       	jmp    40000741 <vprintfmt+0x21>
40000aad:	8b 08                	mov    (%eax),%ecx
40000aaf:	8b 58 04             	mov    0x4(%eax),%ebx
40000ab2:	83 c0 08             	add    $0x8,%eax
40000ab5:	89 44 24 4c          	mov    %eax,0x4c(%esp)
40000ab9:	e9 d7 fe ff ff       	jmp    40000995 <.L29+0x2f>
40000abe:	8b 08                	mov    (%eax),%ecx
40000ac0:	8b 58 04             	mov    0x4(%eax),%ebx
40000ac3:	83 c0 08             	add    $0x8,%eax
40000ac6:	ba 10 00 00 00       	mov    $0x10,%edx
40000acb:	89 44 24 4c          	mov    %eax,0x4c(%esp)
40000acf:	e9 1c fe ff ff       	jmp    400008f0 <.L24+0x2e>
40000ad4:	8b 08                	mov    (%eax),%ecx
40000ad6:	8b 58 04             	mov    0x4(%eax),%ebx
40000ad9:	83 c0 08             	add    $0x8,%eax
40000adc:	89 44 24 4c          	mov    %eax,0x4c(%esp)
40000ae0:	e9 a8 fe ff ff       	jmp    4000098d <.L29+0x27>

40000ae5 <.L63>:
40000ae5:	c6 44 24 10 30       	movb   $0x30,0x10(%esp)
40000aea:	89 eb                	mov    %ebp,%ebx
40000aec:	e9 b0 fc ff ff       	jmp    400007a1 <vprintfmt+0x81>

40000af1 <.L19>:
40000af1:	c6 44 24 10 2d       	movb   $0x2d,0x10(%esp)
40000af6:	89 eb                	mov    %ebp,%ebx
40000af8:	e9 a4 fc ff ff       	jmp    400007a1 <vprintfmt+0x81>
40000afd:	89 5c 24 04          	mov    %ebx,0x4(%esp)
40000b01:	83 ec 08             	sub    $0x8,%esp
40000b04:	31 db                	xor    %ebx,%ebx
40000b06:	89 4c 24 08          	mov    %ecx,0x8(%esp)
40000b0a:	57                   	push   %edi
40000b0b:	6a 2d                	push   $0x2d
40000b0d:	ff d6                	call   *%esi
40000b0f:	8b 4c 24 10          	mov    0x10(%esp),%ecx
40000b13:	ba 0a 00 00 00       	mov    $0xa,%edx
40000b18:	f7 d9                	neg    %ecx
40000b1a:	1b 5c 24 14          	sbb    0x14(%esp),%ebx
40000b1e:	83 c4 10             	add    $0x10,%esp
40000b21:	e9 ca fd ff ff       	jmp    400008f0 <.L24+0x2e>
40000b26:	84 c0                	test   %al,%al
40000b28:	0f 85 99 00 00 00    	jne    40000bc7 <.L19+0xd6>
40000b2e:	8b 5c 24 0c          	mov    0xc(%esp),%ebx
40000b32:	89 74 24 40          	mov    %esi,0x40(%esp)
40000b36:	b9 28 00 00 00       	mov    $0x28,%ecx
40000b3b:	89 d6                	mov    %edx,%esi
40000b3d:	89 6c 24 48          	mov    %ebp,0x48(%esp)
40000b41:	b8 28 00 00 00       	mov    $0x28,%eax
40000b46:	8b 6c 24 08          	mov    0x8(%esp),%ebp
40000b4a:	8d 9b ca d5 ff ff    	lea    -0x2a36(%ebx),%ebx
40000b50:	e9 00 ff ff ff       	jmp    40000a55 <.L25+0x88>
40000b55:	83 ec 08             	sub    $0x8,%esp
40000b58:	52                   	push   %edx
40000b59:	89 54 24 28          	mov    %edx,0x28(%esp)
40000b5d:	ff 74 24 24          	push   0x24(%esp)
40000b61:	8b 5c 24 1c          	mov    0x1c(%esp),%ebx
40000b65:	e8 76 02 00 00       	call   40000de0 <strnlen>
40000b6a:	29 44 24 18          	sub    %eax,0x18(%esp)
40000b6e:	8b 4c 24 18          	mov    0x18(%esp),%ecx
40000b72:	83 c4 10             	add    $0x10,%esp
40000b75:	8b 54 24 1c          	mov    0x1c(%esp),%edx
40000b79:	85 c9                	test   %ecx,%ecx
40000b7b:	0f 8e 99 00 00 00    	jle    40000c1a <.L19+0x129>
40000b81:	0f be 5c 24 10       	movsbl 0x10(%esp),%ebx
40000b86:	89 54 24 10          	mov    %edx,0x10(%esp)
40000b8a:	89 6c 24 48          	mov    %ebp,0x48(%esp)
40000b8e:	8b 6c 24 08          	mov    0x8(%esp),%ebp
40000b92:	83 ec 08             	sub    $0x8,%esp
40000b95:	57                   	push   %edi
40000b96:	53                   	push   %ebx
40000b97:	ff d6                	call   *%esi
40000b99:	83 c4 10             	add    $0x10,%esp
40000b9c:	83 ed 01             	sub    $0x1,%ebp
40000b9f:	75 f1                	jne    40000b92 <.L19+0xa1>
40000ba1:	8b 44 24 18          	mov    0x18(%esp),%eax
40000ba5:	8b 54 24 10          	mov    0x10(%esp),%edx
40000ba9:	89 6c 24 08          	mov    %ebp,0x8(%esp)
40000bad:	8b 6c 24 48          	mov    0x48(%esp),%ebp
40000bb1:	8d 58 01             	lea    0x1(%eax),%ebx
40000bb4:	0f be 00             	movsbl (%eax),%eax
40000bb7:	0f be c8             	movsbl %al,%ecx
40000bba:	85 c9                	test   %ecx,%ecx
40000bbc:	0f 85 59 fe ff ff    	jne    40000a1b <.L25+0x4e>
40000bc2:	e9 d9 fe ff ff       	jmp    40000aa0 <.L25+0xd3>
40000bc7:	83 ec 08             	sub    $0x8,%esp
40000bca:	52                   	push   %edx
40000bcb:	8b 5c 24 18          	mov    0x18(%esp),%ebx
40000bcf:	8d 8b c9 d5 ff ff    	lea    -0x2a37(%ebx),%ecx
40000bd5:	89 54 24 28          	mov    %edx,0x28(%esp)
40000bd9:	51                   	push   %ecx
40000bda:	89 4c 24 28          	mov    %ecx,0x28(%esp)
40000bde:	e8 fd 01 00 00       	call   40000de0 <strnlen>
40000be3:	29 44 24 18          	sub    %eax,0x18(%esp)
40000be7:	8b 44 24 18          	mov    0x18(%esp),%eax
40000beb:	83 c4 10             	add    $0x10,%esp
40000bee:	8b 54 24 1c          	mov    0x1c(%esp),%edx
40000bf2:	85 c0                	test   %eax,%eax
40000bf4:	7f 8b                	jg     40000b81 <.L19+0x90>
40000bf6:	b9 28 00 00 00       	mov    $0x28,%ecx
40000bfb:	b8 28 00 00 00       	mov    $0x28,%eax
40000c00:	8b 5c 24 18          	mov    0x18(%esp),%ebx
40000c04:	89 74 24 40          	mov    %esi,0x40(%esp)
40000c08:	89 d6                	mov    %edx,%esi
40000c0a:	89 6c 24 48          	mov    %ebp,0x48(%esp)
40000c0e:	8b 6c 24 08          	mov    0x8(%esp),%ebp
40000c12:	83 c3 01             	add    $0x1,%ebx
40000c15:	e9 3b fe ff ff       	jmp    40000a55 <.L25+0x88>
40000c1a:	8b 44 24 18          	mov    0x18(%esp),%eax
40000c1e:	0f be 08             	movsbl (%eax),%ecx
40000c21:	89 c8                	mov    %ecx,%eax
40000c23:	85 c9                	test   %ecx,%ecx
40000c25:	75 d9                	jne    40000c00 <.L19+0x10f>
40000c27:	e9 74 fe ff ff       	jmp    40000aa0 <.L25+0xd3>
40000c2c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

40000c30 <printfmt>:
40000c30:	83 ec 0c             	sub    $0xc,%esp
40000c33:	8d 44 24 1c          	lea    0x1c(%esp),%eax
40000c37:	50                   	push   %eax
40000c38:	ff 74 24 1c          	push   0x1c(%esp)
40000c3c:	ff 74 24 1c          	push   0x1c(%esp)
40000c40:	ff 74 24 1c          	push   0x1c(%esp)
40000c44:	e8 d7 fa ff ff       	call   40000720 <vprintfmt>
40000c49:	83 c4 1c             	add    $0x1c,%esp
40000c4c:	c3                   	ret
40000c4d:	8d 76 00             	lea    0x0(%esi),%esi

40000c50 <vsprintf>:
40000c50:	e8 4e 01 00 00       	call   40000da3 <__x86.get_pc_thunk.ax>
40000c55:	05 9f 33 00 00       	add    $0x339f,%eax
40000c5a:	83 ec 1c             	sub    $0x1c,%esp
40000c5d:	8b 54 24 20          	mov    0x20(%esp),%edx
40000c61:	c7 44 24 08 ff ff ff 	movl   $0xffffffff,0x8(%esp)
40000c68:	ff 
40000c69:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
40000c70:	00 
40000c71:	89 54 24 04          	mov    %edx,0x4(%esp)
40000c75:	ff 74 24 28          	push   0x28(%esp)
40000c79:	ff 74 24 28          	push   0x28(%esp)
40000c7d:	8d 80 0c c7 ff ff    	lea    -0x38f4(%eax),%eax
40000c83:	8d 54 24 0c          	lea    0xc(%esp),%edx
40000c87:	52                   	push   %edx
40000c88:	50                   	push   %eax
40000c89:	e8 92 fa ff ff       	call   40000720 <vprintfmt>
40000c8e:	8b 44 24 14          	mov    0x14(%esp),%eax
40000c92:	c6 00 00             	movb   $0x0,(%eax)
40000c95:	8b 44 24 1c          	mov    0x1c(%esp),%eax
40000c99:	83 c4 2c             	add    $0x2c,%esp
40000c9c:	c3                   	ret
40000c9d:	8d 76 00             	lea    0x0(%esi),%esi

40000ca0 <sprintf>:
40000ca0:	e8 fe 00 00 00       	call   40000da3 <__x86.get_pc_thunk.ax>
40000ca5:	05 4f 33 00 00       	add    $0x334f,%eax
40000caa:	83 ec 1c             	sub    $0x1c,%esp
40000cad:	8b 54 24 20          	mov    0x20(%esp),%edx
40000cb1:	c7 44 24 08 ff ff ff 	movl   $0xffffffff,0x8(%esp)
40000cb8:	ff 
40000cb9:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
40000cc0:	00 
40000cc1:	89 54 24 04          	mov    %edx,0x4(%esp)
40000cc5:	8d 54 24 28          	lea    0x28(%esp),%edx
40000cc9:	52                   	push   %edx
40000cca:	ff 74 24 28          	push   0x28(%esp)
40000cce:	8d 80 0c c7 ff ff    	lea    -0x38f4(%eax),%eax
40000cd4:	8d 54 24 0c          	lea    0xc(%esp),%edx
40000cd8:	52                   	push   %edx
40000cd9:	50                   	push   %eax
40000cda:	e8 41 fa ff ff       	call   40000720 <vprintfmt>
40000cdf:	8b 44 24 14          	mov    0x14(%esp),%eax
40000ce3:	c6 00 00             	movb   $0x0,(%eax)
40000ce6:	8b 44 24 1c          	mov    0x1c(%esp),%eax
40000cea:	83 c4 2c             	add    $0x2c,%esp
40000ced:	c3                   	ret
40000cee:	66 90                	xchg   %ax,%ax

40000cf0 <vsnprintf>:
40000cf0:	e8 b2 00 00 00       	call   40000da7 <__x86.get_pc_thunk.dx>
40000cf5:	81 c2 ff 32 00 00    	add    $0x32ff,%edx
40000cfb:	83 ec 1c             	sub    $0x1c,%esp
40000cfe:	8b 44 24 20          	mov    0x20(%esp),%eax
40000d02:	8b 4c 24 24          	mov    0x24(%esp),%ecx
40000d06:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
40000d0d:	00 
40000d0e:	89 44 24 04          	mov    %eax,0x4(%esp)
40000d12:	8d 44 08 ff          	lea    -0x1(%eax,%ecx,1),%eax
40000d16:	89 44 24 08          	mov    %eax,0x8(%esp)
40000d1a:	ff 74 24 2c          	push   0x2c(%esp)
40000d1e:	ff 74 24 2c          	push   0x2c(%esp)
40000d22:	8d 44 24 0c          	lea    0xc(%esp),%eax
40000d26:	50                   	push   %eax
40000d27:	8d 82 0c c7 ff ff    	lea    -0x38f4(%edx),%eax
40000d2d:	50                   	push   %eax
40000d2e:	e8 ed f9 ff ff       	call   40000720 <vprintfmt>
40000d33:	8b 44 24 14          	mov    0x14(%esp),%eax
40000d37:	c6 00 00             	movb   $0x0,(%eax)
40000d3a:	8b 44 24 1c          	mov    0x1c(%esp),%eax
40000d3e:	83 c4 2c             	add    $0x2c,%esp
40000d41:	c3                   	ret
40000d42:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
40000d49:	00 
40000d4a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

40000d50 <snprintf>:
40000d50:	e8 52 00 00 00       	call   40000da7 <__x86.get_pc_thunk.dx>
40000d55:	81 c2 9f 32 00 00    	add    $0x329f,%edx
40000d5b:	83 ec 1c             	sub    $0x1c,%esp
40000d5e:	8b 44 24 20          	mov    0x20(%esp),%eax
40000d62:	8b 4c 24 24          	mov    0x24(%esp),%ecx
40000d66:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
40000d6d:	00 
40000d6e:	89 44 24 04          	mov    %eax,0x4(%esp)
40000d72:	8d 44 08 ff          	lea    -0x1(%eax,%ecx,1),%eax
40000d76:	89 44 24 08          	mov    %eax,0x8(%esp)
40000d7a:	8d 44 24 2c          	lea    0x2c(%esp),%eax
40000d7e:	50                   	push   %eax
40000d7f:	ff 74 24 2c          	push   0x2c(%esp)
40000d83:	8d 44 24 0c          	lea    0xc(%esp),%eax
40000d87:	50                   	push   %eax
40000d88:	8d 82 0c c7 ff ff    	lea    -0x38f4(%edx),%eax
40000d8e:	50                   	push   %eax
40000d8f:	e8 8c f9 ff ff       	call   40000720 <vprintfmt>
40000d94:	8b 44 24 14          	mov    0x14(%esp),%eax
40000d98:	c6 00 00             	movb   $0x0,(%eax)
40000d9b:	8b 44 24 1c          	mov    0x1c(%esp),%eax
40000d9f:	83 c4 2c             	add    $0x2c,%esp
40000da2:	c3                   	ret

40000da3 <__x86.get_pc_thunk.ax>:
40000da3:	8b 04 24             	mov    (%esp),%eax
40000da6:	c3                   	ret

40000da7 <__x86.get_pc_thunk.dx>:
40000da7:	8b 14 24             	mov    (%esp),%edx
40000daa:	c3                   	ret

40000dab <__x86.get_pc_thunk.cx>:
40000dab:	8b 0c 24             	mov    (%esp),%ecx
40000dae:	c3                   	ret
40000daf:	90                   	nop

40000db0 <strlen>:
40000db0:	8b 54 24 04          	mov    0x4(%esp),%edx
40000db4:	31 c0                	xor    %eax,%eax
40000db6:	80 3a 00             	cmpb   $0x0,(%edx)
40000db9:	74 15                	je     40000dd0 <strlen+0x20>
40000dbb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
40000dc0:	83 c0 01             	add    $0x1,%eax
40000dc3:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
40000dc7:	75 f7                	jne    40000dc0 <strlen+0x10>
40000dc9:	c3                   	ret
40000dca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
40000dd0:	c3                   	ret
40000dd1:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
40000dd8:	00 
40000dd9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

40000de0 <strnlen>:
40000de0:	8b 54 24 08          	mov    0x8(%esp),%edx
40000de4:	8b 4c 24 04          	mov    0x4(%esp),%ecx
40000de8:	31 c0                	xor    %eax,%eax
40000dea:	85 d2                	test   %edx,%edx
40000dec:	75 09                	jne    40000df7 <strnlen+0x17>
40000dee:	c3                   	ret
40000def:	90                   	nop
40000df0:	83 c0 01             	add    $0x1,%eax
40000df3:	39 c2                	cmp    %eax,%edx
40000df5:	74 09                	je     40000e00 <strnlen+0x20>
40000df7:	80 3c 01 00          	cmpb   $0x0,(%ecx,%eax,1)
40000dfb:	75 f3                	jne    40000df0 <strnlen+0x10>
40000dfd:	c3                   	ret
40000dfe:	66 90                	xchg   %ax,%ax
40000e00:	c3                   	ret
40000e01:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
40000e08:	00 
40000e09:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

40000e10 <strcpy>:
40000e10:	53                   	push   %ebx
40000e11:	8b 4c 24 08          	mov    0x8(%esp),%ecx
40000e15:	31 c0                	xor    %eax,%eax
40000e17:	8b 5c 24 0c          	mov    0xc(%esp),%ebx
40000e1b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
40000e20:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
40000e24:	88 14 01             	mov    %dl,(%ecx,%eax,1)
40000e27:	83 c0 01             	add    $0x1,%eax
40000e2a:	84 d2                	test   %dl,%dl
40000e2c:	75 f2                	jne    40000e20 <strcpy+0x10>
40000e2e:	89 c8                	mov    %ecx,%eax
40000e30:	5b                   	pop    %ebx
40000e31:	c3                   	ret
40000e32:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
40000e39:	00 
40000e3a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

40000e40 <strncpy>:
40000e40:	56                   	push   %esi
40000e41:	53                   	push   %ebx
40000e42:	8b 5c 24 14          	mov    0x14(%esp),%ebx
40000e46:	8b 74 24 0c          	mov    0xc(%esp),%esi
40000e4a:	8b 54 24 10          	mov    0x10(%esp),%edx
40000e4e:	85 db                	test   %ebx,%ebx
40000e50:	74 21                	je     40000e73 <strncpy+0x33>
40000e52:	01 f3                	add    %esi,%ebx
40000e54:	89 f0                	mov    %esi,%eax
40000e56:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
40000e5d:	00 
40000e5e:	66 90                	xchg   %ax,%ax
40000e60:	0f b6 0a             	movzbl (%edx),%ecx
40000e63:	83 c0 01             	add    $0x1,%eax
40000e66:	80 f9 01             	cmp    $0x1,%cl
40000e69:	88 48 ff             	mov    %cl,-0x1(%eax)
40000e6c:	83 da ff             	sbb    $0xffffffff,%edx
40000e6f:	39 c3                	cmp    %eax,%ebx
40000e71:	75 ed                	jne    40000e60 <strncpy+0x20>
40000e73:	89 f0                	mov    %esi,%eax
40000e75:	5b                   	pop    %ebx
40000e76:	5e                   	pop    %esi
40000e77:	c3                   	ret
40000e78:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
40000e7f:	00 

40000e80 <strlcpy>:
40000e80:	56                   	push   %esi
40000e81:	53                   	push   %ebx
40000e82:	8b 44 24 14          	mov    0x14(%esp),%eax
40000e86:	8b 74 24 0c          	mov    0xc(%esp),%esi
40000e8a:	8b 4c 24 10          	mov    0x10(%esp),%ecx
40000e8e:	85 c0                	test   %eax,%eax
40000e90:	74 29                	je     40000ebb <strlcpy+0x3b>
40000e92:	89 f2                	mov    %esi,%edx
40000e94:	83 e8 01             	sub    $0x1,%eax
40000e97:	74 1f                	je     40000eb8 <strlcpy+0x38>
40000e99:	8d 1c 06             	lea    (%esi,%eax,1),%ebx
40000e9c:	eb 0f                	jmp    40000ead <strlcpy+0x2d>
40000e9e:	66 90                	xchg   %ax,%ax
40000ea0:	83 c2 01             	add    $0x1,%edx
40000ea3:	83 c1 01             	add    $0x1,%ecx
40000ea6:	88 42 ff             	mov    %al,-0x1(%edx)
40000ea9:	39 da                	cmp    %ebx,%edx
40000eab:	74 07                	je     40000eb4 <strlcpy+0x34>
40000ead:	0f b6 01             	movzbl (%ecx),%eax
40000eb0:	84 c0                	test   %al,%al
40000eb2:	75 ec                	jne    40000ea0 <strlcpy+0x20>
40000eb4:	89 d0                	mov    %edx,%eax
40000eb6:	29 f0                	sub    %esi,%eax
40000eb8:	c6 02 00             	movb   $0x0,(%edx)
40000ebb:	5b                   	pop    %ebx
40000ebc:	5e                   	pop    %esi
40000ebd:	c3                   	ret
40000ebe:	66 90                	xchg   %ax,%ax

40000ec0 <strcmp>:
40000ec0:	53                   	push   %ebx
40000ec1:	8b 54 24 08          	mov    0x8(%esp),%edx
40000ec5:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
40000ec9:	0f b6 02             	movzbl (%edx),%eax
40000ecc:	84 c0                	test   %al,%al
40000ece:	75 18                	jne    40000ee8 <strcmp+0x28>
40000ed0:	eb 30                	jmp    40000f02 <strcmp+0x42>
40000ed2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
40000ed8:	0f b6 42 01          	movzbl 0x1(%edx),%eax
40000edc:	83 c2 01             	add    $0x1,%edx
40000edf:	8d 59 01             	lea    0x1(%ecx),%ebx
40000ee2:	84 c0                	test   %al,%al
40000ee4:	74 12                	je     40000ef8 <strcmp+0x38>
40000ee6:	89 d9                	mov    %ebx,%ecx
40000ee8:	0f b6 19             	movzbl (%ecx),%ebx
40000eeb:	38 c3                	cmp    %al,%bl
40000eed:	74 e9                	je     40000ed8 <strcmp+0x18>
40000eef:	29 d8                	sub    %ebx,%eax
40000ef1:	5b                   	pop    %ebx
40000ef2:	c3                   	ret
40000ef3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
40000ef8:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
40000efc:	31 c0                	xor    %eax,%eax
40000efe:	29 d8                	sub    %ebx,%eax
40000f00:	5b                   	pop    %ebx
40000f01:	c3                   	ret
40000f02:	0f b6 19             	movzbl (%ecx),%ebx
40000f05:	31 c0                	xor    %eax,%eax
40000f07:	eb e6                	jmp    40000eef <strcmp+0x2f>
40000f09:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

40000f10 <strncmp>:
40000f10:	53                   	push   %ebx
40000f11:	8b 54 24 10          	mov    0x10(%esp),%edx
40000f15:	8b 44 24 08          	mov    0x8(%esp),%eax
40000f19:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
40000f1d:	85 d2                	test   %edx,%edx
40000f1f:	75 16                	jne    40000f37 <strncmp+0x27>
40000f21:	eb 2d                	jmp    40000f50 <strncmp+0x40>
40000f23:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
40000f28:	3a 19                	cmp    (%ecx),%bl
40000f2a:	75 12                	jne    40000f3e <strncmp+0x2e>
40000f2c:	83 c0 01             	add    $0x1,%eax
40000f2f:	83 c1 01             	add    $0x1,%ecx
40000f32:	83 ea 01             	sub    $0x1,%edx
40000f35:	74 19                	je     40000f50 <strncmp+0x40>
40000f37:	0f b6 18             	movzbl (%eax),%ebx
40000f3a:	84 db                	test   %bl,%bl
40000f3c:	75 ea                	jne    40000f28 <strncmp+0x18>
40000f3e:	0f b6 00             	movzbl (%eax),%eax
40000f41:	0f b6 11             	movzbl (%ecx),%edx
40000f44:	5b                   	pop    %ebx
40000f45:	29 d0                	sub    %edx,%eax
40000f47:	c3                   	ret
40000f48:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
40000f4f:	00 
40000f50:	31 c0                	xor    %eax,%eax
40000f52:	5b                   	pop    %ebx
40000f53:	c3                   	ret
40000f54:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
40000f5b:	00 
40000f5c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

40000f60 <strchr>:
40000f60:	8b 44 24 04          	mov    0x4(%esp),%eax
40000f64:	0f b6 4c 24 08       	movzbl 0x8(%esp),%ecx
40000f69:	0f b6 10             	movzbl (%eax),%edx
40000f6c:	84 d2                	test   %dl,%dl
40000f6e:	75 13                	jne    40000f83 <strchr+0x23>
40000f70:	eb 1e                	jmp    40000f90 <strchr+0x30>
40000f72:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
40000f78:	0f b6 50 01          	movzbl 0x1(%eax),%edx
40000f7c:	83 c0 01             	add    $0x1,%eax
40000f7f:	84 d2                	test   %dl,%dl
40000f81:	74 0d                	je     40000f90 <strchr+0x30>
40000f83:	38 d1                	cmp    %dl,%cl
40000f85:	75 f1                	jne    40000f78 <strchr+0x18>
40000f87:	c3                   	ret
40000f88:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
40000f8f:	00 
40000f90:	31 c0                	xor    %eax,%eax
40000f92:	c3                   	ret
40000f93:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
40000f9a:	00 
40000f9b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

40000fa0 <strfind>:
40000fa0:	53                   	push   %ebx
40000fa1:	8b 44 24 08          	mov    0x8(%esp),%eax
40000fa5:	8b 54 24 0c          	mov    0xc(%esp),%edx
40000fa9:	0f b6 18             	movzbl (%eax),%ebx
40000fac:	38 d3                	cmp    %dl,%bl
40000fae:	74 1f                	je     40000fcf <strfind+0x2f>
40000fb0:	89 d1                	mov    %edx,%ecx
40000fb2:	84 db                	test   %bl,%bl
40000fb4:	75 0e                	jne    40000fc4 <strfind+0x24>
40000fb6:	eb 17                	jmp    40000fcf <strfind+0x2f>
40000fb8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
40000fbf:	00 
40000fc0:	84 d2                	test   %dl,%dl
40000fc2:	74 0b                	je     40000fcf <strfind+0x2f>
40000fc4:	0f b6 50 01          	movzbl 0x1(%eax),%edx
40000fc8:	83 c0 01             	add    $0x1,%eax
40000fcb:	38 ca                	cmp    %cl,%dl
40000fcd:	75 f1                	jne    40000fc0 <strfind+0x20>
40000fcf:	5b                   	pop    %ebx
40000fd0:	c3                   	ret
40000fd1:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
40000fd8:	00 
40000fd9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

40000fe0 <strtol>:
40000fe0:	55                   	push   %ebp
40000fe1:	57                   	push   %edi
40000fe2:	56                   	push   %esi
40000fe3:	53                   	push   %ebx
40000fe4:	8b 54 24 14          	mov    0x14(%esp),%edx
40000fe8:	8b 74 24 18          	mov    0x18(%esp),%esi
40000fec:	0f b6 02             	movzbl (%edx),%eax
40000fef:	3c 20                	cmp    $0x20,%al
40000ff1:	75 10                	jne    40001003 <strtol+0x23>
40000ff3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
40000ff8:	0f b6 42 01          	movzbl 0x1(%edx),%eax
40000ffc:	83 c2 01             	add    $0x1,%edx
40000fff:	3c 20                	cmp    $0x20,%al
40001001:	74 f5                	je     40000ff8 <strtol+0x18>
40001003:	3c 09                	cmp    $0x9,%al
40001005:	74 f1                	je     40000ff8 <strtol+0x18>
40001007:	3c 2b                	cmp    $0x2b,%al
40001009:	0f 84 b1 00 00 00    	je     400010c0 <strtol+0xe0>
4000100f:	31 ff                	xor    %edi,%edi
40001011:	3c 2d                	cmp    $0x2d,%al
40001013:	0f 84 97 00 00 00    	je     400010b0 <strtol+0xd0>
40001019:	0f b6 02             	movzbl (%edx),%eax
4000101c:	f7 44 24 1c ef ff ff 	testl  $0xffffffef,0x1c(%esp)
40001023:	ff 
40001024:	75 1d                	jne    40001043 <strtol+0x63>
40001026:	3c 30                	cmp    $0x30,%al
40001028:	0f 84 a2 00 00 00    	je     400010d0 <strtol+0xf0>
4000102e:	83 7c 24 1c 01       	cmpl   $0x1,0x1c(%esp)
40001033:	19 c0                	sbb    %eax,%eax
40001035:	89 44 24 1c          	mov    %eax,0x1c(%esp)
40001039:	83 64 24 1c fa       	andl   $0xfffffffa,0x1c(%esp)
4000103e:	83 44 24 1c 10       	addl   $0x10,0x1c(%esp)
40001043:	31 c9                	xor    %ecx,%ecx
40001045:	eb 1c                	jmp    40001063 <strtol+0x83>
40001047:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
4000104e:	00 
4000104f:	90                   	nop
40001050:	83 e8 30             	sub    $0x30,%eax
40001053:	3b 44 24 1c          	cmp    0x1c(%esp),%eax
40001057:	7d 2a                	jge    40001083 <strtol+0xa3>
40001059:	0f af 4c 24 1c       	imul   0x1c(%esp),%ecx
4000105e:	83 c2 01             	add    $0x1,%edx
40001061:	01 c1                	add    %eax,%ecx
40001063:	0f be 02             	movsbl (%edx),%eax
40001066:	8d 68 d0             	lea    -0x30(%eax),%ebp
40001069:	89 eb                	mov    %ebp,%ebx
4000106b:	80 fb 09             	cmp    $0x9,%bl
4000106e:	76 e0                	jbe    40001050 <strtol+0x70>
40001070:	8d 68 9f             	lea    -0x61(%eax),%ebp
40001073:	89 eb                	mov    %ebp,%ebx
40001075:	80 fb 19             	cmp    $0x19,%bl
40001078:	77 26                	ja     400010a0 <strtol+0xc0>
4000107a:	83 e8 57             	sub    $0x57,%eax
4000107d:	3b 44 24 1c          	cmp    0x1c(%esp),%eax
40001081:	7c d6                	jl     40001059 <strtol+0x79>
40001083:	85 f6                	test   %esi,%esi
40001085:	74 02                	je     40001089 <strtol+0xa9>
40001087:	89 16                	mov    %edx,(%esi)
40001089:	89 c8                	mov    %ecx,%eax
4000108b:	5b                   	pop    %ebx
4000108c:	5e                   	pop    %esi
4000108d:	f7 d8                	neg    %eax
4000108f:	85 ff                	test   %edi,%edi
40001091:	5f                   	pop    %edi
40001092:	5d                   	pop    %ebp
40001093:	0f 45 c8             	cmovne %eax,%ecx
40001096:	89 c8                	mov    %ecx,%eax
40001098:	c3                   	ret
40001099:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
400010a0:	8d 68 bf             	lea    -0x41(%eax),%ebp
400010a3:	89 eb                	mov    %ebp,%ebx
400010a5:	80 fb 19             	cmp    $0x19,%bl
400010a8:	77 d9                	ja     40001083 <strtol+0xa3>
400010aa:	83 e8 37             	sub    $0x37,%eax
400010ad:	eb a4                	jmp    40001053 <strtol+0x73>
400010af:	90                   	nop
400010b0:	83 c2 01             	add    $0x1,%edx
400010b3:	bf 01 00 00 00       	mov    $0x1,%edi
400010b8:	e9 5c ff ff ff       	jmp    40001019 <strtol+0x39>
400010bd:	8d 76 00             	lea    0x0(%esi),%esi
400010c0:	83 c2 01             	add    $0x1,%edx
400010c3:	31 ff                	xor    %edi,%edi
400010c5:	e9 4f ff ff ff       	jmp    40001019 <strtol+0x39>
400010ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
400010d0:	80 7a 01 78          	cmpb   $0x78,0x1(%edx)
400010d4:	74 25                	je     400010fb <strtol+0x11b>
400010d6:	8b 44 24 1c          	mov    0x1c(%esp),%eax
400010da:	85 c0                	test   %eax,%eax
400010dc:	74 0d                	je     400010eb <strtol+0x10b>
400010de:	c7 44 24 1c 10 00 00 	movl   $0x10,0x1c(%esp)
400010e5:	00 
400010e6:	e9 58 ff ff ff       	jmp    40001043 <strtol+0x63>
400010eb:	c7 44 24 1c 08 00 00 	movl   $0x8,0x1c(%esp)
400010f2:	00 
400010f3:	83 c2 01             	add    $0x1,%edx
400010f6:	e9 48 ff ff ff       	jmp    40001043 <strtol+0x63>
400010fb:	c7 44 24 1c 10 00 00 	movl   $0x10,0x1c(%esp)
40001102:	00 
40001103:	83 c2 02             	add    $0x2,%edx
40001106:	e9 38 ff ff ff       	jmp    40001043 <strtol+0x63>
4000110b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

40001110 <memset>:
40001110:	57                   	push   %edi
40001111:	8b 4c 24 10          	mov    0x10(%esp),%ecx
40001115:	8b 7c 24 08          	mov    0x8(%esp),%edi
40001119:	85 c9                	test   %ecx,%ecx
4000111b:	74 19                	je     40001136 <memset+0x26>
4000111d:	89 f8                	mov    %edi,%eax
4000111f:	09 c8                	or     %ecx,%eax
40001121:	a8 03                	test   $0x3,%al
40001123:	75 1b                	jne    40001140 <memset+0x30>
40001125:	0f b6 44 24 0c       	movzbl 0xc(%esp),%eax
4000112a:	c1 e9 02             	shr    $0x2,%ecx
4000112d:	69 c0 01 01 01 01    	imul   $0x1010101,%eax,%eax
40001133:	fc                   	cld
40001134:	f3 ab                	rep stos %eax,%es:(%edi)
40001136:	89 f8                	mov    %edi,%eax
40001138:	5f                   	pop    %edi
40001139:	c3                   	ret
4000113a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
40001140:	8b 44 24 0c          	mov    0xc(%esp),%eax
40001144:	fc                   	cld
40001145:	f3 aa                	rep stos %al,%es:(%edi)
40001147:	89 f8                	mov    %edi,%eax
40001149:	5f                   	pop    %edi
4000114a:	c3                   	ret
4000114b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

40001150 <memmove>:
40001150:	57                   	push   %edi
40001151:	56                   	push   %esi
40001152:	8b 44 24 0c          	mov    0xc(%esp),%eax
40001156:	8b 74 24 10          	mov    0x10(%esp),%esi
4000115a:	8b 4c 24 14          	mov    0x14(%esp),%ecx
4000115e:	39 c6                	cmp    %eax,%esi
40001160:	73 26                	jae    40001188 <memmove+0x38>
40001162:	8d 14 0e             	lea    (%esi,%ecx,1),%edx
40001165:	39 d0                	cmp    %edx,%eax
40001167:	73 1f                	jae    40001188 <memmove+0x38>
40001169:	8d 3c 08             	lea    (%eax,%ecx,1),%edi
4000116c:	89 fe                	mov    %edi,%esi
4000116e:	09 ce                	or     %ecx,%esi
40001170:	09 d6                	or     %edx,%esi
40001172:	83 e6 03             	and    $0x3,%esi
40001175:	74 39                	je     400011b0 <memmove+0x60>
40001177:	83 ef 01             	sub    $0x1,%edi
4000117a:	8d 72 ff             	lea    -0x1(%edx),%esi
4000117d:	fd                   	std
4000117e:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
40001180:	fc                   	cld
40001181:	5e                   	pop    %esi
40001182:	5f                   	pop    %edi
40001183:	c3                   	ret
40001184:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
40001188:	89 c2                	mov    %eax,%edx
4000118a:	09 ca                	or     %ecx,%edx
4000118c:	09 f2                	or     %esi,%edx
4000118e:	83 e2 03             	and    $0x3,%edx
40001191:	74 0d                	je     400011a0 <memmove+0x50>
40001193:	89 c7                	mov    %eax,%edi
40001195:	fc                   	cld
40001196:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
40001198:	5e                   	pop    %esi
40001199:	5f                   	pop    %edi
4000119a:	c3                   	ret
4000119b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
400011a0:	c1 e9 02             	shr    $0x2,%ecx
400011a3:	89 c7                	mov    %eax,%edi
400011a5:	fc                   	cld
400011a6:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
400011a8:	eb ee                	jmp    40001198 <memmove+0x48>
400011aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
400011b0:	83 ef 04             	sub    $0x4,%edi
400011b3:	8d 72 fc             	lea    -0x4(%edx),%esi
400011b6:	c1 e9 02             	shr    $0x2,%ecx
400011b9:	fd                   	std
400011ba:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
400011bc:	eb c2                	jmp    40001180 <memmove+0x30>
400011be:	66 90                	xchg   %ax,%ax

400011c0 <memcpy>:
400011c0:	eb 8e                	jmp    40001150 <memmove>
400011c2:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
400011c9:	00 
400011ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

400011d0 <memcmp>:
400011d0:	56                   	push   %esi
400011d1:	53                   	push   %ebx
400011d2:	8b 74 24 14          	mov    0x14(%esp),%esi
400011d6:	8b 44 24 0c          	mov    0xc(%esp),%eax
400011da:	8b 54 24 10          	mov    0x10(%esp),%edx
400011de:	85 f6                	test   %esi,%esi
400011e0:	74 2e                	je     40001210 <memcmp+0x40>
400011e2:	01 c6                	add    %eax,%esi
400011e4:	eb 14                	jmp    400011fa <memcmp+0x2a>
400011e6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
400011ed:	00 
400011ee:	66 90                	xchg   %ax,%ax
400011f0:	83 c0 01             	add    $0x1,%eax
400011f3:	83 c2 01             	add    $0x1,%edx
400011f6:	39 f0                	cmp    %esi,%eax
400011f8:	74 16                	je     40001210 <memcmp+0x40>
400011fa:	0f b6 08             	movzbl (%eax),%ecx
400011fd:	0f b6 1a             	movzbl (%edx),%ebx
40001200:	38 d9                	cmp    %bl,%cl
40001202:	74 ec                	je     400011f0 <memcmp+0x20>
40001204:	0f b6 c1             	movzbl %cl,%eax
40001207:	29 d8                	sub    %ebx,%eax
40001209:	5b                   	pop    %ebx
4000120a:	5e                   	pop    %esi
4000120b:	c3                   	ret
4000120c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
40001210:	31 c0                	xor    %eax,%eax
40001212:	5b                   	pop    %ebx
40001213:	5e                   	pop    %esi
40001214:	c3                   	ret
40001215:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
4000121c:	00 
4000121d:	8d 76 00             	lea    0x0(%esi),%esi

40001220 <memchr>:
40001220:	8b 44 24 04          	mov    0x4(%esp),%eax
40001224:	8b 54 24 0c          	mov    0xc(%esp),%edx
40001228:	01 c2                	add    %eax,%edx
4000122a:	39 d0                	cmp    %edx,%eax
4000122c:	73 1a                	jae    40001248 <memchr+0x28>
4000122e:	0f b6 4c 24 08       	movzbl 0x8(%esp),%ecx
40001233:	eb 0a                	jmp    4000123f <memchr+0x1f>
40001235:	8d 76 00             	lea    0x0(%esi),%esi
40001238:	83 c0 01             	add    $0x1,%eax
4000123b:	39 c2                	cmp    %eax,%edx
4000123d:	74 09                	je     40001248 <memchr+0x28>
4000123f:	38 08                	cmp    %cl,(%eax)
40001241:	75 f5                	jne    40001238 <memchr+0x18>
40001243:	c3                   	ret
40001244:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
40001248:	31 c0                	xor    %eax,%eax
4000124a:	c3                   	ret
4000124b:	66 90                	xchg   %ax,%ax
4000124d:	66 90                	xchg   %ax,%ax
4000124f:	90                   	nop

40001250 <init>:
40001250:	e8 4e fb ff ff       	call   40000da3 <__x86.get_pc_thunk.ax>
40001255:	05 9f 2d 00 00       	add    $0x2d9f,%eax
4000125a:	8b 15 00 00 00 e0    	mov    0xe0000000,%edx
40001260:	89 90 10 04 00 00    	mov    %edx,0x410(%eax)
40001266:	8b 15 04 00 00 e0    	mov    0xe0000004,%edx
4000126c:	89 90 0c 04 00 00    	mov    %edx,0x40c(%eax)
40001272:	c3                   	ret
40001273:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
4000127a:	00 
4000127b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

40001280 <yield>:
40001280:	c3                   	ret
40001281:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
40001288:	00 
40001289:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

40001290 <sys_getc>:
40001290:	e8 0e fb ff ff       	call   40000da3 <__x86.get_pc_thunk.ax>
40001295:	05 5f 2d 00 00       	add    $0x2d5f,%eax
4000129a:	83 ec 0c             	sub    $0xc,%esp
4000129d:	ff 90 0c 04 00 00    	call   *0x40c(%eax)
400012a3:	83 c4 0c             	add    $0xc,%esp
400012a6:	0f be c0             	movsbl %al,%eax
400012a9:	c3                   	ret
400012aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

400012b0 <sys_puts>:
400012b0:	55                   	push   %ebp
400012b1:	b8 ff 03 00 00       	mov    $0x3ff,%eax
400012b6:	57                   	push   %edi
400012b7:	56                   	push   %esi
400012b8:	53                   	push   %ebx
400012b9:	e8 09 f1 ff ff       	call   400003c7 <__x86.get_pc_thunk.bx>
400012be:	81 c3 36 2d 00 00    	add    $0x2d36,%ebx
400012c4:	83 ec 10             	sub    $0x10,%esp
400012c7:	8b 74 24 28          	mov    0x28(%esp),%esi
400012cb:	8b 7c 24 24          	mov    0x24(%esp),%edi
400012cf:	39 c6                	cmp    %eax,%esi
400012d1:	0f 47 f0             	cmova  %eax,%esi
400012d4:	8d ab 0c 00 00 00    	lea    0xc(%ebx),%ebp
400012da:	56                   	push   %esi
400012db:	57                   	push   %edi
400012dc:	55                   	push   %ebp
400012dd:	e8 5e fb ff ff       	call   40000e40 <strncpy>
400012e2:	8d 83 d0 d5 ff ff    	lea    -0x2a30(%ebx),%eax
400012e8:	89 7c 24 34          	mov    %edi,0x34(%esp)
400012ec:	c6 84 33 0c 00 00 00 	movb   $0x0,0xc(%ebx,%esi,1)
400012f3:	00 
400012f4:	89 44 24 30          	mov    %eax,0x30(%esp)
400012f8:	8b 83 10 04 00 00    	mov    0x410(%ebx),%eax
400012fe:	83 c4 1c             	add    $0x1c,%esp
40001301:	5b                   	pop    %ebx
40001302:	5e                   	pop    %esi
40001303:	5f                   	pop    %edi
40001304:	5d                   	pop    %ebp
40001305:	ff e0                	jmp    *%eax
40001307:	66 90                	xchg   %ax,%ax
40001309:	66 90                	xchg   %ax,%ax
4000130b:	66 90                	xchg   %ax,%ax
4000130d:	66 90                	xchg   %ax,%ax
4000130f:	90                   	nop

40001310 <__udivdi3>:
40001310:	f3 0f 1e fb          	endbr32
40001314:	55                   	push   %ebp
40001315:	89 e5                	mov    %esp,%ebp
40001317:	57                   	push   %edi
40001318:	56                   	push   %esi
40001319:	53                   	push   %ebx
4000131a:	83 ec 1c             	sub    $0x1c,%esp
4000131d:	8b 7d 08             	mov    0x8(%ebp),%edi
40001320:	8b 45 14             	mov    0x14(%ebp),%eax
40001323:	8b 75 0c             	mov    0xc(%ebp),%esi
40001326:	8b 5d 10             	mov    0x10(%ebp),%ebx
40001329:	89 7d e4             	mov    %edi,-0x1c(%ebp)
4000132c:	85 c0                	test   %eax,%eax
4000132e:	75 20                	jne    40001350 <__udivdi3+0x40>
40001330:	39 de                	cmp    %ebx,%esi
40001332:	73 54                	jae    40001388 <__udivdi3+0x78>
40001334:	89 f8                	mov    %edi,%eax
40001336:	31 ff                	xor    %edi,%edi
40001338:	89 f2                	mov    %esi,%edx
4000133a:	f7 f3                	div    %ebx
4000133c:	89 fa                	mov    %edi,%edx
4000133e:	83 c4 1c             	add    $0x1c,%esp
40001341:	5b                   	pop    %ebx
40001342:	5e                   	pop    %esi
40001343:	5f                   	pop    %edi
40001344:	5d                   	pop    %ebp
40001345:	c3                   	ret
40001346:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
4000134d:	00 
4000134e:	66 90                	xchg   %ax,%ax
40001350:	39 c6                	cmp    %eax,%esi
40001352:	73 14                	jae    40001368 <__udivdi3+0x58>
40001354:	31 ff                	xor    %edi,%edi
40001356:	31 c0                	xor    %eax,%eax
40001358:	89 fa                	mov    %edi,%edx
4000135a:	83 c4 1c             	add    $0x1c,%esp
4000135d:	5b                   	pop    %ebx
4000135e:	5e                   	pop    %esi
4000135f:	5f                   	pop    %edi
40001360:	5d                   	pop    %ebp
40001361:	c3                   	ret
40001362:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
40001368:	0f bd f8             	bsr    %eax,%edi
4000136b:	83 f7 1f             	xor    $0x1f,%edi
4000136e:	75 48                	jne    400013b8 <__udivdi3+0xa8>
40001370:	39 f0                	cmp    %esi,%eax
40001372:	72 07                	jb     4000137b <__udivdi3+0x6b>
40001374:	31 c0                	xor    %eax,%eax
40001376:	39 5d e4             	cmp    %ebx,-0x1c(%ebp)
40001379:	72 dd                	jb     40001358 <__udivdi3+0x48>
4000137b:	b8 01 00 00 00       	mov    $0x1,%eax
40001380:	eb d6                	jmp    40001358 <__udivdi3+0x48>
40001382:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
40001388:	89 d9                	mov    %ebx,%ecx
4000138a:	85 db                	test   %ebx,%ebx
4000138c:	75 0b                	jne    40001399 <__udivdi3+0x89>
4000138e:	b8 01 00 00 00       	mov    $0x1,%eax
40001393:	31 d2                	xor    %edx,%edx
40001395:	f7 f3                	div    %ebx
40001397:	89 c1                	mov    %eax,%ecx
40001399:	31 d2                	xor    %edx,%edx
4000139b:	89 f0                	mov    %esi,%eax
4000139d:	f7 f1                	div    %ecx
4000139f:	89 c6                	mov    %eax,%esi
400013a1:	8b 45 e4             	mov    -0x1c(%ebp),%eax
400013a4:	89 f7                	mov    %esi,%edi
400013a6:	f7 f1                	div    %ecx
400013a8:	89 fa                	mov    %edi,%edx
400013aa:	83 c4 1c             	add    $0x1c,%esp
400013ad:	5b                   	pop    %ebx
400013ae:	5e                   	pop    %esi
400013af:	5f                   	pop    %edi
400013b0:	5d                   	pop    %ebp
400013b1:	c3                   	ret
400013b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
400013b8:	89 f9                	mov    %edi,%ecx
400013ba:	ba 20 00 00 00       	mov    $0x20,%edx
400013bf:	29 fa                	sub    %edi,%edx
400013c1:	d3 e0                	shl    %cl,%eax
400013c3:	89 45 e0             	mov    %eax,-0x20(%ebp)
400013c6:	89 d1                	mov    %edx,%ecx
400013c8:	89 d8                	mov    %ebx,%eax
400013ca:	d3 e8                	shr    %cl,%eax
400013cc:	89 c1                	mov    %eax,%ecx
400013ce:	8b 45 e0             	mov    -0x20(%ebp),%eax
400013d1:	09 c1                	or     %eax,%ecx
400013d3:	89 f0                	mov    %esi,%eax
400013d5:	89 4d e0             	mov    %ecx,-0x20(%ebp)
400013d8:	89 f9                	mov    %edi,%ecx
400013da:	d3 e3                	shl    %cl,%ebx
400013dc:	89 d1                	mov    %edx,%ecx
400013de:	d3 e8                	shr    %cl,%eax
400013e0:	89 5d dc             	mov    %ebx,-0x24(%ebp)
400013e3:	89 f9                	mov    %edi,%ecx
400013e5:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
400013e8:	d3 e6                	shl    %cl,%esi
400013ea:	89 d1                	mov    %edx,%ecx
400013ec:	d3 eb                	shr    %cl,%ebx
400013ee:	09 f3                	or     %esi,%ebx
400013f0:	89 c6                	mov    %eax,%esi
400013f2:	89 f2                	mov    %esi,%edx
400013f4:	89 d8                	mov    %ebx,%eax
400013f6:	f7 75 e0             	divl   -0x20(%ebp)
400013f9:	89 d6                	mov    %edx,%esi
400013fb:	89 c3                	mov    %eax,%ebx
400013fd:	f7 65 dc             	mull   -0x24(%ebp)
40001400:	89 55 e0             	mov    %edx,-0x20(%ebp)
40001403:	39 d6                	cmp    %edx,%esi
40001405:	72 21                	jb     40001428 <__udivdi3+0x118>
40001407:	8b 55 e4             	mov    -0x1c(%ebp),%edx
4000140a:	89 f9                	mov    %edi,%ecx
4000140c:	d3 e2                	shl    %cl,%edx
4000140e:	39 c2                	cmp    %eax,%edx
40001410:	73 07                	jae    40001419 <__udivdi3+0x109>
40001412:	8b 55 e0             	mov    -0x20(%ebp),%edx
40001415:	39 d6                	cmp    %edx,%esi
40001417:	74 0f                	je     40001428 <__udivdi3+0x118>
40001419:	89 d8                	mov    %ebx,%eax
4000141b:	31 ff                	xor    %edi,%edi
4000141d:	e9 36 ff ff ff       	jmp    40001358 <__udivdi3+0x48>
40001422:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
40001428:	8d 43 ff             	lea    -0x1(%ebx),%eax
4000142b:	31 ff                	xor    %edi,%edi
4000142d:	e9 26 ff ff ff       	jmp    40001358 <__udivdi3+0x48>
40001432:	66 90                	xchg   %ax,%ax
40001434:	66 90                	xchg   %ax,%ax
40001436:	66 90                	xchg   %ax,%ax
40001438:	66 90                	xchg   %ax,%ax
4000143a:	66 90                	xchg   %ax,%ax
4000143c:	66 90                	xchg   %ax,%ax
4000143e:	66 90                	xchg   %ax,%ax

40001440 <__umoddi3>:
40001440:	f3 0f 1e fb          	endbr32
40001444:	55                   	push   %ebp
40001445:	89 e5                	mov    %esp,%ebp
40001447:	57                   	push   %edi
40001448:	56                   	push   %esi
40001449:	53                   	push   %ebx
4000144a:	83 ec 2c             	sub    $0x2c,%esp
4000144d:	8b 5d 0c             	mov    0xc(%ebp),%ebx
40001450:	8b 45 14             	mov    0x14(%ebp),%eax
40001453:	8b 75 08             	mov    0x8(%ebp),%esi
40001456:	8b 7d 10             	mov    0x10(%ebp),%edi
40001459:	89 da                	mov    %ebx,%edx
4000145b:	85 c0                	test   %eax,%eax
4000145d:	75 19                	jne    40001478 <__umoddi3+0x38>
4000145f:	39 fb                	cmp    %edi,%ebx
40001461:	73 5d                	jae    400014c0 <__umoddi3+0x80>
40001463:	89 f0                	mov    %esi,%eax
40001465:	f7 f7                	div    %edi
40001467:	89 d0                	mov    %edx,%eax
40001469:	31 d2                	xor    %edx,%edx
4000146b:	83 c4 2c             	add    $0x2c,%esp
4000146e:	5b                   	pop    %ebx
4000146f:	5e                   	pop    %esi
40001470:	5f                   	pop    %edi
40001471:	5d                   	pop    %ebp
40001472:	c3                   	ret
40001473:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
40001478:	89 75 e0             	mov    %esi,-0x20(%ebp)
4000147b:	39 c3                	cmp    %eax,%ebx
4000147d:	73 11                	jae    40001490 <__umoddi3+0x50>
4000147f:	89 f0                	mov    %esi,%eax
40001481:	83 c4 2c             	add    $0x2c,%esp
40001484:	5b                   	pop    %ebx
40001485:	5e                   	pop    %esi
40001486:	5f                   	pop    %edi
40001487:	5d                   	pop    %ebp
40001488:	c3                   	ret
40001489:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
40001490:	0f bd c8             	bsr    %eax,%ecx
40001493:	83 f1 1f             	xor    $0x1f,%ecx
40001496:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
40001499:	75 45                	jne    400014e0 <__umoddi3+0xa0>
4000149b:	39 d8                	cmp    %ebx,%eax
4000149d:	0f 82 d5 00 00 00    	jb     40001578 <__umoddi3+0x138>
400014a3:	39 fe                	cmp    %edi,%esi
400014a5:	0f 83 cd 00 00 00    	jae    40001578 <__umoddi3+0x138>
400014ab:	8b 45 e0             	mov    -0x20(%ebp),%eax
400014ae:	83 c4 2c             	add    $0x2c,%esp
400014b1:	5b                   	pop    %ebx
400014b2:	5e                   	pop    %esi
400014b3:	5f                   	pop    %edi
400014b4:	5d                   	pop    %ebp
400014b5:	c3                   	ret
400014b6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
400014bd:	00 
400014be:	66 90                	xchg   %ax,%ax
400014c0:	89 f9                	mov    %edi,%ecx
400014c2:	85 ff                	test   %edi,%edi
400014c4:	75 0b                	jne    400014d1 <__umoddi3+0x91>
400014c6:	b8 01 00 00 00       	mov    $0x1,%eax
400014cb:	31 d2                	xor    %edx,%edx
400014cd:	f7 f7                	div    %edi
400014cf:	89 c1                	mov    %eax,%ecx
400014d1:	89 d8                	mov    %ebx,%eax
400014d3:	31 d2                	xor    %edx,%edx
400014d5:	f7 f1                	div    %ecx
400014d7:	89 f0                	mov    %esi,%eax
400014d9:	f7 f1                	div    %ecx
400014db:	eb 8a                	jmp    40001467 <__umoddi3+0x27>
400014dd:	8d 76 00             	lea    0x0(%esi),%esi
400014e0:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
400014e3:	ba 20 00 00 00       	mov    $0x20,%edx
400014e8:	29 ca                	sub    %ecx,%edx
400014ea:	d3 e0                	shl    %cl,%eax
400014ec:	89 45 dc             	mov    %eax,-0x24(%ebp)
400014ef:	89 d1                	mov    %edx,%ecx
400014f1:	89 f8                	mov    %edi,%eax
400014f3:	d3 e8                	shr    %cl,%eax
400014f5:	89 55 e0             	mov    %edx,-0x20(%ebp)
400014f8:	0f b6 4d e4          	movzbl -0x1c(%ebp),%ecx
400014fc:	89 c2                	mov    %eax,%edx
400014fe:	8b 45 dc             	mov    -0x24(%ebp),%eax
40001501:	d3 e7                	shl    %cl,%edi
40001503:	09 c2                	or     %eax,%edx
40001505:	8b 45 e0             	mov    -0x20(%ebp),%eax
40001508:	89 7d d8             	mov    %edi,-0x28(%ebp)
4000150b:	89 f7                	mov    %esi,%edi
4000150d:	89 55 dc             	mov    %edx,-0x24(%ebp)
40001510:	89 da                	mov    %ebx,%edx
40001512:	89 c1                	mov    %eax,%ecx
40001514:	d3 ea                	shr    %cl,%edx
40001516:	0f b6 4d e4          	movzbl -0x1c(%ebp),%ecx
4000151a:	d3 e3                	shl    %cl,%ebx
4000151c:	89 c1                	mov    %eax,%ecx
4000151e:	d3 ef                	shr    %cl,%edi
40001520:	0f b6 4d e4          	movzbl -0x1c(%ebp),%ecx
40001524:	89 f8                	mov    %edi,%eax
40001526:	d3 e6                	shl    %cl,%esi
40001528:	09 d8                	or     %ebx,%eax
4000152a:	f7 75 dc             	divl   -0x24(%ebp)
4000152d:	89 d3                	mov    %edx,%ebx
4000152f:	89 75 d4             	mov    %esi,-0x2c(%ebp)
40001532:	89 f7                	mov    %esi,%edi
40001534:	f7 65 d8             	mull   -0x28(%ebp)
40001537:	89 c6                	mov    %eax,%esi
40001539:	89 d1                	mov    %edx,%ecx
4000153b:	39 d3                	cmp    %edx,%ebx
4000153d:	72 06                	jb     40001545 <__umoddi3+0x105>
4000153f:	75 0e                	jne    4000154f <__umoddi3+0x10f>
40001541:	39 c7                	cmp    %eax,%edi
40001543:	73 0a                	jae    4000154f <__umoddi3+0x10f>
40001545:	2b 45 d8             	sub    -0x28(%ebp),%eax
40001548:	1b 55 dc             	sbb    -0x24(%ebp),%edx
4000154b:	89 d1                	mov    %edx,%ecx
4000154d:	89 c6                	mov    %eax,%esi
4000154f:	8b 45 d4             	mov    -0x2c(%ebp),%eax
40001552:	8b 7d e4             	mov    -0x1c(%ebp),%edi
40001555:	29 f0                	sub    %esi,%eax
40001557:	19 cb                	sbb    %ecx,%ebx
40001559:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
4000155d:	89 da                	mov    %ebx,%edx
4000155f:	d3 e2                	shl    %cl,%edx
40001561:	89 f9                	mov    %edi,%ecx
40001563:	d3 e8                	shr    %cl,%eax
40001565:	d3 eb                	shr    %cl,%ebx
40001567:	09 d0                	or     %edx,%eax
40001569:	89 da                	mov    %ebx,%edx
4000156b:	83 c4 2c             	add    $0x2c,%esp
4000156e:	5b                   	pop    %ebx
4000156f:	5e                   	pop    %esi
40001570:	5f                   	pop    %edi
40001571:	5d                   	pop    %ebp
40001572:	c3                   	ret
40001573:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
40001578:	89 da                	mov    %ebx,%edx
4000157a:	29 fe                	sub    %edi,%esi
4000157c:	19 c2                	sbb    %eax,%edx
4000157e:	89 75 e0             	mov    %esi,-0x20(%ebp)
40001581:	e9 25 ff ff ff       	jmp    400014ab <__umoddi3+0x6b>
