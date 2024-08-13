
matrixmulti.riscv:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100e8 <exit>:
   100e8:	ff010113          	add	sp,sp,-16
   100ec:	00000593          	li	a1,0
   100f0:	00813023          	sd	s0,0(sp)
   100f4:	00113423          	sd	ra,8(sp)
   100f8:	00050413          	mv	s0,a0
   100fc:	525000ef          	jal	10e20 <__call_exitprocs>
   10100:	f501b503          	ld	a0,-176(gp) # 12860 <_global_impure_ptr>
   10104:	05853783          	ld	a5,88(a0)
   10108:	00078463          	beqz	a5,10110 <exit+0x28>
   1010c:	000780e7          	jalr	a5
   10110:	00040513          	mv	a0,s0
   10114:	74d000ef          	jal	11060 <_exit>

0000000000010118 <register_fini>:
   10118:	00000793          	li	a5,0
   1011c:	00078863          	beqz	a5,1012c <register_fini+0x14>
   10120:	00011537          	lui	a0,0x11
   10124:	f4850513          	add	a0,a0,-184 # 10f48 <__libc_fini_array>
   10128:	67d0006f          	j	10fa4 <atexit>
   1012c:	00008067          	ret

0000000000010130 <_start>:
   10130:	00002197          	auipc	gp,0x2
   10134:	7e018193          	add	gp,gp,2016 # 12910 <__global_pointer$>
   10138:	f6818513          	add	a0,gp,-152 # 12878 <completed.1>
   1013c:	fa018613          	add	a2,gp,-96 # 128b0 <__BSS_END__>
   10140:	40a60633          	sub	a2,a2,a0
   10144:	00000593          	li	a1,0
   10148:	3fd000ef          	jal	10d44 <memset>
   1014c:	00001517          	auipc	a0,0x1
   10150:	e5850513          	add	a0,a0,-424 # 10fa4 <atexit>
   10154:	00050863          	beqz	a0,10164 <_start+0x34>
   10158:	00001517          	auipc	a0,0x1
   1015c:	df050513          	add	a0,a0,-528 # 10f48 <__libc_fini_array>
   10160:	645000ef          	jal	10fa4 <atexit>
   10164:	345000ef          	jal	10ca8 <__libc_init_array>
   10168:	00012503          	lw	a0,0(sp)
   1016c:	00810593          	add	a1,sp,8
   10170:	00000613          	li	a2,0
   10174:	280000ef          	jal	103f4 <main>
   10178:	f71ff06f          	j	100e8 <exit>

000000000001017c <__do_global_dtors_aux>:
   1017c:	ff010113          	add	sp,sp,-16
   10180:	00813023          	sd	s0,0(sp)
   10184:	f681c783          	lbu	a5,-152(gp) # 12878 <completed.1>
   10188:	00113423          	sd	ra,8(sp)
   1018c:	02079263          	bnez	a5,101b0 <__do_global_dtors_aux+0x34>
   10190:	00000793          	li	a5,0
   10194:	00078a63          	beqz	a5,101a8 <__do_global_dtors_aux+0x2c>
   10198:	00012537          	lui	a0,0x12
   1019c:	0f450513          	add	a0,a0,244 # 120f4 <__EH_FRAME_BEGIN__>
   101a0:	00000097          	auipc	ra,0x0
   101a4:	000000e7          	jalr	zero # 0 <exit-0x100e8>
   101a8:	00100793          	li	a5,1
   101ac:	f6f18423          	sb	a5,-152(gp) # 12878 <completed.1>
   101b0:	00813083          	ld	ra,8(sp)
   101b4:	00013403          	ld	s0,0(sp)
   101b8:	01010113          	add	sp,sp,16
   101bc:	00008067          	ret

00000000000101c0 <frame_dummy>:
   101c0:	00000793          	li	a5,0
   101c4:	00078c63          	beqz	a5,101dc <frame_dummy+0x1c>
   101c8:	00012537          	lui	a0,0x12
   101cc:	f7018593          	add	a1,gp,-144 # 12880 <object.0>
   101d0:	0f450513          	add	a0,a0,244 # 120f4 <__EH_FRAME_BEGIN__>
   101d4:	00000317          	auipc	t1,0x0
   101d8:	00000067          	jr	zero # 0 <exit-0x100e8>
   101dc:	00008067          	ret

00000000000101e0 <matmulti>:
   101e0:	f9010113          	add	sp,sp,-112
   101e4:	06813423          	sd	s0,104(sp)
   101e8:	07213023          	sd	s2,96(sp)
   101ec:	05313c23          	sd	s3,88(sp)
   101f0:	07010413          	add	s0,sp,112
   101f4:	faa43423          	sd	a0,-88(s0)
   101f8:	fab43023          	sd	a1,-96(s0)
   101fc:	f8c43c23          	sd	a2,-104(s0)
   10200:	f8d42a23          	sw	a3,-108(s0)
   10204:	00a00693          	li	a3,10
   10208:	fff68693          	add	a3,a3,-1
   1020c:	fcd43423          	sd	a3,-56(s0)
   10210:	00a00693          	li	a3,10
   10214:	00068913          	mv	s2,a3
   10218:	00000993          	li	s3,0
   1021c:	03b95693          	srl	a3,s2,0x3b
   10220:	00599393          	sll	t2,s3,0x5
   10224:	0076e3b3          	or	t2,a3,t2
   10228:	00591313          	sll	t1,s2,0x5
   1022c:	00a00693          	li	a3,10
   10230:	fff68693          	add	a3,a3,-1
   10234:	fcd43023          	sd	a3,-64(s0)
   10238:	00a00693          	li	a3,10
   1023c:	00068f13          	mv	t5,a3
   10240:	00000f93          	li	t6,0
   10244:	03bf5693          	srl	a3,t5,0x3b
   10248:	005f9893          	sll	a7,t6,0x5
   1024c:	0116e8b3          	or	a7,a3,a7
   10250:	005f1813          	sll	a6,t5,0x5
   10254:	00a00693          	li	a3,10
   10258:	fff68693          	add	a3,a3,-1
   1025c:	fad43c23          	sd	a3,-72(s0)
   10260:	00a00693          	li	a3,10
   10264:	00068e13          	mv	t3,a3
   10268:	00000e93          	li	t4,0
   1026c:	03be5693          	srl	a3,t3,0x3b
   10270:	005e9793          	sll	a5,t4,0x5
   10274:	00f6e7b3          	or	a5,a3,a5
   10278:	005e1713          	sll	a4,t3,0x5
   1027c:	fc042e23          	sw	zero,-36(s0)
   10280:	1400006f          	j	103c0 <matmulti+0x1e0>
   10284:	fc042c23          	sw	zero,-40(s0)
   10288:	1140006f          	j	1039c <matmulti+0x1bc>
   1028c:	fdc42783          	lw	a5,-36(s0)
   10290:	00a00713          	li	a4,10
   10294:	02e787b3          	mul	a5,a5,a4
   10298:	00279793          	sll	a5,a5,0x2
   1029c:	f9843703          	ld	a4,-104(s0)
   102a0:	00f70733          	add	a4,a4,a5
   102a4:	fd842783          	lw	a5,-40(s0)
   102a8:	00279793          	sll	a5,a5,0x2
   102ac:	00f707b3          	add	a5,a4,a5
   102b0:	0007a023          	sw	zero,0(a5)
   102b4:	fc042a23          	sw	zero,-44(s0)
   102b8:	0c00006f          	j	10378 <matmulti+0x198>
   102bc:	fdc42783          	lw	a5,-36(s0)
   102c0:	00a00713          	li	a4,10
   102c4:	02e787b3          	mul	a5,a5,a4
   102c8:	00279793          	sll	a5,a5,0x2
   102cc:	f9843703          	ld	a4,-104(s0)
   102d0:	00f70733          	add	a4,a4,a5
   102d4:	fd842783          	lw	a5,-40(s0)
   102d8:	00279793          	sll	a5,a5,0x2
   102dc:	00f707b3          	add	a5,a4,a5
   102e0:	0007a703          	lw	a4,0(a5)
   102e4:	fdc42783          	lw	a5,-36(s0)
   102e8:	00a00693          	li	a3,10
   102ec:	02d787b3          	mul	a5,a5,a3
   102f0:	00279793          	sll	a5,a5,0x2
   102f4:	fa843683          	ld	a3,-88(s0)
   102f8:	00f686b3          	add	a3,a3,a5
   102fc:	fd442783          	lw	a5,-44(s0)
   10300:	00279793          	sll	a5,a5,0x2
   10304:	00f687b3          	add	a5,a3,a5
   10308:	0007a683          	lw	a3,0(a5)
   1030c:	fd442783          	lw	a5,-44(s0)
   10310:	00a00613          	li	a2,10
   10314:	02c787b3          	mul	a5,a5,a2
   10318:	00279793          	sll	a5,a5,0x2
   1031c:	fa043603          	ld	a2,-96(s0)
   10320:	00f60633          	add	a2,a2,a5
   10324:	fd842783          	lw	a5,-40(s0)
   10328:	00279793          	sll	a5,a5,0x2
   1032c:	00f607b3          	add	a5,a2,a5
   10330:	0007a783          	lw	a5,0(a5)
   10334:	02f687bb          	mulw	a5,a3,a5
   10338:	0007879b          	sext.w	a5,a5
   1033c:	fdc42683          	lw	a3,-36(s0)
   10340:	00a00613          	li	a2,10
   10344:	02c686b3          	mul	a3,a3,a2
   10348:	00269693          	sll	a3,a3,0x2
   1034c:	f9843603          	ld	a2,-104(s0)
   10350:	00d606b3          	add	a3,a2,a3
   10354:	00f707bb          	addw	a5,a4,a5
   10358:	0007871b          	sext.w	a4,a5
   1035c:	fd842783          	lw	a5,-40(s0)
   10360:	00279793          	sll	a5,a5,0x2
   10364:	00f687b3          	add	a5,a3,a5
   10368:	00e7a023          	sw	a4,0(a5)
   1036c:	fd442783          	lw	a5,-44(s0)
   10370:	0017879b          	addw	a5,a5,1
   10374:	fcf42a23          	sw	a5,-44(s0)
   10378:	fd442783          	lw	a5,-44(s0)
   1037c:	00078713          	mv	a4,a5
   10380:	f9442783          	lw	a5,-108(s0)
   10384:	0007071b          	sext.w	a4,a4
   10388:	0007879b          	sext.w	a5,a5
   1038c:	f2f748e3          	blt	a4,a5,102bc <matmulti+0xdc>
   10390:	fd842783          	lw	a5,-40(s0)
   10394:	0017879b          	addw	a5,a5,1
   10398:	fcf42c23          	sw	a5,-40(s0)
   1039c:	fd842783          	lw	a5,-40(s0)
   103a0:	00078713          	mv	a4,a5
   103a4:	f9442783          	lw	a5,-108(s0)
   103a8:	0007071b          	sext.w	a4,a4
   103ac:	0007879b          	sext.w	a5,a5
   103b0:	ecf74ee3          	blt	a4,a5,1028c <matmulti+0xac>
   103b4:	fdc42783          	lw	a5,-36(s0)
   103b8:	0017879b          	addw	a5,a5,1
   103bc:	fcf42e23          	sw	a5,-36(s0)
   103c0:	fdc42783          	lw	a5,-36(s0)
   103c4:	00078713          	mv	a4,a5
   103c8:	f9442783          	lw	a5,-108(s0)
   103cc:	0007071b          	sext.w	a4,a4
   103d0:	0007879b          	sext.w	a5,a5
   103d4:	eaf748e3          	blt	a4,a5,10284 <matmulti+0xa4>
   103d8:	00000013          	nop
   103dc:	00000013          	nop
   103e0:	06813403          	ld	s0,104(sp)
   103e4:	06013903          	ld	s2,96(sp)
   103e8:	05813983          	ld	s3,88(sp)
   103ec:	07010113          	add	sp,sp,112
   103f0:	00008067          	ret

