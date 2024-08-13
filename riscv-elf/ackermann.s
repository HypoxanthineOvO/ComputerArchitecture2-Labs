
ackermann.riscv:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100e8 <exit>:
   100e8:	ff010113          	add	sp,sp,-16
   100ec:	00000593          	li	a1,0
   100f0:	00813023          	sd	s0,0(sp)
   100f4:	00113423          	sd	ra,8(sp)
   100f8:	00050413          	mv	s0,a0
   100fc:	538000ef          	jal	10634 <__call_exitprocs>
   10100:	f481b503          	ld	a0,-184(gp) # 11768 <_global_impure_ptr>
   10104:	05853783          	ld	a5,88(a0)
   10108:	00078463          	beqz	a5,10110 <exit+0x28>
   1010c:	000780e7          	jalr	a5
   10110:	00040513          	mv	a0,s0
   10114:	760000ef          	jal	10874 <_exit>

0000000000010118 <register_fini>:
   10118:	00000793          	li	a5,0
   1011c:	00078863          	beqz	a5,1012c <register_fini+0x14>
   10120:	00010537          	lui	a0,0x10
   10124:	75c50513          	add	a0,a0,1884 # 1075c <__libc_fini_array>
   10128:	6900006f          	j	107b8 <atexit>
   1012c:	00008067          	ret

0000000000010130 <_start>:
   10130:	00001197          	auipc	gp,0x1
   10134:	6f018193          	add	gp,gp,1776 # 11820 <__global_pointer$>
   10138:	f6018513          	add	a0,gp,-160 # 11780 <completed.1>
   1013c:	f9818613          	add	a2,gp,-104 # 117b8 <__BSS_END__>
   10140:	40a60633          	sub	a2,a2,a0
   10144:	00000593          	li	a1,0
   10148:	410000ef          	jal	10558 <memset>
   1014c:	00000517          	auipc	a0,0x0
   10150:	66c50513          	add	a0,a0,1644 # 107b8 <atexit>
   10154:	00050863          	beqz	a0,10164 <_start+0x34>
   10158:	00000517          	auipc	a0,0x0
   1015c:	60450513          	add	a0,a0,1540 # 1075c <__libc_fini_array>
   10160:	658000ef          	jal	107b8 <atexit>
   10164:	358000ef          	jal	104bc <__libc_init_array>
   10168:	00012503          	lw	a0,0(sp)
   1016c:	00810593          	add	a1,sp,8
   10170:	00000613          	li	a2,0
   10174:	13c000ef          	jal	102b0 <main>
   10178:	f71ff06f          	j	100e8 <exit>

000000000001017c <__do_global_dtors_aux>:
   1017c:	ff010113          	add	sp,sp,-16
   10180:	00813023          	sd	s0,0(sp)
   10184:	f601c783          	lbu	a5,-160(gp) # 11780 <completed.1>
   10188:	00113423          	sd	ra,8(sp)
   1018c:	02079263          	bnez	a5,101b0 <__do_global_dtors_aux+0x34>
   10190:	00000793          	li	a5,0
   10194:	00078a63          	beqz	a5,101a8 <__do_global_dtors_aux+0x2c>
   10198:	00011537          	lui	a0,0x11
   1019c:	00050513          	mv	a0,a0
   101a0:	00000097          	auipc	ra,0x0
   101a4:	000000e7          	jalr	zero # 0 <exit-0x100e8>
   101a8:	00100793          	li	a5,1
   101ac:	f6f18023          	sb	a5,-160(gp) # 11780 <completed.1>
   101b0:	00813083          	ld	ra,8(sp)
   101b4:	00013403          	ld	s0,0(sp)
   101b8:	01010113          	add	sp,sp,16
   101bc:	00008067          	ret

00000000000101c0 <frame_dummy>:
   101c0:	00000793          	li	a5,0
   101c4:	00078c63          	beqz	a5,101dc <frame_dummy+0x1c>
   101c8:	00011537          	lui	a0,0x11
   101cc:	f6818593          	add	a1,gp,-152 # 11788 <object.0>
   101d0:	00050513          	mv	a0,a0
   101d4:	00000317          	auipc	t1,0x0
   101d8:	00000067          	jr	zero # 0 <exit-0x100e8>
   101dc:	00008067          	ret

