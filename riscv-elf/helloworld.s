
helloworld.riscv:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100e8 <exit>:
   100e8:	ff010113          	add	sp,sp,-16
   100ec:	00000593          	li	a1,0
   100f0:	00813023          	sd	s0,0(sp)
   100f4:	00113423          	sd	ra,8(sp)
   100f8:	00050413          	mv	s0,a0
   100fc:	3c0000ef          	jal	104bc <__call_exitprocs>
   10100:	f481b503          	ld	a0,-184(gp) # 11eb0 <_global_impure_ptr>
   10104:	05853783          	ld	a5,88(a0)
   10108:	00078463          	beqz	a5,10110 <exit+0x28>
   1010c:	000780e7          	jalr	a5
   10110:	00040513          	mv	a0,s0
   10114:	5e8000ef          	jal	106fc <_exit>

0000000000010118 <register_fini>:
   10118:	00000793          	li	a5,0
   1011c:	00078863          	beqz	a5,1012c <register_fini+0x14>
   10120:	00010537          	lui	a0,0x10
   10124:	5e450513          	add	a0,a0,1508 # 105e4 <__libc_fini_array>
   10128:	5180006f          	j	10640 <atexit>
   1012c:	00008067          	ret

0000000000010130 <_start>:
   10130:	00002197          	auipc	gp,0x2
   10134:	e3818193          	add	gp,gp,-456 # 11f68 <__global_pointer$>
   10138:	f6018513          	add	a0,gp,-160 # 11ec8 <completed.1>
   1013c:	f9818613          	add	a2,gp,-104 # 11f00 <__BSS_END__>
   10140:	40a60633          	sub	a2,a2,a0
   10144:	00000593          	li	a1,0
   10148:	298000ef          	jal	103e0 <memset>
   1014c:	00000517          	auipc	a0,0x0
   10150:	4f450513          	add	a0,a0,1268 # 10640 <atexit>
   10154:	00050863          	beqz	a0,10164 <_start+0x34>
   10158:	00000517          	auipc	a0,0x0
   1015c:	48c50513          	add	a0,a0,1164 # 105e4 <__libc_fini_array>
   10160:	4e0000ef          	jal	10640 <atexit>
   10164:	1e0000ef          	jal	10344 <__libc_init_array>
   10168:	00012503          	lw	a0,0(sp)
   1016c:	00810593          	add	a1,sp,8
   10170:	00000613          	li	a2,0
   10174:	06c000ef          	jal	101e0 <main>
   10178:	f71ff06f          	j	100e8 <exit>

000000000001017c <__do_global_dtors_aux>:
   1017c:	ff010113          	add	sp,sp,-16
   10180:	00813023          	sd	s0,0(sp)
   10184:	f601c783          	lbu	a5,-160(gp) # 11ec8 <completed.1>
   10188:	00113423          	sd	ra,8(sp)
   1018c:	02079263          	bnez	a5,101b0 <__do_global_dtors_aux+0x34>
   10190:	00000793          	li	a5,0
   10194:	00078a63          	beqz	a5,101a8 <__do_global_dtors_aux+0x2c>
   10198:	00011537          	lui	a0,0x11
   1019c:	74850513          	add	a0,a0,1864 # 11748 <__EH_FRAME_BEGIN__>
   101a0:	00000097          	auipc	ra,0x0
   101a4:	000000e7          	jalr	zero # 0 <exit-0x100e8>
   101a8:	00100793          	li	a5,1
   101ac:	f6f18023          	sb	a5,-160(gp) # 11ec8 <completed.1>
   101b0:	00813083          	ld	ra,8(sp)
   101b4:	00013403          	ld	s0,0(sp)
   101b8:	01010113          	add	sp,sp,16
   101bc:	00008067          	ret