00000000000103f4 <main>:
   103f4:	de010113          	add	sp,sp,-544
   103f8:	20113c23          	sd	ra,536(sp)
   103fc:	20813823          	sd	s0,528(sp)
   10400:	20913423          	sd	s1,520(sp)
   10404:	21213023          	sd	s2,512(sp)
   10408:	1f313c23          	sd	s3,504(sp)
   1040c:	1f413823          	sd	s4,496(sp)
   10410:	1f513423          	sd	s5,488(sp)
   10414:	1f613023          	sd	s6,480(sp)
   10418:	1d713c23          	sd	s7,472(sp)
   1041c:	1d813823          	sd	s8,464(sp)
   10420:	1d913423          	sd	s9,456(sp)
   10424:	1da13023          	sd	s10,448(sp)
   10428:	1bb13c23          	sd	s11,440(sp)
   1042c:	22010413          	add	s0,sp,544
   10430:	00010793          	mv	a5,sp
   10434:	def43023          	sd	a5,-544(s0)
   10438:	00a00793          	li	a5,10
   1043c:	fff78793          	add	a5,a5,-1
   10440:	f6f43423          	sd	a5,-152(s0)
   10444:	00a00793          	li	a5,10
   10448:	00078513          	mv	a0,a5
   1044c:	00000593          	li	a1,0
   10450:	03b55793          	srl	a5,a0,0x3b
   10454:	00559693          	sll	a3,a1,0x5
   10458:	00d7e6b3          	or	a3,a5,a3
   1045c:	00551613          	sll	a2,a0,0x5
   10460:	00a00793          	li	a5,10
   10464:	00279793          	sll	a5,a5,0x2
   10468:	def43423          	sd	a5,-536(s0)
   1046c:	00a00793          	li	a5,10
   10470:	fff78793          	add	a5,a5,-1
   10474:	f6f43023          	sd	a5,-160(s0)
   10478:	00a00793          	li	a5,10
   1047c:	00078313          	mv	t1,a5
   10480:	00000393          	li	t2,0
   10484:	00a00793          	li	a5,10
   10488:	00078813          	mv	a6,a5
   1048c:	00000893          	li	a7,0
   10490:	03038733          	mul	a4,t2,a6
   10494:	026887b3          	mul	a5,a7,t1
   10498:	00f706b3          	add	a3,a4,a5
   1049c:	03030733          	mul	a4,t1,a6
   104a0:	030337b3          	mulhu	a5,t1,a6
   104a4:	00070e13          	mv	t3,a4
   104a8:	00078e93          	mv	t4,a5
   104ac:	01d687b3          	add	a5,a3,t4
   104b0:	00078e93          	mv	t4,a5
   104b4:	03be5793          	srl	a5,t3,0x3b
   104b8:	005e9f93          	sll	t6,t4,0x5
   104bc:	01f7efb3          	or	t6,a5,t6
   104c0:	005e1f13          	sll	t5,t3,0x5
   104c4:	00a00793          	li	a5,10
   104c8:	00078a13          	mv	s4,a5
   104cc:	00000a93          	li	s5,0
   104d0:	00a00793          	li	a5,10
   104d4:	00078913          	mv	s2,a5
   104d8:	00000993          	li	s3,0
   104dc:	032a8733          	mul	a4,s5,s2
   104e0:	034987b3          	mul	a5,s3,s4
   104e4:	00f706b3          	add	a3,a4,a5
   104e8:	032a0733          	mul	a4,s4,s2
   104ec:	032a37b3          	mulhu	a5,s4,s2
   104f0:	00070b13          	mv	s6,a4
   104f4:	00078b93          	mv	s7,a5
   104f8:	017687b3          	add	a5,a3,s7
   104fc:	00078b93          	mv	s7,a5
   10500:	03bb5793          	srl	a5,s6,0x3b
   10504:	005b9c93          	sll	s9,s7,0x5
   10508:	0197ecb3          	or	s9,a5,s9
   1050c:	005b1c13          	sll	s8,s6,0x5
   10510:	00a00793          	li	a5,10
   10514:	00078713          	mv	a4,a5
   10518:	00a00793          	li	a5,10
   1051c:	02f707b3          	mul	a5,a4,a5
   10520:	00279793          	sll	a5,a5,0x2
   10524:	00f78793          	add	a5,a5,15
   10528:	0047d793          	srl	a5,a5,0x4
   1052c:	00479793          	sll	a5,a5,0x4
   10530:	40f10133          	sub	sp,sp,a5
   10534:	00010793          	mv	a5,sp
   10538:	00378793          	add	a5,a5,3
   1053c:	0027d793          	srl	a5,a5,0x2
   10540:	00279793          	sll	a5,a5,0x2
   10544:	f4f43c23          	sd	a5,-168(s0)
   10548:	00a00793          	li	a5,10
   1054c:	fff78793          	add	a5,a5,-1
   10550:	f4f43823          	sd	a5,-176(s0)
   10554:	00a00793          	li	a5,10
   10558:	e4f43823          	sd	a5,-432(s0)
   1055c:	e4043c23          	sd	zero,-424(s0)
   10560:	e5043783          	ld	a5,-432(s0)
   10564:	03b7d793          	srl	a5,a5,0x3b
   10568:	e5843703          	ld	a4,-424(s0)
   1056c:	00571d93          	sll	s11,a4,0x5
   10570:	01b7edb3          	or	s11,a5,s11
   10574:	e5043783          	ld	a5,-432(s0)
   10578:	00579d13          	sll	s10,a5,0x5
   1057c:	00a00793          	li	a5,10
   10580:	00279913          	sll	s2,a5,0x2
   10584:	00a00793          	li	a5,10
   10588:	fff78793          	add	a5,a5,-1
   1058c:	f4f43423          	sd	a5,-184(s0)
   10590:	00a00793          	li	a5,10
   10594:	ecf43823          	sd	a5,-304(s0)
   10598:	ec043c23          	sd	zero,-296(s0)
   1059c:	00a00793          	li	a5,10
   105a0:	ecf43023          	sd	a5,-320(s0)
   105a4:	ec043423          	sd	zero,-312(s0)
   105a8:	ed843783          	ld	a5,-296(s0)
   105ac:	ec043703          	ld	a4,-320(s0)
   105b0:	02e78733          	mul	a4,a5,a4
   105b4:	ec843783          	ld	a5,-312(s0)
   105b8:	ed043683          	ld	a3,-304(s0)
   105bc:	02d787b3          	mul	a5,a5,a3
   105c0:	00f706b3          	add	a3,a4,a5
   105c4:	ed043783          	ld	a5,-304(s0)
   105c8:	ec043703          	ld	a4,-320(s0)
   105cc:	02e78733          	mul	a4,a5,a4
   105d0:	ed043783          	ld	a5,-304(s0)
   105d4:	ec043603          	ld	a2,-320(s0)
   105d8:	02c7b7b3          	mulhu	a5,a5,a2
   105dc:	f0e43823          	sd	a4,-240(s0)
   105e0:	f0f43c23          	sd	a5,-232(s0)
   105e4:	f1843783          	ld	a5,-232(s0)
   105e8:	00f687b3          	add	a5,a3,a5
   105ec:	f0f43c23          	sd	a5,-232(s0)
   105f0:	f1043783          	ld	a5,-240(s0)
   105f4:	03b7d793          	srl	a5,a5,0x3b
   105f8:	f1843703          	ld	a4,-232(s0)
   105fc:	00571713          	sll	a4,a4,0x5
   10600:	e2e43c23          	sd	a4,-456(s0)
   10604:	e3843703          	ld	a4,-456(s0)
   10608:	00e7e7b3          	or	a5,a5,a4
   1060c:	e2f43c23          	sd	a5,-456(s0)
   10610:	f1043783          	ld	a5,-240(s0)
   10614:	00579793          	sll	a5,a5,0x5
   10618:	e2f43823          	sd	a5,-464(s0)
   1061c:	00a00793          	li	a5,10
   10620:	eaf43823          	sd	a5,-336(s0)
   10624:	ea043c23          	sd	zero,-328(s0)
   10628:	00a00793          	li	a5,10
   1062c:	eaf43023          	sd	a5,-352(s0)
   10630:	ea043423          	sd	zero,-344(s0)
   10634:	eb843783          	ld	a5,-328(s0)
   10638:	ea043703          	ld	a4,-352(s0)
   1063c:	02e78733          	mul	a4,a5,a4
   10640:	ea843783          	ld	a5,-344(s0)
   10644:	eb043683          	ld	a3,-336(s0)
   10648:	02d787b3          	mul	a5,a5,a3
   1064c:	00f706b3          	add	a3,a4,a5
   10650:	eb043783          	ld	a5,-336(s0)
   10654:	ea043703          	ld	a4,-352(s0)
   10658:	02e78733          	mul	a4,a5,a4
   1065c:	eb043783          	ld	a5,-336(s0)
   10660:	ea043603          	ld	a2,-352(s0)
   10664:	02c7b7b3          	mulhu	a5,a5,a2
   10668:	f0e43023          	sd	a4,-256(s0)
   1066c:	f0f43423          	sd	a5,-248(s0)
   10670:	f0843783          	ld	a5,-248(s0)
   10674:	00f687b3          	add	a5,a3,a5
   10678:	f0f43423          	sd	a5,-248(s0)
   1067c:	f0043783          	ld	a5,-256(s0)
   10680:	03b7d793          	srl	a5,a5,0x3b
   10684:	f0843703          	ld	a4,-248(s0)
   10688:	00571713          	sll	a4,a4,0x5
   1068c:	e2e43423          	sd	a4,-472(s0)
   10690:	e2843703          	ld	a4,-472(s0)
   10694:	00e7e7b3          	or	a5,a5,a4
   10698:	e2f43423          	sd	a5,-472(s0)
   1069c:	f0043783          	ld	a5,-256(s0)
   106a0:	00579793          	sll	a5,a5,0x5
   106a4:	e2f43023          	sd	a5,-480(s0)
   106a8:	00a00793          	li	a5,10
   106ac:	00078713          	mv	a4,a5
   106b0:	00a00793          	li	a5,10
   106b4:	02f707b3          	mul	a5,a4,a5
   106b8:	00279793          	sll	a5,a5,0x2
   106bc:	00f78793          	add	a5,a5,15
   106c0:	0047d793          	srl	a5,a5,0x4
   106c4:	00479793          	sll	a5,a5,0x4
   106c8:	40f10133          	sub	sp,sp,a5
   106cc:	00010793          	mv	a5,sp
   106d0:	00378793          	add	a5,a5,3
   106d4:	0027d793          	srl	a5,a5,0x2
   106d8:	00279793          	sll	a5,a5,0x2
   106dc:	f4f43023          	sd	a5,-192(s0)
   106e0:	00a00793          	li	a5,10
   106e4:	fff78793          	add	a5,a5,-1
   106e8:	f2f43c23          	sd	a5,-200(s0)
   106ec:	00a00793          	li	a5,10
   106f0:	e4f43023          	sd	a5,-448(s0)
   106f4:	e4043423          	sd	zero,-440(s0)
   106f8:	e4043783          	ld	a5,-448(s0)
   106fc:	03b7d793          	srl	a5,a5,0x3b
   10700:	e4843703          	ld	a4,-440(s0)
   10704:	00571713          	sll	a4,a4,0x5
   10708:	e0e43c23          	sd	a4,-488(s0)
   1070c:	e1843703          	ld	a4,-488(s0)
   10710:	00e7e7b3          	or	a5,a5,a4
   10714:	e0f43c23          	sd	a5,-488(s0)
   10718:	e4043783          	ld	a5,-448(s0)
   1071c:	00579793          	sll	a5,a5,0x5
   10720:	e0f43823          	sd	a5,-496(s0)
   10724:	00a00793          	li	a5,10
   10728:	00279493          	sll	s1,a5,0x2
   1072c:	00a00793          	li	a5,10
   10730:	fff78793          	add	a5,a5,-1
   10734:	f2f43823          	sd	a5,-208(s0)
   10738:	00a00793          	li	a5,10
   1073c:	e8f43823          	sd	a5,-368(s0)
   10740:	e8043c23          	sd	zero,-360(s0)
   10744:	00a00793          	li	a5,10
   10748:	e8f43023          	sd	a5,-384(s0)
   1074c:	e8043423          	sd	zero,-376(s0)
   10750:	e9843783          	ld	a5,-360(s0)
   10754:	e8043703          	ld	a4,-384(s0)
   10758:	02e78733          	mul	a4,a5,a4
   1075c:	e8843783          	ld	a5,-376(s0)
   10760:	e9043683          	ld	a3,-368(s0)
   10764:	02d787b3          	mul	a5,a5,a3
   10768:	00f707b3          	add	a5,a4,a5
   1076c:	e9043703          	ld	a4,-368(s0)
   10770:	e8043683          	ld	a3,-384(s0)
   10774:	02d706b3          	mul	a3,a4,a3
   10778:	e9043703          	ld	a4,-368(s0)
   1077c:	e8043603          	ld	a2,-384(s0)
   10780:	02c73733          	mulhu	a4,a4,a2
   10784:	eed43823          	sd	a3,-272(s0)
   10788:	eee43c23          	sd	a4,-264(s0)
   1078c:	ef843703          	ld	a4,-264(s0)
   10790:	00e787b3          	add	a5,a5,a4
   10794:	eef43c23          	sd	a5,-264(s0)
   10798:	ef043783          	ld	a5,-272(s0)
   1079c:	03b7d793          	srl	a5,a5,0x3b
   107a0:	ef843703          	ld	a4,-264(s0)
   107a4:	00571713          	sll	a4,a4,0x5
   107a8:	e0e43423          	sd	a4,-504(s0)
   107ac:	e0843703          	ld	a4,-504(s0)
   107b0:	00e7e7b3          	or	a5,a5,a4
   107b4:	e0f43423          	sd	a5,-504(s0)
   107b8:	ef043783          	ld	a5,-272(s0)
   107bc:	00579793          	sll	a5,a5,0x5
   107c0:	e0f43023          	sd	a5,-512(s0)
   107c4:	00a00793          	li	a5,10
   107c8:	e6f43823          	sd	a5,-400(s0)
   107cc:	e6043c23          	sd	zero,-392(s0)
   107d0:	00a00793          	li	a5,10
   107d4:	e6f43023          	sd	a5,-416(s0)
   107d8:	e6043423          	sd	zero,-408(s0)
   107dc:	e7843783          	ld	a5,-392(s0)
   107e0:	e6043703          	ld	a4,-416(s0)
   107e4:	02e78733          	mul	a4,a5,a4
   107e8:	e6843783          	ld	a5,-408(s0)
   107ec:	e7043683          	ld	a3,-400(s0)
   107f0:	02d787b3          	mul	a5,a5,a3
   107f4:	00f707b3          	add	a5,a4,a5
   107f8:	e7043703          	ld	a4,-400(s0)
   107fc:	e6043683          	ld	a3,-416(s0)
   10800:	02d706b3          	mul	a3,a4,a3
   10804:	e7043703          	ld	a4,-400(s0)
   10808:	e6043603          	ld	a2,-416(s0)
   1080c:	02c73733          	mulhu	a4,a4,a2
   10810:	eed43023          	sd	a3,-288(s0)
   10814:	eee43423          	sd	a4,-280(s0)
   10818:	ee843703          	ld	a4,-280(s0)
   1081c:	00e787b3          	add	a5,a5,a4
   10820:	eef43423          	sd	a5,-280(s0)
   10824:	ee043783          	ld	a5,-288(s0)
   10828:	03b7d793          	srl	a5,a5,0x3b
   1082c:	ee843703          	ld	a4,-280(s0)
   10830:	00571713          	sll	a4,a4,0x5
   10834:	dee43c23          	sd	a4,-520(s0)
   10838:	df843703          	ld	a4,-520(s0)
   1083c:	00e7e7b3          	or	a5,a5,a4
   10840:	def43c23          	sd	a5,-520(s0)
   10844:	ee043783          	ld	a5,-288(s0)
   10848:	00579793          	sll	a5,a5,0x5
   1084c:	def43823          	sd	a5,-528(s0)
   10850:	00a00793          	li	a5,10
   10854:	00078713          	mv	a4,a5
   10858:	00a00793          	li	a5,10
   1085c:	02f707b3          	mul	a5,a4,a5
   10860:	00279793          	sll	a5,a5,0x2
   10864:	00f78793          	add	a5,a5,15
   10868:	0047d793          	srl	a5,a5,0x4
   1086c:	00479793          	sll	a5,a5,0x4
   10870:	40f10133          	sub	sp,sp,a5
   10874:	00010793          	mv	a5,sp
   10878:	00378793          	add	a5,a5,3
   1087c:	0027d793          	srl	a5,a5,0x2
   10880:	00279793          	sll	a5,a5,0x2
   10884:	f2f43423          	sd	a5,-216(s0)
   10888:	f8042623          	sw	zero,-116(s0)
   1088c:	0ac0006f          	j	10938 <main+0x544>
   10890:	f8042423          	sw	zero,-120(s0)
   10894:	0880006f          	j	1091c <main+0x528>
   10898:	de843783          	ld	a5,-536(s0)
   1089c:	0027d793          	srl	a5,a5,0x2
   108a0:	f5843703          	ld	a4,-168(s0)
   108a4:	f8842683          	lw	a3,-120(s0)
   108a8:	f8c42603          	lw	a2,-116(s0)
   108ac:	02f607b3          	mul	a5,a2,a5
   108b0:	00f687b3          	add	a5,a3,a5
   108b4:	00279793          	sll	a5,a5,0x2
   108b8:	00f707b3          	add	a5,a4,a5
   108bc:	f8c42703          	lw	a4,-116(s0)
   108c0:	00e7a023          	sw	a4,0(a5)
   108c4:	00295793          	srl	a5,s2,0x2
   108c8:	f4043703          	ld	a4,-192(s0)
   108cc:	f8842683          	lw	a3,-120(s0)
   108d0:	f8c42603          	lw	a2,-116(s0)
   108d4:	02f607b3          	mul	a5,a2,a5
   108d8:	00f687b3          	add	a5,a3,a5
   108dc:	00279793          	sll	a5,a5,0x2
   108e0:	00f707b3          	add	a5,a4,a5
   108e4:	f8842703          	lw	a4,-120(s0)
   108e8:	00e7a023          	sw	a4,0(a5)
   108ec:	0024d793          	srl	a5,s1,0x2
   108f0:	f2843703          	ld	a4,-216(s0)
   108f4:	f8842683          	lw	a3,-120(s0)
   108f8:	f8c42603          	lw	a2,-116(s0)
   108fc:	02f607b3          	mul	a5,a2,a5
   10900:	00f687b3          	add	a5,a3,a5
   10904:	00279793          	sll	a5,a5,0x2
   10908:	00f707b3          	add	a5,a4,a5
   1090c:	0007a023          	sw	zero,0(a5)
   10910:	f8842783          	lw	a5,-120(s0)
   10914:	0017879b          	addw	a5,a5,1
   10918:	f8f42423          	sw	a5,-120(s0)
   1091c:	00a00713          	li	a4,10
   10920:	f8842783          	lw	a5,-120(s0)
   10924:	0007879b          	sext.w	a5,a5
   10928:	f6e7c8e3          	blt	a5,a4,10898 <main+0x4a4>
   1092c:	f8c42783          	lw	a5,-116(s0)
   10930:	0017879b          	addw	a5,a5,1
   10934:	f8f42623          	sw	a5,-116(s0)
   10938:	00a00713          	li	a4,10
   1093c:	f8c42783          	lw	a5,-116(s0)
   10940:	0007879b          	sext.w	a5,a5
   10944:	f4e7c6e3          	blt	a5,a4,10890 <main+0x49c>
   10948:	000117b7          	lui	a5,0x11
   1094c:	09878513          	add	a0,a5,152 # 11098 <__errno+0x8>
   10950:	258000ef          	jal	10ba8 <print_s>
   10954:	f8042223          	sw	zero,-124(s0)
   10958:	07c0006f          	j	109d4 <main+0x5e0>
   1095c:	f8042023          	sw	zero,-128(s0)
   10960:	04c0006f          	j	109ac <main+0x5b8>
   10964:	de843783          	ld	a5,-536(s0)
   10968:	0027d793          	srl	a5,a5,0x2
   1096c:	f5843703          	ld	a4,-168(s0)
   10970:	f8042683          	lw	a3,-128(s0)
   10974:	f8442603          	lw	a2,-124(s0)
   10978:	02f607b3          	mul	a5,a2,a5
   1097c:	00f687b3          	add	a5,a3,a5
   10980:	00279793          	sll	a5,a5,0x2
   10984:	00f707b3          	add	a5,a4,a5
   10988:	0007a783          	lw	a5,0(a5)
   1098c:	00078513          	mv	a0,a5
   10990:	1ec000ef          	jal	10b7c <print_d>
   10994:	000117b7          	lui	a5,0x11
   10998:	0b078513          	add	a0,a5,176 # 110b0 <__errno+0x20>
   1099c:	20c000ef          	jal	10ba8 <print_s>
   109a0:	f8042783          	lw	a5,-128(s0)
   109a4:	0017879b          	addw	a5,a5,1
   109a8:	f8f42023          	sw	a5,-128(s0)
   109ac:	00a00713          	li	a4,10
   109b0:	f8042783          	lw	a5,-128(s0)
   109b4:	0007879b          	sext.w	a5,a5
   109b8:	fae7c6e3          	blt	a5,a4,10964 <main+0x570>
   109bc:	000117b7          	lui	a5,0x11
   109c0:	0b878513          	add	a0,a5,184 # 110b8 <__errno+0x28>
   109c4:	1e4000ef          	jal	10ba8 <print_s>
   109c8:	f8442783          	lw	a5,-124(s0)
   109cc:	0017879b          	addw	a5,a5,1
   109d0:	f8f42223          	sw	a5,-124(s0)
   109d4:	00a00713          	li	a4,10
   109d8:	f8442783          	lw	a5,-124(s0)
   109dc:	0007879b          	sext.w	a5,a5
   109e0:	f6e7cee3          	blt	a5,a4,1095c <main+0x568>
   109e4:	000117b7          	lui	a5,0x11
   109e8:	0c078513          	add	a0,a5,192 # 110c0 <__errno+0x30>
   109ec:	1bc000ef          	jal	10ba8 <print_s>
   109f0:	f6042e23          	sw	zero,-132(s0)
   109f4:	0780006f          	j	10a6c <main+0x678>
   109f8:	f6042c23          	sw	zero,-136(s0)
   109fc:	0480006f          	j	10a44 <main+0x650>
   10a00:	00295793          	srl	a5,s2,0x2
   10a04:	f4043703          	ld	a4,-192(s0)
   10a08:	f7842683          	lw	a3,-136(s0)
   10a0c:	f7c42603          	lw	a2,-132(s0)
   10a10:	02f607b3          	mul	a5,a2,a5
   10a14:	00f687b3          	add	a5,a3,a5
   10a18:	00279793          	sll	a5,a5,0x2
   10a1c:	00f707b3          	add	a5,a4,a5
   10a20:	0007a783          	lw	a5,0(a5)
   10a24:	00078513          	mv	a0,a5
   10a28:	154000ef          	jal	10b7c <print_d>
   10a2c:	000117b7          	lui	a5,0x11
   10a30:	0b078513          	add	a0,a5,176 # 110b0 <__errno+0x20>
   10a34:	174000ef          	jal	10ba8 <print_s>
   10a38:	f7842783          	lw	a5,-136(s0)
   10a3c:	0017879b          	addw	a5,a5,1
   10a40:	f6f42c23          	sw	a5,-136(s0)
   10a44:	00a00713          	li	a4,10
   10a48:	f7842783          	lw	a5,-136(s0)
   10a4c:	0007879b          	sext.w	a5,a5
   10a50:	fae7c8e3          	blt	a5,a4,10a00 <main+0x60c>
   10a54:	000117b7          	lui	a5,0x11
   10a58:	0b878513          	add	a0,a5,184 # 110b8 <__errno+0x28>
   10a5c:	14c000ef          	jal	10ba8 <print_s>
   10a60:	f7c42783          	lw	a5,-132(s0)
   10a64:	0017879b          	addw	a5,a5,1
   10a68:	f6f42e23          	sw	a5,-132(s0)
   10a6c:	00a00713          	li	a4,10
   10a70:	f7c42783          	lw	a5,-132(s0)
   10a74:	0007879b          	sext.w	a5,a5
   10a78:	f8e7c0e3          	blt	a5,a4,109f8 <main+0x604>
   10a7c:	00a00793          	li	a5,10
   10a80:	00078693          	mv	a3,a5
   10a84:	f2843603          	ld	a2,-216(s0)
   10a88:	f4043583          	ld	a1,-192(s0)
   10a8c:	f5843503          	ld	a0,-168(s0)
   10a90:	f50ff0ef          	jal	101e0 <matmulti>
   10a94:	000117b7          	lui	a5,0x11
   10a98:	0d878513          	add	a0,a5,216 # 110d8 <__errno+0x48>
   10a9c:	10c000ef          	jal	10ba8 <print_s>
   10aa0:	f6042a23          	sw	zero,-140(s0)
   10aa4:	0780006f          	j	10b1c <main+0x728>
   10aa8:	f6042823          	sw	zero,-144(s0)
   10aac:	0480006f          	j	10af4 <main+0x700>
   10ab0:	0024d793          	srl	a5,s1,0x2
   10ab4:	f2843703          	ld	a4,-216(s0)
   10ab8:	f7042683          	lw	a3,-144(s0)
   10abc:	f7442603          	lw	a2,-140(s0)
   10ac0:	02f607b3          	mul	a5,a2,a5
   10ac4:	00f687b3          	add	a5,a3,a5
   10ac8:	00279793          	sll	a5,a5,0x2
   10acc:	00f707b3          	add	a5,a4,a5
   10ad0:	0007a783          	lw	a5,0(a5)
   10ad4:	00078513          	mv	a0,a5
   10ad8:	0a4000ef          	jal	10b7c <print_d>
   10adc:	000117b7          	lui	a5,0x11
   10ae0:	0b078513          	add	a0,a5,176 # 110b0 <__errno+0x20>
   10ae4:	0c4000ef          	jal	10ba8 <print_s>
   10ae8:	f7042783          	lw	a5,-144(s0)
   10aec:	0017879b          	addw	a5,a5,1
   10af0:	f6f42823          	sw	a5,-144(s0)
   10af4:	00a00713          	li	a4,10
   10af8:	f7042783          	lw	a5,-144(s0)
   10afc:	0007879b          	sext.w	a5,a5
   10b00:	fae7c8e3          	blt	a5,a4,10ab0 <main+0x6bc>
   10b04:	000117b7          	lui	a5,0x11
   10b08:	0b878513          	add	a0,a5,184 # 110b8 <__errno+0x28>
   10b0c:	09c000ef          	jal	10ba8 <print_s>
   10b10:	f7442783          	lw	a5,-140(s0)
   10b14:	0017879b          	addw	a5,a5,1
   10b18:	f6f42a23          	sw	a5,-140(s0)
   10b1c:	00a00713          	li	a4,10
   10b20:	f7442783          	lw	a5,-140(s0)
   10b24:	0007879b          	sext.w	a5,a5
   10b28:	f8e7c0e3          	blt	a5,a4,10aa8 <main+0x6b4>
   10b2c:	0d0000ef          	jal	10bfc <exit_proc>
   10b30:	de043103          	ld	sp,-544(s0)
   10b34:	00000793          	li	a5,0
   10b38:	00078513          	mv	a0,a5
   10b3c:	de040113          	add	sp,s0,-544
   10b40:	21813083          	ld	ra,536(sp)
   10b44:	21013403          	ld	s0,528(sp)
   10b48:	20813483          	ld	s1,520(sp)
   10b4c:	20013903          	ld	s2,512(sp)
   10b50:	1f813983          	ld	s3,504(sp)
   10b54:	1f013a03          	ld	s4,496(sp)
   10b58:	1e813a83          	ld	s5,488(sp)
   10b5c:	1e013b03          	ld	s6,480(sp)
   10b60:	1d813b83          	ld	s7,472(sp)
   10b64:	1d013c03          	ld	s8,464(sp)
   10b68:	1c813c83          	ld	s9,456(sp)
   10b6c:	1c013d03          	ld	s10,448(sp)
   10b70:	1b813d83          	ld	s11,440(sp)
   10b74:	22010113          	add	sp,sp,544
   10b78:	00008067          	ret