00000000000101e0 <ackermann>:
   101e0:	fd010113          	add	sp,sp,-48
   101e4:	02113423          	sd	ra,40(sp)
   101e8:	02813023          	sd	s0,32(sp)
   101ec:	00913c23          	sd	s1,24(sp)
   101f0:	03010413          	add	s0,sp,48
   101f4:	00050793          	mv	a5,a0
   101f8:	00058713          	mv	a4,a1
   101fc:	fcf42e23          	sw	a5,-36(s0)
   10200:	00070793          	mv	a5,a4
   10204:	fcf42c23          	sw	a5,-40(s0)
   10208:	fdc42783          	lw	a5,-36(s0)
   1020c:	0007879b          	sext.w	a5,a5
   10210:	00079a63          	bnez	a5,10224 <ackermann+0x44>
   10214:	fd842783          	lw	a5,-40(s0)
   10218:	0017879b          	addw	a5,a5,1
   1021c:	0007879b          	sext.w	a5,a5
   10220:	0780006f          	j	10298 <ackermann+0xb8>
   10224:	fdc42783          	lw	a5,-36(s0)
   10228:	0007879b          	sext.w	a5,a5
   1022c:	02f05863          	blez	a5,1025c <ackermann+0x7c>
   10230:	fd842783          	lw	a5,-40(s0)
   10234:	0007879b          	sext.w	a5,a5
   10238:	02079263          	bnez	a5,1025c <ackermann+0x7c>
   1023c:	fdc42783          	lw	a5,-36(s0)
   10240:	fff7879b          	addw	a5,a5,-1
   10244:	0007879b          	sext.w	a5,a5
   10248:	00100593          	li	a1,1
   1024c:	00078513          	mv	a0,a5
   10250:	f91ff0ef          	jal	101e0 <ackermann>
   10254:	00050793          	mv	a5,a0
   10258:	0400006f          	j	10298 <ackermann+0xb8>
   1025c:	fdc42783          	lw	a5,-36(s0)
   10260:	fff7879b          	addw	a5,a5,-1
   10264:	0007849b          	sext.w	s1,a5
   10268:	fd842783          	lw	a5,-40(s0)
   1026c:	fff7879b          	addw	a5,a5,-1
   10270:	0007871b          	sext.w	a4,a5
   10274:	fdc42783          	lw	a5,-36(s0)
   10278:	00070593          	mv	a1,a4
   1027c:	00078513          	mv	a0,a5
   10280:	f61ff0ef          	jal	101e0 <ackermann>
   10284:	00050793          	mv	a5,a0
   10288:	00078593          	mv	a1,a5
   1028c:	00048513          	mv	a0,s1
   10290:	f51ff0ef          	jal	101e0 <ackermann>
   10294:	00050793          	mv	a5,a0
   10298:	00078513          	mv	a0,a5
   1029c:	02813083          	ld	ra,40(sp)
   102a0:	02013403          	ld	s0,32(sp)
   102a4:	01813483          	ld	s1,24(sp)
   102a8:	03010113          	add	sp,sp,48
   102ac:	00008067          	ret