00000000000101c0 <frame_dummy>:
   101c0:	00000793          	li	a5,0
   101c4:	00078c63          	beqz	a5,101dc <frame_dummy+0x1c>
   101c8:	00011537          	lui	a0,0x11
   101cc:	f6818593          	add	a1,gp,-152 # 11ed0 <object.0>
   101d0:	74850513          	add	a0,a0,1864 # 11748 <__EH_FRAME_BEGIN__>
   101d4:	00000317          	auipc	t1,0x0
   101d8:	00000067          	jr	zero # 0 <exit-0x100e8>
   101dc:	00008067          	ret

00000000000101e0 <main>:
   101e0:	ff010113          	add	sp,sp,-16
   101e4:	00113423          	sd	ra,8(sp)
   101e8:	00813023          	sd	s0,0(sp)
   101ec:	01010413          	add	s0,sp,16
   101f0:	000107b7          	lui	a5,0x10
   101f4:	73878513          	add	a0,a5,1848 # 10738 <__errno+0xc>
   101f8:	04c000ef          	jal	10244 <print_s>
   101fc:	09c000ef          	jal	10298 <exit_proc>
   10200:	00000793          	li	a5,0
   10204:	00078513          	mv	a0,a5
   10208:	00813083          	ld	ra,8(sp)
   1020c:	00013403          	ld	s0,0(sp)
   10210:	01010113          	add	sp,sp,16
   10214:	00008067          	ret

0000000000010218 <print_d>:
   10218:	fe010113          	add	sp,sp,-32
   1021c:	00813c23          	sd	s0,24(sp)
   10220:	02010413          	add	s0,sp,32
   10224:	00050793          	mv	a5,a0
   10228:	fef42623          	sw	a5,-20(s0)
   1022c:	00200893          	li	a7,2
   10230:	00000073          	ecall
   10234:	00000013          	nop
   10238:	01813403          	ld	s0,24(sp)
   1023c:	02010113          	add	sp,sp,32
   10240:	00008067          	ret

0000000000010244 <print_s>:
   10244:	fe010113          	add	sp,sp,-32
   10248:	00813c23          	sd	s0,24(sp)
   1024c:	02010413          	add	s0,sp,32
   10250:	fea43423          	sd	a0,-24(s0)
   10254:	00000893          	li	a7,0
   10258:	00000073          	ecall
   1025c:	00000013          	nop
   10260:	01813403          	ld	s0,24(sp)
   10264:	02010113          	add	sp,sp,32
   10268:	00008067          	ret

000000000001026c <print_c>:
   1026c:	fe010113          	add	sp,sp,-32
   10270:	00813c23          	sd	s0,24(sp)
   10274:	02010413          	add	s0,sp,32
   10278:	00050793          	mv	a5,a0
   1027c:	fef407a3          	sb	a5,-17(s0)
   10280:	00100893          	li	a7,1
   10284:	00000073          	ecall
   10288:	00000013          	nop
   1028c:	01813403          	ld	s0,24(sp)
   10290:	02010113          	add	sp,sp,32
   10294:	00008067          	ret

0000000000010298 <exit_proc>:
   10298:	ff010113          	add	sp,sp,-16
   1029c:	00813423          	sd	s0,8(sp)
   102a0:	01010413          	add	s0,sp,16
   102a4:	00300893          	li	a7,3
   102a8:	00000073          	ecall
   102ac:	00000013          	nop
   102b0:	00813403          	ld	s0,8(sp)
   102b4:	01010113          	add	sp,sp,16
   102b8:	00008067          	ret

00000000000102bc <read_char>:
   102bc:	fe010113          	add	sp,sp,-32
   102c0:	00813c23          	sd	s0,24(sp)
   102c4:	02010413          	add	s0,sp,32
   102c8:	00400893          	li	a7,4
   102cc:	00000073          	ecall
   102d0:	00050793          	mv	a5,a0
   102d4:	fef407a3          	sb	a5,-17(s0)
   102d8:	fef44783          	lbu	a5,-17(s0)
   102dc:	00078513          	mv	a0,a5
   102e0:	01813403          	ld	s0,24(sp)
   102e4:	02010113          	add	sp,sp,32
   102e8:	00008067          	ret

