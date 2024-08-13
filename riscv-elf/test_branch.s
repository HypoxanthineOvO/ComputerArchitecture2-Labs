
test_branch.riscv:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100e8 <exit>:
   100e8:	ff010113          	add	sp,sp,-16
   100ec:	00000593          	li	a1,0
   100f0:	00813023          	sd	s0,0(sp)
   100f4:	00113423          	sd	ra,8(sp)
   100f8:	00050413          	mv	s0,a0
   100fc:	554000ef          	jal	10650 <__call_exitprocs>
   10100:	f481b503          	ld	a0,-184(gp) # 11768 <_global_impure_ptr>
   10104:	05853783          	ld	a5,88(a0)
   10108:	00078463          	beqz	a5,10110 <exit+0x28>
   1010c:	000780e7          	jalr	a5
   10110:	00040513          	mv	a0,s0
   10114:	77c000ef          	jal	10890 <_exit>

0000000000010118 <register_fini>:
   10118:	00000793          	li	a5,0
   1011c:	00078863          	beqz	a5,1012c <register_fini+0x14>
   10120:	00010537          	lui	a0,0x10
   10124:	77850513          	add	a0,a0,1912 # 10778 <__libc_fini_array>
   10128:	6ac0006f          	j	107d4 <atexit>
   1012c:	00008067          	ret

0000000000010130 <_start>:
   10130:	00001197          	auipc	gp,0x1
   10134:	6f018193          	add	gp,gp,1776 # 11820 <__global_pointer$>
   10138:	f6018513          	add	a0,gp,-160 # 11780 <completed.1>
   1013c:	f9818613          	add	a2,gp,-104 # 117b8 <__BSS_END__>
   10140:	40a60633          	sub	a2,a2,a0
   10144:	00000593          	li	a1,0
   10148:	42c000ef          	jal	10574 <memset>
   1014c:	00000517          	auipc	a0,0x0
   10150:	68850513          	add	a0,a0,1672 # 107d4 <atexit>
   10154:	00050863          	beqz	a0,10164 <_start+0x34>
   10158:	00000517          	auipc	a0,0x0
   1015c:	62050513          	add	a0,a0,1568 # 10778 <__libc_fini_array>
   10160:	674000ef          	jal	107d4 <atexit>
   10164:	374000ef          	jal	104d8 <__libc_init_array>
   10168:	00012503          	lw	a0,0(sp)
   1016c:	00810593          	add	a1,sp,8
   10170:	00000613          	li	a2,0
   10174:	06c000ef          	jal	101e0 <main>
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