00000000000102b0 <main>:
   102b0:	fe010113          	add	sp,sp,-32
   102b4:	00113c23          	sd	ra,24(sp)
   102b8:	00813823          	sd	s0,16(sp)
   102bc:	02010413          	add	s0,sp,32
   102c0:	fe042623          	sw	zero,-20(s0)
   102c4:	0a00006f          	j	10364 <main+0xb4>
   102c8:	fe042423          	sw	zero,-24(s0)
   102cc:	07c0006f          	j	10348 <main+0x98>
   102d0:	fe842703          	lw	a4,-24(s0)
   102d4:	fec42783          	lw	a5,-20(s0)
   102d8:	00070593          	mv	a1,a4
   102dc:	00078513          	mv	a0,a5
   102e0:	f01ff0ef          	jal	101e0 <ackermann>
   102e4:	00050793          	mv	a5,a0
   102e8:	fef42223          	sw	a5,-28(s0)
   102ec:	000117b7          	lui	a5,0x11
   102f0:	8b078513          	add	a0,a5,-1872 # 108b0 <__errno+0xc>
   102f4:	0c8000ef          	jal	103bc <print_s>
   102f8:	fec42783          	lw	a5,-20(s0)
   102fc:	00078513          	mv	a0,a5
   10300:	090000ef          	jal	10390 <print_d>
   10304:	000117b7          	lui	a5,0x11
   10308:	8c078513          	add	a0,a5,-1856 # 108c0 <__errno+0x1c>
   1030c:	0b0000ef          	jal	103bc <print_s>
   10310:	fe842783          	lw	a5,-24(s0)
   10314:	00078513          	mv	a0,a5
   10318:	078000ef          	jal	10390 <print_d>
   1031c:	000117b7          	lui	a5,0x11
   10320:	8c878513          	add	a0,a5,-1848 # 108c8 <__errno+0x24>
   10324:	098000ef          	jal	103bc <print_s>
   10328:	fe442783          	lw	a5,-28(s0)
   1032c:	00078513          	mv	a0,a5
   10330:	060000ef          	jal	10390 <print_d>
   10334:	00a00513          	li	a0,10
   10338:	0ac000ef          	jal	103e4 <print_c>
   1033c:	fe842783          	lw	a5,-24(s0)
   10340:	0017879b          	addw	a5,a5,1
   10344:	fef42423          	sw	a5,-24(s0)
   10348:	fe842783          	lw	a5,-24(s0)
   1034c:	0007871b          	sext.w	a4,a5
   10350:	00400793          	li	a5,4
   10354:	f6e7dee3          	bge	a5,a4,102d0 <main+0x20>
   10358:	fec42783          	lw	a5,-20(s0)
   1035c:	0017879b          	addw	a5,a5,1
   10360:	fef42623          	sw	a5,-20(s0)
   10364:	fec42783          	lw	a5,-20(s0)
   10368:	0007871b          	sext.w	a4,a5
   1036c:	00300793          	li	a5,3
   10370:	f4e7dce3          	bge	a5,a4,102c8 <main+0x18>
   10374:	09c000ef          	jal	10410 <exit_proc>
   10378:	00000793          	li	a5,0
   1037c:	00078513          	mv	a0,a5
   10380:	01813083          	ld	ra,24(sp)
   10384:	01013403          	ld	s0,16(sp)
   10388:	02010113          	add	sp,sp,32
   1038c:	00008067          	ret

0000000000010390 <print_d>:
   10390:	fe010113          	add	sp,sp,-32
   10394:	00813c23          	sd	s0,24(sp)
   10398:	02010413          	add	s0,sp,32
   1039c:	00050793          	mv	a5,a0
   103a0:	fef42623          	sw	a5,-20(s0)
   103a4:	00200893          	li	a7,2
   103a8:	00000073          	ecall
   103ac:	00000013          	nop
   103b0:	01813403          	ld	s0,24(sp)
   103b4:	02010113          	add	sp,sp,32
   103b8:	00008067          	ret

00000000000103bc <print_s>:
   103bc:	fe010113          	add	sp,sp,-32
   103c0:	00813c23          	sd	s0,24(sp)
   103c4:	02010413          	add	s0,sp,32
   103c8:	fea43423          	sd	a0,-24(s0)
   103cc:	00000893          	li	a7,0
   103d0:	00000073          	ecall
   103d4:	00000013          	nop
   103d8:	01813403          	ld	s0,24(sp)
   103dc:	02010113          	add	sp,sp,32
   103e0:	00008067          	ret

00000000000103e4 <print_c>:
   103e4:	fe010113          	add	sp,sp,-32
   103e8:	00813c23          	sd	s0,24(sp)
   103ec:	02010413          	add	s0,sp,32
   103f0:	00050793          	mv	a5,a0
   103f4:	fef407a3          	sb	a5,-17(s0)
   103f8:	00100893          	li	a7,1
   103fc:	00000073          	ecall
   10400:	00000013          	nop
   10404:	01813403          	ld	s0,24(sp)
   10408:	02010113          	add	sp,sp,32
   1040c:	00008067          	ret

0000000000010410 <exit_proc>:
   10410:	ff010113          	add	sp,sp,-16
   10414:	00813423          	sd	s0,8(sp)
   10418:	01010413          	add	s0,sp,16
   1041c:	00300893          	li	a7,3
   10420:	00000073          	ecall
   10424:	00000013          	nop
   10428:	00813403          	ld	s0,8(sp)
   1042c:	01010113          	add	sp,sp,16
   10430:	00008067          	ret

0000000000010434 <read_char>:
   10434:	fe010113          	add	sp,sp,-32
   10438:	00813c23          	sd	s0,24(sp)
   1043c:	02010413          	add	s0,sp,32
   10440:	00400893          	li	a7,4
   10444:	00000073          	ecall
   10448:	00050793          	mv	a5,a0
   1044c:	fef407a3          	sb	a5,-17(s0)
   10450:	fef44783          	lbu	a5,-17(s0)
   10454:	00078513          	mv	a0,a5
   10458:	01813403          	ld	s0,24(sp)
   1045c:	02010113          	add	sp,sp,32
   10460:	00008067          	ret

