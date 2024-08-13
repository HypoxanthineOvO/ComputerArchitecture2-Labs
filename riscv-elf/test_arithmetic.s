
test_arithmetic.riscv:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100e8 <exit>:
   100e8:	ff010113          	add	sp,sp,-16
   100ec:	00000593          	li	a1,0
   100f0:	00813023          	sd	s0,0(sp)
   100f4:	00113423          	sd	ra,8(sp)
   100f8:	00050413          	mv	s0,a0
   100fc:	4cc000ef          	jal	105c8 <__call_exitprocs>
   10100:	f481b503          	ld	a0,-184(gp) # 11fa8 <_global_impure_ptr>
   10104:	05853783          	ld	a5,88(a0)
   10108:	00078463          	beqz	a5,10110 <exit+0x28>
   1010c:	000780e7          	jalr	a5
   10110:	00040513          	mv	a0,s0
   10114:	6f4000ef          	jal	10808 <_exit>

0000000000010118 <register_fini>:
   10118:	00000793          	li	a5,0
   1011c:	00078863          	beqz	a5,1012c <register_fini+0x14>
   10120:	00010537          	lui	a0,0x10
   10124:	6f050513          	add	a0,a0,1776 # 106f0 <__libc_fini_array>
   10128:	6240006f          	j	1074c <atexit>
   1012c:	00008067          	ret

0000000000010130 <_start>:
   10130:	00002197          	auipc	gp,0x2
   10134:	f3018193          	add	gp,gp,-208 # 12060 <__global_pointer$>
   10138:	f6018513          	add	a0,gp,-160 # 11fc0 <completed.1>
   1013c:	f9818613          	add	a2,gp,-104 # 11ff8 <__BSS_END__>
   10140:	40a60633          	sub	a2,a2,a0
   10144:	00000593          	li	a1,0
   10148:	3a4000ef          	jal	104ec <memset>
   1014c:	00000517          	auipc	a0,0x0
   10150:	60050513          	add	a0,a0,1536 # 1074c <atexit>
   10154:	00050863          	beqz	a0,10164 <_start+0x34>
   10158:	00000517          	auipc	a0,0x0
   1015c:	59850513          	add	a0,a0,1432 # 106f0 <__libc_fini_array>
   10160:	5ec000ef          	jal	1074c <atexit>
   10164:	2ec000ef          	jal	10450 <__libc_init_array>
   10168:	00012503          	lw	a0,0(sp)
   1016c:	00810593          	add	a1,sp,8
   10170:	00000613          	li	a2,0
   10174:	06c000ef          	jal	101e0 <main>
   10178:	f71ff06f          	j	100e8 <exit>

000000000001017c <__do_global_dtors_aux>:
   1017c:	ff010113          	add	sp,sp,-16
   10180:	00813023          	sd	s0,0(sp)
   10184:	f601c783          	lbu	a5,-160(gp) # 11fc0 <completed.1>
   10188:	00113423          	sd	ra,8(sp)
   1018c:	02079263          	bnez	a5,101b0 <__do_global_dtors_aux+0x34>
   10190:	00000793          	li	a5,0
   10194:	00078a63          	beqz	a5,101a8 <__do_global_dtors_aux+0x2c>
   10198:	00012537          	lui	a0,0x12
   1019c:	84050513          	add	a0,a0,-1984 # 11840 <__EH_FRAME_BEGIN__>
   101a0:	00000097          	auipc	ra,0x0
   101a4:	000000e7          	jalr	zero # 0 <exit-0x100e8>
   101a8:	00100793          	li	a5,1
   101ac:	f6f18023          	sb	a5,-160(gp) # 11fc0 <completed.1>
   101b0:	00813083          	ld	ra,8(sp)
   101b4:	00013403          	ld	s0,0(sp)
   101b8:	01010113          	add	sp,sp,16
   101bc:	00008067          	ret