00000000000102ec <read_num>:
   102ec:	fe010113          	add	sp,sp,-32
   102f0:	00813c23          	sd	s0,24(sp)
   102f4:	02010413          	add	s0,sp,32
   102f8:	00500893          	li	a7,5
   102fc:	00000073          	ecall
   10300:	00050793          	mv	a5,a0
   10304:	fef43423          	sd	a5,-24(s0)
   10308:	fe843783          	ld	a5,-24(s0)
   1030c:	00078513          	mv	a0,a5
   10310:	01813403          	ld	s0,24(sp)
   10314:	02010113          	add	sp,sp,32
   10318:	00008067          	ret

000000000001031c <print_f>:
   1031c:	fe010113          	add	sp,sp,-32
   10320:	00813c23          	sd	s0,24(sp)
   10324:	02010413          	add	s0,sp,32
   10328:	fea42627          	fsw	fa0,-20(s0)
   1032c:	00600893          	li	a7,6
   10330:	00000073          	ecall
   10334:	00000013          	nop
   10338:	01813403          	ld	s0,24(sp)
   1033c:	02010113          	add	sp,sp,32
   10340:	00008067          	ret

0000000000010344 <__libc_init_array>:
   10344:	fe010113          	add	sp,sp,-32
   10348:	00813823          	sd	s0,16(sp)
   1034c:	000117b7          	lui	a5,0x11
   10350:	00011437          	lui	s0,0x11
   10354:	01213023          	sd	s2,0(sp)
   10358:	74c78793          	add	a5,a5,1868 # 1174c <__preinit_array_end>
   1035c:	74c40713          	add	a4,s0,1868 # 1174c <__preinit_array_end>
   10360:	00113c23          	sd	ra,24(sp)
   10364:	00913423          	sd	s1,8(sp)
   10368:	40e78933          	sub	s2,a5,a4
   1036c:	02e78263          	beq	a5,a4,10390 <__libc_init_array+0x4c>
   10370:	40395913          	sra	s2,s2,0x3
   10374:	74c40413          	add	s0,s0,1868
   10378:	00000493          	li	s1,0
   1037c:	00043783          	ld	a5,0(s0)
   10380:	00148493          	add	s1,s1,1
   10384:	00840413          	add	s0,s0,8
   10388:	000780e7          	jalr	a5
   1038c:	ff24e8e3          	bltu	s1,s2,1037c <__libc_init_array+0x38>
   10390:	00011437          	lui	s0,0x11
   10394:	000117b7          	lui	a5,0x11
   10398:	76078793          	add	a5,a5,1888 # 11760 <__do_global_dtors_aux_fini_array_entry>
   1039c:	75040713          	add	a4,s0,1872 # 11750 <__init_array_start>
   103a0:	40e78933          	sub	s2,a5,a4
   103a4:	40395913          	sra	s2,s2,0x3
   103a8:	02e78063          	beq	a5,a4,103c8 <__libc_init_array+0x84>
   103ac:	75040413          	add	s0,s0,1872
   103b0:	00000493          	li	s1,0
   103b4:	00043783          	ld	a5,0(s0)
   103b8:	00148493          	add	s1,s1,1
   103bc:	00840413          	add	s0,s0,8
   103c0:	000780e7          	jalr	a5
   103c4:	ff24e8e3          	bltu	s1,s2,103b4 <__libc_init_array+0x70>
   103c8:	01813083          	ld	ra,24(sp)
   103cc:	01013403          	ld	s0,16(sp)
   103d0:	00813483          	ld	s1,8(sp)
   103d4:	00013903          	ld	s2,0(sp)
   103d8:	02010113          	add	sp,sp,32
   103dc:	00008067          	ret