00000000000101e0 <main>:
   101e0:	fc010113          	add	sp,sp,-64
   101e4:	02113c23          	sd	ra,56(sp)
   101e8:	02813823          	sd	s0,48(sp)
   101ec:	04010413          	add	s0,sp,64
   101f0:	fe042023          	sw	zero,-32(s0)
   101f4:	00100793          	li	a5,1
   101f8:	fcf42e23          	sw	a5,-36(s0)
   101fc:	000117b7          	lui	a5,0x11
   10200:	91878793          	add	a5,a5,-1768 # 10918 <__errno+0x58>
   10204:	0007b703          	ld	a4,0(a5)
   10208:	fce43423          	sd	a4,-56(s0)
   1020c:	0087b703          	ld	a4,8(a5)
   10210:	fce43823          	sd	a4,-48(s0)
   10214:	0107a783          	lw	a5,16(a5)
   10218:	fcf42c23          	sw	a5,-40(s0)
   1021c:	fe042783          	lw	a5,-32(s0)
   10220:	0007879b          	sext.w	a5,a5
   10224:	00078863          	beqz	a5,10234 <main+0x54>
   10228:	000117b7          	lui	a5,0x11
   1022c:	8c878513          	add	a0,a5,-1848 # 108c8 <__errno+0x8>
   10230:	1a8000ef          	jal	103d8 <print_s>
   10234:	fdc42783          	lw	a5,-36(s0)
   10238:	0007879b          	sext.w	a5,a5
   1023c:	00078863          	beqz	a5,1024c <main+0x6c>
   10240:	000117b7          	lui	a5,0x11
   10244:	8f878513          	add	a0,a5,-1800 # 108f8 <__errno+0x38>
   10248:	190000ef          	jal	103d8 <print_s>
   1024c:	000117b7          	lui	a5,0x11
   10250:	91078513          	add	a0,a5,-1776 # 10910 <__errno+0x50>
   10254:	184000ef          	jal	103d8 <print_s>
   10258:	fe042623          	sw	zero,-20(s0)
   1025c:	0340006f          	j	10290 <main+0xb0>
   10260:	fec42783          	lw	a5,-20(s0)
   10264:	00279793          	sll	a5,a5,0x2
   10268:	ff078793          	add	a5,a5,-16
   1026c:	008787b3          	add	a5,a5,s0
   10270:	fd87a783          	lw	a5,-40(a5)
   10274:	00078513          	mv	a0,a5
   10278:	134000ef          	jal	103ac <print_d>
   1027c:	02000513          	li	a0,32
   10280:	180000ef          	jal	10400 <print_c>
   10284:	fec42783          	lw	a5,-20(s0)
   10288:	0017879b          	addw	a5,a5,1
   1028c:	fef42623          	sw	a5,-20(s0)
   10290:	fec42783          	lw	a5,-20(s0)
   10294:	0007871b          	sext.w	a4,a5
   10298:	00400793          	li	a5,4
   1029c:	fce7d2e3          	bge	a5,a4,10260 <main+0x80>
   102a0:	00a00513          	li	a0,10
   102a4:	15c000ef          	jal	10400 <print_c>
   102a8:	00100793          	li	a5,1
   102ac:	fef42423          	sw	a5,-24(s0)
   102b0:	0740006f          	j	10324 <main+0x144>
   102b4:	fe842783          	lw	a5,-24(s0)
   102b8:	00279793          	sll	a5,a5,0x2
   102bc:	ff078793          	add	a5,a5,-16
   102c0:	008787b3          	add	a5,a5,s0
   102c4:	fd87a703          	lw	a4,-40(a5)
   102c8:	fe842783          	lw	a5,-24(s0)
   102cc:	fff7879b          	addw	a5,a5,-1
   102d0:	0007879b          	sext.w	a5,a5
   102d4:	00279793          	sll	a5,a5,0x2
   102d8:	ff078793          	add	a5,a5,-16
   102dc:	008787b3          	add	a5,a5,s0
   102e0:	fd87a783          	lw	a5,-40(a5)
   102e4:	00078693          	mv	a3,a5
   102e8:	00068793          	mv	a5,a3
   102ec:	0027979b          	sllw	a5,a5,0x2
   102f0:	00d787bb          	addw	a5,a5,a3
   102f4:	0017979b          	sllw	a5,a5,0x1
   102f8:	0007879b          	sext.w	a5,a5
   102fc:	00f707bb          	addw	a5,a4,a5
   10300:	0007871b          	sext.w	a4,a5
   10304:	fe842783          	lw	a5,-24(s0)
   10308:	00279793          	sll	a5,a5,0x2
   1030c:	ff078793          	add	a5,a5,-16
   10310:	008787b3          	add	a5,a5,s0
   10314:	fce7ac23          	sw	a4,-40(a5)
   10318:	fe842783          	lw	a5,-24(s0)
   1031c:	0017879b          	addw	a5,a5,1
   10320:	fef42423          	sw	a5,-24(s0)
   10324:	fe842783          	lw	a5,-24(s0)
   10328:	0007871b          	sext.w	a4,a5
   1032c:	00400793          	li	a5,4
   10330:	f8e7d2e3          	bge	a5,a4,102b4 <main+0xd4>
   10334:	000117b7          	lui	a5,0x11
   10338:	91078513          	add	a0,a5,-1776 # 10910 <__errno+0x50>
   1033c:	09c000ef          	jal	103d8 <print_s>
   10340:	fe042223          	sw	zero,-28(s0)
   10344:	0340006f          	j	10378 <main+0x198>
   10348:	fe442783          	lw	a5,-28(s0)
   1034c:	00279793          	sll	a5,a5,0x2
   10350:	ff078793          	add	a5,a5,-16
   10354:	008787b3          	add	a5,a5,s0
   10358:	fd87a783          	lw	a5,-40(a5)
   1035c:	00078513          	mv	a0,a5
   10360:	04c000ef          	jal	103ac <print_d>
   10364:	02000513          	li	a0,32
   10368:	098000ef          	jal	10400 <print_c>
   1036c:	fe442783          	lw	a5,-28(s0)
   10370:	0017879b          	addw	a5,a5,1
   10374:	fef42223          	sw	a5,-28(s0)
   10378:	fe442783          	lw	a5,-28(s0)
   1037c:	0007871b          	sext.w	a4,a5
   10380:	00400793          	li	a5,4
   10384:	fce7d2e3          	bge	a5,a4,10348 <main+0x168>
   10388:	00a00513          	li	a0,10
   1038c:	074000ef          	jal	10400 <print_c>
   10390:	09c000ef          	jal	1042c <exit_proc>
   10394:	00000793          	li	a5,0
   10398:	00078513          	mv	a0,a5
   1039c:	03813083          	ld	ra,56(sp)
   103a0:	03013403          	ld	s0,48(sp)
   103a4:	04010113          	add	sp,sp,64
   103a8:	00008067          	ret