0000000000010464 <read_num>:
   10464:	fe010113          	add	sp,sp,-32
   10468:	00813c23          	sd	s0,24(sp)
   1046c:	02010413          	add	s0,sp,32
   10470:	00500893          	li	a7,5
   10474:	00000073          	ecall
   10478:	00050793          	mv	a5,a0
   1047c:	fef43423          	sd	a5,-24(s0)
   10480:	fe843783          	ld	a5,-24(s0)
   10484:	00078513          	mv	a0,a5
   10488:	01813403          	ld	s0,24(sp)
   1048c:	02010113          	add	sp,sp,32
   10490:	00008067          	ret

0000000000010494 <print_f>:
   10494:	fe010113          	add	sp,sp,-32
   10498:	00813c23          	sd	s0,24(sp)
   1049c:	02010413          	add	s0,sp,32
   104a0:	fea42627          	fsw	fa0,-20(s0)
   104a4:	00600893          	li	a7,6
   104a8:	00000073          	ecall
   104ac:	00000013          	nop
   104b0:	01813403          	ld	s0,24(sp)
   104b4:	02010113          	add	sp,sp,32
   104b8:	00008067          	ret

00000000000104bc <__libc_init_array>:
   104bc:	fe010113          	add	sp,sp,-32
   104c0:	00813823          	sd	s0,16(sp)
   104c4:	000117b7          	lui	a5,0x11
   104c8:	00011437          	lui	s0,0x11
   104cc:	01213023          	sd	s2,0(sp)
   104d0:	00478793          	add	a5,a5,4 # 11004 <__preinit_array_end>
   104d4:	00440713          	add	a4,s0,4 # 11004 <__preinit_array_end>
   104d8:	00113c23          	sd	ra,24(sp)
   104dc:	00913423          	sd	s1,8(sp)
   104e0:	40e78933          	sub	s2,a5,a4
   104e4:	02e78263          	beq	a5,a4,10508 <__libc_init_array+0x4c>
   104e8:	40395913          	sra	s2,s2,0x3
   104ec:	00440413          	add	s0,s0,4
   104f0:	00000493          	li	s1,0
   104f4:	00043783          	ld	a5,0(s0)
   104f8:	00148493          	add	s1,s1,1
   104fc:	00840413          	add	s0,s0,8
   10500:	000780e7          	jalr	a5
   10504:	ff24e8e3          	bltu	s1,s2,104f4 <__libc_init_array+0x38>
   10508:	00011437          	lui	s0,0x11
   1050c:	000117b7          	lui	a5,0x11
   10510:	01878793          	add	a5,a5,24 # 11018 <__do_global_dtors_aux_fini_array_entry>
   10514:	00840713          	add	a4,s0,8 # 11008 <__init_array_start>
   10518:	40e78933          	sub	s2,a5,a4
   1051c:	40395913          	sra	s2,s2,0x3
   10520:	02e78063          	beq	a5,a4,10540 <__libc_init_array+0x84>
   10524:	00840413          	add	s0,s0,8
   10528:	00000493          	li	s1,0
   1052c:	00043783          	ld	a5,0(s0)
   10530:	00148493          	add	s1,s1,1
   10534:	00840413          	add	s0,s0,8
   10538:	000780e7          	jalr	a5
   1053c:	ff24e8e3          	bltu	s1,s2,1052c <__libc_init_array+0x70>
   10540:	01813083          	ld	ra,24(sp)
   10544:	01013403          	ld	s0,16(sp)
   10548:	00813483          	ld	s1,8(sp)
   1054c:	00013903          	ld	s2,0(sp)
   10550:	02010113          	add	sp,sp,32
   10554:	00008067          	ret