00000000000101c0 <frame_dummy>:
   101c0:	00000793          	li	a5,0
   101c4:	00078c63          	beqz	a5,101dc <frame_dummy+0x1c>
   101c8:	00012537          	lui	a0,0x12
   101cc:	f6818593          	add	a1,gp,-152 # 11fc8 <object.0>
   101d0:	84050513          	add	a0,a0,-1984 # 11840 <__EH_FRAME_BEGIN__>
   101d4:	00000317          	auipc	t1,0x0
   101d8:	00000067          	jr	zero # 0 <exit-0x100e8>
   101dc:	00008067          	ret

00000000000101e0 <main>:
   101e0:	fc010113          	add	sp,sp,-64
   101e4:	02113c23          	sd	ra,56(sp)
   101e8:	02813823          	sd	s0,48(sp)
   101ec:	04010413          	add	s0,sp,64
   101f0:	00a00793          	li	a5,10
   101f4:	fef42623          	sw	a5,-20(s0)
   101f8:	01400793          	li	a5,20
   101fc:	fef42423          	sw	a5,-24(s0)
   10200:	01e00793          	li	a5,30
   10204:	fef42223          	sw	a5,-28(s0)
   10208:	000037b7          	lui	a5,0x3
   1020c:	03978793          	add	a5,a5,57 # 3039 <exit-0xd0af>
   10210:	fef42023          	sw	a5,-32(s0)
   10214:	00100793          	li	a5,1
   10218:	fcf42e23          	sw	a5,-36(s0)
   1021c:	00200793          	li	a5,2
   10220:	fcf42c23          	sw	a5,-40(s0)
   10224:	fec42783          	lw	a5,-20(s0)
   10228:	00078713          	mv	a4,a5
   1022c:	fe842783          	lw	a5,-24(s0)
   10230:	00f707bb          	addw	a5,a4,a5
   10234:	fcf42a23          	sw	a5,-44(s0)
   10238:	fd442783          	lw	a5,-44(s0)
   1023c:	00078513          	mv	a0,a5
   10240:	0e4000ef          	jal	10324 <print_d>
   10244:	00a00513          	li	a0,10
   10248:	130000ef          	jal	10378 <print_c>
   1024c:	fec42783          	lw	a5,-20(s0)
   10250:	00078713          	mv	a4,a5
   10254:	fe842783          	lw	a5,-24(s0)
   10258:	40f707bb          	subw	a5,a4,a5
   1025c:	fcf42823          	sw	a5,-48(s0)
   10260:	fd042783          	lw	a5,-48(s0)
   10264:	00078513          	mv	a0,a5
   10268:	0bc000ef          	jal	10324 <print_d>
   1026c:	00a00513          	li	a0,10
   10270:	108000ef          	jal	10378 <print_c>
   10274:	fe442783          	lw	a5,-28(s0)
   10278:	00078713          	mv	a4,a5
   1027c:	fe042783          	lw	a5,-32(s0)
   10280:	02f707bb          	mulw	a5,a4,a5
   10284:	fcf42623          	sw	a5,-52(s0)
   10288:	fcc42783          	lw	a5,-52(s0)
   1028c:	00078513          	mv	a0,a5
   10290:	094000ef          	jal	10324 <print_d>
   10294:	00a00513          	li	a0,10
   10298:	0e0000ef          	jal	10378 <print_c>
   1029c:	fe042783          	lw	a5,-32(s0)
   102a0:	00078713          	mv	a4,a5
   102a4:	fe442783          	lw	a5,-28(s0)
   102a8:	02f747bb          	divw	a5,a4,a5
   102ac:	fcf42a23          	sw	a5,-44(s0)
   102b0:	fd442783          	lw	a5,-44(s0)
   102b4:	00078513          	mv	a0,a5
   102b8:	06c000ef          	jal	10324 <print_d>
   102bc:	00a00513          	li	a0,10
   102c0:	0b8000ef          	jal	10378 <print_c>
   102c4:	fd842783          	lw	a5,-40(s0)
   102c8:	fe042703          	lw	a4,-32(s0)
   102cc:	00f717bb          	sllw	a5,a4,a5
   102d0:	fcf42823          	sw	a5,-48(s0)
   102d4:	fd042783          	lw	a5,-48(s0)
   102d8:	00078513          	mv	a0,a5
   102dc:	048000ef          	jal	10324 <print_d>
   102e0:	00a00513          	li	a0,10
   102e4:	094000ef          	jal	10378 <print_c>
   102e8:	fe042783          	lw	a5,-32(s0)
   102ec:	4047d79b          	sraw	a5,a5,0x4
   102f0:	fcf42623          	sw	a5,-52(s0)
   102f4:	fcc42783          	lw	a5,-52(s0)
   102f8:	00078513          	mv	a0,a5
   102fc:	028000ef          	jal	10324 <print_d>
   10300:	00a00513          	li	a0,10
   10304:	074000ef          	jal	10378 <print_c>
   10308:	09c000ef          	jal	103a4 <exit_proc>
   1030c:	00000793          	li	a5,0
   10310:	00078513          	mv	a0,a5
   10314:	03813083          	ld	ra,56(sp)
   10318:	03013403          	ld	s0,48(sp)
   1031c:	04010113          	add	sp,sp,64
   10320:	00008067          	ret