0000000000010b7c <print_d>:
   10b7c:	fe010113          	add	sp,sp,-32
   10b80:	00813c23          	sd	s0,24(sp)
   10b84:	02010413          	add	s0,sp,32
   10b88:	00050793          	mv	a5,a0
   10b8c:	fef42623          	sw	a5,-20(s0)
   10b90:	00200893          	li	a7,2
   10b94:	00000073          	ecall
   10b98:	00000013          	nop
   10b9c:	01813403          	ld	s0,24(sp)
   10ba0:	02010113          	add	sp,sp,32
   10ba4:	00008067          	ret

0000000000010ba8 <print_s>:
   10ba8:	fe010113          	add	sp,sp,-32
   10bac:	00813c23          	sd	s0,24(sp)
   10bb0:	02010413          	add	s0,sp,32
   10bb4:	fea43423          	sd	a0,-24(s0)
   10bb8:	00000893          	li	a7,0
   10bbc:	00000073          	ecall
   10bc0:	00000013          	nop
   10bc4:	01813403          	ld	s0,24(sp)
   10bc8:	02010113          	add	sp,sp,32
   10bcc:	00008067          	ret

0000000000010bd0 <print_c>:
   10bd0:	fe010113          	add	sp,sp,-32
   10bd4:	00813c23          	sd	s0,24(sp)
   10bd8:	02010413          	add	s0,sp,32
   10bdc:	00050793          	mv	a5,a0
   10be0:	fef407a3          	sb	a5,-17(s0)
   10be4:	00100893          	li	a7,1
   10be8:	00000073          	ecall
   10bec:	00000013          	nop
   10bf0:	01813403          	ld	s0,24(sp)
   10bf4:	02010113          	add	sp,sp,32
   10bf8:	00008067          	ret