00000000000103ac <print_d>:
   103ac:	fe010113          	add	sp,sp,-32
   103b0:	00813c23          	sd	s0,24(sp)
   103b4:	02010413          	add	s0,sp,32
   103b8:	00050793          	mv	a5,a0
   103bc:	fef42623          	sw	a5,-20(s0)
   103c0:	00200893          	li	a7,2
   103c4:	00000073          	ecall
   103c8:	00000013          	nop
   103cc:	01813403          	ld	s0,24(sp)
   103d0:	02010113          	add	sp,sp,32
   103d4:	00008067          	ret

00000000000103d8 <print_s>:
   103d8:	fe010113          	add	sp,sp,-32
   103dc:	00813c23          	sd	s0,24(sp)
   103e0:	02010413          	add	s0,sp,32
   103e4:	fea43423          	sd	a0,-24(s0)
   103e8:	00000893          	li	a7,0
   103ec:	00000073          	ecall
   103f0:	00000013          	nop
   103f4:	01813403          	ld	s0,24(sp)
   103f8:	02010113          	add	sp,sp,32
   103fc:	00008067          	ret

0000000000010400 <print_c>:
   10400:	fe010113          	add	sp,sp,-32
   10404:	00813c23          	sd	s0,24(sp)
   10408:	02010413          	add	s0,sp,32
   1040c:	00050793          	mv	a5,a0
   10410:	fef407a3          	sb	a5,-17(s0)
   10414:	00100893          	li	a7,1
   10418:	00000073          	ecall
   1041c:	00000013          	nop
   10420:	01813403          	ld	s0,24(sp)
   10424:	02010113          	add	sp,sp,32
   10428:	00008067          	ret

000000000001042c <exit_proc>:
   1042c:	ff010113          	add	sp,sp,-16
   10430:	00813423          	sd	s0,8(sp)
   10434:	01010413          	add	s0,sp,16
   10438:	00300893          	li	a7,3
   1043c:	00000073          	ecall
   10440:	00000013          	nop
   10444:	00813403          	ld	s0,8(sp)
   10448:	01010113          	add	sp,sp,16
   1044c:	00008067          	ret