0000000000010324 <print_d>:
   10324:	fe010113          	add	sp,sp,-32
   10328:	00813c23          	sd	s0,24(sp)
   1032c:	02010413          	add	s0,sp,32
   10330:	00050793          	mv	a5,a0
   10334:	fef42623          	sw	a5,-20(s0)
   10338:	00200893          	li	a7,2
   1033c:	00000073          	ecall
   10340:	00000013          	nop
   10344:	01813403          	ld	s0,24(sp)
   10348:	02010113          	add	sp,sp,32
   1034c:	00008067          	ret

0000000000010350 <print_s>:
   10350:	fe010113          	add	sp,sp,-32
   10354:	00813c23          	sd	s0,24(sp)
   10358:	02010413          	add	s0,sp,32
   1035c:	fea43423          	sd	a0,-24(s0)
   10360:	00000893          	li	a7,0
   10364:	00000073          	ecall
   10368:	00000013          	nop
   1036c:	01813403          	ld	s0,24(sp)
   10370:	02010113          	add	sp,sp,32
   10374:	00008067          	ret

0000000000010378 <print_c>:
   10378:	fe010113          	add	sp,sp,-32
   1037c:	00813c23          	sd	s0,24(sp)
   10380:	02010413          	add	s0,sp,32
   10384:	00050793          	mv	a5,a0
   10388:	fef407a3          	sb	a5,-17(s0)
   1038c:	00100893          	li	a7,1
   10390:	00000073          	ecall
   10394:	00000013          	nop
   10398:	01813403          	ld	s0,24(sp)
   1039c:	02010113          	add	sp,sp,32
   103a0:	00008067          	ret

00000000000103a4 <exit_proc>:
   103a4:	ff010113          	add	sp,sp,-16
   103a8:	00813423          	sd	s0,8(sp)
   103ac:	01010413          	add	s0,sp,16
   103b0:	00300893          	li	a7,3
   103b4:	00000073          	ecall
   103b8:	00000013          	nop
   103bc:	00813403          	ld	s0,8(sp)
   103c0:	01010113          	add	sp,sp,16
   103c4:	00008067          	ret

00000000000103c8 <read_char>:
   103c8:	fe010113          	add	sp,sp,-32
   103cc:	00813c23          	sd	s0,24(sp)
   103d0:	02010413          	add	s0,sp,32
   103d4:	00400893          	li	a7,4
   103d8:	00000073          	ecall
   103dc:	00050793          	mv	a5,a0
   103e0:	fef407a3          	sb	a5,-17(s0)
   103e4:	fef44783          	lbu	a5,-17(s0)
   103e8:	00078513          	mv	a0,a5
   103ec:	01813403          	ld	s0,24(sp)
   103f0:	02010113          	add	sp,sp,32
   103f4:	00008067          	ret

