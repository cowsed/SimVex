
vex_drivetrain.cpp.obj:     file format elf32-littlearm


Disassembly of section .text._ZN3vex10drivetrainD2Ev:

00000000 <vex::drivetrain::~drivetrain()>:
   0:	e59f301c 	ldr	r3, [pc, #28]	; 24 <vex::drivetrain::~drivetrain()+0x24>
   4:	e92d4010 	push	{r4, lr}
   8:	e1a04000 	mov	r4, r0
   c:	e480304c 	str	r3, [r0], #76	; 0x4c
  10:	ebfffffe 	bl	0 <vex::motor_group::~motor_group()>
  14:	e2840004 	add	r0, r4, #4
  18:	ebfffffe 	bl	0 <vex::motor_group::~motor_group()>
  1c:	e1a00004 	mov	r0, r4
  20:	e8bd8010 	pop	{r4, pc}
  24:	00000008 	andeq	r0, r0, r8

Disassembly of section .text._ZN3vex10drivetrainD0Ev:

00000000 <vex::drivetrain::~drivetrain()>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <vex::drivetrain::~drivetrain()>
   c:	e1a00004 	mov	r0, r4
  10:	ebfffffe 	bl	0 <operator delete(void*)>
  14:	e1a00004 	mov	r0, r4
  18:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex10drivetrain8isMovingEv:

00000000 <vex::drivetrain::isMoving()>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e2800004 	add	r0, r0, #4
   c:	ebfffffe 	bl	0 <vex::motor_group::isSpinning()>
  10:	e3500000 	cmp	r0, #0
  14:	18bd8010 	popne	{r4, pc}
  18:	e284004c 	add	r0, r4, #76	; 0x4c
  1c:	e8bd4010 	pop	{r4, lr}
  20:	eafffffe 	b	0 <vex::motor_group::isSpinning()>

Disassembly of section .text._ZN3vex10drivetrain16setDriveVelocityEdNS_13velocityUnitsE:

00000000 <vex::drivetrain::setDriveVelocity(double, vex::velocityUnits)>:
   0:	edd00b2c 	vldr	d16, [r0, #176]	; 0xb0
   4:	e92d4030 	push	{r4, r5, lr}
   8:	e1a04000 	mov	r4, r0
   c:	ed2d8b02 	vpush	{d8}
  10:	e2800004 	add	r0, r0, #4
  14:	ec432b18 	vmov	d8, r2, r3
  18:	e24dd00c 	sub	sp, sp, #12
  1c:	eec80b20 	vdiv.f64	d16, d8, d16
  20:	e59d5020 	ldr	r5, [sp, #32]
  24:	e58d5000 	str	r5, [sp]
  28:	ec532b30 	vmov	r2, r3, d16
  2c:	ebfffffe 	bl	0 <vex::motor_group::setVelocity(double, vex::velocityUnits)>
  30:	e58d5020 	str	r5, [sp, #32]
  34:	edd40b2c 	vldr	d16, [r4, #176]	; 0xb0
  38:	e284004c 	add	r0, r4, #76	; 0x4c
  3c:	eec80b20 	vdiv.f64	d16, d8, d16
  40:	ec532b30 	vmov	r2, r3, d16
  44:	e28dd00c 	add	sp, sp, #12
  48:	ecbd8b02 	vpop	{d8}
  4c:	e8bd4030 	pop	{r4, r5, lr}
  50:	eafffffe 	b	0 <vex::motor_group::setVelocity(double, vex::velocityUnits)>

Disassembly of section .text._ZN3vex10drivetrain12setGearRatioEd:

00000000 <vex::drivetrain::setGearRatio(double)>:
   0:	ec432b30 	vmov	d16, r2, r3
   4:	e59f3044 	ldr	r3, [pc, #68]	; 50 <vex::drivetrain::setGearRatio(double)+0x50>
   8:	e92d4007 	push	{r0, r1, r2, lr}
   c:	eef00be0 	vabs.f64	d16, d16
  10:	eddf1b0c 	vldr	d17, [pc, #48]	; 48 <vex::drivetrain::setGearRatio(double)+0x48>
  14:	e5932000 	ldr	r2, [r3]
  18:	e3a03001 	mov	r3, #1
  1c:	eef40b61 	vcmp.f64	d16, d17
  20:	ee072a90 	vmov	s15, r2
  24:	eef1fa10 	vmrs	APSR_nzcv, fpscr
  28:	4ef00b61 	vmovmi.f64	d16, d17
  2c:	edc00b2c 	vstr	d16, [r0, #176]	; 0xb0
  30:	e58d3000 	str	r3, [sp]
  34:	eef80be7 	vcvt.f64.s32	d16, s15
  38:	ec532b30 	vmov	r2, r3, d16
  3c:	ebfffffe 	bl	0 <vex::drivetrain::setGearRatio(double)>
  40:	e28dd00c 	add	sp, sp, #12
  44:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)
  48:	47ae147b 			; <UNDEFINED> instruction: 0x47ae147b
  4c:	3f847ae1 	svccc	0x00847ae1
  50:	00000000 	andeq	r0, r0, r0

Disassembly of section .text._ZN3vex10drivetrain16setDriveVelocityEdNS_12percentUnitsE:

00000000 <vex::drivetrain::setDriveVelocity(double, vex::percentUnits)>:
   0:	eafffffe 	b	0 <vex::drivetrain::setDriveVelocity(double, vex::percentUnits)>

Disassembly of section .text._ZN3vex10drivetrain11setStoppingENS_9brakeTypeE:

00000000 <vex::drivetrain::setStopping(vex::brakeType)>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e1a05001 	mov	r5, r1
   c:	e2800004 	add	r0, r0, #4
  10:	ebfffffe 	bl	0 <vex::motor_group::setStopping(vex::brakeType)>
  14:	e284004c 	add	r0, r4, #76	; 0x4c
  18:	e1a01005 	mov	r1, r5
  1c:	e8bd4038 	pop	{r3, r4, r5, lr}
  20:	eafffffe 	b	0 <vex::motor_group::setStopping(vex::brakeType)>

Disassembly of section .text._ZN3vex10drivetrain10setTimeoutElNS_9timeUnitsE:

00000000 <vex::drivetrain::setTimeout(long, vex::timeUnits)>:
   0:	e16f3f12 	clz	r3, r2
   4:	e3510000 	cmp	r1, #0
   8:	e92d4070 	push	{r4, r5, r6, lr}
   c:	e1a032a3 	lsr	r3, r3, #5
  10:	d3a03000 	movle	r3, #0
  14:	e3530000 	cmp	r3, #0
  18:	e1a05000 	mov	r5, r0
  1c:	e1a06002 	mov	r6, r2
  20:	e1a04001 	mov	r4, r1
  24:	0a000005 	beq	40 <vex::drivetrain::setTimeout(long, vex::timeUnits)+0x40>
  28:	e59f3048 	ldr	r3, [pc, #72]	; 78 <vex::drivetrain::setTimeout(long, vex::timeUnits)+0x78>
  2c:	e1510003 	cmp	r1, r3
  30:	a1a04003 	movge	r4, r3
  34:	e3a03ffa 	mov	r3, #1000	; 0x3e8
  38:	e0030493 	mul	r3, r3, r4
  3c:	ea000003 	b	50 <vex::drivetrain::setTimeout(long, vex::timeUnits)+0x50>
  40:	e3510000 	cmp	r1, #0
  44:	c58010b8 	strgt	r1, [r0, #184]	; 0xb8
  48:	ca000001 	bgt	54 <vex::drivetrain::setTimeout(long, vex::timeUnits)+0x54>
  4c:	e3e03102 	mvn	r3, #-2147483648	; 0x80000000
  50:	e58530b8 	str	r3, [r5, #184]	; 0xb8
  54:	e2850004 	add	r0, r5, #4
  58:	e1a01004 	mov	r1, r4
  5c:	e1a02006 	mov	r2, r6
  60:	ebfffffe 	bl	0 <vex::motor_group::setTimeout(long, vex::timeUnits)>
  64:	e285004c 	add	r0, r5, #76	; 0x4c
  68:	e1a01004 	mov	r1, r4
  6c:	e1a02006 	mov	r2, r6
  70:	e8bd4070 	pop	{r4, r5, r6, lr}
  74:	eafffffe 	b	0 <vex::motor_group::setTimeout(long, vex::timeUnits)>
  78:	000f4240 	andeq	r4, pc, r0, asr #4

Disassembly of section .text._ZN3vex10drivetrain10timeoutGetEv:

00000000 <vex::drivetrain::timeoutGet()>:
   0:	e59000b8 	ldr	r0, [r0, #184]	; 0xb8
   4:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex10drivetrain5driveENS_13directionTypeE:

00000000 <vex::drivetrain::drive(vex::directionType)>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e1a05001 	mov	r5, r1
   c:	e2800004 	add	r0, r0, #4
  10:	ebfffffe 	bl	0 <vex::motor_group::spin(vex::directionType)>
  14:	e284004c 	add	r0, r4, #76	; 0x4c
  18:	e1a01005 	mov	r1, r5
  1c:	ebfffffe 	bl	0 <vex::motor_group::spin(vex::directionType)>
  20:	e3e03000 	mvn	r3, #0
  24:	e5c430cc 	strb	r3, [r4, #204]	; 0xcc
  28:	e8bd8038 	pop	{r3, r4, r5, pc}

Disassembly of section .text._ZN3vex10drivetrain5driveENS_13directionTypeEdNS_13velocityUnitsE:

00000000 <vex::drivetrain::drive(vex::directionType, double, vex::velocityUnits)>:
   0:	edd00b2c 	vldr	d16, [r0, #176]	; 0xb0
   4:	e92d4070 	push	{r4, r5, r6, lr}
   8:	e1a04000 	mov	r4, r0
   c:	ed2d8b02 	vpush	{d8}
  10:	e2800004 	add	r0, r0, #4
  14:	e1a06001 	mov	r6, r1
  18:	ec432b18 	vmov	d8, r2, r3
  1c:	e24dd008 	sub	sp, sp, #8
  20:	eec80b20 	vdiv.f64	d16, d8, d16
  24:	e59d5020 	ldr	r5, [sp, #32]
  28:	e58d5000 	str	r5, [sp]
  2c:	ec532b30 	vmov	r2, r3, d16
  30:	ebfffffe 	bl	0 <vex::motor_group::spin(vex::directionType, double, vex::velocityUnits)>
  34:	e58d5000 	str	r5, [sp]
  38:	edd40b2c 	vldr	d16, [r4, #176]	; 0xb0
  3c:	e284004c 	add	r0, r4, #76	; 0x4c
  40:	e1a01006 	mov	r1, r6
  44:	eec80b20 	vdiv.f64	d16, d8, d16
  48:	ec532b30 	vmov	r2, r3, d16
  4c:	ebfffffe 	bl	0 <vex::motor_group::spin(vex::directionType, double, vex::velocityUnits)>
  50:	e3e03000 	mvn	r3, #0
  54:	e5c430cc 	strb	r3, [r4, #204]	; 0xcc
  58:	e28dd008 	add	sp, sp, #8
  5c:	ecbd8b02 	vpop	{d8}
  60:	e8bd8070 	pop	{r4, r5, r6, pc}

Disassembly of section .text._ZN3vex10drivetrain4turnENS_8turnTypeE:

00000000 <vex::drivetrain::turn(vex::turnType)>:
   0:	e59030c8 	ldr	r3, [r0, #200]	; 0xc8
   4:	e92d4037 	push	{r0, r1, r2, r4, r5, lr}
   8:	e1a05001 	mov	r5, r1
   c:	e16f1f11 	clz	r1, r1
  10:	e1a04000 	mov	r4, r0
  14:	e58d3000 	str	r3, [sp]
  18:	e2800004 	add	r0, r0, #4
  1c:	e1c42cd0 	ldrd	r2, [r4, #192]	; 0xc0
  20:	e1a012a1 	lsr	r1, r1, #5
  24:	ebfffffe 	bl	0 <vex::motor_group::spin(vex::directionType, double, vex::velocityUnits)>
  28:	e59430c8 	ldr	r3, [r4, #200]	; 0xc8
  2c:	e2951000 	adds	r1, r5, #0
  30:	e284004c 	add	r0, r4, #76	; 0x4c
  34:	e58d3000 	str	r3, [sp]
  38:	13a01001 	movne	r1, #1
  3c:	e1c42cd0 	ldrd	r2, [r4, #192]	; 0xc0
  40:	ebfffffe 	bl	0 <vex::motor_group::spin(vex::directionType, double, vex::velocityUnits)>
  44:	e5c450cc 	strb	r5, [r4, #204]	; 0xcc
  48:	e28dd00c 	add	sp, sp, #12
  4c:	e8bd8030 	pop	{r4, r5, pc}

Disassembly of section .text._ZN3vex10drivetrain15setTurnVelocityEdNS_13velocityUnitsE:

00000000 <vex::drivetrain::setTurnVelocity(double, vex::velocityUnits)>:
   0:	edd00b2c 	vldr	d16, [r0, #176]	; 0xb0
   4:	e5d010cc 	ldrb	r1, [r0, #204]	; 0xcc
   8:	ec432b31 	vmov	d17, r2, r3
   c:	e59d3000 	ldr	r3, [sp]
  10:	e35100ff 	cmp	r1, #255	; 0xff
  14:	eec10ba0 	vdiv.f64	d16, d17, d16
  18:	e58030c8 	str	r3, [r0, #200]	; 0xc8
  1c:	edc00b30 	vstr	d16, [r0, #192]	; 0xc0
  20:	012fff1e 	bxeq	lr
  24:	eafffffe 	b	0 <vex::drivetrain::setTurnVelocity(double, vex::velocityUnits)>

Disassembly of section .text._ZN3vex10drivetrain15setTurnVelocityEdNS_12percentUnitsE:

00000000 <vex::drivetrain::setTurnVelocity(double, vex::percentUnits)>:
   0:	eafffffe 	b	0 <vex::drivetrain::setTurnVelocity(double, vex::percentUnits)>

Disassembly of section .text._ZN3vex10drivetrain4turnENS_8turnTypeEdNS_13velocityUnitsE:

00000000 <vex::drivetrain::turn(vex::turnType, double, vex::velocityUnits)>:
   0:	edd00b2c 	vldr	d16, [r0, #176]	; 0xb0
   4:	e92d4070 	push	{r4, r5, r6, lr}
   8:	e1a05001 	mov	r5, r1
   c:	ed2d8b02 	vpush	{d8}
  10:	e16f1f11 	clz	r1, r1
  14:	e1a04000 	mov	r4, r0
  18:	e2800004 	add	r0, r0, #4
  1c:	e1a012a1 	lsr	r1, r1, #5
  20:	ec432b18 	vmov	d8, r2, r3
  24:	e24dd008 	sub	sp, sp, #8
  28:	eec80b20 	vdiv.f64	d16, d8, d16
  2c:	e59d6020 	ldr	r6, [sp, #32]
  30:	e58d6000 	str	r6, [sp]
  34:	ec532b30 	vmov	r2, r3, d16
  38:	ebfffffe 	bl	0 <vex::motor_group::spin(vex::directionType, double, vex::velocityUnits)>
  3c:	e2951000 	adds	r1, r5, #0
  40:	edd40b2c 	vldr	d16, [r4, #176]	; 0xb0
  44:	e284004c 	add	r0, r4, #76	; 0x4c
  48:	e58d6000 	str	r6, [sp]
  4c:	13a01001 	movne	r1, #1
  50:	eec80b20 	vdiv.f64	d16, d8, d16
  54:	ec532b30 	vmov	r2, r3, d16
  58:	ebfffffe 	bl	0 <vex::motor_group::spin(vex::directionType, double, vex::velocityUnits)>
  5c:	e5c450cc 	strb	r5, [r4, #204]	; 0xcc
  60:	e28dd008 	add	sp, sp, #8
  64:	ecbd8b02 	vpop	{d8}
  68:	e8bd8070 	pop	{r4, r5, r6, pc}

Disassembly of section .text._ZN3vex10drivetrain6isDoneEv:

00000000 <vex::drivetrain::isDone()>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vex::drivetrain::isDone()>
   8:	e2200001 	eor	r0, r0, #1
   c:	e6ef0070 	uxtb	r0, r0
  10:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text._ZN3vex10drivetrain4stopEv:

00000000 <vex::drivetrain::stop()>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e2800004 	add	r0, r0, #4
   c:	ebfffffe 	bl	0 <vex::motor_group::stop()>
  10:	e284004c 	add	r0, r4, #76	; 0x4c
  14:	ebfffffe 	bl	0 <vex::motor_group::stop()>
  18:	e3e03000 	mvn	r3, #0
  1c:	e5c430cc 	strb	r3, [r4, #204]	; 0xcc
  20:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex10drivetrain4stopENS_9brakeTypeE:

00000000 <vex::drivetrain::stop(vex::brakeType)>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e1a05001 	mov	r5, r1
   c:	e2800004 	add	r0, r0, #4
  10:	ebfffffe 	bl	0 <vex::motor_group::stop(vex::brakeType)>
  14:	e284004c 	add	r0, r4, #76	; 0x4c
  18:	e1a01005 	mov	r1, r5
  1c:	ebfffffe 	bl	0 <vex::motor_group::stop(vex::brakeType)>
  20:	e3e03000 	mvn	r3, #0
  24:	e5c430cc 	strb	r3, [r4, #204]	; 0xcc
  28:	e8bd8038 	pop	{r3, r4, r5, pc}

Disassembly of section .text._ZN3vex10drivetrain6arcadeEddNS_12percentUnitsE:

00000000 <vex::drivetrain::arcade(double, double, vex::percentUnits)>:
   0:	e92d4030 	push	{r4, r5, lr}
   4:	e3a01000 	mov	r1, #0
   8:	ed2d8b04 	vpush	{d8-d9}
   c:	e1a04000 	mov	r4, r0
  10:	e2800004 	add	r0, r0, #4
  14:	ec432b19 	vmov	d9, r2, r3
  18:	e24dd00c 	sub	sp, sp, #12
  1c:	ed9d8b0a 	vldr	d8, [sp, #40]	; 0x28
  20:	e59d5030 	ldr	r5, [sp, #48]	; 0x30
  24:	ee790b08 	vadd.f64	d16, d9, d8
  28:	e58d5000 	str	r5, [sp]
  2c:	ec532b30 	vmov	r2, r3, d16
  30:	ebfffffe 	bl	0 <vex::motor_group::spin(vex::directionType, double, vex::velocityUnits)>
  34:	e58d5000 	str	r5, [sp]
  38:	ee790b48 	vsub.f64	d16, d9, d8
  3c:	e284004c 	add	r0, r4, #76	; 0x4c
  40:	e3a01000 	mov	r1, #0
  44:	ec532b30 	vmov	r2, r3, d16
  48:	ebfffffe 	bl	0 <vex::motor_group::spin(vex::directionType, double, vex::velocityUnits)>
  4c:	e3e03000 	mvn	r3, #0
  50:	e5c430cc 	strb	r3, [r4, #204]	; 0xcc
  54:	e28dd00c 	add	sp, sp, #12
  58:	ecbd8b04 	vpop	{d8-d9}
  5c:	e8bd8030 	pop	{r4, r5, pc}

Disassembly of section .text._ZN3vex10drivetrain8velocityENS_13velocityUnitsE:

00000000 <vex::drivetrain::velocity(vex::velocityUnits)>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ed2d8b02 	vpush	{d8}
   c:	e2800004 	add	r0, r0, #4
  10:	e1a05001 	mov	r5, r1
  14:	ebfffffe 	bl	0 <vex::motor_group::velocity(vex::velocityUnits)>
  18:	ec410b18 	vmov	d8, r0, r1
  1c:	e284004c 	add	r0, r4, #76	; 0x4c
  20:	e1a01005 	mov	r1, r5
  24:	ebfffffe 	bl	0 <vex::motor_group::velocity(vex::velocityUnits)>
  28:	ec410b30 	vmov	d16, r0, r1
  2c:	ee388b20 	vadd.f64	d8, d8, d16
  30:	eef60b00 	vmov.f64	d16, #96	; 0x3f000000  0.5
  34:	ee680b20 	vmul.f64	d16, d8, d16
  38:	ecbd8b02 	vpop	{d8}
  3c:	ec510b30 	vmov	r0, r1, d16
  40:	e8bd8038 	pop	{r3, r4, r5, pc}

Disassembly of section .text._ZN3vex10drivetrain7currentENS_12currentUnitsE:

00000000 <vex::drivetrain::current(vex::currentUnits)>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ed2d8b02 	vpush	{d8}
   c:	e2800004 	add	r0, r0, #4
  10:	e1a05001 	mov	r5, r1
  14:	ebfffffe 	bl	0 <vex::motor_group::current(vex::currentUnits)>
  18:	ec410b18 	vmov	d8, r0, r1
  1c:	e284004c 	add	r0, r4, #76	; 0x4c
  20:	e1a01005 	mov	r1, r5
  24:	ebfffffe 	bl	0 <vex::motor_group::current(vex::currentUnits)>
  28:	ec410b30 	vmov	d16, r0, r1
  2c:	ee780b20 	vadd.f64	d16, d8, d16
  30:	ecbd8b02 	vpop	{d8}
  34:	ec510b30 	vmov	r0, r1, d16
  38:	e8bd8038 	pop	{r3, r4, r5, pc}

Disassembly of section .text._ZN3vex10drivetrain7currentENS_12percentUnitsE:

00000000 <vex::drivetrain::current(vex::percentUnits)>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ed2d8b02 	vpush	{d8}
   c:	e2800004 	add	r0, r0, #4
  10:	e1a05001 	mov	r5, r1
  14:	ebfffffe 	bl	0 <vex::motor_group::current(vex::percentUnits)>
  18:	ec410b18 	vmov	d8, r0, r1
  1c:	e284004c 	add	r0, r4, #76	; 0x4c
  20:	e1a01005 	mov	r1, r5
  24:	ebfffffe 	bl	0 <vex::motor_group::current(vex::percentUnits)>
  28:	ec410b30 	vmov	d16, r0, r1
  2c:	ee388b20 	vadd.f64	d8, d8, d16
  30:	eef60b00 	vmov.f64	d16, #96	; 0x3f000000  0.5
  34:	ee680b20 	vmul.f64	d16, d8, d16
  38:	ecbd8b02 	vpop	{d8}
  3c:	ec510b30 	vmov	r0, r1, d16
  40:	e8bd8038 	pop	{r3, r4, r5, pc}

Disassembly of section .text._ZN3vex10drivetrain7voltageENS_12voltageUnitsE:

00000000 <vex::drivetrain::voltage(vex::voltageUnits)>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ed2d8b02 	vpush	{d8}
   c:	e2800004 	add	r0, r0, #4
  10:	e1a05001 	mov	r5, r1
  14:	ebfffffe 	bl	0 <vex::motor_group::voltage(vex::voltageUnits)>
  18:	ec410b18 	vmov	d8, r0, r1
  1c:	e284004c 	add	r0, r4, #76	; 0x4c
  20:	e1a01005 	mov	r1, r5
  24:	ebfffffe 	bl	0 <vex::motor_group::voltage(vex::voltageUnits)>
  28:	ec410b30 	vmov	d16, r0, r1
  2c:	ee388b20 	vadd.f64	d8, d8, d16
  30:	eef60b00 	vmov.f64	d16, #96	; 0x3f000000  0.5
  34:	ee680b20 	vmul.f64	d16, d8, d16
  38:	ecbd8b02 	vpop	{d8}
  3c:	ec510b30 	vmov	r0, r1, d16
  40:	e8bd8038 	pop	{r3, r4, r5, pc}

Disassembly of section .text._ZN3vex10drivetrain5powerENS_10powerUnitsE:

00000000 <vex::drivetrain::power(vex::powerUnits)>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ed2d8b02 	vpush	{d8}
   c:	e2800004 	add	r0, r0, #4
  10:	e1a05001 	mov	r5, r1
  14:	ebfffffe 	bl	0 <vex::motor_group::power(vex::powerUnits)>
  18:	ec410b18 	vmov	d8, r0, r1
  1c:	e284004c 	add	r0, r4, #76	; 0x4c
  20:	e1a01005 	mov	r1, r5
  24:	ebfffffe 	bl	0 <vex::motor_group::power(vex::powerUnits)>
  28:	ec410b30 	vmov	d16, r0, r1
  2c:	ee780b20 	vadd.f64	d16, d8, d16
  30:	ecbd8b02 	vpop	{d8}
  34:	ec510b30 	vmov	r0, r1, d16
  38:	e8bd8038 	pop	{r3, r4, r5, pc}

Disassembly of section .text._ZN3vex10drivetrain6torqueENS_11torqueUnitsE:

00000000 <vex::drivetrain::torque(vex::torqueUnits)>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ed2d8b02 	vpush	{d8}
   c:	e2800004 	add	r0, r0, #4
  10:	e1a05001 	mov	r5, r1
  14:	ebfffffe 	bl	0 <vex::motor_group::torque(vex::torqueUnits)>
  18:	ec410b18 	vmov	d8, r0, r1
  1c:	e284004c 	add	r0, r4, #76	; 0x4c
  20:	e1a01005 	mov	r1, r5
  24:	ebfffffe 	bl	0 <vex::motor_group::torque(vex::torqueUnits)>
  28:	ec410b30 	vmov	d16, r0, r1
  2c:	ee780b20 	vadd.f64	d16, d8, d16
  30:	ecbd8b02 	vpop	{d8}
  34:	ec510b30 	vmov	r0, r1, d16
  38:	e8bd8038 	pop	{r3, r4, r5, pc}

Disassembly of section .text._ZN3vex10drivetrain10efficiencyENS_12percentUnitsE:

00000000 <vex::drivetrain::efficiency(vex::percentUnits)>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ed2d8b02 	vpush	{d8}
   c:	e2800004 	add	r0, r0, #4
  10:	e1a05001 	mov	r5, r1
  14:	ebfffffe 	bl	0 <vex::motor_group::efficiency(vex::percentUnits)>
  18:	ec410b18 	vmov	d8, r0, r1
  1c:	e284004c 	add	r0, r4, #76	; 0x4c
  20:	e1a01005 	mov	r1, r5
  24:	ebfffffe 	bl	0 <vex::motor_group::efficiency(vex::percentUnits)>
  28:	ec410b30 	vmov	d16, r0, r1
  2c:	ee388b20 	vadd.f64	d8, d8, d16
  30:	eef60b00 	vmov.f64	d16, #96	; 0x3f000000  0.5
  34:	ee680b20 	vmul.f64	d16, d8, d16
  38:	ecbd8b02 	vpop	{d8}
  3c:	ec510b30 	vmov	r0, r1, d16
  40:	e8bd8038 	pop	{r3, r4, r5, pc}

Disassembly of section .text._ZN3vex10drivetrain11temperatureENS_12percentUnitsE:

00000000 <vex::drivetrain::temperature(vex::percentUnits)>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ed2d8b02 	vpush	{d8}
   c:	e2800004 	add	r0, r0, #4
  10:	e1a05001 	mov	r5, r1
  14:	ebfffffe 	bl	0 <vex::motor_group::temperature(vex::percentUnits)>
  18:	ec410b18 	vmov	d8, r0, r1
  1c:	e284004c 	add	r0, r4, #76	; 0x4c
  20:	e1a01005 	mov	r1, r5
  24:	ebfffffe 	bl	0 <vex::motor_group::temperature(vex::percentUnits)>
  28:	ec410b30 	vmov	d16, r0, r1
  2c:	ee388b20 	vadd.f64	d8, d8, d16
  30:	eef60b00 	vmov.f64	d16, #96	; 0x3f000000  0.5
  34:	ee680b20 	vmul.f64	d16, d8, d16
  38:	ecbd8b02 	vpop	{d8}
  3c:	ec510b30 	vmov	r0, r1, d16
  40:	e8bd8038 	pop	{r3, r4, r5, pc}

Disassembly of section .text._ZN3vex10drivetrain21_waitForCompletionAllEv:

00000000 <vex::drivetrain::_waitForCompletionAll()>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e59050b8 	ldr	r5, [r0, #184]	; 0xb8
   c:	e3550000 	cmp	r5, #0
  10:	ba000007 	blt	34 <vex::drivetrain::_waitForCompletionAll()+0x34>
  14:	e1a00004 	mov	r0, r4
  18:	ebfffffe 	bl	0 <vex::drivetrain::_waitForCompletionAll()>
  1c:	e3500000 	cmp	r0, #0
  20:	0a000003 	beq	34 <vex::drivetrain::_waitForCompletionAll()+0x34>
  24:	e3a0000a 	mov	r0, #10
  28:	e245500a 	sub	r5, r5, #10
  2c:	ebfffffe 	bl	0 <vex::this_thread::sleep_for(unsigned long)>
  30:	eafffff5 	b	c <vex::drivetrain::_waitForCompletionAll()+0xc>
  34:	e2840004 	add	r0, r4, #4
  38:	ebfffffe 	bl	0 <vex::motor_group::isSpinningMode()>
  3c:	e3500000 	cmp	r0, #0
  40:	1a000003 	bne	54 <vex::drivetrain::_waitForCompletionAll()+0x54>
  44:	e284004c 	add	r0, r4, #76	; 0x4c
  48:	ebfffffe 	bl	0 <vex::motor_group::isSpinningMode()>
  4c:	e3500000 	cmp	r0, #0
  50:	08bd8038 	popeq	{r3, r4, r5, pc}
  54:	e1a00004 	mov	r0, r4
  58:	ebfffffe 	bl	0 <vex::drivetrain::_waitForCompletionAll()>
  5c:	e1a05000 	mov	r5, r0
  60:	e1a00004 	mov	r0, r4
  64:	ebfffffe 	bl	0 <vex::drivetrain::_waitForCompletionAll()>
  68:	e3500000 	cmp	r0, #0
  6c:	1a000001 	bne	78 <vex::drivetrain::_waitForCompletionAll()+0x78>
  70:	e1a00004 	mov	r0, r4
  74:	ebfffffe 	bl	0 <vex::drivetrain::_waitForCompletionAll()>
  78:	e1a00005 	mov	r0, r5
  7c:	e8bd8038 	pop	{r3, r4, r5, pc}

Disassembly of section .text._ZN3vex10drivetrain12distanceToMmEdNS_13distanceUnitsE:

00000000 <vex::drivetrain::distanceToMm(double, vex::distanceUnits)>:
   0:	ec432b30 	vmov	d16, r2, r3
   4:	e59d3000 	ldr	r3, [sp]
   8:	e3530001 	cmp	r3, #1
   c:	0a000003 	beq	20 <vex::drivetrain::distanceToMm(double, vex::distanceUnits)+0x20>
  10:	e3530002 	cmp	r3, #2
  14:	1a000003 	bne	28 <vex::drivetrain::distanceToMm(double, vex::distanceUnits)+0x28>
  18:	eef21b04 	vmov.f64	d17, #36	; 0x41200000  10.0
  1c:	ea000000 	b	24 <vex::drivetrain::distanceToMm(double, vex::distanceUnits)+0x24>
  20:	eddf1b02 	vldr	d17, [pc, #8]	; 30 <vex::drivetrain::distanceToMm(double, vex::distanceUnits)+0x30>
  24:	ee600ba1 	vmul.f64	d16, d16, d17
  28:	ec510b30 	vmov	r0, r1, d16
  2c:	e12fff1e 	bx	lr
  30:	66666666 	strbtvs	r6, [r6], -r6, ror #12
  34:	40396666 	eorsmi	r6, r9, r6, ror #12

Disassembly of section .text._ZN3vex10drivetrainC2ERNS_11motor_groupES2_dddNS_13distanceUnitsEd:

00000000 <vex::drivetrain::drivetrain(vex::motor_group&, vex::motor_group&, double, double, double, vex::distanceUnits, double)>:
   0:	e59f30e8 	ldr	r3, [pc, #232]	; f0 <vex::drivetrain::drivetrain(vex::motor_group&, vex::motor_group&, double, double, double, vex::distanceUnits, double)+0xf0>
   4:	e92d4073 	push	{r0, r1, r4, r5, r6, lr}
   8:	e1a04000 	mov	r4, r0
   c:	e5803000 	str	r3, [r0]
  10:	e1a05002 	mov	r5, r2
  14:	e4913004 	ldr	r3, [r1], #4
  18:	e59d6030 	ldr	r6, [sp, #48]	; 0x30
  1c:	e5a03004 	str	r3, [r0, #4]!
  20:	e2800004 	add	r0, r0, #4
  24:	ebfffffe 	bl	0 <vex::motor_group::motor_group_motors::motor_group_motors(vex::motor_group::motor_group_motors const&)>
  28:	e1a01005 	mov	r1, r5
  2c:	e4913004 	ldr	r3, [r1], #4
  30:	e2840050 	add	r0, r4, #80	; 0x50
  34:	e584304c 	str	r3, [r4, #76]	; 0x4c
  38:	ebfffffe 	bl	0 <vex::motor_group::motor_group_motors::motor_group_motors(vex::motor_group::motor_group_motors const&)>
  3c:	e3e03102 	mvn	r3, #-2147483648	; 0x80000000
  40:	e58d6000 	str	r6, [sp]
  44:	e1a00004 	mov	r0, r4
  48:	e58430b8 	str	r3, [r4, #184]	; 0xb8
  4c:	e1cd21d8 	ldrd	r2, [sp, #24]
  50:	ebfffffe 	bl	0 <vex::drivetrain::drivetrain(vex::motor_group&, vex::motor_group&, double, double, double, vex::distanceUnits, double)>
  54:	e58d6000 	str	r6, [sp]
  58:	e1cd22d0 	ldrd	r2, [sp, #32]
  5c:	e1c409f8 	strd	r0, [r4, #152]	; 0x98
  60:	e1a00004 	mov	r0, r4
  64:	ebfffffe 	bl	0 <vex::drivetrain::drivetrain(vex::motor_group&, vex::motor_group&, double, double, double, vex::distanceUnits, double)>
  68:	eddd1b0a 	vldr	d17, [sp, #40]	; 0x28
  6c:	eef51bc0 	vcmpe.f64	d17, #0.0
  70:	eef1fa10 	vmrs	APSR_nzcv, fpscr
  74:	ec410b30 	vmov	d16, r0, r1
  78:	e1c40af0 	strd	r0, [r4, #160]	; 0xa0
  7c:	4ddf1b19 	vldrmi	d17, [pc, #100]	; e8 <vex::drivetrain::drivetrain(vex::motor_group&, vex::motor_group&, double, double, double, vex::distanceUnits, double)+0xe8>
  80:	4ec00ba1 	vdivmi.f64	d16, d16, d17
  84:	4dc40b2a 	vstrmi	d16, [r4, #168]	; 0xa8
  88:	4a000004 	bmi	a0 <vex::drivetrain::drivetrain(vex::motor_group&, vex::motor_group&, double, double, double, vex::distanceUnits, double)+0xa0>
  8c:	e58d6000 	str	r6, [sp]
  90:	e1a00004 	mov	r0, r4
  94:	e1cd22d8 	ldrd	r2, [sp, #40]	; 0x28
  98:	ebfffffe 	bl	0 <vex::drivetrain::drivetrain(vex::motor_group&, vex::motor_group&, double, double, double, vex::distanceUnits, double)>
  9c:	e1c40af8 	strd	r0, [r4, #168]	; 0xa8
  a0:	e1a00004 	mov	r0, r4
  a4:	e3e03000 	mvn	r3, #0
  a8:	e5c430cc 	strb	r3, [r4, #204]	; 0xcc
  ac:	e1cd23d8 	ldrd	r2, [sp, #56]	; 0x38
  b0:	ebfffffe 	bl	0 <vex::drivetrain::drivetrain(vex::motor_group&, vex::motor_group&, double, double, double, vex::distanceUnits, double)>
  b4:	e59f3038 	ldr	r3, [pc, #56]	; f4 <vex::drivetrain::drivetrain(vex::motor_group&, vex::motor_group&, double, double, double, vex::distanceUnits, double)+0xf4>
  b8:	e1a00004 	mov	r0, r4
  bc:	e5932000 	ldr	r2, [r3]
  c0:	e3a03001 	mov	r3, #1
  c4:	e58d3000 	str	r3, [sp]
  c8:	ee072a90 	vmov	s15, r2
  cc:	eef80be7 	vcvt.f64.s32	d16, s15
  d0:	ec532b30 	vmov	r2, r3, d16
  d4:	ebfffffe 	bl	0 <vex::drivetrain::drivetrain(vex::motor_group&, vex::motor_group&, double, double, double, vex::distanceUnits, double)>
  d8:	e1a00004 	mov	r0, r4
  dc:	e28dd008 	add	sp, sp, #8
  e0:	e8bd8070 	pop	{r4, r5, r6, pc}
  e4:	e320f000 	nop	{0}
  e8:	66666666 	strbtvs	r6, [r6], -r6, ror #12
  ec:	40026666 	andmi	r6, r2, r6, ror #12
  f0:	00000008 	andeq	r0, r0, r8
  f4:	00000000 	andeq	r0, r0, r0

Disassembly of section .text._ZN3vex10drivetrainC2ERNS_5motorES2_dddNS_13distanceUnitsEd:

00000000 <vex::drivetrain::drivetrain(vex::motor&, vex::motor&, double, double, double, vex::distanceUnits, double)>:
   0:	e59f3108 	ldr	r3, [pc, #264]	; 110 <vex::drivetrain::drivetrain(vex::motor&, vex::motor&, double, double, double, vex::distanceUnits, double)+0x110>
   4:	e92d41f3 	push	{r0, r1, r4, r5, r6, r7, r8, lr}
   8:	e1a05000 	mov	r5, r0
   c:	e4853004 	str	r3, [r5], #4
  10:	e1a04000 	mov	r4, r0
  14:	e1a08001 	mov	r8, r1
  18:	e1a00005 	mov	r0, r5
  1c:	e1a07002 	mov	r7, r2
  20:	e59d6038 	ldr	r6, [sp, #56]	; 0x38
  24:	ebfffffe 	bl	0 <vex::motor_group::motor_group()>
  28:	e1a01008 	mov	r1, r8
  2c:	e1a00005 	mov	r0, r5
  30:	ebfffffe 	bl	0 <vex::motor_group::_addMotor(vex::motor&)>
  34:	e1a00005 	mov	r0, r5
  38:	e284504c 	add	r5, r4, #76	; 0x4c
  3c:	ebfffffe 	bl	0 <vex::motor_group::_addMotor()>
  40:	e1a00005 	mov	r0, r5
  44:	ebfffffe 	bl	0 <vex::motor_group::motor_group()>
  48:	e1a01007 	mov	r1, r7
  4c:	e1a00005 	mov	r0, r5
  50:	ebfffffe 	bl	0 <vex::motor_group::_addMotor(vex::motor&)>
  54:	e1a00005 	mov	r0, r5
  58:	ebfffffe 	bl	0 <vex::motor_group::_addMotor()>
  5c:	e3e03102 	mvn	r3, #-2147483648	; 0x80000000
  60:	e58d6000 	str	r6, [sp]
  64:	e1a00004 	mov	r0, r4
  68:	e58430b8 	str	r3, [r4, #184]	; 0xb8
  6c:	e1cd22d0 	ldrd	r2, [sp, #32]
  70:	ebfffffe 	bl	0 <vex::drivetrain::drivetrain(vex::motor&, vex::motor&, double, double, double, vex::distanceUnits, double)>
  74:	e58d6000 	str	r6, [sp]
  78:	e1cd22d8 	ldrd	r2, [sp, #40]	; 0x28
  7c:	e1c409f8 	strd	r0, [r4, #152]	; 0x98
  80:	e1a00004 	mov	r0, r4
  84:	ebfffffe 	bl	0 <vex::drivetrain::drivetrain(vex::motor&, vex::motor&, double, double, double, vex::distanceUnits, double)>
  88:	eddd1b0c 	vldr	d17, [sp, #48]	; 0x30
  8c:	eef51bc0 	vcmpe.f64	d17, #0.0
  90:	eef1fa10 	vmrs	APSR_nzcv, fpscr
  94:	ec410b30 	vmov	d16, r0, r1
  98:	e1c40af0 	strd	r0, [r4, #160]	; 0xa0
  9c:	4ddf1b19 	vldrmi	d17, [pc, #100]	; 108 <vex::drivetrain::drivetrain(vex::motor&, vex::motor&, double, double, double, vex::distanceUnits, double)+0x108>
  a0:	4ec00ba1 	vdivmi.f64	d16, d16, d17
  a4:	4dc40b2a 	vstrmi	d16, [r4, #168]	; 0xa8
  a8:	4a000004 	bmi	c0 <vex::drivetrain::drivetrain(vex::motor&, vex::motor&, double, double, double, vex::distanceUnits, double)+0xc0>
  ac:	e58d6000 	str	r6, [sp]
  b0:	e1a00004 	mov	r0, r4
  b4:	e1cd23d0 	ldrd	r2, [sp, #48]	; 0x30
  b8:	ebfffffe 	bl	0 <vex::drivetrain::drivetrain(vex::motor&, vex::motor&, double, double, double, vex::distanceUnits, double)>
  bc:	e1c40af8 	strd	r0, [r4, #168]	; 0xa8
  c0:	e1a00004 	mov	r0, r4
  c4:	e3e03000 	mvn	r3, #0
  c8:	e5c430cc 	strb	r3, [r4, #204]	; 0xcc
  cc:	e1cd24d0 	ldrd	r2, [sp, #64]	; 0x40
  d0:	ebfffffe 	bl	0 <vex::drivetrain::drivetrain(vex::motor&, vex::motor&, double, double, double, vex::distanceUnits, double)>
  d4:	e59f3038 	ldr	r3, [pc, #56]	; 114 <vex::drivetrain::drivetrain(vex::motor&, vex::motor&, double, double, double, vex::distanceUnits, double)+0x114>
  d8:	e1a00004 	mov	r0, r4
  dc:	e5932000 	ldr	r2, [r3]
  e0:	e3a03001 	mov	r3, #1
  e4:	e58d3000 	str	r3, [sp]
  e8:	ee072a90 	vmov	s15, r2
  ec:	eef80be7 	vcvt.f64.s32	d16, s15
  f0:	ec532b30 	vmov	r2, r3, d16
  f4:	ebfffffe 	bl	0 <vex::drivetrain::drivetrain(vex::motor&, vex::motor&, double, double, double, vex::distanceUnits, double)>
  f8:	e1a00004 	mov	r0, r4
  fc:	e28dd008 	add	sp, sp, #8
 100:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 104:	e320f000 	nop	{0}
 108:	66666666 	strbtvs	r6, [r6], -r6, ror #12
 10c:	40026666 	andmi	r6, r2, r6, ror #12
 110:	00000008 	andeq	r0, r0, r8
 114:	00000000 	andeq	r0, r0, r0

Disassembly of section .text._ZN3vex10drivetrain10angleToDegEdNS_13rotationUnitsE:

00000000 <vex::drivetrain::angleToDeg(double, vex::rotationUnits)>:
   0:	ec432b30 	vmov	d16, r2, r3
   4:	e59d3000 	ldr	r3, [sp]
   8:	e3530001 	cmp	r3, #1
   c:	0ddf1b03 	vldreq	d17, [pc, #12]	; 20 <vex::drivetrain::angleToDeg(double, vex::rotationUnits)+0x20>
  10:	0e600ba1 	vmuleq.f64	d16, d16, d17
  14:	ec510b30 	vmov	r0, r1, d16
  18:	e12fff1e 	bx	lr
  1c:	e320f000 	nop	{0}
  20:	00000000 	andeq	r0, r0, r0
  24:	40768000 	rsbsmi	r8, r6, r0

Disassembly of section .text._ZN3vex10drivetrain15_distanceToRevsEdNS_13distanceUnitsE:

00000000 <vex::drivetrain::_distanceToRevs(double, vex::distanceUnits)>:
   0:	e92d4013 	push	{r0, r1, r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e59d1010 	ldr	r1, [sp, #16]
   c:	e58d1000 	str	r1, [sp]
  10:	ebfffffe 	bl	0 <vex::drivetrain::_distanceToRevs(double, vex::distanceUnits)>
  14:	edd40b26 	vldr	d16, [r4, #152]	; 0x98
  18:	ec410b31 	vmov	d17, r0, r1
  1c:	eec10ba0 	vdiv.f64	d16, d17, d16
  20:	edd41b2c 	vldr	d17, [r4, #176]	; 0xb0
  24:	eec00ba1 	vdiv.f64	d16, d16, d17
  28:	ec510b30 	vmov	r0, r1, d16
  2c:	e28dd008 	add	sp, sp, #8
  30:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex10drivetrain8driveForENS_13directionTypeEdNS_13distanceUnitsEb:

00000000 <vex::drivetrain::driveFor(vex::directionType, double, vex::distanceUnits, bool)>:
   0:	e92d47f3 	push	{r0, r1, r4, r5, r6, r7, r8, r9, sl, lr}
   4:	e1a08001 	mov	r8, r1
   8:	e59d1028 	ldr	r1, [sp, #40]	; 0x28
   c:	e1a04000 	mov	r4, r0
  10:	e3a09000 	mov	r9, #0
  14:	e5dd502c 	ldrb	r5, [sp, #44]	; 0x2c
  18:	e3a0a001 	mov	sl, #1
  1c:	e58d1000 	str	r1, [sp]
  20:	ebfffffe 	bl	0 <vex::drivetrain::driveFor(vex::directionType, double, vex::distanceUnits, bool)>
  24:	e3e03000 	mvn	r3, #0
  28:	e58da000 	str	sl, [sp]
  2c:	e5c430cc 	strb	r3, [r4, #204]	; 0xcc
  30:	e58d9004 	str	r9, [sp, #4]
  34:	e1a06000 	mov	r6, r0
  38:	e1a07001 	mov	r7, r1
  3c:	e1a02006 	mov	r2, r6
  40:	e1a01008 	mov	r1, r8
  44:	e1a03007 	mov	r3, r7
  48:	e2840004 	add	r0, r4, #4
  4c:	ebfffffe 	bl	0 <vex::motor_group::spinFor(vex::directionType, double, vex::rotationUnits, bool)>
  50:	e58da000 	str	sl, [sp]
  54:	e58d9004 	str	r9, [sp, #4]
  58:	e284004c 	add	r0, r4, #76	; 0x4c
  5c:	e1a01008 	mov	r1, r8
  60:	e1a02006 	mov	r2, r6
  64:	e1a03007 	mov	r3, r7
  68:	ebfffffe 	bl	0 <vex::motor_group::spinFor(vex::directionType, double, vex::rotationUnits, bool)>
  6c:	e1550009 	cmp	r5, r9
  70:	0a000003 	beq	84 <vex::drivetrain::driveFor(vex::directionType, double, vex::distanceUnits, bool)+0x84>
  74:	e1a00004 	mov	r0, r4
  78:	e28dd008 	add	sp, sp, #8
  7c:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
  80:	eafffffe 	b	0 <vex::drivetrain::driveFor(vex::directionType, double, vex::distanceUnits, bool)>
  84:	e1a00005 	mov	r0, r5
  88:	e28dd008 	add	sp, sp, #8
  8c:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}

Disassembly of section .text._ZN3vex10drivetrain8driveForEdNS_13distanceUnitsEb:

00000000 <vex::drivetrain::driveFor(double, vex::distanceUnits, bool)>:
   0:	e5dd1004 	ldrb	r1, [sp, #4]
   4:	e58d1004 	str	r1, [sp, #4]
   8:	e3a01000 	mov	r1, #0
   c:	eafffffe 	b	0 <vex::drivetrain::driveFor(double, vex::distanceUnits, bool)>

Disassembly of section .text._ZN3vex10drivetrain8driveForENS_13directionTypeEdNS_13distanceUnitsEdNS_13velocityUnitsEb:

00000000 <vex::drivetrain::driveFor(vex::directionType, double, vex::distanceUnits, double, vex::velocityUnits, bool)>:
   0:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
   4:	e1a08001 	mov	r8, r1
   8:	ed2d8b02 	vpush	{d8}
   c:	e1a04000 	mov	r4, r0
  10:	e3a09000 	mov	r9, #0
  14:	e3a0b001 	mov	fp, #1
  18:	e24dd01c 	sub	sp, sp, #28
  1c:	e59d1048 	ldr	r1, [sp, #72]	; 0x48
  20:	ed9d8b14 	vldr	d8, [sp, #80]	; 0x50
  24:	e59da058 	ldr	sl, [sp, #88]	; 0x58
  28:	e58d1000 	str	r1, [sp]
  2c:	ebfffffe 	bl	0 <vex::drivetrain::driveFor(vex::directionType, double, vex::distanceUnits, double, vex::velocityUnits, bool)>
  30:	edd40b2c 	vldr	d16, [r4, #176]	; 0xb0
  34:	e3e03000 	mvn	r3, #0
  38:	e58db000 	str	fp, [sp]
  3c:	e5c430cc 	strb	r3, [r4, #204]	; 0xcc
  40:	e58da010 	str	sl, [sp, #16]
  44:	eec80b20 	vdiv.f64	d16, d8, d16
  48:	e58d9014 	str	r9, [sp, #20]
  4c:	e5dd505c 	ldrb	r5, [sp, #92]	; 0x5c
  50:	e1a06000 	mov	r6, r0
  54:	e1a07001 	mov	r7, r1
  58:	e1a02006 	mov	r2, r6
  5c:	e1a01008 	mov	r1, r8
  60:	e1a03007 	mov	r3, r7
  64:	e2840004 	add	r0, r4, #4
  68:	edcd0b02 	vstr	d16, [sp, #8]
  6c:	ebfffffe 	bl	0 <vex::motor_group::spinFor(vex::directionType, double, vex::rotationUnits, double, vex::velocityUnits, bool)>
  70:	e58db000 	str	fp, [sp]
  74:	e58da010 	str	sl, [sp, #16]
  78:	e284004c 	add	r0, r4, #76	; 0x4c
  7c:	edd40b2c 	vldr	d16, [r4, #176]	; 0xb0
  80:	e1a01008 	mov	r1, r8
  84:	e58d9014 	str	r9, [sp, #20]
  88:	e1a02006 	mov	r2, r6
  8c:	e1a03007 	mov	r3, r7
  90:	ee888b20 	vdiv.f64	d8, d8, d16
  94:	ed8d8b02 	vstr	d8, [sp, #8]
  98:	ebfffffe 	bl	0 <vex::motor_group::spinFor(vex::directionType, double, vex::rotationUnits, double, vex::velocityUnits, bool)>
  9c:	e1550009 	cmp	r5, r9
  a0:	0a000004 	beq	b8 <vex::drivetrain::driveFor(vex::directionType, double, vex::distanceUnits, double, vex::velocityUnits, bool)+0xb8>
  a4:	e1a00004 	mov	r0, r4
  a8:	e28dd01c 	add	sp, sp, #28
  ac:	ecbd8b02 	vpop	{d8}
  b0:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
  b4:	eafffffe 	b	0 <vex::drivetrain::driveFor(vex::directionType, double, vex::distanceUnits, double, vex::velocityUnits, bool)>
  b8:	e1a00005 	mov	r0, r5
  bc:	e28dd01c 	add	sp, sp, #28
  c0:	ecbd8b02 	vpop	{d8}
  c4:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}

Disassembly of section .text._ZN3vex10drivetrain8driveForEdNS_13distanceUnitsEdNS_13velocityUnitsEb:

00000000 <vex::drivetrain::driveFor(double, vex::distanceUnits, double, vex::velocityUnits, bool)>:
   0:	e92d4030 	push	{r4, r5, lr}
   4:	e5dd1020 	ldrb	r1, [sp, #32]
   8:	e58d1020 	str	r1, [sp, #32]
   c:	e3a01000 	mov	r1, #0
  10:	e8bd4030 	pop	{r4, r5, lr}
  14:	eafffffe 	b	0 <vex::drivetrain::driveFor(double, vex::distanceUnits, double, vex::velocityUnits, bool)>

Disassembly of section .text._ZN3vex10drivetrain12_angleToRevsEdNS_13rotationUnitsE:

00000000 <vex::drivetrain::_angleToRevs(double, vex::rotationUnits)>:
   0:	ec432b30 	vmov	d16, r2, r3
   4:	e59d3000 	ldr	r3, [sp]
   8:	edd04b28 	vldr	d20, [r0, #160]	; 0xa0
   c:	e3530001 	cmp	r3, #1
  10:	0ddf1b1a 	vldreq	d17, [pc, #104]	; 80 <vex::drivetrain::_angleToRevs(double, vex::rotationUnits)+0x80>
  14:	eef54b40 	vcmp.f64	d20, #0.0
  18:	0e600ba1 	vmuleq.f64	d16, d16, d17
  1c:	eef1fa10 	vmrs	APSR_nzcv, fpscr
  20:	0a000013 	beq	74 <vex::drivetrain::_angleToRevs(double, vex::rotationUnits)+0x74>
  24:	edd05b2a 	vldr	d21, [r0, #168]	; 0xa8
  28:	eddf2b14 	vldr	d18, [pc, #80]	; 80 <vex::drivetrain::_angleToRevs(double, vex::rotationUnits)+0x80>
  2c:	eddf1b15 	vldr	d17, [pc, #84]	; 88 <vex::drivetrain::_angleToRevs(double, vex::rotationUnits)+0x88>
  30:	edd06b26 	vldr	d22, [r0, #152]	; 0x98
  34:	eef55b40 	vcmp.f64	d21, #0.0
  38:	eef1fa10 	vmrs	APSR_nzcv, fpscr
  3c:	0ec02ba2 	vdiveq.f64	d18, d16, d18
  40:	1ec03ba2 	vdivne.f64	d19, d16, d18
  44:	1e655ba5 	vmulne.f64	d21, d21, d21
  48:	1e445ba4 	vmlane.f64	d21, d20, d20
  4c:	0e622ba4 	vmuleq.f64	d18, d18, d20
  50:	1e632ba5 	vmulne.f64	d18, d19, d21
  54:	0e621ba1 	vmuleq.f64	d17, d18, d17
  58:	1e621ba1 	vmulne.f64	d17, d18, d17
  5c:	1e640ba6 	vmulne.f64	d16, d20, d22
  60:	0ec10ba6 	vdiveq.f64	d16, d17, d22
  64:	1ec10ba0 	vdivne.f64	d16, d17, d16
  68:	edd01b2c 	vldr	d17, [r0, #176]	; 0xb0
  6c:	eec00ba1 	vdiv.f64	d16, d16, d17
  70:	ea000000 	b	78 <vex::drivetrain::_angleToRevs(double, vex::rotationUnits)+0x78>
  74:	eddf0b05 	vldr	d16, [pc, #20]	; 90 <vex::drivetrain::_angleToRevs(double, vex::rotationUnits)+0x90>
  78:	ec510b30 	vmov	r0, r1, d16
  7c:	e12fff1e 	bx	lr
  80:	00000000 	andeq	r0, r0, r0
  84:	40768000 	rsbsmi	r8, r6, r0
  88:	fc8b007a 	stc2	0, cr0, [fp], {122}	; 0x7a
  8c:	400921fa 	strdmi	r2, [r9], -sl
	...

Disassembly of section .text._ZN3vex10drivetrain7turnForENS_8turnTypeEdNS_13rotationUnitsEb:

00000000 <vex::drivetrain::turnFor(vex::turnType, double, vex::rotationUnits, bool)>:
   0:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
   4:	e24dd018 	sub	sp, sp, #24
   8:	e1a08001 	mov	r8, r1
   c:	e1a04000 	mov	r4, r0
  10:	e59d1038 	ldr	r1, [sp, #56]	; 0x38
  14:	e3a09000 	mov	r9, #0
  18:	e3a0a001 	mov	sl, #1
  1c:	e5dd503c 	ldrb	r5, [sp, #60]	; 0x3c
  20:	e58d1000 	str	r1, [sp]
  24:	ebfffffe 	bl	0 <vex::drivetrain::turnFor(vex::turnType, double, vex::rotationUnits, bool)>
  28:	e3e03000 	mvn	r3, #0
  2c:	e5c430cc 	strb	r3, [r4, #204]	; 0xcc
  30:	e1c42cd0 	ldrd	r2, [r4, #192]	; 0xc0
  34:	e58da000 	str	sl, [sp]
  38:	e58d9014 	str	r9, [sp, #20]
  3c:	e1cd20f8 	strd	r2, [sp, #8]
  40:	e59430c8 	ldr	r3, [r4, #200]	; 0xc8
  44:	e58d3010 	str	r3, [sp, #16]
  48:	e1a07001 	mov	r7, r1
  4c:	e16f1f18 	clz	r1, r8
  50:	e1a06000 	mov	r6, r0
  54:	e1a03007 	mov	r3, r7
  58:	e1a012a1 	lsr	r1, r1, #5
  5c:	e1a02006 	mov	r2, r6
  60:	e2840004 	add	r0, r4, #4
  64:	ebfffffe 	bl	0 <vex::motor_group::spinFor(vex::directionType, double, vex::rotationUnits, double, vex::velocityUnits, bool)>
  68:	e1c42cd0 	ldrd	r2, [r4, #192]	; 0xc0
  6c:	e0581009 	subs	r1, r8, r9
  70:	e58da000 	str	sl, [sp]
  74:	e58d9014 	str	r9, [sp, #20]
  78:	e284004c 	add	r0, r4, #76	; 0x4c
  7c:	e1cd20f8 	strd	r2, [sp, #8]
  80:	13a01001 	movne	r1, #1
  84:	e59430c8 	ldr	r3, [r4, #200]	; 0xc8
  88:	e1a02006 	mov	r2, r6
  8c:	e58d3010 	str	r3, [sp, #16]
  90:	e1a03007 	mov	r3, r7
  94:	ebfffffe 	bl	0 <vex::motor_group::spinFor(vex::directionType, double, vex::rotationUnits, double, vex::velocityUnits, bool)>
  98:	e1550009 	cmp	r5, r9
  9c:	0a000003 	beq	b0 <vex::drivetrain::turnFor(vex::turnType, double, vex::rotationUnits, bool)+0xb0>
  a0:	e1a00004 	mov	r0, r4
  a4:	e28dd018 	add	sp, sp, #24
  a8:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
  ac:	eafffffe 	b	0 <vex::drivetrain::turnFor(vex::turnType, double, vex::rotationUnits, bool)>
  b0:	e1a00005 	mov	r0, r5
  b4:	e28dd018 	add	sp, sp, #24
  b8:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}

Disassembly of section .text._ZN3vex10drivetrain7turnForEdNS_13rotationUnitsEb:

00000000 <vex::drivetrain::turnFor(double, vex::rotationUnits, bool)>:
   0:	e5dd1004 	ldrb	r1, [sp, #4]
   4:	e58d1004 	str	r1, [sp, #4]
   8:	e3a01001 	mov	r1, #1
   c:	eafffffe 	b	0 <vex::drivetrain::turnFor(double, vex::rotationUnits, bool)>

Disassembly of section .text._ZN3vex10drivetrain7turnForENS_8turnTypeEdNS_13rotationUnitsEdNS_13velocityUnitsEb:

00000000 <vex::drivetrain::turnFor(vex::turnType, double, vex::rotationUnits, double, vex::velocityUnits, bool)>:
   0:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
   4:	e1a08001 	mov	r8, r1
   8:	ed2d8b02 	vpush	{d8}
   c:	e1a04000 	mov	r4, r0
  10:	e3a09000 	mov	r9, #0
  14:	e3a0b001 	mov	fp, #1
  18:	e24dd01c 	sub	sp, sp, #28
  1c:	e59d1048 	ldr	r1, [sp, #72]	; 0x48
  20:	ed9d8b14 	vldr	d8, [sp, #80]	; 0x50
  24:	e59da058 	ldr	sl, [sp, #88]	; 0x58
  28:	e58d1000 	str	r1, [sp]
  2c:	ebfffffe 	bl	0 <vex::drivetrain::turnFor(vex::turnType, double, vex::rotationUnits, double, vex::velocityUnits, bool)>
  30:	edd40b2c 	vldr	d16, [r4, #176]	; 0xb0
  34:	e3e03000 	mvn	r3, #0
  38:	e58db000 	str	fp, [sp]
  3c:	e5c430cc 	strb	r3, [r4, #204]	; 0xcc
  40:	e58da010 	str	sl, [sp, #16]
  44:	eec80b20 	vdiv.f64	d16, d8, d16
  48:	e58d9014 	str	r9, [sp, #20]
  4c:	e5dd505c 	ldrb	r5, [sp, #92]	; 0x5c
  50:	e1a07001 	mov	r7, r1
  54:	e16f1f18 	clz	r1, r8
  58:	e1a06000 	mov	r6, r0
  5c:	e1a03007 	mov	r3, r7
  60:	e1a012a1 	lsr	r1, r1, #5
  64:	e1a02006 	mov	r2, r6
  68:	e2840004 	add	r0, r4, #4
  6c:	edcd0b02 	vstr	d16, [sp, #8]
  70:	ebfffffe 	bl	0 <vex::motor_group::spinFor(vex::directionType, double, vex::rotationUnits, double, vex::velocityUnits, bool)>
  74:	e0581009 	subs	r1, r8, r9
  78:	e58db000 	str	fp, [sp]
  7c:	e284004c 	add	r0, r4, #76	; 0x4c
  80:	edd40b2c 	vldr	d16, [r4, #176]	; 0xb0
  84:	13a01001 	movne	r1, #1
  88:	e58da010 	str	sl, [sp, #16]
  8c:	e1a02006 	mov	r2, r6
  90:	e58d9014 	str	r9, [sp, #20]
  94:	e1a03007 	mov	r3, r7
  98:	ee888b20 	vdiv.f64	d8, d8, d16
  9c:	ed8d8b02 	vstr	d8, [sp, #8]
  a0:	ebfffffe 	bl	0 <vex::motor_group::spinFor(vex::directionType, double, vex::rotationUnits, double, vex::velocityUnits, bool)>
  a4:	e1550009 	cmp	r5, r9
  a8:	0a000004 	beq	c0 <vex::drivetrain::turnFor(vex::turnType, double, vex::rotationUnits, double, vex::velocityUnits, bool)+0xc0>
  ac:	e1a00004 	mov	r0, r4
  b0:	e28dd01c 	add	sp, sp, #28
  b4:	ecbd8b02 	vpop	{d8}
  b8:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
  bc:	eafffffe 	b	0 <vex::drivetrain::turnFor(vex::turnType, double, vex::rotationUnits, double, vex::velocityUnits, bool)>
  c0:	e1a00005 	mov	r0, r5
  c4:	e28dd01c 	add	sp, sp, #28
  c8:	ecbd8b02 	vpop	{d8}
  cc:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}

Disassembly of section .text._ZN3vex10drivetrain7turnForEdNS_13rotationUnitsEdNS_13velocityUnitsEb:

00000000 <vex::drivetrain::turnFor(double, vex::rotationUnits, double, vex::velocityUnits, bool)>:
   0:	e92d4030 	push	{r4, r5, lr}
   4:	e5dd1020 	ldrb	r1, [sp, #32]
   8:	e58d1020 	str	r1, [sp, #32]
   c:	e3a01001 	mov	r1, #1
  10:	e8bd4030 	pop	{r4, r5, lr}
  14:	eafffffe 	b	0 <vex::drivetrain::turnFor(double, vex::rotationUnits, double, vex::velocityUnits, bool)>

Disassembly of section .rodata._ZTVN3vex10drivetrainE:

00000000 <vtable for vex::drivetrain>:
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
  44:	5b202965 	blpl	80a5e0 <vex::drivetrain::drivetrain(vex::motor&, vex::motor&, double, double, double, vex::distanceUnits, double)+0x80a5e0>
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