0000000000010450 <read_char>:
   10450:	fe010113          	add	sp,sp,-32
   10454:	00813c23          	sd	s0,24(sp)
   10458:	02010413          	add	s0,sp,32
   1045c:	00400893          	li	a7,4
   10460:	00000073          	ecall
   10464:	00050793          	mv	a5,a0
   10468:	fef407a3          	sb	a5,-17(s0)
   1046c:	fef44783          	lbu	a5,-17(s0)
   10470:	00078513          	mv	a0,a5
   10474:	01813403          	ld	s0,24(sp)
   10478:	02010113          	add	sp,sp,32
   1047c:	00008067          	ret

0000000000010480 <read_num>:
   10480:	fe010113          	add	sp,sp,-32
   10484:	00813c23          	sd	s0,24(sp)
   10488:	02010413          	add	s0,sp,32
   1048c:	00500893          	li	a7,5
   10490:	00000073          	ecall
   10494:	00050793          	mv	a5,a0
   10498:	fef43423          	sd	a5,-24(s0)
   1049c:	fe843783          	ld	a5,-24(s0)
   104a0:	00078513          	mv	a0,a5
   104a4:	01813403          	ld	s0,24(sp)
   104a8:	02010113          	add	sp,sp,32
   104ac:	00008067          	ret

00000000000104b0 <print_f>:
   104b0:	fe010113          	add	sp,sp,-32
   104b4:	00813c23          	sd	s0,24(sp)
   104b8:	02010413          	add	s0,sp,32
   104bc:	fea42627          	fsw	fa0,-20(s0)
   104c0:	00600893          	li	a7,6
   104c4:	00000073          	ecall
   104c8:	00000013          	nop
   104cc:	01813403          	ld	s0,24(sp)
   104d0:	02010113          	add	sp,sp,32
   104d4:	00008067          	ret

00000000000104d8 <__libc_init_array>:
   104d8:	fe010113          	add	sp,sp,-32
   104dc:	00813823          	sd	s0,16(sp)
   104e0:	000117b7          	lui	a5,0x11
   104e4:	00011437          	lui	s0,0x11
   104e8:	01213023          	sd	s2,0(sp)
   104ec:	00478793          	add	a5,a5,4 # 11004 <__preinit_array_end>
   104f0:	00440713          	add	a4,s0,4 # 11004 <__preinit_array_end>
   104f4:	00113c23          	sd	ra,24(sp)
   104f8:	00913423          	sd	s1,8(sp)
   104fc:	40e78933          	sub	s2,a5,a4
   10500:	02e78263          	beq	a5,a4,10524 <__libc_init_array+0x4c>
   10504:	40395913          	sra	s2,s2,0x3
   10508:	00440413          	add	s0,s0,4
   1050c:	00000493          	li	s1,0
   10510:	00043783          	ld	a5,0(s0)
   10514:	00148493          	add	s1,s1,1
   10518:	00840413          	add	s0,s0,8
   1051c:	000780e7          	jalr	a5
   10520:	ff24e8e3          	bltu	s1,s2,10510 <__libc_init_array+0x38>
   10524:	00011437          	lui	s0,0x11
   10528:	000117b7          	lui	a5,0x11
   1052c:	01878793          	add	a5,a5,24 # 11018 <__do_global_dtors_aux_fini_array_entry>
   10530:	00840713          	add	a4,s0,8 # 11008 <__init_array_start>
   10534:	40e78933          	sub	s2,a5,a4
   10538:	40395913          	sra	s2,s2,0x3
   1053c:	02e78063          	beq	a5,a4,1055c <__libc_init_array+0x84>
   10540:	00840413          	add	s0,s0,8
   10544:	00000493          	li	s1,0
   10548:	00043783          	ld	a5,0(s0)
   1054c:	00148493          	add	s1,s1,1
   10550:	00840413          	add	s0,s0,8
   10554:	000780e7          	jalr	a5
   10558:	ff24e8e3          	bltu	s1,s2,10548 <__libc_init_array+0x70>
   1055c:	01813083          	ld	ra,24(sp)
   10560:	01013403          	ld	s0,16(sp)
   10564:	00813483          	ld	s1,8(sp)
   10568:	00013903          	ld	s2,0(sp)
   1056c:	02010113          	add	sp,sp,32
   10570:	00008067          	ret