0000000000010558 <memset>:
   10558:	00f00313          	li	t1,15
   1055c:	00050713          	mv	a4,a0
   10560:	02c37a63          	bgeu	t1,a2,10594 <memset+0x3c>
   10564:	00f77793          	and	a5,a4,15
   10568:	0a079063          	bnez	a5,10608 <memset+0xb0>
   1056c:	06059e63          	bnez	a1,105e8 <memset+0x90>
   10570:	ff067693          	and	a3,a2,-16
   10574:	00f67613          	and	a2,a2,15
   10578:	00e686b3          	add	a3,a3,a4
   1057c:	00b73023          	sd	a1,0(a4)
   10580:	00b73423          	sd	a1,8(a4)
   10584:	01070713          	add	a4,a4,16
   10588:	fed76ae3          	bltu	a4,a3,1057c <memset+0x24>
   1058c:	00061463          	bnez	a2,10594 <memset+0x3c>
   10590:	00008067          	ret
   10594:	40c306b3          	sub	a3,t1,a2
   10598:	00269693          	sll	a3,a3,0x2
   1059c:	00000297          	auipc	t0,0x0
   105a0:	005686b3          	add	a3,a3,t0
   105a4:	00c68067          	jr	12(a3)
   105a8:	00b70723          	sb	a1,14(a4)
   105ac:	00b706a3          	sb	a1,13(a4)
   105b0:	00b70623          	sb	a1,12(a4)
   105b4:	00b705a3          	sb	a1,11(a4)
   105b8:	00b70523          	sb	a1,10(a4)
   105bc:	00b704a3          	sb	a1,9(a4)
   105c0:	00b70423          	sb	a1,8(a4)
   105c4:	00b703a3          	sb	a1,7(a4)
   105c8:	00b70323          	sb	a1,6(a4)
   105cc:	00b702a3          	sb	a1,5(a4)
   105d0:	00b70223          	sb	a1,4(a4)
   105d4:	00b701a3          	sb	a1,3(a4)
   105d8:	00b70123          	sb	a1,2(a4)
   105dc:	00b700a3          	sb	a1,1(a4)
   105e0:	00b70023          	sb	a1,0(a4)
   105e4:	00008067          	ret
   105e8:	0ff5f593          	zext.b	a1,a1
   105ec:	00859693          	sll	a3,a1,0x8
   105f0:	00d5e5b3          	or	a1,a1,a3
   105f4:	01059693          	sll	a3,a1,0x10
   105f8:	00d5e5b3          	or	a1,a1,a3
   105fc:	02059693          	sll	a3,a1,0x20
   10600:	00d5e5b3          	or	a1,a1,a3
   10604:	f6dff06f          	j	10570 <memset+0x18>
   10608:	00279693          	sll	a3,a5,0x2
   1060c:	00000297          	auipc	t0,0x0
   10610:	005686b3          	add	a3,a3,t0
   10614:	00008293          	mv	t0,ra
   10618:	f98680e7          	jalr	-104(a3)
   1061c:	00028093          	mv	ra,t0
   10620:	ff078793          	add	a5,a5,-16
   10624:	40f70733          	sub	a4,a4,a5
   10628:	00f60633          	add	a2,a2,a5
   1062c:	f6c374e3          	bgeu	t1,a2,10594 <memset+0x3c>
   10630:	f3dff06f          	j	1056c <memset+0x14>