00000000000103e0 <memset>:
   103e0:	00f00313          	li	t1,15
   103e4:	00050713          	mv	a4,a0
   103e8:	02c37a63          	bgeu	t1,a2,1041c <memset+0x3c>
   103ec:	00f77793          	and	a5,a4,15
   103f0:	0a079063          	bnez	a5,10490 <memset+0xb0>
   103f4:	06059e63          	bnez	a1,10470 <memset+0x90>
   103f8:	ff067693          	and	a3,a2,-16
   103fc:	00f67613          	and	a2,a2,15
   10400:	00e686b3          	add	a3,a3,a4
   10404:	00b73023          	sd	a1,0(a4)
   10408:	00b73423          	sd	a1,8(a4)
   1040c:	01070713          	add	a4,a4,16
   10410:	fed76ae3          	bltu	a4,a3,10404 <memset+0x24>
   10414:	00061463          	bnez	a2,1041c <memset+0x3c>
   10418:	00008067          	ret
   1041c:	40c306b3          	sub	a3,t1,a2
   10420:	00269693          	sll	a3,a3,0x2
   10424:	00000297          	auipc	t0,0x0
   10428:	005686b3          	add	a3,a3,t0
   1042c:	00c68067          	jr	12(a3)
   10430:	00b70723          	sb	a1,14(a4)
   10434:	00b706a3          	sb	a1,13(a4)
   10438:	00b70623          	sb	a1,12(a4)
   1043c:	00b705a3          	sb	a1,11(a4)
   10440:	00b70523          	sb	a1,10(a4)
   10444:	00b704a3          	sb	a1,9(a4)
   10448:	00b70423          	sb	a1,8(a4)
   1044c:	00b703a3          	sb	a1,7(a4)
   10450:	00b70323          	sb	a1,6(a4)
   10454:	00b702a3          	sb	a1,5(a4)
   10458:	00b70223          	sb	a1,4(a4)
   1045c:	00b701a3          	sb	a1,3(a4)
   10460:	00b70123          	sb	a1,2(a4)
   10464:	00b700a3          	sb	a1,1(a4)
   10468:	00b70023          	sb	a1,0(a4)
   1046c:	00008067          	ret
   10470:	0ff5f593          	zext.b	a1,a1
   10474:	00859693          	sll	a3,a1,0x8
   10478:	00d5e5b3          	or	a1,a1,a3
   1047c:	01059693          	sll	a3,a1,0x10
   10480:	00d5e5b3          	or	a1,a1,a3
   10484:	02059693          	sll	a3,a1,0x20
   10488:	00d5e5b3          	or	a1,a1,a3
   1048c:	f6dff06f          	j	103f8 <memset+0x18>
   10490:	00279693          	sll	a3,a5,0x2
   10494:	00000297          	auipc	t0,0x0
   10498:	005686b3          	add	a3,a3,t0
   1049c:	00008293          	mv	t0,ra
   104a0:	f98680e7          	jalr	-104(a3)
   104a4:	00028093          	mv	ra,t0
   104a8:	ff078793          	add	a5,a5,-16
   104ac:	40f70733          	sub	a4,a4,a5
   104b0:	00f60633          	add	a2,a2,a5
   104b4:	f6c374e3          	bgeu	t1,a2,1041c <memset+0x3c>
   104b8:	f3dff06f          	j	103f4 <memset+0x14>