0000000000010bfc <exit_proc>:
   10bfc:	ff010113          	add	sp,sp,-16
   10c00:	00813423          	sd	s0,8(sp)
   10c04:	01010413          	add	s0,sp,16
   10c08:	00300893          	li	a7,3
   10c0c:	00000073          	ecall
   10c10:	00000013          	nop
   10c14:	00813403          	ld	s0,8(sp)
   10c18:	01010113          	add	sp,sp,16
   10c1c:	00008067          	ret

0000000000010c20 <read_char>:
   10c20:	fe010113          	add	sp,sp,-32
   10c24:	00813c23          	sd	s0,24(sp)
   10c28:	02010413          	add	s0,sp,32
   10c2c:	00400893          	li	a7,4
   10c30:	00000073          	ecall
   10c34:	00050793          	mv	a5,a0
   10c38:	fef407a3          	sb	a5,-17(s0)
   10c3c:	fef44783          	lbu	a5,-17(s0)
   10c40:	00078513          	mv	a0,a5
   10c44:	01813403          	ld	s0,24(sp)
   10c48:	02010113          	add	sp,sp,32
   10c4c:	00008067          	ret

0000000000010c50 <read_num>:
   10c50:	fe010113          	add	sp,sp,-32
   10c54:	00813c23          	sd	s0,24(sp)
   10c58:	02010413          	add	s0,sp,32
   10c5c:	00500893          	li	a7,5
   10c60:	00000073          	ecall
   10c64:	00050793          	mv	a5,a0
   10c68:	fef43423          	sd	a5,-24(s0)
   10c6c:	fe843783          	ld	a5,-24(s0)
   10c70:	00078513          	mv	a0,a5
   10c74:	01813403          	ld	s0,24(sp)
   10c78:	02010113          	add	sp,sp,32
   10c7c:	00008067          	ret