0000000000010574 <memset>:
   10574:	00f00313          	li	t1,15
   10578:	00050713          	mv	a4,a0
   1057c:	02c37a63          	bgeu	t1,a2,105b0 <memset+0x3c>
   10580:	00f77793          	and	a5,a4,15
   10584:	0a079063          	bnez	a5,10624 <memset+0xb0>
   10588:	06059e63          	bnez	a1,10604 <memset+0x90>
   1058c:	ff067693          	and	a3,a2,-16
   10590:	00f67613          	and	a2,a2,15
   10594:	00e686b3          	add	a3,a3,a4
   10598:	00b73023          	sd	a1,0(a4)
   1059c:	00b73423          	sd	a1,8(a4)
   105a0:	01070713          	add	a4,a4,16
   105a4:	fed76ae3          	bltu	a4,a3,10598 <memset+0x24>
   105a8:	00061463          	bnez	a2,105b0 <memset+0x3c>
   105ac:	00008067          	ret
   105b0:	40c306b3          	sub	a3,t1,a2
   105b4:	00269693          	sll	a3,a3,0x2
   105b8:	00000297          	auipc	t0,0x0
   105bc:	005686b3          	add	a3,a3,t0
   105c0:	00c68067          	jr	12(a3)
   105c4:	00b70723          	sb	a1,14(a4)
   105c8:	00b706a3          	sb	a1,13(a4)
   105cc:	00b70623          	sb	a1,12(a4)
   105d0:	00b705a3          	sb	a1,11(a4)
   105d4:	00b70523          	sb	a1,10(a4)
   105d8:	00b704a3          	sb	a1,9(a4)
   105dc:	00b70423          	sb	a1,8(a4)
   105e0:	00b703a3          	sb	a1,7(a4)
   105e4:	00b70323          	sb	a1,6(a4)
   105e8:	00b702a3          	sb	a1,5(a4)
   105ec:	00b70223          	sb	a1,4(a4)
   105f0:	00b701a3          	sb	a1,3(a4)
   105f4:	00b70123          	sb	a1,2(a4)
   105f8:	00b700a3          	sb	a1,1(a4)
   105fc:	00b70023          	sb	a1,0(a4)
   10600:	00008067          	ret
   10604:	0ff5f593          	zext.b	a1,a1
   10608:	00859693          	sll	a3,a1,0x8
   1060c:	00d5e5b3          	or	a1,a1,a3
   10610:	01059693          	sll	a3,a1,0x10
   10614:	00d5e5b3          	or	a1,a1,a3
   10618:	02059693          	sll	a3,a1,0x20
   1061c:	00d5e5b3          	or	a1,a1,a3
   10620:	f6dff06f          	j	1058c <memset+0x18>
   10624:	00279693          	sll	a3,a5,0x2
   10628:	00000297          	auipc	t0,0x0
   1062c:	005686b3          	add	a3,a3,t0
   10630:	00008293          	mv	t0,ra
   10634:	f98680e7          	jalr	-104(a3)
   10638:	00028093          	mv	ra,t0
   1063c:	ff078793          	add	a5,a5,-16
   10640:	40f70733          	sub	a4,a4,a5
   10644:	00f60633          	add	a2,a2,a5
   10648:	f6c374e3          	bgeu	t1,a2,105b0 <memset+0x3c>
   1064c:	f3dff06f          	j	10588 <memset+0x14>

