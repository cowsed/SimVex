
vex_smartdrive.cpp.obj:     file format elf32-littlearm


Disassembly of section .text._ZN3vex10smartdriveD2Ev:

00000000 <vex::smartdrive::~smartdrive()>:
   0:	e59010ec 	ldr	r1, [r0, #236]	; 0xec
   4:	e59f3028 	ldr	r3, [pc, #40]	; 34 <vex::smartdrive::~smartdrive()+0x34>
   8:	e3510000 	cmp	r1, #0
   c:	e92d4010 	push	{r4, lr}
  10:	e1a04000 	mov	r4, r0
  14:	e5803000 	str	r3, [r0]
  18:	ba000001 	blt	24 <vex::smartdrive::~smartdrive()+0x24>
  1c:	e59f0014 	ldr	r0, [pc, #20]	; 38 <vex::smartdrive::~smartdrive()+0x38>
  20:	ebfffffe 	bl	0 <vexTaskStopWithId>
  24:	e1a00004 	mov	r0, r4
  28:	ebfffffe 	bl	0 <vex::drivetrain::~drivetrain()>
  2c:	e1a00004 	mov	r0, r4
  30:	e8bd8010 	pop	{r4, pc}
  34:	00000008 	andeq	r0, r0, r8
  38:	00000000 	andeq	r0, r0, r0

Disassembly of section .text._ZN3vex10smartdriveD0Ev:

00000000 <vex::smartdrive::~smartdrive()>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <vex::smartdrive::~smartdrive()>
   c:	e1a00004 	mov	r0, r4
  10:	ebfffffe 	bl	0 <operator delete(void*)>
  14:	e1a00004 	mov	r0, r4
  18:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex10smartdrive16setTurnThresholdEd:

00000000 <vex::smartdrive::setTurnThreshold(double)>:
   0:	ec432b30 	vmov	d16, r2, r3
   4:	eef50bc0 	vcmpe.f64	d16, #0.0
   8:	eef1fa10 	vmrs	APSR_nzcv, fpscr
   c:	adc00b3c 	vstrge	d16, [r0, #240]	; 0xf0
  10:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex10smartdrive15setTurnConstantEd:

00000000 <vex::smartdrive::setTurnConstant(double)>:
   0:	eddf1b0a 	vldr	d17, [pc, #40]	; 30 <vex::smartdrive::setTurnConstant(double)+0x30>
   4:	ec432b30 	vmov	d16, r2, r3
   8:	eef40be1 	vcmpe.f64	d16, d17
   c:	eef1fa10 	vmrs	APSR_nzcv, fpscr
  10:	4ef00b61 	vmovmi.f64	d16, d17
  14:	4a000003 	bmi	28 <vex::smartdrive::setTurnConstant(double)+0x28>
  18:	eef11b00 	vmov.f64	d17, #16	; 0x40800000  4.0
  1c:	eef40b61 	vcmp.f64	d16, d17
  20:	eef1fa10 	vmrs	APSR_nzcv, fpscr
  24:	cef00b61 	vmovgt.f64	d16, d17
  28:	edc00b3e 	vstr	d16, [r0, #248]	; 0xf8
  2c:	e12fff1e 	bx	lr
  30:	9999999a 	ldmibls	r9, {r1, r3, r4, r7, r8, fp, ip, pc}
  34:	3fb99999 	svccc	0x00b99999

Disassembly of section .text._ZN3vex10smartdrive23setTurnDirectionReverseEb:

00000000 <vex::smartdrive::setTurnDirectionReverse(bool)>:
   0:	e3510000 	cmp	r1, #0
   4:	e3a03001 	mov	r3, #1
   8:	15803110 	strne	r3, [r0, #272]	; 0x110
   c:	13a02000 	movne	r2, #0
  10:	0580310c 	streq	r3, [r0, #268]	; 0x10c
  14:	1580210c 	strne	r2, [r0, #268]	; 0x10c
  18:	05801110 	streq	r1, [r0, #272]	; 0x110
  1c:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex10smartdriveC2ERNS_11motor_groupES2_RNS_5guidoEdddNS_13distanceUnitsEd:

00000000 <vex::smartdrive::smartdrive(vex::motor_group&, vex::motor_group&, vex::guido&, double, double, double, vex::distanceUnits, double)>:
   0:	e92d40f0 	push	{r4, r5, r6, r7, lr}
   4:	e24dd02c 	sub	sp, sp, #44	; 0x2c
   8:	e1a05003 	mov	r5, r3
   c:	e1a04000 	mov	r4, r0
  10:	e1cd64d0 	ldrd	r6, [sp, #64]	; 0x40
  14:	e59d3058 	ldr	r3, [sp, #88]	; 0x58
  18:	e1cd60f0 	strd	r6, [sp]
  1c:	e1cd64d8 	ldrd	r6, [sp, #72]	; 0x48
  20:	e58d3018 	str	r3, [sp, #24]
  24:	e1cd60f8 	strd	r6, [sp, #8]
  28:	e1cd65d0 	ldrd	r6, [sp, #80]	; 0x50
  2c:	e1cd61f0 	strd	r6, [sp, #16]
  30:	e1cd66d0 	ldrd	r6, [sp, #96]	; 0x60
  34:	e1cd62f0 	strd	r6, [sp, #32]
  38:	ebfffffe 	bl	0 <vex::drivetrain::drivetrain(vex::motor_group&, vex::motor_group&, double, double, double, vex::distanceUnits, double)>
  3c:	e59f3050 	ldr	r3, [pc, #80]	; 94 <vex::smartdrive::smartdrive(vex::motor_group&, vex::motor_group&, vex::guido&, double, double, double, vex::distanceUnits, double)+0x94>
  40:	e3a02000 	mov	r2, #0
  44:	e58450d0 	str	r5, [r4, #208]	; 0xd0
  48:	e1a00005 	mov	r0, r5
  4c:	e5843000 	str	r3, [r4]
  50:	e3a03000 	mov	r3, #0
  54:	e5c430e8 	strb	r3, [r4, #232]	; 0xe8
  58:	e3e03000 	mvn	r3, #0
  5c:	e58430ec 	str	r3, [r4, #236]	; 0xec
  60:	e59f3030 	ldr	r3, [pc, #48]	; 98 <vex::smartdrive::smartdrive(vex::motor_group&, vex::motor_group&, vex::guido&, double, double, double, vex::distanceUnits, double)+0x98>
  64:	e1c42ff0 	strd	r2, [r4, #240]	; 0xf0
  68:	e1c42ff8 	strd	r2, [r4, #248]	; 0xf8
  6c:	e5953000 	ldr	r3, [r5]
  70:	e5933024 	ldr	r3, [r3, #36]	; 0x24
  74:	e12fff33 	blx	r3
  78:	e16f1f10 	clz	r1, r0
  7c:	e1a00004 	mov	r0, r4
  80:	e1a012a1 	lsr	r1, r1, #5
  84:	ebfffffe 	bl	0 <vex::smartdrive::smartdrive(vex::motor_group&, vex::motor_group&, vex::guido&, double, double, double, vex::distanceUnits, double)>
  88:	e1a00004 	mov	r0, r4
  8c:	e28dd02c 	add	sp, sp, #44	; 0x2c
  90:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
  94:	00000008 	andeq	r0, r0, r8
  98:	3ff00000 	svccc	0x00f00000	; IMB

Disassembly of section .text._ZN3vex10smartdriveC2ERNS_5motorES2_RNS_5guidoEdddNS_13distanceUnitsEd:

00000000 <vex::smartdrive::smartdrive(vex::motor&, vex::motor&, vex::guido&, double, double, double, vex::distanceUnits, double)>:
   0:	e92d40f0 	push	{r4, r5, r6, r7, lr}
   4:	e24dd02c 	sub	sp, sp, #44	; 0x2c
   8:	e1a05003 	mov	r5, r3
   c:	e1a04000 	mov	r4, r0
  10:	e1cd64d0 	ldrd	r6, [sp, #64]	; 0x40
  14:	e59d3058 	ldr	r3, [sp, #88]	; 0x58
  18:	e1cd60f0 	strd	r6, [sp]
  1c:	e1cd64d8 	ldrd	r6, [sp, #72]	; 0x48
  20:	e58d3018 	str	r3, [sp, #24]
  24:	e1cd60f8 	strd	r6, [sp, #8]
  28:	e1cd65d0 	ldrd	r6, [sp, #80]	; 0x50
  2c:	e1cd61f0 	strd	r6, [sp, #16]
  30:	e1cd66d0 	ldrd	r6, [sp, #96]	; 0x60
  34:	e1cd62f0 	strd	r6, [sp, #32]
  38:	ebfffffe 	bl	0 <vex::drivetrain::drivetrain(vex::motor&, vex::motor&, double, double, double, vex::distanceUnits, double)>
  3c:	e59f3050 	ldr	r3, [pc, #80]	; 94 <vex::smartdrive::smartdrive(vex::motor&, vex::motor&, vex::guido&, double, double, double, vex::distanceUnits, double)+0x94>
  40:	e3a02000 	mov	r2, #0
  44:	e58450d0 	str	r5, [r4, #208]	; 0xd0
  48:	e1a00005 	mov	r0, r5
  4c:	e5843000 	str	r3, [r4]
  50:	e3a03000 	mov	r3, #0
  54:	e5c430e8 	strb	r3, [r4, #232]	; 0xe8
  58:	e3e03000 	mvn	r3, #0
  5c:	e58430ec 	str	r3, [r4, #236]	; 0xec
  60:	e59f3030 	ldr	r3, [pc, #48]	; 98 <vex::smartdrive::smartdrive(vex::motor&, vex::motor&, vex::guido&, double, double, double, vex::distanceUnits, double)+0x98>
  64:	e1c42ff0 	strd	r2, [r4, #240]	; 0xf0
  68:	e1c42ff8 	strd	r2, [r4, #248]	; 0xf8
  6c:	e5953000 	ldr	r3, [r5]
  70:	e5933024 	ldr	r3, [r3, #36]	; 0x24
  74:	e12fff33 	blx	r3
  78:	e16f1f10 	clz	r1, r0
  7c:	e1a00004 	mov	r0, r4
  80:	e1a012a1 	lsr	r1, r1, #5
  84:	ebfffffe 	bl	0 <vex::smartdrive::smartdrive(vex::motor&, vex::motor&, vex::guido&, double, double, double, vex::distanceUnits, double)>
  88:	e1a00004 	mov	r0, r4
  8c:	e28dd02c 	add	sp, sp, #44	; 0x2c
  90:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
  94:	00000008 	andeq	r0, r0, r8
  98:	3ff00000 	svccc	0x00f00000	; IMB

Disassembly of section .text._ZN3vex10smartdrive10setHeadingEdNS_13rotationUnitsE:

00000000 <vex::smartdrive::setHeading(double, vex::rotationUnits)>:
   0:	e59000d0 	ldr	r0, [r0, #208]	; 0xd0
   4:	e5901000 	ldr	r1, [r0]
   8:	e5911018 	ldr	r1, [r1, #24]
   c:	e12fff11 	bx	r1

Disassembly of section .text._ZN3vex10smartdrive7headingENS_13rotationUnitsE:

00000000 <vex::smartdrive::heading(vex::rotationUnits)>:
   0:	e59000d0 	ldr	r0, [r0, #208]	; 0xd0
   4:	e5903000 	ldr	r3, [r0]
   8:	e593300c 	ldr	r3, [r3, #12]
   c:	e12fff13 	bx	r3

Disassembly of section .text._ZN3vex10smartdrive11setRotationEdNS_13rotationUnitsE:

00000000 <vex::smartdrive::setRotation(double, vex::rotationUnits)>:
   0:	e59000d0 	ldr	r0, [r0, #208]	; 0xd0
   4:	e5901000 	ldr	r1, [r0]
   8:	e5911020 	ldr	r1, [r1, #32]
   c:	e12fff11 	bx	r1

Disassembly of section .text._ZN3vex10smartdrive8rotationENS_13rotationUnitsE:

00000000 <vex::smartdrive::rotation(vex::rotationUnits)>:
   0:	e59000d0 	ldr	r0, [r0, #208]	; 0xd0
   4:	e5903000 	ldr	r3, [r0]
   8:	e593301c 	ldr	r3, [r3, #28]
   c:	e12fff13 	bx	r3

Disassembly of section .text._ZN3vex10smartdrive9isTurningEv:

00000000 <vex::smartdrive::isTurning()>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <vex::task::yield()>
   c:	e5d400e8 	ldrb	r0, [r4, #232]	; 0xe8
  10:	e3500000 	cmp	r0, #0
  14:	05d400e9 	ldrbeq	r0, [r4, #233]	; 0xe9
  18:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex10smartdrive11_initeventsEv:

00000000 <vex::smartdrive::_initevents()>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e59f0038 	ldr	r0, [pc, #56]	; 48 <vex::smartdrive::_initevents()+0x48>
   c:	ebfffffe 	bl	0 <vexTaskStateGet>
  10:	e3500000 	cmp	r0, #0
  14:	13500063 	cmpne	r0, #99	; 0x63
  18:	03e03000 	mvneq	r3, #0
  1c:	058430ec 	streq	r3, [r4, #236]	; 0xec
  20:	e59430ec 	ldr	r3, [r4, #236]	; 0xec
  24:	e3530000 	cmp	r3, #0
  28:	a8bd8010 	popge	{r4, pc}
  2c:	e59f0014 	ldr	r0, [pc, #20]	; 48 <vex::smartdrive::_initevents()+0x48>
  30:	e3a01002 	mov	r1, #2
  34:	e1a02004 	mov	r2, r4
  38:	e59f300c 	ldr	r3, [pc, #12]	; 4c <vex::smartdrive::_initevents()+0x4c>
  3c:	ebfffffe 	bl	0 <vexTaskAddWithArg>
  40:	e58400ec 	str	r0, [r4, #236]	; 0xec
  44:	e8bd8010 	pop	{r4, pc}
	...

Disassembly of section .text._ZN3vex10smartdrive22_testForCompletionGyroEv:

00000000 <vex::smartdrive::_testForCompletionGyro()>:
   0:	e92d4010 	push	{r4, lr}
   4:	e3a01000 	mov	r1, #0
   8:	ed2d8b02 	vpush	{d8}
   c:	e1a04000 	mov	r4, r0
  10:	ed908b36 	vldr	d8, [r0, #216]	; 0xd8
  14:	e24dd008 	sub	sp, sp, #8
  18:	ebfffffe 	bl	0 <vex::smartdrive::_testForCompletionGyro()>
  1c:	ed947b3e 	vldr	d7, [r4, #248]	; 0xf8
  20:	ec410b30 	vmov	d16, r0, r1
  24:	ee780b60 	vsub.f64	d16, d8, d16
  28:	ee207b87 	vmul.f64	d7, d16, d7
  2c:	eef02be0 	vabs.f64	d18, d16
  30:	edd40b40 	vldr	d16, [r4, #256]	; 0x100
  34:	eef01bc7 	vabs.f64	d17, d7
  38:	eef00be0 	vabs.f64	d16, d16
  3c:	eef41be0 	vcmpe.f64	d17, d16
  40:	eef1fa10 	vmrs	APSR_nzcv, fpscr
  44:	da000004 	ble	5c <vex::smartdrive::_testForCompletionGyro()+0x5c>
  48:	ee173a90 	vmov	r3, s15
  4c:	eef00be0 	vabs.f64	d16, d16
  50:	e3530000 	cmp	r3, #0
  54:	bef10b60 	vneglt.f64	d16, d16
  58:	eeb07b60 	vmov.f64	d7, d16
  5c:	e5943108 	ldr	r3, [r4, #264]	; 0x108
  60:	eef01b00 	vmov.f64	d17, #0	; 0x40000000  2.0
  64:	eef00bc7 	vabs.f64	d16, d7
  68:	eef40be1 	vcmpe.f64	d16, d17
  6c:	eef1fa10 	vmrs	APSR_nzcv, fpscr
  70:	5a000003 	bpl	84 <vex::smartdrive::_testForCompletionGyro()+0x84>
  74:	ee172a90 	vmov	r2, s15
  78:	eeb87b00 	vmov.f64	d7, #128	; 0xc0000000 -2.0
  7c:	e3520000 	cmp	r2, #0
  80:	aeb07b61 	vmovge.f64	d7, d17
  84:	edd40b3c 	vldr	d16, [r4, #240]	; 0xf0
  88:	e59410e0 	ldr	r1, [r4, #224]	; 0xe0
  8c:	e5942110 	ldr	r2, [r4, #272]	; 0x110
  90:	eef42be0 	vcmpe.f64	d18, d16
  94:	e1510002 	cmp	r1, r2
  98:	0eb17b47 	vnegeq.f64	d7, d7
  9c:	eef1fa10 	vmrs	APSR_nzcv, fpscr
  a0:	43a00001 	movmi	r0, #1
  a4:	4a000006 	bmi	c4 <vex::smartdrive::_testForCompletionGyro()+0xc4>
  a8:	e58d3000 	str	r3, [sp]
  ac:	e1a00004 	mov	r0, r4
  b0:	ec532b17 	vmov	r2, r3, d7
  b4:	ebfffffe 	bl	0 <vex::drivetrain::turn(vex::turnType, double, vex::velocityUnits)>
  b8:	e3a00000 	mov	r0, #0
  bc:	e3a03001 	mov	r3, #1
  c0:	e5c430ea 	strb	r3, [r4, #234]	; 0xea
  c4:	e28dd008 	add	sp, sp, #8
  c8:	ecbd8b02 	vpop	{d8}
  cc:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex10smartdrive9_gyrotaskEPv:

00000000 <vex::smartdrive::_gyrotask(void*)>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e3a00032 	mov	r0, #50	; 0x32
   c:	ebfffffe 	bl	0 <vex::task::sleep(unsigned long)>
  10:	e3540000 	cmp	r4, #0
  14:	0afffffb 	beq	8 <vex::smartdrive::_gyrotask(void*)+0x8>
  18:	e5d430e8 	ldrb	r3, [r4, #232]	; 0xe8
  1c:	e3530000 	cmp	r3, #0
  20:	0afffff8 	beq	8 <vex::smartdrive::_gyrotask(void*)+0x8>
  24:	e59430e4 	ldr	r3, [r4, #228]	; 0xe4
  28:	e3530000 	cmp	r3, #0
  2c:	0afffff5 	beq	8 <vex::smartdrive::_gyrotask(void*)+0x8>
  30:	e2433032 	sub	r3, r3, #50	; 0x32
  34:	e58430e4 	str	r3, [r4, #228]	; 0xe4
  38:	e3530000 	cmp	r3, #0
  3c:	ca000005 	bgt	58 <vex::smartdrive::_gyrotask(void*)+0x58>
  40:	e3a05000 	mov	r5, #0
  44:	e1a00004 	mov	r0, r4
  48:	e58450e4 	str	r5, [r4, #228]	; 0xe4
  4c:	ebfffffe 	bl	0 <vex::drivetrain::stop()>
  50:	e5c450e8 	strb	r5, [r4, #232]	; 0xe8
  54:	eaffffeb 	b	8 <vex::smartdrive::_gyrotask(void*)+0x8>
  58:	e5d430ea 	ldrb	r3, [r4, #234]	; 0xea
  5c:	e3530000 	cmp	r3, #0
  60:	0a000006 	beq	80 <vex::smartdrive::_gyrotask(void*)+0x80>
  64:	e5d430e0 	ldrb	r3, [r4, #224]	; 0xe0
  68:	e5d420cc 	ldrb	r2, [r4, #204]	; 0xcc
  6c:	e1520003 	cmp	r2, r3
  70:	13a03000 	movne	r3, #0
  74:	158430e4 	strne	r3, [r4, #228]	; 0xe4
  78:	15c430e8 	strbne	r3, [r4, #232]	; 0xe8
  7c:	1affffe1 	bne	8 <vex::smartdrive::_gyrotask(void*)+0x8>
  80:	e1a00004 	mov	r0, r4
  84:	ebfffffe 	bl	0 <vex::smartdrive::_gyrotask(void*)>
  88:	e3500000 	cmp	r0, #0
  8c:	0affffdd 	beq	8 <vex::smartdrive::_gyrotask(void*)+0x8>
  90:	eaffffea 	b	40 <vex::smartdrive::_gyrotask(void*)+0x40>

Disassembly of section .text._ZN3vex10smartdrive22_waitForCompletionGyroEv:

00000000 <vex::smartdrive::_waitForCompletionGyro()>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e3a01000 	mov	r1, #0
   8:	ed2d8b02 	vpush	{d8}
   c:	e1a04000 	mov	r4, r0
  10:	ed908b36 	vldr	d8, [r0, #216]	; 0xd8
  14:	ebfffffe 	bl	0 <vex::smartdrive::_waitForCompletionGyro()>
  18:	ec410b30 	vmov	d16, r0, r1
  1c:	ee388b60 	vsub.f64	d8, d8, d16
  20:	eef00b00 	vmov.f64	d16, #0	; 0x40000000  2.0
  24:	eeb08bc8 	vabs.f64	d8, d8
  28:	eeb48be0 	vcmpe.f64	d8, d16
  2c:	eef1fa10 	vmrs	APSR_nzcv, fpscr
  30:	4a000017 	bmi	94 <vex::smartdrive::_waitForCompletionGyro()+0x94>
  34:	e59430e4 	ldr	r3, [r4, #228]	; 0xe4
  38:	e2433032 	sub	r3, r3, #50	; 0x32
  3c:	e58430e4 	str	r3, [r4, #228]	; 0xe4
  40:	e3530000 	cmp	r3, #0
  44:	ba00000d 	blt	80 <vex::smartdrive::_waitForCompletionGyro()+0x80>
  48:	e3a00032 	mov	r0, #50	; 0x32
  4c:	ebfffffe 	bl	0 <vex::task::sleep(unsigned long)>
  50:	e5d430ea 	ldrb	r3, [r4, #234]	; 0xea
  54:	e3530000 	cmp	r3, #0
  58:	0a000003 	beq	6c <vex::smartdrive::_waitForCompletionGyro()+0x6c>
  5c:	e5d420cc 	ldrb	r2, [r4, #204]	; 0xcc
  60:	e5d430e0 	ldrb	r3, [r4, #224]	; 0xe0
  64:	e1520003 	cmp	r2, r3
  68:	1a00000b 	bne	9c <vex::smartdrive::_waitForCompletionGyro()+0x9c>
  6c:	e1a00004 	mov	r0, r4
  70:	ebfffffe 	bl	0 <vex::smartdrive::_waitForCompletionGyro()>
  74:	e2505000 	subs	r5, r0, #0
  78:	0affffed 	beq	34 <vex::smartdrive::_waitForCompletionGyro()+0x34>
  7c:	ea000000 	b	84 <vex::smartdrive::_waitForCompletionGyro()+0x84>
  80:	e3a05000 	mov	r5, #0
  84:	e1a00004 	mov	r0, r4
  88:	ebfffffe 	bl	0 <vex::drivetrain::stop()>
  8c:	e1a00005 	mov	r0, r5
  90:	ea000002 	b	a0 <vex::smartdrive::_waitForCompletionGyro()+0xa0>
  94:	e3a00001 	mov	r0, #1
  98:	ea000000 	b	a0 <vex::smartdrive::_waitForCompletionGyro()+0xa0>
  9c:	e3a00000 	mov	r0, #0
  a0:	ecbd8b02 	vpop	{d8}
  a4:	e8bd8038 	pop	{r3, r4, r5, pc}

Disassembly of section .text._ZN3vex10smartdrive7turnForENS_8turnTypeEdNS_13rotationUnitsEdNS_13velocityUnitsEb:

00000000 <vex::smartdrive::turnFor(vex::turnType, double, vex::rotationUnits, double, vex::velocityUnits, bool)>:
   0:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ed2d8b04 	vpush	{d8-d9}
   c:	e1a05001 	mov	r5, r1
  10:	e59d7028 	ldr	r7, [sp, #40]	; 0x28
  14:	ec432b18 	vmov	d8, r2, r3
  18:	e59400d0 	ldr	r0, [r4, #208]	; 0xd0
  1c:	e5903000 	ldr	r3, [r0]
  20:	e5933014 	ldr	r3, [r3, #20]
  24:	e12fff33 	blx	r3
  28:	e2506000 	subs	r6, r0, #0
  2c:	0a000002 	beq	3c <vex::smartdrive::turnFor(vex::turnType, double, vex::rotationUnits, double, vex::velocityUnits, bool)+0x3c>
  30:	e3a00032 	mov	r0, #50	; 0x32
  34:	ebfffffe 	bl	0 <vex::this_thread::sleep_for(unsigned long)>
  38:	eafffff6 	b	18 <vex::smartdrive::turnFor(vex::turnType, double, vex::rotationUnits, double, vex::velocityUnits, bool)+0x18>
  3c:	eeb58bc0 	vcmpe.f64	d8, #0.0
  40:	eef1fa10 	vmrs	APSR_nzcv, fpscr
  44:	5a000007 	bpl	68 <vex::smartdrive::turnFor(vex::turnType, double, vex::rotationUnits, double, vex::velocityUnits, bool)+0x68>
  48:	e5943110 	ldr	r3, [r4, #272]	; 0x110
  4c:	eeb18b48 	vneg.f64	d8, d8
  50:	e594210c 	ldr	r2, [r4, #268]	; 0x10c
  54:	e1550003 	cmp	r5, r3
  58:	01a05002 	moveq	r5, r2
  5c:	0a000001 	beq	68 <vex::smartdrive::turnFor(vex::turnType, double, vex::rotationUnits, double, vex::velocityUnits, bool)+0x68>
  60:	e1550002 	cmp	r5, r2
  64:	01a05003 	moveq	r5, r3
  68:	e3570001 	cmp	r7, #1
  6c:	0a000002 	beq	7c <vex::smartdrive::turnFor(vex::turnType, double, vex::rotationUnits, double, vex::velocityUnits, bool)+0x7c>
  70:	e3570063 	cmp	r7, #99	; 0x63
  74:	0a000034 	beq	14c <vex::smartdrive::turnFor(vex::turnType, double, vex::rotationUnits, double, vex::velocityUnits, bool)+0x14c>
  78:	ea000001 	b	84 <vex::smartdrive::turnFor(vex::turnType, double, vex::rotationUnits, double, vex::velocityUnits, bool)+0x84>
  7c:	eddf0b35 	vldr	d16, [pc, #212]	; 158 <vex::smartdrive::turnFor(vex::turnType, double, vex::rotationUnits, double, vex::velocityUnits, bool)+0x158>
  80:	ee288b20 	vmul.f64	d8, d8, d16
  84:	eeb09b00 	vmov.f64	d9, #0	; 0x40000000  2.0
  88:	eeb48bc9 	vcmpe.f64	d8, d9
  8c:	eef1fa10 	vmrs	APSR_nzcv, fpscr
  90:	43a06001 	movmi	r6, #1
  94:	4a00002c 	bmi	14c <vex::smartdrive::turnFor(vex::turnType, double, vex::rotationUnits, double, vex::velocityUnits, bool)+0x14c>
  98:	e1a00004 	mov	r0, r4
  9c:	e3a01000 	mov	r1, #0
  a0:	ebfffffe 	bl	0 <vex::smartdrive::turnFor(vex::turnType, double, vex::rotationUnits, double, vex::velocityUnits, bool)>
  a4:	e5943110 	ldr	r3, [r4, #272]	; 0x110
  a8:	e1550003 	cmp	r5, r3
  ac:	e5d430e8 	ldrb	r3, [r4, #232]	; 0xe8
  b0:	0eb18b48 	vnegeq.f64	d8, d8
  b4:	e3530000 	cmp	r3, #0
  b8:	ec410b30 	vmov	d16, r0, r1
  bc:	ee308b88 	vadd.f64	d8, d16, d8
  c0:	0a000006 	beq	e0 <vex::smartdrive::turnFor(vex::turnType, double, vex::rotationUnits, double, vex::velocityUnits, bool)+0xe0>
  c4:	edd40b36 	vldr	d16, [r4, #216]	; 0xd8
  c8:	ee780b60 	vsub.f64	d16, d8, d16
  cc:	eef00be0 	vabs.f64	d16, d16
  d0:	eef40bc9 	vcmpe.f64	d16, d9
  d4:	eef1fa10 	vmrs	APSR_nzcv, fpscr
  d8:	4d848b36 	vstrmi	d8, [r4, #216]	; 0xd8
  dc:	4a00001a 	bmi	14c <vex::smartdrive::turnFor(vex::turnType, double, vex::rotationUnits, double, vex::velocityUnits, bool)+0x14c>
  e0:	e1cd23d0 	ldrd	r2, [sp, #48]	; 0x30
  e4:	e1a00004 	mov	r0, r4
  e8:	e58450e0 	str	r5, [r4, #224]	; 0xe0
  ec:	e3a05000 	mov	r5, #0
  f0:	ed848b36 	vstr	d8, [r4, #216]	; 0xd8
  f4:	e3a07001 	mov	r7, #1
  f8:	e5842100 	str	r2, [r4, #256]	; 0x100
  fc:	e5843104 	str	r3, [r4, #260]	; 0x104
 100:	e59d3038 	ldr	r3, [sp, #56]	; 0x38
 104:	e5c450e8 	strb	r5, [r4, #232]	; 0xe8
 108:	e5c450e9 	strb	r5, [r4, #233]	; 0xe9
 10c:	e5843108 	str	r3, [r4, #264]	; 0x108
 110:	e5c450ea 	strb	r5, [r4, #234]	; 0xea
 114:	ebfffffe 	bl	0 <vex::drivetrain::timeoutGet()>
 118:	e5dd303c 	ldrb	r3, [sp, #60]	; 0x3c
 11c:	e1530005 	cmp	r3, r5
 120:	e58400e4 	str	r0, [r4, #228]	; 0xe4
 124:	0a000005 	beq	140 <vex::smartdrive::turnFor(vex::turnType, double, vex::rotationUnits, double, vex::velocityUnits, bool)+0x140>
 128:	e5c470e9 	strb	r7, [r4, #233]	; 0xe9
 12c:	e1a00004 	mov	r0, r4
 130:	ebfffffe 	bl	0 <vex::smartdrive::turnFor(vex::turnType, double, vex::rotationUnits, double, vex::velocityUnits, bool)>
 134:	e5c450e9 	strb	r5, [r4, #233]	; 0xe9
 138:	e1a06000 	mov	r6, r0
 13c:	ea000002 	b	14c <vex::smartdrive::turnFor(vex::turnType, double, vex::rotationUnits, double, vex::velocityUnits, bool)+0x14c>
 140:	e1a00004 	mov	r0, r4
 144:	ebfffffe 	bl	0 <vex::smartdrive::turnFor(vex::turnType, double, vex::rotationUnits, double, vex::velocityUnits, bool)>
 148:	e5c470e8 	strb	r7, [r4, #232]	; 0xe8
 14c:	ecbd8b04 	vpop	{d8-d9}
 150:	e1a00006 	mov	r0, r6
 154:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
 158:	00000000 	andeq	r0, r0, r0
 15c:	40768000 	rsbsmi	r8, r6, r0

Disassembly of section .text._ZN3vex10smartdrive13turnToHeadingEdNS_13rotationUnitsEdNS_13velocityUnitsEb:

00000000 <vex::smartdrive::turnToHeading(double, vex::rotationUnits, double, vex::velocityUnits, bool)>:
   0:	e92d4df0 	push	{r4, r5, r6, r7, r8, sl, fp, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ed2d8b04 	vpush	{d8-d9}
   c:	e1cda3d8 	ldrd	sl, [sp, #56]	; 0x38
  10:	e59d8040 	ldr	r8, [sp, #64]	; 0x40
  14:	ec432b18 	vmov	d8, r2, r3
  18:	e59d3030 	ldr	r3, [sp, #48]	; 0x30
  1c:	e5dd5044 	ldrb	r5, [sp, #68]	; 0x44
  20:	e3530001 	cmp	r3, #1
  24:	0a000002 	beq	34 <vex::smartdrive::turnToHeading(double, vex::rotationUnits, double, vex::velocityUnits, bool)+0x34>
  28:	e3530063 	cmp	r3, #99	; 0x63
  2c:	0a00002e 	beq	ec <vex::smartdrive::turnToHeading(double, vex::rotationUnits, double, vex::velocityUnits, bool)+0xec>
  30:	ea000001 	b	3c <vex::smartdrive::turnToHeading(double, vex::rotationUnits, double, vex::velocityUnits, bool)+0x3c>
  34:	eddf0b2f 	vldr	d16, [pc, #188]	; f8 <vex::smartdrive::turnToHeading(double, vex::rotationUnits, double, vex::velocityUnits, bool)+0xf8>
  38:	ee288b20 	vmul.f64	d8, d8, d16
  3c:	e59400d0 	ldr	r0, [r4, #208]	; 0xd0
  40:	e5903000 	ldr	r3, [r0]
  44:	e5933014 	ldr	r3, [r3, #20]
  48:	e12fff33 	blx	r3
  4c:	e3500000 	cmp	r0, #0
  50:	0a000002 	beq	60 <vex::smartdrive::turnToHeading(double, vex::rotationUnits, double, vex::velocityUnits, bool)+0x60>
  54:	e3a00032 	mov	r0, #50	; 0x32
  58:	ebfffffe 	bl	0 <vex::this_thread::sleep_for(unsigned long)>
  5c:	eafffff6 	b	3c <vex::smartdrive::turnToHeading(double, vex::rotationUnits, double, vex::velocityUnits, bool)+0x3c>
  60:	e59f70a8 	ldr	r7, [pc, #168]	; 110 <vex::smartdrive::turnToHeading(double, vex::rotationUnits, double, vex::velocityUnits, bool)+0x110>
  64:	e3a06000 	mov	r6, #0
  68:	e1a02006 	mov	r2, r6
  6c:	ec510b18 	vmov	r0, r1, d8
  70:	e1a03007 	mov	r3, r7
  74:	ec476b19 	vmov	d9, r6, r7
  78:	ebfffffe 	bl	0 <fmod>
  7c:	ec410b18 	vmov	d8, r0, r1
  80:	e1a00004 	mov	r0, r4
  84:	e3a01000 	mov	r1, #0
  88:	eeb58bc0 	vcmpe.f64	d8, #0.0
  8c:	eef1fa10 	vmrs	APSR_nzcv, fpscr
  90:	4e388b09 	vaddmi.f64	d8, d8, d9
  94:	ebfffffe 	bl	0 <vex::smartdrive::turnToHeading(double, vex::rotationUnits, double, vex::velocityUnits, bool)>
  98:	eddf1b18 	vldr	d17, [pc, #96]	; 100 <vex::smartdrive::turnToHeading(double, vex::rotationUnits, double, vex::velocityUnits, bool)+0x100>
  9c:	e1cda3f8 	strd	sl, [sp, #56]	; 0x38
  a0:	e3a03000 	mov	r3, #0
  a4:	e58d8040 	str	r8, [sp, #64]	; 0x40
  a8:	e58d3030 	str	r3, [sp, #48]	; 0x30
  ac:	e58d5044 	str	r5, [sp, #68]	; 0x44
  b0:	ec410b30 	vmov	d16, r0, r1
  b4:	e1a00004 	mov	r0, r4
  b8:	e594110c 	ldr	r1, [r4, #268]	; 0x10c
  bc:	ee780b60 	vsub.f64	d16, d8, d16
  c0:	eef40be1 	vcmpe.f64	d16, d17
  c4:	eddf1b0f 	vldr	d17, [pc, #60]	; 108 <vex::smartdrive::turnToHeading(double, vex::rotationUnits, double, vex::velocityUnits, bool)+0x108>
  c8:	eef1fa10 	vmrs	APSR_nzcv, fpscr
  cc:	ce700bc9 	vsubgt.f64	d16, d16, d9
  d0:	eef40be1 	vcmpe.f64	d16, d17
  d4:	eef1fa10 	vmrs	APSR_nzcv, fpscr
  d8:	4e700b89 	vaddmi.f64	d16, d16, d9
  dc:	ecbd8b04 	vpop	{d8-d9}
  e0:	e8bd4df0 	pop	{r4, r5, r6, r7, r8, sl, fp, lr}
  e4:	ec532b30 	vmov	r2, r3, d16
  e8:	eafffffe 	b	0 <vex::smartdrive::turnToHeading(double, vex::rotationUnits, double, vex::velocityUnits, bool)>
  ec:	ecbd8b04 	vpop	{d8-d9}
  f0:	e3a00000 	mov	r0, #0
  f4:	e8bd8df0 	pop	{r4, r5, r6, r7, r8, sl, fp, pc}
  f8:	00000000 	andeq	r0, r0, r0
  fc:	40768000 	rsbsmi	r8, r6, r0
 100:	00000000 	andeq	r0, r0, r0
 104:	40668000 	rsbmi	r8, r6, r0
 108:	00000000 	andeq	r0, r0, r0
 10c:	c0668000 	rsbgt	r8, r6, r0
 110:	40768000 	rsbsmi	r8, r6, r0

Disassembly of section .text._ZN3vex10smartdrive13turnToHeadingEdNS_13rotationUnitsEb:

00000000 <vex::smartdrive::turnToHeading(double, vex::rotationUnits, bool)>:
   0:	e92d4030 	push	{r4, r5, lr}
   4:	e24dd01c 	sub	sp, sp, #28
   8:	e59dc028 	ldr	ip, [sp, #40]	; 0x28
   c:	e58dc000 	str	ip, [sp]
  10:	e1c04cd0 	ldrd	r4, [r0, #192]	; 0xc0
  14:	e1cd40f8 	strd	r4, [sp, #8]
  18:	e59010c8 	ldr	r1, [r0, #200]	; 0xc8
  1c:	e58d1010 	str	r1, [sp, #16]
  20:	e5dd102c 	ldrb	r1, [sp, #44]	; 0x2c
  24:	e58d1014 	str	r1, [sp, #20]
  28:	ebfffffe 	bl	0 <vex::smartdrive::turnToHeading(double, vex::rotationUnits, bool)>
  2c:	e28dd01c 	add	sp, sp, #28
  30:	e8bd8030 	pop	{r4, r5, pc}

Disassembly of section .text._ZN3vex10smartdrive14turnToRotationEdNS_13rotationUnitsEdNS_13velocityUnitsEb:

00000000 <vex::smartdrive::turnToRotation(double, vex::rotationUnits, double, vex::velocityUnits, bool)>:
   0:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ed2d8b02 	vpush	{d8}
   c:	e1cd83d0 	ldrd	r8, [sp, #48]	; 0x30
  10:	e59d7038 	ldr	r7, [sp, #56]	; 0x38
  14:	ec432b18 	vmov	d8, r2, r3
  18:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
  1c:	e5dd603c 	ldrb	r6, [sp, #60]	; 0x3c
  20:	e3530001 	cmp	r3, #1
  24:	0a000002 	beq	34 <vex::smartdrive::turnToRotation(double, vex::rotationUnits, double, vex::velocityUnits, bool)+0x34>
  28:	e3530063 	cmp	r3, #99	; 0x63
  2c:	0a00001a 	beq	9c <vex::smartdrive::turnToRotation(double, vex::rotationUnits, double, vex::velocityUnits, bool)+0x9c>
  30:	ea000001 	b	3c <vex::smartdrive::turnToRotation(double, vex::rotationUnits, double, vex::velocityUnits, bool)+0x3c>
  34:	eddf0b1b 	vldr	d16, [pc, #108]	; a8 <vex::smartdrive::turnToRotation(double, vex::rotationUnits, double, vex::velocityUnits, bool)+0xa8>
  38:	ee288b20 	vmul.f64	d8, d8, d16
  3c:	e59400d0 	ldr	r0, [r4, #208]	; 0xd0
  40:	e5903000 	ldr	r3, [r0]
  44:	e5933014 	ldr	r3, [r3, #20]
  48:	e12fff33 	blx	r3
  4c:	e2505000 	subs	r5, r0, #0
  50:	0a000002 	beq	60 <vex::smartdrive::turnToRotation(double, vex::rotationUnits, double, vex::velocityUnits, bool)+0x60>
  54:	e3a00032 	mov	r0, #50	; 0x32
  58:	ebfffffe 	bl	0 <vex::this_thread::sleep_for(unsigned long)>
  5c:	eafffff6 	b	3c <vex::smartdrive::turnToRotation(double, vex::rotationUnits, double, vex::velocityUnits, bool)+0x3c>
  60:	e1a00004 	mov	r0, r4
  64:	e1a01005 	mov	r1, r5
  68:	ebfffffe 	bl	0 <vex::smartdrive::turnToRotation(double, vex::rotationUnits, double, vex::velocityUnits, bool)>
  6c:	e58d5028 	str	r5, [sp, #40]	; 0x28
  70:	e1cd83f0 	strd	r8, [sp, #48]	; 0x30
  74:	e58d7038 	str	r7, [sp, #56]	; 0x38
  78:	e58d603c 	str	r6, [sp, #60]	; 0x3c
  7c:	ec410b30 	vmov	d16, r0, r1
  80:	e1a00004 	mov	r0, r4
  84:	e594110c 	ldr	r1, [r4, #268]	; 0x10c
  88:	ee388b60 	vsub.f64	d8, d8, d16
  8c:	ec532b18 	vmov	r2, r3, d8
  90:	ecbd8b02 	vpop	{d8}
  94:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
  98:	eafffffe 	b	0 <vex::smartdrive::turnToRotation(double, vex::rotationUnits, double, vex::velocityUnits, bool)>
  9c:	ecbd8b02 	vpop	{d8}
  a0:	e3a00000 	mov	r0, #0
  a4:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
  a8:	00000000 	andeq	r0, r0, r0
  ac:	40768000 	rsbsmi	r8, r6, r0

Disassembly of section .text._ZN3vex10smartdrive14turnToRotationEdNS_13rotationUnitsEb:

00000000 <vex::smartdrive::turnToRotation(double, vex::rotationUnits, bool)>:
   0:	e92d4030 	push	{r4, r5, lr}
   4:	e24dd01c 	sub	sp, sp, #28
   8:	e59dc028 	ldr	ip, [sp, #40]	; 0x28
   c:	e58dc000 	str	ip, [sp]
  10:	e1c04cd0 	ldrd	r4, [r0, #192]	; 0xc0
  14:	e1cd40f8 	strd	r4, [sp, #8]
  18:	e59010c8 	ldr	r1, [r0, #200]	; 0xc8
  1c:	e58d1010 	str	r1, [sp, #16]
  20:	e5dd102c 	ldrb	r1, [sp, #44]	; 0x2c
  24:	e58d1014 	str	r1, [sp, #20]
  28:	ebfffffe 	bl	0 <vex::smartdrive::turnToRotation(double, vex::rotationUnits, bool)>
  2c:	e28dd01c 	add	sp, sp, #28
  30:	e8bd8030 	pop	{r4, r5, pc}

Disassembly of section .text._ZN3vex10smartdrive7turnForENS_8turnTypeEdNS_13rotationUnitsEb:

00000000 <vex::smartdrive::turnFor(vex::turnType, double, vex::rotationUnits, bool)>:
   0:	e92d4030 	push	{r4, r5, lr}
   4:	e24dd01c 	sub	sp, sp, #28
   8:	e59de028 	ldr	lr, [sp, #40]	; 0x28
   c:	e58de000 	str	lr, [sp]
  10:	e1c04cd0 	ldrd	r4, [r0, #192]	; 0xc0
  14:	e1cd40f8 	strd	r4, [sp, #8]
  18:	e590c0c8 	ldr	ip, [r0, #200]	; 0xc8
  1c:	e58dc010 	str	ip, [sp, #16]
  20:	e5ddc02c 	ldrb	ip, [sp, #44]	; 0x2c
  24:	e58dc014 	str	ip, [sp, #20]
  28:	ebfffffe 	bl	0 <vex::smartdrive::turnFor(vex::turnType, double, vex::rotationUnits, bool)>
  2c:	e28dd01c 	add	sp, sp, #28
  30:	e8bd8030 	pop	{r4, r5, pc}

Disassembly of section .text._ZN3vex10smartdrive7turnForEdNS_13rotationUnitsEb:

00000000 <vex::smartdrive::turnFor(double, vex::rotationUnits, bool)>:
   0:	e5dd1004 	ldrb	r1, [sp, #4]
   4:	e58d1004 	str	r1, [sp, #4]
   8:	e590110c 	ldr	r1, [r0, #268]	; 0x10c
   c:	eafffffe 	b	0 <vex::smartdrive::turnFor(double, vex::rotationUnits, bool)>

Disassembly of section .text._ZN3vex10smartdrive7turnForEdNS_13rotationUnitsEdNS_13velocityUnitsEb:

00000000 <vex::smartdrive::turnFor(double, vex::rotationUnits, double, vex::velocityUnits, bool)>:
   0:	e92d4030 	push	{r4, r5, lr}
   4:	e5dd1020 	ldrb	r1, [sp, #32]
   8:	e58d1020 	str	r1, [sp, #32]
   c:	e8bd4030 	pop	{r4, r5, lr}
  10:	e590110c 	ldr	r1, [r0, #268]	; 0x10c
  14:	eafffffe 	b	0 <vex::smartdrive::turnFor(double, vex::rotationUnits, double, vex::velocityUnits, bool)>

Disassembly of section .text._ZN3vex10smartdrive8isMovingEv:

00000000 <vex::smartdrive::isMoving()>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <vex::drivetrain::isMoving()>
   c:	e3500000 	cmp	r0, #0
  10:	18bd8010 	popne	{r4, pc}
  14:	e1a00004 	mov	r0, r4
  18:	e8bd4010 	pop	{r4, lr}
  1c:	eafffffe 	b	0 <vex::smartdrive::isMoving()>

Disassembly of section .rodata.str1.1:

00000000 <.rodata.str1.1>:
   0:	54524d53 	ldrbpl	r4, [r2], #-3411	; 0xfffff2ad
   4:	56495244 	strbpl	r5, [r9], -r4, asr #4
   8:	Address 0x0000000000000008 is out of bounds.


Disassembly of section .rodata._ZTVN3vex10smartdriveE:

00000000 <vtable for vex::smartdrive>:
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	43434700 	movtmi	r4, #14080	; 0x3700
   4:	4728203a 			; <UNDEFINED> instruction: 0x4728203a
   8:	5420554e 	strtpl	r5, [r0], #-1358	; 0xfffffab2
   c:	736c6f6f 	cmnvc	ip, #444	; 0x1bc
  10:	726f6620 	rsbvc	r6, pc, #32, 12	; 0x2000000
  14:	4d524120 	ldfmie	f4, [r2, #-128]	; 0xffffff80
  18:	626d4520 	rsbvs	r4, sp, #32, 10	; 0x8000000
  1c:	65646465 	strbvs	r6, [r4, #-1125]!	; 0xfffffb9b
  20:	72502064 	subsvc	r2, r0, #100	; 0x64
  24:	7365636f 	cmnvc	r5, #-1140850687	; 0xbc000001
  28:	73726f73 	cmnvc	r2, #460	; 0x1cc
  2c:	2e342029 	cdpcs	0, 3, cr2, cr4, cr9, {1}
  30:	20332e39 	eorscs	r2, r3, r9, lsr lr
  34:	35313032 	ldrcc	r3, [r1, #-50]!	; 0xffffffce
  38:	39323530 	ldmdbcc	r2!, {r4, r5, r8, sl, ip, sp}
  3c:	65722820 	ldrbvs	r2, [r2, #-2080]!	; 0xfffff7e0
  40:	7361656c 	cmnvc	r1, #108, 10	; 0x1b000000
  44:	5b202965 	blpl	80a5e0 <vex::smartdrive::turnFor(vex::turnType, double, vex::rotationUnits, double, vex::velocityUnits, bool)+0x80a5e0>
  48:	2f4d5241 	svccs	0x004d5241
  4c:	65626d65 	strbvs	r6, [r2, #-3429]!	; 0xfffff29b
  50:	64656464 	strbtvs	r6, [r5], #-1124	; 0xfffffb9c
  54:	395f342d 	ldmdbcc	pc, {r0, r2, r3, r5, sl, ip, sp}^	; <UNPREDICTABLE>
  58:	6172622d 	cmnvs	r2, sp, lsr #4
  5c:	2068636e 	rsbcs	r6, r8, lr, ror #6
  60:	69766572 	ldmdbvs	r6!, {r1, r4, r5, r6, r8, sl, sp, lr}^
  64:	6e6f6973 			; <UNDEFINED> instruction: 0x6e6f6973
  68:	37323220 	ldrcc	r3, [r2, -r0, lsr #4]!
  6c:	5d373739 	ldcpl	7, cr3, [r7, #-228]!	; 0xffffff1c
	...

Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00003441 	andeq	r3, r0, r1, asr #8
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	0000002a 	andeq	r0, r0, sl, lsr #32
  10:	412d3705 			; <UNDEFINED> instruction: 0x412d3705
  14:	070a0600 	streq	r0, [sl, -r0, lsl #12]
  18:	09010841 	stmdbeq	r1, {r0, r6, fp}
  1c:	0c030a02 			; <UNDEFINED> instruction: 0x0c030a02
  20:	14041201 	strne	r1, [r4], #-513	; 0xfffffdff
  24:	17011501 	strne	r1, [r1, -r1, lsl #10]
  28:	19011803 	stmdbne	r1, {r0, r1, fp, ip}
  2c:	1e011a01 	vmlane.f32	s2, s2, s2
  30:	24012204 	strcs	r2, [r1], #-516	; 0xfffffdfc
  34:	Address 0x0000000000000034 is out of bounds.