0000000000010c80 <print_f>:
   10c80:	fe010113          	add	sp,sp,-32
   10c84:	00813c23          	sd	s0,24(sp)
   10c88:	02010413          	add	s0,sp,32
   10c8c:	fea42627          	fsw	fa0,-20(s0)
   10c90:	00600893          	li	a7,6
   10c94:	00000073          	ecall
   10c98:	00000013          	nop
   10c9c:	01813403          	ld	s0,24(sp)
   10ca0:	02010113          	add	sp,sp,32
   10ca4:	00008067          	ret

0000000000010ca8 <__libc_init_array>:
   10ca8:	fe010113          	add	sp,sp,-32
   10cac:	00813823          	sd	s0,16(sp)
   10cb0:	000127b7          	lui	a5,0x12
   10cb4:	00012437          	lui	s0,0x12
   10cb8:	01213023          	sd	s2,0(sp)
   10cbc:	0f878793          	add	a5,a5,248 # 120f8 <__init_array_start>
   10cc0:	0f840713          	add	a4,s0,248 # 120f8 <__init_array_start>
   10cc4:	00113c23          	sd	ra,24(sp)
   10cc8:	00913423          	sd	s1,8(sp)
   10ccc:	40e78933          	sub	s2,a5,a4
   10cd0:	02e78263          	beq	a5,a4,10cf4 <__libc_init_array+0x4c>
   10cd4:	40395913          	sra	s2,s2,0x3
   10cd8:	0f840413          	add	s0,s0,248
   10cdc:	00000493          	li	s1,0
   10ce0:	00043783          	ld	a5,0(s0)
   10ce4:	00148493          	add	s1,s1,1
   10ce8:	00840413          	add	s0,s0,8
   10cec:	000780e7          	jalr	a5
   10cf0:	ff24e8e3          	bltu	s1,s2,10ce0 <__libc_init_array+0x38>
   10cf4:	00012437          	lui	s0,0x12
   10cf8:	000127b7          	lui	a5,0x12
   10cfc:	10878793          	add	a5,a5,264 # 12108 <__do_global_dtors_aux_fini_array_entry>
   10d00:	0f840713          	add	a4,s0,248 # 120f8 <__init_array_start>
   10d04:	40e78933          	sub	s2,a5,a4
   10d08:	40395913          	sra	s2,s2,0x3
   10d0c:	02e78063          	beq	a5,a4,10d2c <__libc_init_array+0x84>
   10d10:	0f840413          	add	s0,s0,248
   10d14:	00000493          	li	s1,0
   10d18:	00043783          	ld	a5,0(s0)
   10d1c:	00148493          	add	s1,s1,1
   10d20:	00840413          	add	s0,s0,8
   10d24:	000780e7          	jalr	a5
   10d28:	ff24e8e3          	bltu	s1,s2,10d18 <__libc_init_array+0x70>
   10d2c:	01813083          	ld	ra,24(sp)
   10d30:	01013403          	ld	s0,16(sp)
   10d34:	00813483          	ld	s1,8(sp)
   10d38:	00013903          	ld	s2,0(sp)
   10d3c:	02010113          	add	sp,sp,32
   10d40:	00008067          	ret