0000000000010650 <__call_exitprocs>:
   10650:	fb010113          	add	sp,sp,-80
   10654:	03413023          	sd	s4,32(sp)
   10658:	f481ba03          	ld	s4,-184(gp) # 11768 <_global_impure_ptr>
   1065c:	03213823          	sd	s2,48(sp)
   10660:	04113423          	sd	ra,72(sp)
   10664:	1f8a3903          	ld	s2,504(s4)
   10668:	04813023          	sd	s0,64(sp)
   1066c:	02913c23          	sd	s1,56(sp)
   10670:	03313423          	sd	s3,40(sp)
   10674:	01513c23          	sd	s5,24(sp)
   10678:	01613823          	sd	s6,16(sp)
   1067c:	01713423          	sd	s7,8(sp)
   10680:	01813023          	sd	s8,0(sp)
   10684:	04090063          	beqz	s2,106c4 <__call_exitprocs+0x74>
   10688:	00050b13          	mv	s6,a0
   1068c:	00058b93          	mv	s7,a1
   10690:	00100a93          	li	s5,1
   10694:	fff00993          	li	s3,-1
   10698:	00892483          	lw	s1,8(s2)
   1069c:	fff4841b          	addw	s0,s1,-1
   106a0:	02044263          	bltz	s0,106c4 <__call_exitprocs+0x74>
   106a4:	00349493          	sll	s1,s1,0x3
   106a8:	009904b3          	add	s1,s2,s1
   106ac:	040b8463          	beqz	s7,106f4 <__call_exitprocs+0xa4>
   106b0:	2084b783          	ld	a5,520(s1)
   106b4:	05778063          	beq	a5,s7,106f4 <__call_exitprocs+0xa4>
   106b8:	fff4041b          	addw	s0,s0,-1
   106bc:	ff848493          	add	s1,s1,-8
   106c0:	ff3416e3          	bne	s0,s3,106ac <__call_exitprocs+0x5c>
   106c4:	04813083          	ld	ra,72(sp)
   106c8:	04013403          	ld	s0,64(sp)
   106cc:	03813483          	ld	s1,56(sp)
   106d0:	03013903          	ld	s2,48(sp)
   106d4:	02813983          	ld	s3,40(sp)
   106d8:	02013a03          	ld	s4,32(sp)
   106dc:	01813a83          	ld	s5,24(sp)
   106e0:	01013b03          	ld	s6,16(sp)
   106e4:	00813b83          	ld	s7,8(sp)
   106e8:	00013c03          	ld	s8,0(sp)
   106ec:	05010113          	add	sp,sp,80
   106f0:	00008067          	ret
   106f4:	00892783          	lw	a5,8(s2)
   106f8:	0084b703          	ld	a4,8(s1)
   106fc:	fff7879b          	addw	a5,a5,-1
   10700:	06878263          	beq	a5,s0,10764 <__call_exitprocs+0x114>
   10704:	0004b423          	sd	zero,8(s1)
   10708:	fa0708e3          	beqz	a4,106b8 <__call_exitprocs+0x68>
   1070c:	31092783          	lw	a5,784(s2)
   10710:	008a96bb          	sllw	a3,s5,s0
   10714:	00892c03          	lw	s8,8(s2)
   10718:	00d7f7b3          	and	a5,a5,a3
   1071c:	0007879b          	sext.w	a5,a5
   10720:	02079263          	bnez	a5,10744 <__call_exitprocs+0xf4>
   10724:	000700e7          	jalr	a4
   10728:	00892703          	lw	a4,8(s2)
   1072c:	1f8a3783          	ld	a5,504(s4)
   10730:	01871463          	bne	a4,s8,10738 <__call_exitprocs+0xe8>
   10734:	f92782e3          	beq	a5,s2,106b8 <__call_exitprocs+0x68>
   10738:	f80786e3          	beqz	a5,106c4 <__call_exitprocs+0x74>
   1073c:	00078913          	mv	s2,a5
   10740:	f59ff06f          	j	10698 <__call_exitprocs+0x48>
   10744:	31492783          	lw	a5,788(s2)
   10748:	1084b583          	ld	a1,264(s1)
   1074c:	00d7f7b3          	and	a5,a5,a3
   10750:	0007879b          	sext.w	a5,a5
   10754:	00079c63          	bnez	a5,1076c <__call_exitprocs+0x11c>
   10758:	000b0513          	mv	a0,s6
   1075c:	000700e7          	jalr	a4
   10760:	fc9ff06f          	j	10728 <__call_exitprocs+0xd8>
   10764:	00892423          	sw	s0,8(s2)
   10768:	fa1ff06f          	j	10708 <__call_exitprocs+0xb8>
   1076c:	00058513          	mv	a0,a1
   10770:	000700e7          	jalr	a4
   10774:	fb5ff06f          	j	10728 <__call_exitprocs+0xd8>