00000000000103f8 <read_num>:
   103f8:	fe010113          	add	sp,sp,-32
   103fc:	00813c23          	sd	s0,24(sp)
   10400:	02010413          	add	s0,sp,32
   10404:	00500893          	li	a7,5
   10408:	00000073          	ecall
   1040c:	00050793          	mv	a5,a0
   10410:	fef43423          	sd	a5,-24(s0)
   10414:	fe843783          	ld	a5,-24(s0)
   10418:	00078513          	mv	a0,a5
   1041c:	01813403          	ld	s0,24(sp)
   10420:	02010113          	add	sp,sp,32
   10424:	00008067          	ret

0000000000010428 <print_f>:
   10428:	fe010113          	add	sp,sp,-32
   1042c:	00813c23          	sd	s0,24(sp)
   10430:	02010413          	add	s0,sp,32
   10434:	fea42627          	fsw	fa0,-20(s0)
   10438:	00600893          	li	a7,6
   1043c:	00000073          	ecall
   10440:	00000013          	nop
   10444:	01813403          	ld	s0,24(sp)
   10448:	02010113          	add	sp,sp,32
   1044c:	00008067          	ret

0000000000010450 <__libc_init_array>:
   10450:	fe010113          	add	sp,sp,-32
   10454:	00813823          	sd	s0,16(sp)
   10458:	000127b7          	lui	a5,0x12
   1045c:	00012437          	lui	s0,0x12
   10460:	01213023          	sd	s2,0(sp)
   10464:	84478793          	add	a5,a5,-1980 # 11844 <__preinit_array_end>
   10468:	84440713          	add	a4,s0,-1980 # 11844 <__preinit_array_end>
   1046c:	00113c23          	sd	ra,24(sp)
   10470:	00913423          	sd	s1,8(sp)
   10474:	40e78933          	sub	s2,a5,a4
   10478:	02e78263          	beq	a5,a4,1049c <__libc_init_array+0x4c>
   1047c:	40395913          	sra	s2,s2,0x3
   10480:	84440413          	add	s0,s0,-1980
   10484:	00000493          	li	s1,0
   10488:	00043783          	ld	a5,0(s0)
   1048c:	00148493          	add	s1,s1,1
   10490:	00840413          	add	s0,s0,8
   10494:	000780e7          	jalr	a5
   10498:	ff24e8e3          	bltu	s1,s2,10488 <__libc_init_array+0x38>
   1049c:	00012437          	lui	s0,0x12
   104a0:	000127b7          	lui	a5,0x12
   104a4:	85878793          	add	a5,a5,-1960 # 11858 <__do_global_dtors_aux_fini_array_entry>
   104a8:	84840713          	add	a4,s0,-1976 # 11848 <__init_array_start>
   104ac:	40e78933          	sub	s2,a5,a4
   104b0:	40395913          	sra	s2,s2,0x3
   104b4:	02e78063          	beq	a5,a4,104d4 <__libc_init_array+0x84>
   104b8:	84840413          	add	s0,s0,-1976
   104bc:	00000493          	li	s1,0
   104c0:	00043783          	ld	a5,0(s0)
   104c4:	00148493          	add	s1,s1,1
   104c8:	00840413          	add	s0,s0,8
   104cc:	000780e7          	jalr	a5
   104d0:	ff24e8e3          	bltu	s1,s2,104c0 <__libc_init_array+0x70>
   104d4:	01813083          	ld	ra,24(sp)
   104d8:	01013403          	ld	s0,16(sp)
   104dc:	00813483          	ld	s1,8(sp)
   104e0:	00013903          	ld	s2,0(sp)
   104e4:	02010113          	add	sp,sp,32
   104e8:	00008067          	ret