0000000000010d44 <memset>:
   10d44:	00f00313          	li	t1,15
   10d48:	00050713          	mv	a4,a0
   10d4c:	02c37a63          	bgeu	t1,a2,10d80 <memset+0x3c>
   10d50:	00f77793          	and	a5,a4,15
   10d54:	0a079063          	bnez	a5,10df4 <memset+0xb0>
   10d58:	06059e63          	bnez	a1,10dd4 <memset+0x90>
   10d5c:	ff067693          	and	a3,a2,-16
   10d60:	00f67613          	and	a2,a2,15
   10d64:	00e686b3          	add	a3,a3,a4
   10d68:	00b73023          	sd	a1,0(a4)
   10d6c:	00b73423          	sd	a1,8(a4)
   10d70:	01070713          	add	a4,a4,16
   10d74:	fed76ae3          	bltu	a4,a3,10d68 <memset+0x24>
   10d78:	00061463          	bnez	a2,10d80 <memset+0x3c>
   10d7c:	00008067          	ret
   10d80:	40c306b3          	sub	a3,t1,a2
   10d84:	00269693          	sll	a3,a3,0x2
   10d88:	00000297          	auipc	t0,0x0
   10d8c:	005686b3          	add	a3,a3,t0
   10d90:	00c68067          	jr	12(a3)
   10d94:	00b70723          	sb	a1,14(a4)
   10d98:	00b706a3          	sb	a1,13(a4)
   10d9c:	00b70623          	sb	a1,12(a4)
   10da0:	00b705a3          	sb	a1,11(a4)
   10da4:	00b70523          	sb	a1,10(a4)
   10da8:	00b704a3          	sb	a1,9(a4)
   10dac:	00b70423          	sb	a1,8(a4)
   10db0:	00b703a3          	sb	a1,7(a4)
   10db4:	00b70323          	sb	a1,6(a4)
   10db8:	00b702a3          	sb	a1,5(a4)
   10dbc:	00b70223          	sb	a1,4(a4)
   10dc0:	00b701a3          	sb	a1,3(a4)
   10dc4:	00b70123          	sb	a1,2(a4)
   10dc8:	00b700a3          	sb	a1,1(a4)
   10dcc:	00b70023          	sb	a1,0(a4)
   10dd0:	00008067          	ret
   10dd4:	0ff5f593          	zext.b	a1,a1
   10dd8:	00859693          	sll	a3,a1,0x8
   10ddc:	00d5e5b3          	or	a1,a1,a3
   10de0:	01059693          	sll	a3,a1,0x10
   10de4:	00d5e5b3          	or	a1,a1,a3
   10de8:	02059693          	sll	a3,a1,0x20
   10dec:	00d5e5b3          	or	a1,a1,a3
   10df0:	f6dff06f          	j	10d5c <memset+0x18>
   10df4:	00279693          	sll	a3,a5,0x2
   10df8:	00000297          	auipc	t0,0x0
   10dfc:	005686b3          	add	a3,a3,t0
   10e00:	00008293          	mv	t0,ra
   10e04:	f98680e7          	jalr	-104(a3)
   10e08:	00028093          	mv	ra,t0
   10e0c:	ff078793          	add	a5,a5,-16
   10e10:	40f70733          	sub	a4,a4,a5
   10e14:	00f60633          	add	a2,a2,a5
   10e18:	f6c374e3          	bgeu	t1,a2,10d80 <memset+0x3c>
   10e1c:	f3dff06f          	j	10d58 <memset+0x14>