00000000000104bc <__call_exitprocs>:
   104bc:	fb010113          	add	sp,sp,-80
   104c0:	03413023          	sd	s4,32(sp)
   104c4:	f481ba03          	ld	s4,-184(gp) # 11eb0 <_global_impure_ptr>
   104c8:	03213823          	sd	s2,48(sp)
   104cc:	04113423          	sd	ra,72(sp)
   104d0:	1f8a3903          	ld	s2,504(s4)
   104d4:	04813023          	sd	s0,64(sp)
   104d8:	02913c23          	sd	s1,56(sp)
   104dc:	03313423          	sd	s3,40(sp)
   104e0:	01513c23          	sd	s5,24(sp)
   104e4:	01613823          	sd	s6,16(sp)
   104e8:	01713423          	sd	s7,8(sp)
   104ec:	01813023          	sd	s8,0(sp)
   104f0:	04090063          	beqz	s2,10530 <__call_exitprocs+0x74>
   104f4:	00050b13          	mv	s6,a0
   104f8:	00058b93          	mv	s7,a1
   104fc:	00100a93          	li	s5,1
   10500:	fff00993          	li	s3,-1
   10504:	00892483          	lw	s1,8(s2)
   10508:	fff4841b          	addw	s0,s1,-1
   1050c:	02044263          	bltz	s0,10530 <__call_exitprocs+0x74>
   10510:	00349493          	sll	s1,s1,0x3
   10514:	009904b3          	add	s1,s2,s1
   10518:	040b8463          	beqz	s7,10560 <__call_exitprocs+0xa4>
   1051c:	2084b783          	ld	a5,520(s1)
   10520:	05778063          	beq	a5,s7,10560 <__call_exitprocs+0xa4>
   10524:	fff4041b          	addw	s0,s0,-1
   10528:	ff848493          	add	s1,s1,-8
   1052c:	ff3416e3          	bne	s0,s3,10518 <__call_exitprocs+0x5c>
   10530:	04813083          	ld	ra,72(sp)
   10534:	04013403          	ld	s0,64(sp)
   10538:	03813483          	ld	s1,56(sp)
   1053c:	03013903          	ld	s2,48(sp)
   10540:	02813983          	ld	s3,40(sp)
   10544:	02013a03          	ld	s4,32(sp)
   10548:	01813a83          	ld	s5,24(sp)
   1054c:	01013b03          	ld	s6,16(sp)
   10550:	00813b83          	ld	s7,8(sp)
   10554:	00013c03          	ld	s8,0(sp)
   10558:	05010113          	add	sp,sp,80
   1055c:	00008067          	ret
   10560:	00892783          	lw	a5,8(s2)
   10564:	0084b703          	ld	a4,8(s1)
   10568:	fff7879b          	addw	a5,a5,-1
   1056c:	06878263          	beq	a5,s0,105d0 <__call_exitprocs+0x114>
   10570:	0004b423          	sd	zero,8(s1)
   10574:	fa0708e3          	beqz	a4,10524 <__call_exitprocs+0x68>
   10578:	31092783          	lw	a5,784(s2)
   1057c:	008a96bb          	sllw	a3,s5,s0
   10580:	00892c03          	lw	s8,8(s2)
   10584:	00d7f7b3          	and	a5,a5,a3
   10588:	0007879b          	sext.w	a5,a5
   1058c:	02079263          	bnez	a5,105b0 <__call_exitprocs+0xf4>
   10590:	000700e7          	jalr	a4
   10594:	00892703          	lw	a4,8(s2)
   10598:	1f8a3783          	ld	a5,504(s4)
   1059c:	01871463          	bne	a4,s8,105a4 <__call_exitprocs+0xe8>
   105a0:	f92782e3          	beq	a5,s2,10524 <__call_exitprocs+0x68>
   105a4:	f80786e3          	beqz	a5,10530 <__call_exitprocs+0x74>
   105a8:	00078913          	mv	s2,a5
   105ac:	f59ff06f          	j	10504 <__call_exitprocs+0x48>
   105b0:	31492783          	lw	a5,788(s2)
   105b4:	1084b583          	ld	a1,264(s1)
   105b8:	00d7f7b3          	and	a5,a5,a3
   105bc:	0007879b          	sext.w	a5,a5
   105c0:	00079c63          	bnez	a5,105d8 <__call_exitprocs+0x11c>
   105c4:	000b0513          	mv	a0,s6
   105c8:	000700e7          	jalr	a4
   105cc:	fc9ff06f          	j	10594 <__call_exitprocs+0xd8>
   105d0:	00892423          	sw	s0,8(s2)
   105d4:	fa1ff06f          	j	10574 <__call_exitprocs+0xb8>
   105d8:	00058513          	mv	a0,a1
   105dc:	000700e7          	jalr	a4
   105e0:	fb5ff06f          	j	10594 <__call_exitprocs+0xd8>