00000000000104ec <memset>:
   104ec:	00f00313          	li	t1,15
   104f0:	00050713          	mv	a4,a0
   104f4:	02c37a63          	bgeu	t1,a2,10528 <memset+0x3c>
   104f8:	00f77793          	and	a5,a4,15
   104fc:	0a079063          	bnez	a5,1059c <memset+0xb0>
   10500:	06059e63          	bnez	a1,1057c <memset+0x90>
   10504:	ff067693          	and	a3,a2,-16
   10508:	00f67613          	and	a2,a2,15
   1050c:	00e686b3          	add	a3,a3,a4
   10510:	00b73023          	sd	a1,0(a4)
   10514:	00b73423          	sd	a1,8(a4)
   10518:	01070713          	add	a4,a4,16
   1051c:	fed76ae3          	bltu	a4,a3,10510 <memset+0x24>
   10520:	00061463          	bnez	a2,10528 <memset+0x3c>
   10524:	00008067          	ret
   10528:	40c306b3          	sub	a3,t1,a2
   1052c:	00269693          	sll	a3,a3,0x2
   10530:	00000297          	auipc	t0,0x0
   10534:	005686b3          	add	a3,a3,t0
   10538:	00c68067          	jr	12(a3)
   1053c:	00b70723          	sb	a1,14(a4)
   10540:	00b706a3          	sb	a1,13(a4)
   10544:	00b70623          	sb	a1,12(a4)
   10548:	00b705a3          	sb	a1,11(a4)
   1054c:	00b70523          	sb	a1,10(a4)
   10550:	00b704a3          	sb	a1,9(a4)
   10554:	00b70423          	sb	a1,8(a4)
   10558:	00b703a3          	sb	a1,7(a4)
   1055c:	00b70323          	sb	a1,6(a4)
   10560:	00b702a3          	sb	a1,5(a4)
   10564:	00b70223          	sb	a1,4(a4)
   10568:	00b701a3          	sb	a1,3(a4)
   1056c:	00b70123          	sb	a1,2(a4)
   10570:	00b700a3          	sb	a1,1(a4)
   10574:	00b70023          	sb	a1,0(a4)
   10578:	00008067          	ret
   1057c:	0ff5f593          	zext.b	a1,a1
   10580:	00859693          	sll	a3,a1,0x8
   10584:	00d5e5b3          	or	a1,a1,a3
   10588:	01059693          	sll	a3,a1,0x10
   1058c:	00d5e5b3          	or	a1,a1,a3
   10590:	02059693          	sll	a3,a1,0x20
   10594:	00d5e5b3          	or	a1,a1,a3
   10598:	f6dff06f          	j	10504 <memset+0x18>
   1059c:	00279693          	sll	a3,a5,0x2
   105a0:	00000297          	auipc	t0,0x0
   105a4:	005686b3          	add	a3,a3,t0
   105a8:	00008293          	mv	t0,ra
   105ac:	f98680e7          	jalr	-104(a3)
   105b0:	00028093          	mv	ra,t0
   105b4:	ff078793          	add	a5,a5,-16
   105b8:	40f70733          	sub	a4,a4,a5
   105bc:	00f60633          	add	a2,a2,a5
   105c0:	f6c374e3          	bgeu	t1,a2,10528 <memset+0x3c>
   105c4:	f3dff06f          	j	10500 <memset+0x14>