0000000000010e20 <__call_exitprocs>:
   10e20:	fb010113          	add	sp,sp,-80
   10e24:	03413023          	sd	s4,32(sp)
   10e28:	f501ba03          	ld	s4,-176(gp) # 12860 <_global_impure_ptr>
   10e2c:	03213823          	sd	s2,48(sp)
   10e30:	04113423          	sd	ra,72(sp)
   10e34:	1f8a3903          	ld	s2,504(s4)
   10e38:	04813023          	sd	s0,64(sp)
   10e3c:	02913c23          	sd	s1,56(sp)
   10e40:	03313423          	sd	s3,40(sp)
   10e44:	01513c23          	sd	s5,24(sp)
   10e48:	01613823          	sd	s6,16(sp)
   10e4c:	01713423          	sd	s7,8(sp)
   10e50:	01813023          	sd	s8,0(sp)
   10e54:	04090063          	beqz	s2,10e94 <__call_exitprocs+0x74>
   10e58:	00050b13          	mv	s6,a0
   10e5c:	00058b93          	mv	s7,a1
   10e60:	00100a93          	li	s5,1
   10e64:	fff00993          	li	s3,-1
   10e68:	00892483          	lw	s1,8(s2)
   10e6c:	fff4841b          	addw	s0,s1,-1
   10e70:	02044263          	bltz	s0,10e94 <__call_exitprocs+0x74>
   10e74:	00349493          	sll	s1,s1,0x3
   10e78:	009904b3          	add	s1,s2,s1
   10e7c:	040b8463          	beqz	s7,10ec4 <__call_exitprocs+0xa4>
   10e80:	2084b783          	ld	a5,520(s1)
   10e84:	05778063          	beq	a5,s7,10ec4 <__call_exitprocs+0xa4>
   10e88:	fff4041b          	addw	s0,s0,-1
   10e8c:	ff848493          	add	s1,s1,-8
   10e90:	ff3416e3          	bne	s0,s3,10e7c <__call_exitprocs+0x5c>
   10e94:	04813083          	ld	ra,72(sp)
   10e98:	04013403          	ld	s0,64(sp)
   10e9c:	03813483          	ld	s1,56(sp)
   10ea0:	03013903          	ld	s2,48(sp)
   10ea4:	02813983          	ld	s3,40(sp)
   10ea8:	02013a03          	ld	s4,32(sp)
   10eac:	01813a83          	ld	s5,24(sp)
   10eb0:	01013b03          	ld	s6,16(sp)
   10eb4:	00813b83          	ld	s7,8(sp)
   10eb8:	00013c03          	ld	s8,0(sp)
   10ebc:	05010113          	add	sp,sp,80
   10ec0:	00008067          	ret
   10ec4:	00892783          	lw	a5,8(s2)
   10ec8:	0084b703          	ld	a4,8(s1)
   10ecc:	fff7879b          	addw	a5,a5,-1
   10ed0:	06878263          	beq	a5,s0,10f34 <__call_exitprocs+0x114>
   10ed4:	0004b423          	sd	zero,8(s1)
   10ed8:	fa0708e3          	beqz	a4,10e88 <__call_exitprocs+0x68>
   10edc:	31092783          	lw	a5,784(s2)
   10ee0:	008a96bb          	sllw	a3,s5,s0
   10ee4:	00892c03          	lw	s8,8(s2)
   10ee8:	00d7f7b3          	and	a5,a5,a3
   10eec:	0007879b          	sext.w	a5,a5
   10ef0:	02079263          	bnez	a5,10f14 <__call_exitprocs+0xf4>
   10ef4:	000700e7          	jalr	a4
   10ef8:	00892703          	lw	a4,8(s2)
   10efc:	1f8a3783          	ld	a5,504(s4)
   10f00:	01871463          	bne	a4,s8,10f08 <__call_exitprocs+0xe8>
   10f04:	f92782e3          	beq	a5,s2,10e88 <__call_exitprocs+0x68>
   10f08:	f80786e3          	beqz	a5,10e94 <__call_exitprocs+0x74>
   10f0c:	00078913          	mv	s2,a5
   10f10:	f59ff06f          	j	10e68 <__call_exitprocs+0x48>
   10f14:	31492783          	lw	a5,788(s2)
   10f18:	1084b583          	ld	a1,264(s1)
   10f1c:	00d7f7b3          	and	a5,a5,a3
   10f20:	0007879b          	sext.w	a5,a5
   10f24:	00079c63          	bnez	a5,10f3c <__call_exitprocs+0x11c>
   10f28:	000b0513          	mv	a0,s6
   10f2c:	000700e7          	jalr	a4
   10f30:	fc9ff06f          	j	10ef8 <__call_exitprocs+0xd8>
   10f34:	00892423          	sw	s0,8(s2)
   10f38:	fa1ff06f          	j	10ed8 <__call_exitprocs+0xb8>
   10f3c:	00058513          	mv	a0,a1
   10f40:	000700e7          	jalr	a4
   10f44:	fb5ff06f          	j	10ef8 <__call_exitprocs+0xd8>

0000000000010f48 <__libc_fini_array>:
   10f48:	fe010113          	add	sp,sp,-32
   10f4c:	00813823          	sd	s0,16(sp)
   10f50:	000127b7          	lui	a5,0x12
   10f54:	00012437          	lui	s0,0x12
   10f58:	10878793          	add	a5,a5,264 # 12108 <__do_global_dtors_aux_fini_array_entry>
   10f5c:	11040413          	add	s0,s0,272 # 12110 <impure_data>
   10f60:	40f40433          	sub	s0,s0,a5
   10f64:	00913423          	sd	s1,8(sp)
   10f68:	00113c23          	sd	ra,24(sp)
   10f6c:	40345493          	sra	s1,s0,0x3
   10f70:	02048063          	beqz	s1,10f90 <__libc_fini_array+0x48>
   10f74:	ff840413          	add	s0,s0,-8
   10f78:	00f40433          	add	s0,s0,a5
   10f7c:	00043783          	ld	a5,0(s0)
   10f80:	fff48493          	add	s1,s1,-1
   10f84:	ff840413          	add	s0,s0,-8
   10f88:	000780e7          	jalr	a5
   10f8c:	fe0498e3          	bnez	s1,10f7c <__libc_fini_array+0x34>
   10f90:	01813083          	ld	ra,24(sp)
   10f94:	01013403          	ld	s0,16(sp)
   10f98:	00813483          	ld	s1,8(sp)
   10f9c:	02010113          	add	sp,sp,32
   10fa0:	00008067          	ret

0000000000010fa4 <atexit>:
   10fa4:	00050593          	mv	a1,a0
   10fa8:	00000693          	li	a3,0
   10fac:	00000613          	li	a2,0
   10fb0:	00000513          	li	a0,0
   10fb4:	0040006f          	j	10fb8 <__register_exitproc>