00000000000105e4 <__libc_fini_array>:
   105e4:	fe010113          	add	sp,sp,-32
   105e8:	00813823          	sd	s0,16(sp)
   105ec:	000117b7          	lui	a5,0x11
   105f0:	00011437          	lui	s0,0x11
   105f4:	76078793          	add	a5,a5,1888 # 11760 <__do_global_dtors_aux_fini_array_entry>
   105f8:	76840413          	add	s0,s0,1896 # 11768 <impure_data>
   105fc:	40f40433          	sub	s0,s0,a5
   10600:	00913423          	sd	s1,8(sp)
   10604:	00113c23          	sd	ra,24(sp)
   10608:	40345493          	sra	s1,s0,0x3
   1060c:	02048063          	beqz	s1,1062c <__libc_fini_array+0x48>
   10610:	ff840413          	add	s0,s0,-8
   10614:	00f40433          	add	s0,s0,a5
   10618:	00043783          	ld	a5,0(s0)
   1061c:	fff48493          	add	s1,s1,-1
   10620:	ff840413          	add	s0,s0,-8
   10624:	000780e7          	jalr	a5
   10628:	fe0498e3          	bnez	s1,10618 <__libc_fini_array+0x34>
   1062c:	01813083          	ld	ra,24(sp)
   10630:	01013403          	ld	s0,16(sp)
   10634:	00813483          	ld	s1,8(sp)
   10638:	02010113          	add	sp,sp,32
   1063c:	00008067          	ret

0000000000010640 <atexit>:
   10640:	00050593          	mv	a1,a0
   10644:	00000693          	li	a3,0
   10648:	00000613          	li	a2,0
   1064c:	00000513          	li	a0,0
   10650:	0040006f          	j	10654 <__register_exitproc>

0000000000010654 <__register_exitproc>:
   10654:	f481b703          	ld	a4,-184(gp) # 11eb0 <_global_impure_ptr>
   10658:	1f873783          	ld	a5,504(a4)
   1065c:	06078063          	beqz	a5,106bc <__register_exitproc+0x68>
   10660:	0087a703          	lw	a4,8(a5)
   10664:	01f00813          	li	a6,31
   10668:	08e84663          	blt	a6,a4,106f4 <__register_exitproc+0xa0>
   1066c:	02050863          	beqz	a0,1069c <__register_exitproc+0x48>
   10670:	00371813          	sll	a6,a4,0x3
   10674:	01078833          	add	a6,a5,a6
   10678:	10c83823          	sd	a2,272(a6)
   1067c:	3107a883          	lw	a7,784(a5)
   10680:	00100613          	li	a2,1
   10684:	00e6163b          	sllw	a2,a2,a4
   10688:	00c8e8b3          	or	a7,a7,a2
   1068c:	3117a823          	sw	a7,784(a5)
   10690:	20d83823          	sd	a3,528(a6)
   10694:	00200693          	li	a3,2
   10698:	02d50863          	beq	a0,a3,106c8 <__register_exitproc+0x74>
   1069c:	00270693          	add	a3,a4,2
   106a0:	00369693          	sll	a3,a3,0x3
   106a4:	0017071b          	addw	a4,a4,1
   106a8:	00e7a423          	sw	a4,8(a5)
   106ac:	00d787b3          	add	a5,a5,a3
   106b0:	00b7b023          	sd	a1,0(a5)
   106b4:	00000513          	li	a0,0
   106b8:	00008067          	ret
   106bc:	20070793          	add	a5,a4,512
   106c0:	1ef73c23          	sd	a5,504(a4)
   106c4:	f9dff06f          	j	10660 <__register_exitproc+0xc>
   106c8:	3147a683          	lw	a3,788(a5)
   106cc:	00000513          	li	a0,0
   106d0:	00c6e6b3          	or	a3,a3,a2
   106d4:	30d7aa23          	sw	a3,788(a5)
   106d8:	00270693          	add	a3,a4,2
   106dc:	00369693          	sll	a3,a3,0x3
   106e0:	0017071b          	addw	a4,a4,1
   106e4:	00e7a423          	sw	a4,8(a5)
   106e8:	00d787b3          	add	a5,a5,a3
   106ec:	00b7b023          	sd	a1,0(a5)
   106f0:	00008067          	ret
   106f4:	fff00513          	li	a0,-1
   106f8:	00008067          	ret