00000000000105c8 <__call_exitprocs>:
   105c8:	fb010113          	add	sp,sp,-80
   105cc:	03413023          	sd	s4,32(sp)
   105d0:	f481ba03          	ld	s4,-184(gp) # 11fa8 <_global_impure_ptr>
   105d4:	03213823          	sd	s2,48(sp)
   105d8:	04113423          	sd	ra,72(sp)
   105dc:	1f8a3903          	ld	s2,504(s4)
   105e0:	04813023          	sd	s0,64(sp)
   105e4:	02913c23          	sd	s1,56(sp)
   105e8:	03313423          	sd	s3,40(sp)
   105ec:	01513c23          	sd	s5,24(sp)
   105f0:	01613823          	sd	s6,16(sp)
   105f4:	01713423          	sd	s7,8(sp)
   105f8:	01813023          	sd	s8,0(sp)
   105fc:	04090063          	beqz	s2,1063c <__call_exitprocs+0x74>
   10600:	00050b13          	mv	s6,a0
   10604:	00058b93          	mv	s7,a1
   10608:	00100a93          	li	s5,1
   1060c:	fff00993          	li	s3,-1
   10610:	00892483          	lw	s1,8(s2)
   10614:	fff4841b          	addw	s0,s1,-1
   10618:	02044263          	bltz	s0,1063c <__call_exitprocs+0x74>
   1061c:	00349493          	sll	s1,s1,0x3
   10620:	009904b3          	add	s1,s2,s1
   10624:	040b8463          	beqz	s7,1066c <__call_exitprocs+0xa4>
   10628:	2084b783          	ld	a5,520(s1)
   1062c:	05778063          	beq	a5,s7,1066c <__call_exitprocs+0xa4>
   10630:	fff4041b          	addw	s0,s0,-1
   10634:	ff848493          	add	s1,s1,-8
   10638:	ff3416e3          	bne	s0,s3,10624 <__call_exitprocs+0x5c>
   1063c:	04813083          	ld	ra,72(sp)
   10640:	04013403          	ld	s0,64(sp)
   10644:	03813483          	ld	s1,56(sp)
   10648:	03013903          	ld	s2,48(sp)
   1064c:	02813983          	ld	s3,40(sp)
   10650:	02013a03          	ld	s4,32(sp)
   10654:	01813a83          	ld	s5,24(sp)
   10658:	01013b03          	ld	s6,16(sp)
   1065c:	00813b83          	ld	s7,8(sp)
   10660:	00013c03          	ld	s8,0(sp)
   10664:	05010113          	add	sp,sp,80
   10668:	00008067          	ret
   1066c:	00892783          	lw	a5,8(s2)
   10670:	0084b703          	ld	a4,8(s1)
   10674:	fff7879b          	addw	a5,a5,-1
   10678:	06878263          	beq	a5,s0,106dc <__call_exitprocs+0x114>
   1067c:	0004b423          	sd	zero,8(s1)
   10680:	fa0708e3          	beqz	a4,10630 <__call_exitprocs+0x68>
   10684:	31092783          	lw	a5,784(s2)
   10688:	008a96bb          	sllw	a3,s5,s0
   1068c:	00892c03          	lw	s8,8(s2)
   10690:	00d7f7b3          	and	a5,a5,a3
   10694:	0007879b          	sext.w	a5,a5
   10698:	02079263          	bnez	a5,106bc <__call_exitprocs+0xf4>
   1069c:	000700e7          	jalr	a4
   106a0:	00892703          	lw	a4,8(s2)
   106a4:	1f8a3783          	ld	a5,504(s4)
   106a8:	01871463          	bne	a4,s8,106b0 <__call_exitprocs+0xe8>
   106ac:	f92782e3          	beq	a5,s2,10630 <__call_exitprocs+0x68>
   106b0:	f80786e3          	beqz	a5,1063c <__call_exitprocs+0x74>
   106b4:	00078913          	mv	s2,a5
   106b8:	f59ff06f          	j	10610 <__call_exitprocs+0x48>
   106bc:	31492783          	lw	a5,788(s2)
   106c0:	1084b583          	ld	a1,264(s1)
   106c4:	00d7f7b3          	and	a5,a5,a3
   106c8:	0007879b          	sext.w	a5,a5
   106cc:	00079c63          	bnez	a5,106e4 <__call_exitprocs+0x11c>
   106d0:	000b0513          	mv	a0,s6
   106d4:	000700e7          	jalr	a4
   106d8:	fc9ff06f          	j	106a0 <__call_exitprocs+0xd8>
   106dc:	00892423          	sw	s0,8(s2)
   106e0:	fa1ff06f          	j	10680 <__call_exitprocs+0xb8>
   106e4:	00058513          	mv	a0,a1
   106e8:	000700e7          	jalr	a4
   106ec:	fb5ff06f          	j	106a0 <__call_exitprocs+0xd8>