0000000000010778 <__libc_fini_array>:
   10778:	fe010113          	add	sp,sp,-32
   1077c:	00813823          	sd	s0,16(sp)
   10780:	000117b7          	lui	a5,0x11
   10784:	00011437          	lui	s0,0x11
   10788:	01878793          	add	a5,a5,24 # 11018 <__do_global_dtors_aux_fini_array_entry>
   1078c:	02040413          	add	s0,s0,32 # 11020 <impure_data>
   10790:	40f40433          	sub	s0,s0,a5
   10794:	00913423          	sd	s1,8(sp)
   10798:	00113c23          	sd	ra,24(sp)
   1079c:	40345493          	sra	s1,s0,0x3
   107a0:	02048063          	beqz	s1,107c0 <__libc_fini_array+0x48>
   107a4:	ff840413          	add	s0,s0,-8
   107a8:	00f40433          	add	s0,s0,a5
   107ac:	00043783          	ld	a5,0(s0)
   107b0:	fff48493          	add	s1,s1,-1
   107b4:	ff840413          	add	s0,s0,-8
   107b8:	000780e7          	jalr	a5
   107bc:	fe0498e3          	bnez	s1,107ac <__libc_fini_array+0x34>
   107c0:	01813083          	ld	ra,24(sp)
   107c4:	01013403          	ld	s0,16(sp)
   107c8:	00813483          	ld	s1,8(sp)
   107cc:	02010113          	add	sp,sp,32
   107d0:	00008067          	ret

00000000000107d4 <atexit>:
   107d4:	00050593          	mv	a1,a0
   107d8:	00000693          	li	a3,0
   107dc:	00000613          	li	a2,0
   107e0:	00000513          	li	a0,0
   107e4:	0040006f          	j	107e8 <__register_exitproc>

00000000000107e8 <__register_exitproc>:
   107e8:	f481b703          	ld	a4,-184(gp) # 11768 <_global_impure_ptr>
   107ec:	1f873783          	ld	a5,504(a4)
   107f0:	06078063          	beqz	a5,10850 <__register_exitproc+0x68>
   107f4:	0087a703          	lw	a4,8(a5)
   107f8:	01f00813          	li	a6,31
   107fc:	08e84663          	blt	a6,a4,10888 <__register_exitproc+0xa0>
   10800:	02050863          	beqz	a0,10830 <__register_exitproc+0x48>
   10804:	00371813          	sll	a6,a4,0x3
   10808:	01078833          	add	a6,a5,a6
   1080c:	10c83823          	sd	a2,272(a6)
   10810:	3107a883          	lw	a7,784(a5)
   10814:	00100613          	li	a2,1
   10818:	00e6163b          	sllw	a2,a2,a4
   1081c:	00c8e8b3          	or	a7,a7,a2
   10820:	3117a823          	sw	a7,784(a5)
   10824:	20d83823          	sd	a3,528(a6)
   10828:	00200693          	li	a3,2
   1082c:	02d50863          	beq	a0,a3,1085c <__register_exitproc+0x74>
   10830:	00270693          	add	a3,a4,2
   10834:	00369693          	sll	a3,a3,0x3
   10838:	0017071b          	addw	a4,a4,1
   1083c:	00e7a423          	sw	a4,8(a5)
   10840:	00d787b3          	add	a5,a5,a3
   10844:	00b7b023          	sd	a1,0(a5)
   10848:	00000513          	li	a0,0
   1084c:	00008067          	ret
   10850:	20070793          	add	a5,a4,512
   10854:	1ef73c23          	sd	a5,504(a4)
   10858:	f9dff06f          	j	107f4 <__register_exitproc+0xc>
   1085c:	3147a683          	lw	a3,788(a5)
   10860:	00000513          	li	a0,0
   10864:	00c6e6b3          	or	a3,a3,a2
   10868:	30d7aa23          	sw	a3,788(a5)
   1086c:	00270693          	add	a3,a4,2
   10870:	00369693          	sll	a3,a3,0x3
   10874:	0017071b          	addw	a4,a4,1
   10878:	00e7a423          	sw	a4,8(a5)
   1087c:	00d787b3          	add	a5,a5,a3
   10880:	00b7b023          	sd	a1,0(a5)
   10884:	00008067          	ret
   10888:	fff00513          	li	a0,-1
   1088c:	00008067          	ret