0000000000010634 <__call_exitprocs>:
   10634:	fb010113          	add	sp,sp,-80
   10638:	03413023          	sd	s4,32(sp)
   1063c:	f481ba03          	ld	s4,-184(gp) # 11768 <_global_impure_ptr>
   10640:	03213823          	sd	s2,48(sp)
   10644:	04113423          	sd	ra,72(sp)
   10648:	1f8a3903          	ld	s2,504(s4)
   1064c:	04813023          	sd	s0,64(sp)
   10650:	02913c23          	sd	s1,56(sp)
   10654:	03313423          	sd	s3,40(sp)
   10658:	01513c23          	sd	s5,24(sp)
   1065c:	01613823          	sd	s6,16(sp)
   10660:	01713423          	sd	s7,8(sp)
   10664:	01813023          	sd	s8,0(sp)
   10668:	04090063          	beqz	s2,106a8 <__call_exitprocs+0x74>
   1066c:	00050b13          	mv	s6,a0
   10670:	00058b93          	mv	s7,a1
   10674:	00100a93          	li	s5,1
   10678:	fff00993          	li	s3,-1
   1067c:	00892483          	lw	s1,8(s2)
   10680:	fff4841b          	addw	s0,s1,-1
   10684:	02044263          	bltz	s0,106a8 <__call_exitprocs+0x74>
   10688:	00349493          	sll	s1,s1,0x3
   1068c:	009904b3          	add	s1,s2,s1
   10690:	040b8463          	beqz	s7,106d8 <__call_exitprocs+0xa4>
   10694:	2084b783          	ld	a5,520(s1)
   10698:	05778063          	beq	a5,s7,106d8 <__call_exitprocs+0xa4>
   1069c:	fff4041b          	addw	s0,s0,-1
   106a0:	ff848493          	add	s1,s1,-8
   106a4:	ff3416e3          	bne	s0,s3,10690 <__call_exitprocs+0x5c>
   106a8:	04813083          	ld	ra,72(sp)
   106ac:	04013403          	ld	s0,64(sp)
   106b0:	03813483          	ld	s1,56(sp)
   106b4:	03013903          	ld	s2,48(sp)
   106b8:	02813983          	ld	s3,40(sp)
   106bc:	02013a03          	ld	s4,32(sp)
   106c0:	01813a83          	ld	s5,24(sp)
   106c4:	01013b03          	ld	s6,16(sp)
   106c8:	00813b83          	ld	s7,8(sp)
   106cc:	00013c03          	ld	s8,0(sp)
   106d0:	05010113          	add	sp,sp,80
   106d4:	00008067          	ret
   106d8:	00892783          	lw	a5,8(s2)
   106dc:	0084b703          	ld	a4,8(s1)
   106e0:	fff7879b          	addw	a5,a5,-1
   106e4:	06878263          	beq	a5,s0,10748 <__call_exitprocs+0x114>
   106e8:	0004b423          	sd	zero,8(s1)
   106ec:	fa0708e3          	beqz	a4,1069c <__call_exitprocs+0x68>
   106f0:	31092783          	lw	a5,784(s2)
   106f4:	008a96bb          	sllw	a3,s5,s0
   106f8:	00892c03          	lw	s8,8(s2)
   106fc:	00d7f7b3          	and	a5,a5,a3
   10700:	0007879b          	sext.w	a5,a5
   10704:	02079263          	bnez	a5,10728 <__call_exitprocs+0xf4>
   10708:	000700e7          	jalr	a4
   1070c:	00892703          	lw	a4,8(s2)
   10710:	1f8a3783          	ld	a5,504(s4)
   10714:	01871463          	bne	a4,s8,1071c <__call_exitprocs+0xe8>
   10718:	f92782e3          	beq	a5,s2,1069c <__call_exitprocs+0x68>
   1071c:	f80786e3          	beqz	a5,106a8 <__call_exitprocs+0x74>
   10720:	00078913          	mv	s2,a5
   10724:	f59ff06f          	j	1067c <__call_exitprocs+0x48>
   10728:	31492783          	lw	a5,788(s2)
   1072c:	1084b583          	ld	a1,264(s1)
   10730:	00d7f7b3          	and	a5,a5,a3
   10734:	0007879b          	sext.w	a5,a5
   10738:	00079c63          	bnez	a5,10750 <__call_exitprocs+0x11c>
   1073c:	000b0513          	mv	a0,s6
   10740:	000700e7          	jalr	a4
   10744:	fc9ff06f          	j	1070c <__call_exitprocs+0xd8>
   10748:	00892423          	sw	s0,8(s2)
   1074c:	fa1ff06f          	j	106ec <__call_exitprocs+0xb8>
   10750:	00058513          	mv	a0,a1
   10754:	000700e7          	jalr	a4
   10758:	fb5ff06f          	j	1070c <__call_exitprocs+0xd8>

000000000001075c <__libc_fini_array>:
   1075c:	fe010113          	add	sp,sp,-32
   10760:	00813823          	sd	s0,16(sp)
   10764:	000117b7          	lui	a5,0x11
   10768:	00011437          	lui	s0,0x11
   1076c:	01878793          	add	a5,a5,24 # 11018 <__do_global_dtors_aux_fini_array_entry>
   10770:	02040413          	add	s0,s0,32 # 11020 <impure_data>
   10774:	40f40433          	sub	s0,s0,a5
   10778:	00913423          	sd	s1,8(sp)
   1077c:	00113c23          	sd	ra,24(sp)
   10780:	40345493          	sra	s1,s0,0x3
   10784:	02048063          	beqz	s1,107a4 <__libc_fini_array+0x48>
   10788:	ff840413          	add	s0,s0,-8
   1078c:	00f40433          	add	s0,s0,a5
   10790:	00043783          	ld	a5,0(s0)
   10794:	fff48493          	add	s1,s1,-1
   10798:	ff840413          	add	s0,s0,-8
   1079c:	000780e7          	jalr	a5
   107a0:	fe0498e3          	bnez	s1,10790 <__libc_fini_array+0x34>
   107a4:	01813083          	ld	ra,24(sp)
   107a8:	01013403          	ld	s0,16(sp)
   107ac:	00813483          	ld	s1,8(sp)
   107b0:	02010113          	add	sp,sp,32
   107b4:	00008067          	ret