00000000000106f0 <__libc_fini_array>:
   106f0:	fe010113          	add	sp,sp,-32
   106f4:	00813823          	sd	s0,16(sp)
   106f8:	000127b7          	lui	a5,0x12
   106fc:	00012437          	lui	s0,0x12
   10700:	85878793          	add	a5,a5,-1960 # 11858 <__do_global_dtors_aux_fini_array_entry>
   10704:	86040413          	add	s0,s0,-1952 # 11860 <impure_data>
   10708:	40f40433          	sub	s0,s0,a5
   1070c:	00913423          	sd	s1,8(sp)
   10710:	00113c23          	sd	ra,24(sp)
   10714:	40345493          	sra	s1,s0,0x3
   10718:	02048063          	beqz	s1,10738 <__libc_fini_array+0x48>
   1071c:	ff840413          	add	s0,s0,-8
   10720:	00f40433          	add	s0,s0,a5
   10724:	00043783          	ld	a5,0(s0)
   10728:	fff48493          	add	s1,s1,-1
   1072c:	ff840413          	add	s0,s0,-8
   10730:	000780e7          	jalr	a5
   10734:	fe0498e3          	bnez	s1,10724 <__libc_fini_array+0x34>
   10738:	01813083          	ld	ra,24(sp)
   1073c:	01013403          	ld	s0,16(sp)
   10740:	00813483          	ld	s1,8(sp)
   10744:	02010113          	add	sp,sp,32
   10748:	00008067          	ret

000000000001074c <atexit>:
   1074c:	00050593          	mv	a1,a0
   10750:	00000693          	li	a3,0
   10754:	00000613          	li	a2,0
   10758:	00000513          	li	a0,0
   1075c:	0040006f          	j	10760 <__register_exitproc>

0000000000010760 <__register_exitproc>:
   10760:	f481b703          	ld	a4,-184(gp) # 11fa8 <_global_impure_ptr>
   10764:	1f873783          	ld	a5,504(a4)
   10768:	06078063          	beqz	a5,107c8 <__register_exitproc+0x68>
   1076c:	0087a703          	lw	a4,8(a5)
   10770:	01f00813          	li	a6,31
   10774:	08e84663          	blt	a6,a4,10800 <__register_exitproc+0xa0>
   10778:	02050863          	beqz	a0,107a8 <__register_exitproc+0x48>
   1077c:	00371813          	sll	a6,a4,0x3
   10780:	01078833          	add	a6,a5,a6
   10784:	10c83823          	sd	a2,272(a6)
   10788:	3107a883          	lw	a7,784(a5)
   1078c:	00100613          	li	a2,1
   10790:	00e6163b          	sllw	a2,a2,a4
   10794:	00c8e8b3          	or	a7,a7,a2
   10798:	3117a823          	sw	a7,784(a5)
   1079c:	20d83823          	sd	a3,528(a6)
   107a0:	00200693          	li	a3,2
   107a4:	02d50863          	beq	a0,a3,107d4 <__register_exitproc+0x74>
   107a8:	00270693          	add	a3,a4,2
   107ac:	00369693          	sll	a3,a3,0x3
   107b0:	0017071b          	addw	a4,a4,1
   107b4:	00e7a423          	sw	a4,8(a5)
   107b8:	00d787b3          	add	a5,a5,a3
   107bc:	00b7b023          	sd	a1,0(a5)
   107c0:	00000513          	li	a0,0
   107c4:	00008067          	ret
   107c8:	20070793          	add	a5,a4,512
   107cc:	1ef73c23          	sd	a5,504(a4)
   107d0:	f9dff06f          	j	1076c <__register_exitproc+0xc>
   107d4:	3147a683          	lw	a3,788(a5)
   107d8:	00000513          	li	a0,0
   107dc:	00c6e6b3          	or	a3,a3,a2
   107e0:	30d7aa23          	sw	a3,788(a5)
   107e4:	00270693          	add	a3,a4,2
   107e8:	00369693          	sll	a3,a3,0x3
   107ec:	0017071b          	addw	a4,a4,1
   107f0:	00e7a423          	sw	a4,8(a5)
   107f4:	00d787b3          	add	a5,a5,a3
   107f8:	00b7b023          	sd	a1,0(a5)
   107fc:	00008067          	ret
   10800:	fff00513          	li	a0,-1
   10804:	00008067          	ret