0000000000010890 <_exit>:
   10890:	05d00893          	li	a7,93
   10894:	00000073          	ecall
   10898:	00054463          	bltz	a0,108a0 <_exit+0x10>
   1089c:	0000006f          	j	1089c <_exit+0xc>
   108a0:	ff010113          	add	sp,sp,-16
   108a4:	00813023          	sd	s0,0(sp)
   108a8:	00050413          	mv	s0,a0
   108ac:	00113423          	sd	ra,8(sp)
   108b0:	4080043b          	negw	s0,s0
   108b4:	00c000ef          	jal	108c0 <__errno>
   108b8:	00852023          	sw	s0,0(a0) # 11000 <__EH_FRAME_BEGIN__>
   108bc:	0000006f          	j	108bc <_exit+0x2c>

00000000000108c0 <__errno>:
   108c0:	f581b503          	ld	a0,-168(gp) # 11778 <_impure_ptr>
   108c4:	00008067          	ret

Disassembly of section .rodata:

00000000000108c8 <.rodata>:
   108c8:	7245                	.2byte	0x7245
   108ca:	6f72                	.2byte	0x6f72
   108cc:	2c72                	.2byte	0x2c72
   108ce:	6620                	.2byte	0x6620
   108d0:	2031                	.2byte	0x2031
   108d2:	7369                	.2byte	0x7369
   108d4:	6620                	.2byte	0x6620
   108d6:	6c61                	.2byte	0x6c61
   108d8:	202c6573          	csrrs	a0,0x202,24
   108dc:	73206577          	.4byte	0x73206577
   108e0:	6f68                	.2byte	0x6f68
   108e2:	6c75                	.2byte	0x6c75
   108e4:	2064                	.2byte	0x2064
   108e6:	6f6e                	.2byte	0x6f6e
   108e8:	2074                	.2byte	0x2074
   108ea:	68206f67          	.4byte	0x68206f67
   108ee:	7265                	.2byte	0x7265
   108f0:	2165                	.2byte	0x2165
   108f2:	000a                	.2byte	0xa
   108f4:	0000                	.2byte	0x0
   108f6:	0000                	.2byte	0x0
   108f8:	6559                	.2byte	0x6559
   108fa:	66202c73          	csrr	s8,0x662
   108fe:	2032                	.2byte	0x2032
   10900:	7369                	.2byte	0x7369
   10902:	7420                	.2byte	0x7420
   10904:	7572                	.2byte	0x7572
   10906:	0a65                	.2byte	0xa65
	...
   10910:	5b61                	.2byte	0x5b61
   10912:	5d35                	.2byte	0x5d35
   10914:	3d20                	.2byte	0x3d20
   10916:	0020                	.2byte	0x20
   10918:	0001                	.2byte	0x1
   1091a:	0000                	.2byte	0x0
   1091c:	0002                	.2byte	0x2
   1091e:	0000                	.2byte	0x0
   10920:	00000003          	lb	zero,0(zero) # 0 <exit-0x100e8>
   10924:	0004                	.2byte	0x4
   10926:	0000                	.2byte	0x0
   10928:	0005                	.2byte	0x5
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