00000000000106fc <_exit>:
   106fc:	05d00893          	li	a7,93
   10700:	00000073          	ecall
   10704:	00054463          	bltz	a0,1070c <_exit+0x10>
   10708:	0000006f          	j	10708 <_exit+0xc>
   1070c:	ff010113          	add	sp,sp,-16
   10710:	00813023          	sd	s0,0(sp)
   10714:	00050413          	mv	s0,a0
   10718:	00113423          	sd	ra,8(sp)
   1071c:	4080043b          	negw	s0,s0
   10720:	00c000ef          	jal	1072c <__errno>
   10724:	00852023          	sw	s0,0(a0)
   10728:	0000006f          	j	10728 <_exit+0x2c>

000000000001072c <__errno>:
   1072c:	f581b503          	ld	a0,-168(gp) # 11ec0 <_impure_ptr>
   10730:	00008067          	ret

Disassembly of section .rodata:

0000000000010738 <.rodata>:
   10738:	6548                	.2byte	0x6548
   1073a:	6c6c                	.2byte	0x6c6c
   1073c:	57202c6f          	jal	s8,12cae <__global_pointer$+0xd46>
   10740:	646c726f          	jal	tp,d7d86 <__global_pointer$+0xc5e1e>
   10744:	0a21                	.2byte	0xa21
	...

Disassembly of section .eh_frame:

0000000000011748 <__EH_FRAME_BEGIN__>:
   11748:	0000                	.2byte	0x0
	...

Disassembly of section .init_array:

0000000000011750 <__init_array_start>:
   11750:	0118                	.2byte	0x118
   11752:	0001                	.2byte	0x1
   11754:	0000                	.2byte	0x0
	...

0000000000011758 <__frame_dummy_init_array_entry>:
   11758:	01c0                	.2byte	0x1c0
   1175a:	0001                	.2byte	0x1
   1175c:	0000                	.2byte	0x0
	...

Disassembly of section .fini_array:

0000000000011760 <__do_global_dtors_aux_fini_array_entry>:
   11760:	017c                	.2byte	0x17c
   11762:	0001                	.2byte	0x1
   11764:	0000                	.2byte	0x0
	...

Disassembly of section .data:

0000000000011768 <impure_data>:
	...
   11770:	1ca0                	.2byte	0x1ca0
   11772:	0001                	.2byte	0x1
   11774:	0000                	.2byte	0x0
   11776:	0000                	.2byte	0x0
   11778:	1d50                	.2byte	0x1d50
   1177a:	0001                	.2byte	0x1
   1177c:	0000                	.2byte	0x0
   1177e:	0000                	.2byte	0x0
   11780:	1e00                	.2byte	0x1e00
   11782:	0001                	.2byte	0x1
	...
   11850:	0001                	.2byte	0x1
   11852:	0000                	.2byte	0x0
   11854:	0000                	.2byte	0x0
   11856:	0000                	.2byte	0x0
   11858:	330e                	.2byte	0x330e
   1185a:	abcd                	.2byte	0xabcd
   1185c:	1234                	.2byte	0x1234
   1185e:	e66d                	.2byte	0xe66d
   11860:	deec                	.2byte	0xdeec
   11862:	0005                	.2byte	0x5
   11864:	0000000b          	.4byte	0xb
	...

Disassembly of section .sdata:

0000000000011eb0 <_global_impure_ptr>:
   11eb0:	1768                	.2byte	0x1768
   11eb2:	0001                	.2byte	0x1
   11eb4:	0000                	.2byte	0x0
	...

0000000000011eb8 <__dso_handle>:
	...

0000000000011ec0 <_impure_ptr>:
   11ec0:	1768                	.2byte	0x1768
   11ec2:	0001                	.2byte	0x1
   11ec4:	0000                	.2byte	0x0
	...

Disassembly of section .bss:

0000000000011ec8 <completed.1>:
	...

0000000000011ed0 <object.0>:
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