0000000000010fb8 <__register_exitproc>:
   10fb8:	f501b703          	ld	a4,-176(gp) # 12860 <_global_impure_ptr>
   10fbc:	1f873783          	ld	a5,504(a4)
   10fc0:	06078063          	beqz	a5,11020 <__register_exitproc+0x68>
   10fc4:	0087a703          	lw	a4,8(a5)
   10fc8:	01f00813          	li	a6,31
   10fcc:	08e84663          	blt	a6,a4,11058 <__register_exitproc+0xa0>
   10fd0:	02050863          	beqz	a0,11000 <__register_exitproc+0x48>
   10fd4:	00371813          	sll	a6,a4,0x3
   10fd8:	01078833          	add	a6,a5,a6
   10fdc:	10c83823          	sd	a2,272(a6)
   10fe0:	3107a883          	lw	a7,784(a5)
   10fe4:	00100613          	li	a2,1
   10fe8:	00e6163b          	sllw	a2,a2,a4
   10fec:	00c8e8b3          	or	a7,a7,a2
   10ff0:	3117a823          	sw	a7,784(a5)
   10ff4:	20d83823          	sd	a3,528(a6)
   10ff8:	00200693          	li	a3,2
   10ffc:	02d50863          	beq	a0,a3,1102c <__register_exitproc+0x74>
   11000:	00270693          	add	a3,a4,2
   11004:	00369693          	sll	a3,a3,0x3
   11008:	0017071b          	addw	a4,a4,1
   1100c:	00e7a423          	sw	a4,8(a5)
   11010:	00d787b3          	add	a5,a5,a3
   11014:	00b7b023          	sd	a1,0(a5)
   11018:	00000513          	li	a0,0
   1101c:	00008067          	ret
   11020:	20070793          	add	a5,a4,512
   11024:	1ef73c23          	sd	a5,504(a4)
   11028:	f9dff06f          	j	10fc4 <__register_exitproc+0xc>
   1102c:	3147a683          	lw	a3,788(a5)
   11030:	00000513          	li	a0,0
   11034:	00c6e6b3          	or	a3,a3,a2
   11038:	30d7aa23          	sw	a3,788(a5)
   1103c:	00270693          	add	a3,a4,2
   11040:	00369693          	sll	a3,a3,0x3
   11044:	0017071b          	addw	a4,a4,1
   11048:	00e7a423          	sw	a4,8(a5)
   1104c:	00d787b3          	add	a5,a5,a3
   11050:	00b7b023          	sd	a1,0(a5)
   11054:	00008067          	ret
   11058:	fff00513          	li	a0,-1
   1105c:	00008067          	ret

0000000000011060 <_exit>:
   11060:	05d00893          	li	a7,93
   11064:	00000073          	ecall
   11068:	00054463          	bltz	a0,11070 <_exit+0x10>
   1106c:	0000006f          	j	1106c <_exit+0xc>
   11070:	ff010113          	add	sp,sp,-16
   11074:	00813023          	sd	s0,0(sp)
   11078:	00050413          	mv	s0,a0
   1107c:	00113423          	sd	ra,8(sp)
   11080:	4080043b          	negw	s0,s0
   11084:	00c000ef          	jal	11090 <__errno>
   11088:	00852023          	sw	s0,0(a0)
   1108c:	0000006f          	j	1108c <_exit+0x2c>

0000000000011090 <__errno>:
   11090:	f601b503          	ld	a0,-160(gp) # 12870 <_impure_ptr>
   11094:	00008067          	ret

Disassembly of section .rodata:

0000000000011098 <.rodata>:
   11098:	6854                	.2byte	0x6854
   1109a:	2065                	.2byte	0x2065
   1109c:	746e6f63          	bltu	t3,t1,117fa <__errno+0x76a>
   110a0:	6e65                	.2byte	0x6e65
   110a2:	2074                	.2byte	0x2074
   110a4:	4120666f          	jal	a2,174b6 <__global_pointer$+0x4ba6>
   110a8:	6920                	.2byte	0x6920
   110aa:	0a203a73          	csrrc	s4,0xa2,zero
   110ae:	0000                	.2byte	0x0
   110b0:	0020                	.2byte	0x20
   110b2:	0000                	.2byte	0x0
   110b4:	0000                	.2byte	0x0
   110b6:	0000                	.2byte	0x0
   110b8:	000a                	.2byte	0xa
   110ba:	0000                	.2byte	0x0
   110bc:	0000                	.2byte	0x0
   110be:	0000                	.2byte	0x0
   110c0:	6854                	.2byte	0x6854
   110c2:	2065                	.2byte	0x2065
   110c4:	746e6f63          	bltu	t3,t1,11822 <__errno+0x792>
   110c8:	6e65                	.2byte	0x6e65
   110ca:	2074                	.2byte	0x2074
   110cc:	4220666f          	jal	a2,174ee <__global_pointer$+0x4bde>
   110d0:	6920                	.2byte	0x6920
   110d2:	0a203a73          	csrrc	s4,0xa2,zero
   110d6:	0000                	.2byte	0x0
   110d8:	6854                	.2byte	0x6854
   110da:	2065                	.2byte	0x2065
   110dc:	746e6f63          	bltu	t3,t1,1183a <__errno+0x7aa>
   110e0:	6e65                	.2byte	0x6e65
   110e2:	2074                	.2byte	0x2074
   110e4:	4320666f          	jal	a2,17516 <__global_pointer$+0x4c06>
   110e8:	413d                	.2byte	0x413d
   110ea:	422a                	.2byte	0x422a
   110ec:	6920                	.2byte	0x6920
   110ee:	0a203a73          	csrrc	s4,0xa2,zero
	...

Disassembly of section .eh_frame:

00000000000120f4 <__EH_FRAME_BEGIN__>:
   120f4:	0000                	.2byte	0x0
	...

Disassembly of section .init_array:

00000000000120f8 <__init_array_start>:
   120f8:	0118                	.2byte	0x118
   120fa:	0001                	.2byte	0x1
   120fc:	0000                	.2byte	0x0
	...

0000000000012100 <__frame_dummy_init_array_entry>:
   12100:	01c0                	.2byte	0x1c0
   12102:	0001                	.2byte	0x1
   12104:	0000                	.2byte	0x0
	...

Disassembly of section .fini_array:

0000000000012108 <__do_global_dtors_aux_fini_array_entry>:
   12108:	017c                	.2byte	0x17c
   1210a:	0001                	.2byte	0x1
   1210c:	0000                	.2byte	0x0
	...

Disassembly of section .data:

0000000000012110 <impure_data>:
	...
   12118:	2648                	.2byte	0x2648
   1211a:	0001                	.2byte	0x1
   1211c:	0000                	.2byte	0x0
   1211e:	0000                	.2byte	0x0
   12120:	26f8                	.2byte	0x26f8
   12122:	0001                	.2byte	0x1
   12124:	0000                	.2byte	0x0
   12126:	0000                	.2byte	0x0
   12128:	27a8                	.2byte	0x27a8
   1212a:	0001                	.2byte	0x1
	...
   121f8:	0001                	.2byte	0x1
   121fa:	0000                	.2byte	0x0
   121fc:	0000                	.2byte	0x0
   121fe:	0000                	.2byte	0x0
   12200:	330e                	.2byte	0x330e
   12202:	abcd                	.2byte	0xabcd
   12204:	1234                	.2byte	0x1234
   12206:	e66d                	.2byte	0xe66d
   12208:	deec                	.2byte	0xdeec
   1220a:	0005                	.2byte	0x5
   1220c:	0000000b          	.4byte	0xb
	...

Disassembly of section .sdata:

0000000000012858 <M>:
   12858:	000a                	.2byte	0xa
   1285a:	0000                	.2byte	0x0
   1285c:	0000                	.2byte	0x0
	...

0000000000012860 <_global_impure_ptr>:
   12860:	2110                	.2byte	0x2110
   12862:	0001                	.2byte	0x1
   12864:	0000                	.2byte	0x0
	...

0000000000012868 <__dso_handle>:
	...

0000000000012870 <_impure_ptr>:
   12870:	2110                	.2byte	0x2110
   12872:	0001                	.2byte	0x1
   12874:	0000                	.2byte	0x0
	...

Disassembly of section .bss:

0000000000012878 <completed.1>:
	...

0000000000012880 <object.0>:
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