0000000000010808 <_exit>:
   10808:	05d00893          	li	a7,93
   1080c:	00000073          	ecall
   10810:	00054463          	bltz	a0,10818 <_exit+0x10>
   10814:	0000006f          	j	10814 <_exit+0xc>
   10818:	ff010113          	add	sp,sp,-16
   1081c:	00813023          	sd	s0,0(sp)
   10820:	00050413          	mv	s0,a0
   10824:	00113423          	sd	ra,8(sp)
   10828:	4080043b          	negw	s0,s0
   1082c:	00c000ef          	jal	10838 <__errno>
   10830:	00852023          	sw	s0,0(a0)
   10834:	0000006f          	j	10834 <_exit+0x2c>

0000000000010838 <__errno>:
   10838:	f581b503          	ld	a0,-168(gp) # 11fb8 <_impure_ptr>
   1083c:	00008067          	ret

Disassembly of section .eh_frame:

0000000000011840 <__EH_FRAME_BEGIN__>:
   11840:	0000                	.2byte	0x0
	...

Disassembly of section .init_array:

0000000000011848 <__init_array_start>:
   11848:	0118                	.2byte	0x118
   1184a:	0001                	.2byte	0x1
   1184c:	0000                	.2byte	0x0
	...

0000000000011850 <__frame_dummy_init_array_entry>:
   11850:	01c0                	.2byte	0x1c0
   11852:	0001                	.2byte	0x1
   11854:	0000                	.2byte	0x0
	...

Disassembly of section .fini_array:

0000000000011858 <__do_global_dtors_aux_fini_array_entry>:
   11858:	017c                	.2byte	0x17c
   1185a:	0001                	.2byte	0x1
   1185c:	0000                	.2byte	0x0
	...

Disassembly of section .data:

0000000000011860 <impure_data>:
	...
   11868:	1d98                	.2byte	0x1d98
   1186a:	0001                	.2byte	0x1
   1186c:	0000                	.2byte	0x0
   1186e:	0000                	.2byte	0x0
   11870:	1e48                	.2byte	0x1e48
   11872:	0001                	.2byte	0x1
   11874:	0000                	.2byte	0x0
   11876:	0000                	.2byte	0x0
   11878:	1ef8                	.2byte	0x1ef8
   1187a:	0001                	.2byte	0x1
	...
   11948:	0001                	.2byte	0x1
   1194a:	0000                	.2byte	0x0
   1194c:	0000                	.2byte	0x0
   1194e:	0000                	.2byte	0x0
   11950:	330e                	.2byte	0x330e
   11952:	abcd                	.2byte	0xabcd
   11954:	1234                	.2byte	0x1234
   11956:	e66d                	.2byte	0xe66d
   11958:	deec                	.2byte	0xdeec
   1195a:	0005                	.2byte	0x5
   1195c:	0000000b          	.4byte	0xb
	...

Disassembly of section .sdata:

0000000000011fa8 <_global_impure_ptr>:
   11fa8:	1860                	.2byte	0x1860
   11faa:	0001                	.2byte	0x1
   11fac:	0000                	.2byte	0x0
	...

0000000000011fb0 <__dso_handle>:
	...

0000000000011fb8 <_impure_ptr>:
   11fb8:	1860                	.2byte	0x1860
   11fba:	0001                	.2byte	0x1
   11fbc:	0000                	.2byte	0x0
	...

Disassembly of section .bss:

0000000000011fc0 <completed.1>:
	...

0000000000011fc8 <object.0>:
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