00000000000107b8 <atexit>:
   107b8:	00050593          	mv	a1,a0
   107bc:	00000693          	li	a3,0
   107c0:	00000613          	li	a2,0
   107c4:	00000513          	li	a0,0
   107c8:	0040006f          	j	107cc <__register_exitproc>

00000000000107cc <__register_exitproc>:
   107cc:	f481b703          	ld	a4,-184(gp) # 11768 <_global_impure_ptr>
   107d0:	1f873783          	ld	a5,504(a4)
   107d4:	06078063          	beqz	a5,10834 <__register_exitproc+0x68>
   107d8:	0087a703          	lw	a4,8(a5)
   107dc:	01f00813          	li	a6,31
   107e0:	08e84663          	blt	a6,a4,1086c <__register_exitproc+0xa0>
   107e4:	02050863          	beqz	a0,10814 <__register_exitproc+0x48>
   107e8:	00371813          	sll	a6,a4,0x3
   107ec:	01078833          	add	a6,a5,a6
   107f0:	10c83823          	sd	a2,272(a6)
   107f4:	3107a883          	lw	a7,784(a5)
   107f8:	00100613          	li	a2,1
   107fc:	00e6163b          	sllw	a2,a2,a4
   10800:	00c8e8b3          	or	a7,a7,a2
   10804:	3117a823          	sw	a7,784(a5)
   10808:	20d83823          	sd	a3,528(a6)
   1080c:	00200693          	li	a3,2
   10810:	02d50863          	beq	a0,a3,10840 <__register_exitproc+0x74>
   10814:	00270693          	add	a3,a4,2
   10818:	00369693          	sll	a3,a3,0x3
   1081c:	0017071b          	addw	a4,a4,1
   10820:	00e7a423          	sw	a4,8(a5)
   10824:	00d787b3          	add	a5,a5,a3
   10828:	00b7b023          	sd	a1,0(a5)
   1082c:	00000513          	li	a0,0
   10830:	00008067          	ret
   10834:	20070793          	add	a5,a4,512
   10838:	1ef73c23          	sd	a5,504(a4)
   1083c:	f9dff06f          	j	107d8 <__register_exitproc+0xc>
   10840:	3147a683          	lw	a3,788(a5)
   10844:	00000513          	li	a0,0
   10848:	00c6e6b3          	or	a3,a3,a2
   1084c:	30d7aa23          	sw	a3,788(a5)
   10850:	00270693          	add	a3,a4,2
   10854:	00369693          	sll	a3,a3,0x3
   10858:	0017071b          	addw	a4,a4,1
   1085c:	00e7a423          	sw	a4,8(a5)
   10860:	00d787b3          	add	a5,a5,a3
   10864:	00b7b023          	sd	a1,0(a5)
   10868:	00008067          	ret
   1086c:	fff00513          	li	a0,-1
   10870:	00008067          	ret

0000000000010874 <_exit>:
   10874:	05d00893          	li	a7,93
   10878:	00000073          	ecall
   1087c:	00054463          	bltz	a0,10884 <_exit+0x10>
   10880:	0000006f          	j	10880 <_exit+0xc>
   10884:	ff010113          	add	sp,sp,-16
   10888:	00813023          	sd	s0,0(sp)
   1088c:	00050413          	mv	s0,a0
   10890:	00113423          	sd	ra,8(sp)
   10894:	4080043b          	negw	s0,s0
   10898:	00c000ef          	jal	108a4 <__errno>
   1089c:	00852023          	sw	s0,0(a0) # 11000 <__EH_FRAME_BEGIN__>
   108a0:	0000006f          	j	108a0 <_exit+0x2c>

00000000000108a4 <__errno>:
   108a4:	f581b503          	ld	a0,-168(gp) # 11778 <_impure_ptr>
   108a8:	00008067          	ret

Disassembly of section .rodata:

00000000000108b0 <.rodata>:
   108b0:	6341                	.2byte	0x6341
   108b2:	6d72656b          	.4byte	0x6d72656b
   108b6:	6e61                	.2byte	0x6e61
   108b8:	286e                	.2byte	0x286e
   108ba:	0000                	.2byte	0x0
   108bc:	0000                	.2byte	0x0
   108be:	0000                	.2byte	0x0
   108c0:	002c                	.2byte	0x2c
   108c2:	0000                	.2byte	0x0
   108c4:	0000                	.2byte	0x0
   108c6:	0000                	.2byte	0x0
   108c8:	2029                	.2byte	0x2029
   108ca:	203d                	.2byte	0x203d
	...

Disassembly of section .eh_frame:

0000000000011000 <__EH_FRAME_BEGIN__>:
   11000:	0000                	.2byte	0x0
	...

Disassembly of section .init_array:

0000000000011008 <__init_array_start>:
   11008:	0118                	.2byte	0x118
   1100a:	0001                	.2byte	0x1
   1100c:	0000                	.2byte	0x0
	...

0000000000011010 <__frame_dummy_init_array_entry>:
   11010:	01c0                	.2byte	0x1c0
   11012:	0001                	.2byte	0x1
   11014:	0000                	.2byte	0x0
	...

Disassembly of section .fini_array:

0000000000011018 <__do_global_dtors_aux_fini_array_entry>:
   11018:	017c                	.2byte	0x17c
   1101a:	0001                	.2byte	0x1
   1101c:	0000                	.2byte	0x0
	...

Disassembly of section .data:

0000000000011020 <impure_data>:
	...
   11028:	1558                	.2byte	0x1558
   1102a:	0001                	.2byte	0x1
   1102c:	0000                	.2byte	0x0
   1102e:	0000                	.2byte	0x0
   11030:	1608                	.2byte	0x1608
   11032:	0001                	.2byte	0x1
   11034:	0000                	.2byte	0x0
   11036:	0000                	.2byte	0x0
   11038:	16b8                	.2byte	0x16b8
   1103a:	0001                	.2byte	0x1
	...
   11108:	0001                	.2byte	0x1
   1110a:	0000                	.2byte	0x0
   1110c:	0000                	.2byte	0x0
   1110e:	0000                	.2byte	0x0
   11110:	330e                	.2byte	0x330e
   11112:	abcd                	.2byte	0xabcd
   11114:	1234                	.2byte	0x1234
   11116:	e66d                	.2byte	0xe66d
   11118:	deec                	.2byte	0xdeec
   1111a:	0005                	.2byte	0x5
   1111c:	0000000b          	.4byte	0xb
	...

Disassembly of section .sdata:

0000000000011768 <_global_impure_ptr>:
   11768:	1020                	.2byte	0x1020
   1176a:	0001                	.2byte	0x1
   1176c:	0000                	.2byte	0x0
	...

0000000000011770 <__dso_handle>:
	...

0000000000011778 <_impure_ptr>:
   11778:	1020                	.2byte	0x1020
   1177a:	0001                	.2byte	0x1
   1177c:	0000                	.2byte	0x0
	...

Disassembly of section .bss:

0000000000011780 <completed.1>:
	...

0000000000011788 <object.0>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	3a434347          	.4byte	0x3a434347
   4:	2820                	.2byte	0x2820
   6:	31202967          	.4byte	0x31202967
   a:	2e32                	.2byte	0x2e32
   c:	2e32                	.2byte	0x2e32
   e:	0030                	.2byte	0x30
  10:	3a434347          	.4byte	0x3a434347
  14:	2820                	.2byte	0x2820
  16:	29554e47          	fmsub.s	ft8,fa0,fs5,ft5,rmm
  1a:	3120                	.2byte	0x3120
  1c:	2e32                	.2byte	0x2e32
  1e:	2e32                	.2byte	0x2e32
  20:	0030                	.2byte	0x30

Disassembly of section .riscv.attributes:

0000000000000000 <.riscv.attributes>:
   0:	3741                	.2byte	0x3741
   2:	0000                	.2byte	0x0
   4:	7200                	.2byte	0x7200
   6:	7369                	.2byte	0x7369
   8:	01007663          	bgeu	zero,a6,14 <exit-0x100d4>
   c:	002d                	.2byte	0x2d
   e:	0000                	.2byte	0x0
  10:	1004                	.2byte	0x1004
  12:	7205                	.2byte	0x7205
  14:	3676                	.2byte	0x3676
  16:	6934                	.2byte	0x6934
  18:	7032                	.2byte	0x7032
  1a:	5f31                	.2byte	0x5f31
  1c:	326d                	.2byte	0x326d
  1e:	3070                	.2byte	0x3070
  20:	665f 7032 5f32      	.byte	0x5f, 0x66, 0x32, 0x70, 0x32, 0x5f
  26:	697a                	.2byte	0x697a
  28:	32727363          	bgeu	tp,t2,34e <exit-0xfd9a>
  2c:	3070                	.2byte	0x3070
  2e:	7a5f 6d6d 6c75      	.byte	0x5f, 0x7a, 0x6d, 0x6d, 0x75, 0x6c
  34:	7031                	.2byte	0x7031
  36:	0030                	.2byte	0x30
