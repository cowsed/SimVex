
vex_motor.cpp.obj:     file format elf32-littlearm


Disassembly of section .text._ZN3vex5motorD2Ev:

00000000 <_ZN3vex5motorD1Ev>:
   0:	e59f3014 	ldr	r3, [pc, #20]	; 1c <_ZN3vex5motorD1Ev+0x1c>
   4:	e92d4010 	push	{r4, lr}
   8:	e1a04000 	mov	r4, r0
   c:	e5803000 	str	r3, [r0]
  10:	ebfffffe 	bl	0 <_ZN3vex6deviceD2Ev>
  14:	e1a00004 	mov	r0, r4
  18:	e8bd8010 	pop	{r4, pc}
  1c:	00000008 	andeq	r0, r0, r8

Disassembly of section .text._ZN3vex5motorD0Ev:

00000000 <_ZN3vex5motorD0Ev>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <_ZN3vex5motorD0Ev>
   c:	e1a00004 	mov	r0, r4
  10:	ebfffffe 	bl	0 <_ZdlPv>
  14:	e1a00004 	mov	r0, r4
  18:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex5motor9installedEv:

00000000 <_ZN3vex5motor9installedEv>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <_ZN3vex6device4typeEv>
   8:	e2400002 	sub	r0, r0, #2
   c:	e16f0f10 	clz	r0, r0
  10:	e1a002a0 	lsr	r0, r0, #5
  14:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text._ZN3vex5motor11setReversedEb:

00000000 <_ZN3vex5motor11setReversedEb>:
   0:	e5900008 	ldr	r0, [r0, #8]
   4:	eafffffe 	b	0 <vexMotorReverseFlagSet>

Disassembly of section .text._ZN3vex5motor15defaultStoppingENS_9brakeTypeE:

00000000 <_ZN3vex5motor15defaultStoppingENS_9brakeTypeE>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e5903018 	ldr	r3, [r0, #24]
   c:	e1a05001 	mov	r5, r1
  10:	e1510003 	cmp	r1, r3
  14:	0a000003 	beq	28 <_ZN3vex5motor15defaultStoppingENS_9brakeTypeE+0x28>
  18:	e5900008 	ldr	r0, [r0, #8]
  1c:	e6ef1071 	uxtb	r1, r1
  20:	ebfffffe 	bl	0 <vexMotorBrakeModeSet>
  24:	e5845018 	str	r5, [r4, #24]
  28:	e584501c 	str	r5, [r4, #28]
  2c:	e8bd8038 	pop	{r3, r4, r5, pc}

Disassembly of section .text._ZN3vex5motor8setBrakeENS_9brakeTypeE:

00000000 <_ZN3vex5motor8setBrakeENS_9brakeTypeE>:
   0:	eafffffe 	b	0 <_ZN3vex5motor8setBrakeENS_9brakeTypeE>

Disassembly of section .text._ZN3vex5motor11setStoppingENS_9brakeTypeE:

00000000 <_ZN3vex5motor11setStoppingENS_9brakeTypeE>:
   0:	eafffffe 	b	0 <_ZN3vex5motor11setStoppingENS_9brakeTypeE>

Disassembly of section .text._ZN3vex5motorC2El:

00000000 <_ZN3vex5motorC1El>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <_ZN3vex6deviceC2El>
   c:	e59f305c 	ldr	r3, [pc, #92]	; 70 <_ZN3vex5motorC1El+0x70>
  10:	e3a05000 	mov	r5, #0
  14:	e1a00004 	mov	r0, r4
  18:	e5c45020 	strb	r5, [r4, #32]
  1c:	e5843000 	str	r3, [r4]
  20:	e3e03102 	mvn	r3, #-2147483648	; 0x80000000
  24:	e5843010 	str	r3, [r4, #16]
  28:	e59f3044 	ldr	r3, [pc, #68]	; 74 <_ZN3vex5motorC1El+0x74>
  2c:	e5933000 	ldr	r3, [r3]
  30:	e5843014 	str	r3, [r4, #20]
  34:	e3a03003 	mov	r3, #3
  38:	e5843018 	str	r3, [r4, #24]
  3c:	e584301c 	str	r3, [r4, #28]
  40:	ebfffffe 	bl	0 <_ZN3vex5motorC1El>
  44:	e1500005 	cmp	r0, r5
  48:	0a000006 	beq	68 <_ZN3vex5motorC1El+0x68>
  4c:	e5940008 	ldr	r0, [r4, #8]
  50:	e3a02000 	mov	r2, #0
  54:	e3a03000 	mov	r3, #0
  58:	ebfffffe 	bl	0 <vexMotorPositionSet>
  5c:	e1a00004 	mov	r0, r4
  60:	e1a01005 	mov	r1, r5
  64:	ebfffffe 	bl	0 <_ZN3vex5motorC1El>
  68:	e1a00004 	mov	r0, r4
  6c:	e8bd8038 	pop	{r3, r4, r5, pc}
  70:	00000008 	andeq	r0, r0, r8
  74:	00000000 	andeq	r0, r0, r0

Disassembly of section .text._ZN3vex5motorC2ElNS_11gearSettingEb:

00000000 <_ZN3vex5motorC1ElNS_11gearSettingEb>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e1a06003 	mov	r6, r3
   c:	e1a05002 	mov	r5, r2
  10:	ebfffffe 	bl	0 <_ZN3vex5motorC1ElNS_11gearSettingEb>
  14:	e5940008 	ldr	r0, [r4, #8]
  18:	e1a01006 	mov	r1, r6
  1c:	ebfffffe 	bl	0 <vexMotorReverseFlagSet>
  20:	e5940008 	ldr	r0, [r4, #8]
  24:	e6ef1075 	uxtb	r1, r5
  28:	ebfffffe 	bl	0 <vexMotorGearingSet>
  2c:	e1a00004 	mov	r0, r4
  30:	e8bd8070 	pop	{r4, r5, r6, pc}

Disassembly of section .text._ZN3vex5motorC2ElNS_11gearSettingE:

00000000 <_ZN3vex5motorC1ElNS_11gearSettingE>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e1a05002 	mov	r5, r2
   c:	ebfffffe 	bl	0 <_ZN3vex5motorC1ElNS_11gearSettingE>
  10:	e5940008 	ldr	r0, [r4, #8]
  14:	e6ef1075 	uxtb	r1, r5
  18:	ebfffffe 	bl	0 <vexMotorGearingSet>
  1c:	e1a00004 	mov	r0, r4
  20:	e8bd8038 	pop	{r3, r4, r5, pc}

Disassembly of section .text._ZN3vex5motorC2Elb:

00000000 <_ZN3vex5motorC1Elb>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e1a05002 	mov	r5, r2
   c:	ebfffffe 	bl	0 <_ZN3vex5motorC1Elb>
  10:	e5940008 	ldr	r0, [r4, #8]
  14:	e1a01005 	mov	r1, r5
  18:	ebfffffe 	bl	0 <vexMotorReverseFlagSet>
  1c:	e1a00004 	mov	r0, r4
  20:	e8bd8038 	pop	{r3, r4, r5, pc}

Disassembly of section .text._ZN3vex5motor10setTimeoutElNS_9timeUnitsE:

00000000 <_ZN3vex5motor10setTimeoutElNS_9timeUnitsE>:
   0:	e16f2f12 	clz	r2, r2
   4:	e3510000 	cmp	r1, #0
   8:	e1a022a2 	lsr	r2, r2, #5
   c:	d3a02000 	movle	r2, #0
  10:	e3520000 	cmp	r2, #0
  14:	0a000005 	beq	30 <_ZN3vex5motor10setTimeoutElNS_9timeUnitsE+0x30>
  18:	e59f3028 	ldr	r3, [pc, #40]	; 48 <_ZN3vex5motor10setTimeoutElNS_9timeUnitsE+0x48>
  1c:	e1510003 	cmp	r1, r3
  20:	a1a01003 	movge	r1, r3
  24:	e3a03ffa 	mov	r3, #1000	; 0x3e8
  28:	e0010193 	mul	r1, r3, r1
  2c:	ea000003 	b	40 <_ZN3vex5motor10setTimeoutElNS_9timeUnitsE+0x40>
  30:	e3510000 	cmp	r1, #0
  34:	d3e03102 	mvnle	r3, #-2147483648	; 0x80000000
  38:	d5803010 	strle	r3, [r0, #16]
  3c:	d12fff1e 	bxle	lr
  40:	e5801010 	str	r1, [r0, #16]
  44:	e12fff1e 	bx	lr
  48:	000f4240 	andeq	r4, pc, r0, asr #4

Disassembly of section .text._ZN3vex5motor10getTimeoutEv:

00000000 <_ZN3vex5motor10getTimeoutEv>:
   0:	e5900010 	ldr	r0, [r0, #16]
   4:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex5motor4spinENS_13directionTypeEdNS_12voltageUnitsE:

00000000 <_ZN3vex5motor4spinENS_13directionTypeEdNS_12voltageUnitsE>:
   0:	e92d4010 	push	{r4, lr}
   4:	ec432b30 	vmov	d16, r2, r3
   8:	e59d3008 	ldr	r3, [sp, #8]
   c:	e1a04000 	mov	r4, r0
  10:	e1a00001 	mov	r0, r1
  14:	e3530000 	cmp	r3, #0
  18:	0ddf1b0a 	vldreq	d17, [pc, #40]	; 48 <_ZN3vex5motor4spinENS_13directionTypeEdNS_12voltageUnitsE+0x48>
  1c:	0e600ba1 	vmuleq.f64	d16, d16, d17
  20:	e3500000 	cmp	r0, #0
  24:	e5940008 	ldr	r0, [r4, #8]
  28:	eefd7be0 	vcvt.s32.f64	s15, d16
  2c:	ee171a90 	vmov	r1, s15
  30:	12611000 	rsbne	r1, r1, #0
  34:	ebfffffe 	bl	0 <vexMotorVoltageSet>
  38:	e3a03000 	mov	r3, #0
  3c:	e5c43020 	strb	r3, [r4, #32]
  40:	e8bd8010 	pop	{r4, pc}
  44:	e320f000 	nop	{0}
  48:	00000000 	andeq	r0, r0, r0
  4c:	408f4000 	addmi	r4, pc, r0

Disassembly of section .text._ZN3vex5motor14isSpinningModeEv:

00000000 <_ZN3vex5motor14isSpinningModeEv>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e5900008 	ldr	r0, [r0, #8]
   c:	ebfffffe 	bl	0 <vexMotorModeGet>
  10:	e2403003 	sub	r3, r0, #3
  14:	e6ef3073 	uxtb	r3, r3
  18:	e3530001 	cmp	r3, #1
  1c:	8a000001 	bhi	28 <_ZN3vex5motor14isSpinningModeEv+0x28>
  20:	e3a00001 	mov	r0, #1
  24:	e8bd8010 	pop	{r4, pc}
  28:	e3500006 	cmp	r0, #6
  2c:	1a000003 	bne	40 <_ZN3vex5motor14isSpinningModeEv+0x40>
  30:	e5940008 	ldr	r0, [r4, #8]
  34:	ebfffffe 	bl	0 <vexMotorVelocityGet>
  38:	e3500000 	cmp	r0, #0
  3c:	1afffff7 	bne	20 <_ZN3vex5motor14isSpinningModeEv+0x20>
  40:	e3a00000 	mov	r0, #0
  44:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex5motor10isSpinningEv:

00000000 <_ZN3vex5motor10isSpinningEv>:
   0:	e5903000 	ldr	r3, [r0]
   4:	e92d4010 	push	{r4, lr}
   8:	e1a04000 	mov	r4, r0
   c:	e5933008 	ldr	r3, [r3, #8]
  10:	e12fff33 	blx	r3
  14:	e3500000 	cmp	r0, #0
  18:	0a000007 	beq	3c <_ZN3vex5motor10isSpinningEv+0x3c>
  1c:	e5940008 	ldr	r0, [r4, #8]
  20:	ebfffffe 	bl	0 <vexMotorZeroPositionFlagGet>
  24:	e3500000 	cmp	r0, #0
  28:	1a000003 	bne	3c <_ZN3vex5motor10isSpinningEv+0x3c>
  2c:	e1a00004 	mov	r0, r4
  30:	ebfffffe 	bl	0 <_ZN3vex5motor10isSpinningEv>
  34:	e3500000 	cmp	r0, #0
  38:	18bd8010 	popne	{r4, pc}
  3c:	e3a00000 	mov	r0, #0
  40:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex5motor6isDoneEv:

00000000 <_ZN3vex5motor6isDoneEv>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <_ZN3vex5motor6isDoneEv>
   8:	e2200001 	eor	r0, r0, #1
   c:	e6ef0070 	uxtb	r0, r0
  10:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text._ZN3vex5motor4stopENS_9brakeTypeE:

00000000 <_ZN3vex5motor4stopENS_9brakeTypeE>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e1a05001 	mov	r5, r1
   c:	e5900008 	ldr	r0, [r0, #8]
  10:	e3a01000 	mov	r1, #0
  14:	ebfffffe 	bl	0 <vexMotorVelocitySet>
  18:	e1a00004 	mov	r0, r4
  1c:	e1a01005 	mov	r1, r5
  20:	ebfffffe 	bl	0 <_ZN3vex5motor4stopENS_9brakeTypeE>
  24:	e3a03000 	mov	r3, #0
  28:	e5c43020 	strb	r3, [r4, #32]
  2c:	e8bd8038 	pop	{r3, r4, r5, pc}

Disassembly of section .text._ZN3vex5motor4stopEv:

00000000 <_ZN3vex5motor4stopEv>:
   0:	e590101c 	ldr	r1, [r0, #28]
   4:	eafffffe 	b	0 <_ZN3vex5motor4stopEv>

Disassembly of section .text._ZN3vex5motor12setMaxTorqueEdNS_12percentUnitsE:

00000000 <_ZN3vex5motor12setMaxTorqueEdNS_12percentUnitsE>:
   0:	ec432b30 	vmov	d16, r2, r3
   4:	eef50bc0 	vcmpe.f64	d16, #0.0
   8:	eddf1b12 	vldr	d17, [pc, #72]	; 58 <_ZN3vex5motor12setMaxTorqueEdNS_12percentUnitsE+0x58>
   c:	eef1fa10 	vmrs	APSR_nzcv, fpscr
  10:	4ddf0b12 	vldrmi	d16, [pc, #72]	; 60 <_ZN3vex5motor12setMaxTorqueEdNS_12percentUnitsE+0x60>
  14:	4a000002 	bmi	24 <_ZN3vex5motor12setMaxTorqueEdNS_12percentUnitsE+0x24>
  18:	eef40b61 	vcmp.f64	d16, d17
  1c:	eef1fa10 	vmrs	APSR_nzcv, fpscr
  20:	cef00b61 	vmovgt.f64	d16, d17
  24:	e5900008 	ldr	r0, [r0, #8]
  28:	eec00ba1 	vdiv.f64	d16, d16, d17
  2c:	eddf1b0d 	vldr	d17, [pc, #52]	; 68 <_ZN3vex5motor12setMaxTorqueEdNS_12percentUnitsE+0x68>
  30:	ee600ba1 	vmul.f64	d16, d16, d17
  34:	eddf1b0d 	vldr	d17, [pc, #52]	; 70 <_ZN3vex5motor12setMaxTorqueEdNS_12percentUnitsE+0x70>
  38:	eec00ba1 	vdiv.f64	d16, d16, d17
  3c:	eddf1b0d 	vldr	d17, [pc, #52]	; 78 <_ZN3vex5motor12setMaxTorqueEdNS_12percentUnitsE+0x78>
  40:	ee700ba1 	vadd.f64	d16, d16, d17
  44:	eddf1b0d 	vldr	d17, [pc, #52]	; 80 <_ZN3vex5motor12setMaxTorqueEdNS_12percentUnitsE+0x80>
  48:	ee600ba1 	vmul.f64	d16, d16, d17
  4c:	eefd7be0 	vcvt.s32.f64	s15, d16
  50:	ee171a90 	vmov	r1, s15
  54:	eafffffe 	b	0 <vexMotorCurrentLimitSet>
  58:	00000000 	andeq	r0, r0, r0
  5c:	40590000 	subsmi	r0, r9, r0
	...
  68:	d64d7f0f 	strble	r7, [sp], -pc, lsl #30
  6c:	400087a8 	andmi	r8, r0, r8, lsr #15
  70:	c28f5c29 	addgt	r5, pc, #10496	; 0x2900
  74:	3fec28f5 	svccc	0x00ec28f5
  78:	6a7ef9db 	bvs	1fbe7ec <_ZN3vex5motor12setMaxTorqueEdNS_12percentUnitsE+0x1fbe7ec>
  7c:	3fc374bc 	svccc	0x00c374bc
  80:	00000000 	andeq	r0, r0, r0
  84:	408f4000 	addmi	r4, pc, r0

Disassembly of section .text._ZN3vex5motor12setMaxTorqueEdNS_11torqueUnitsE:

00000000 <_ZN3vex5motor12setMaxTorqueEdNS_11torqueUnitsE>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ed2d8b02 	vpush	{d8}
   c:	e5900008 	ldr	r0, [r0, #8]
  10:	ec432b18 	vmov	d8, r2, r3
  14:	e59d3010 	ldr	r3, [sp, #16]
  18:	e3530001 	cmp	r3, #1
  1c:	0ddf0b1b 	vldreq	d16, [pc, #108]	; 90 <_ZN3vex5motor12setMaxTorqueEdNS_11torqueUnitsE+0x90>
  20:	0e888b20 	vdiveq.f64	d8, d8, d16
  24:	ebfffffe 	bl	0 <vexMotorGearingGet>
  28:	e3500001 	cmp	r0, #1
  2c:	0e388b08 	vaddeq.f64	d8, d8, d8
  30:	0a000002 	beq	40 <_ZN3vex5motor12setMaxTorqueEdNS_11torqueUnitsE+0x40>
  34:	e3500002 	cmp	r0, #2
  38:	0ef10b08 	vmoveq.f64	d16, #24	; 0x40c00000  6.0
  3c:	0e288b20 	vmuleq.f64	d8, d8, d16
  40:	eeb58bc0 	vcmpe.f64	d8, #0.0
  44:	eef1fa10 	vmrs	APSR_nzcv, fpscr
  48:	4d9f8b12 	vldrmi	d8, [pc, #72]	; 98 <_ZN3vex5motor12setMaxTorqueEdNS_11torqueUnitsE+0x98>
  4c:	4a000003 	bmi	60 <_ZN3vex5motor12setMaxTorqueEdNS_11torqueUnitsE+0x60>
  50:	eddf0b12 	vldr	d16, [pc, #72]	; a0 <_ZN3vex5motor12setMaxTorqueEdNS_11torqueUnitsE+0xa0>
  54:	eeb48b60 	vcmp.f64	d8, d16
  58:	eef1fa10 	vmrs	APSR_nzcv, fpscr
  5c:	ceb08b60 	vmovgt.f64	d8, d16
  60:	eddf0b10 	vldr	d16, [pc, #64]	; a8 <_ZN3vex5motor12setMaxTorqueEdNS_11torqueUnitsE+0xa8>
  64:	e5940008 	ldr	r0, [r4, #8]
  68:	ee888b20 	vdiv.f64	d8, d8, d16
  6c:	eddf0b0f 	vldr	d16, [pc, #60]	; b0 <_ZN3vex5motor12setMaxTorqueEdNS_11torqueUnitsE+0xb0>
  70:	ee388b20 	vadd.f64	d8, d8, d16
  74:	eddf0b0f 	vldr	d16, [pc, #60]	; b8 <_ZN3vex5motor12setMaxTorqueEdNS_11torqueUnitsE+0xb8>
  78:	ee288b20 	vmul.f64	d8, d8, d16
  7c:	eefd7bc8 	vcvt.s32.f64	s15, d8
  80:	ecbd8b02 	vpop	{d8}
  84:	e8bd4010 	pop	{r4, lr}
  88:	ee171a90 	vmov	r1, s15
  8c:	eafffffe 	b	0 <vexMotorCurrentLimitSet>
  90:	f3cdafb0 			; <UNDEFINED> instruction: 0xf3cdafb0
  94:	4021b394 	mlami	r1, r4, r3, fp
	...
  a0:	d64d7f0f 	strble	r7, [sp], -pc, lsl #30
  a4:	400087a8 	andmi	r8, r0, r8, lsr #15
  a8:	c28f5c29 	addgt	r5, pc, #10496	; 0x2900
  ac:	3fec28f5 	svccc	0x00ec28f5
  b0:	6a7ef9db 	bvs	1fbe824 <_ZN3vex5motor12setMaxTorqueEdNS_11torqueUnitsE+0x1fbe824>
  b4:	3fc374bc 	svccc	0x00c374bc
  b8:	00000000 	andeq	r0, r0, r0
  bc:	408f4000 	addmi	r4, pc, r0

Disassembly of section .text._ZN3vex5motor12setMaxTorqueEdNS_12currentUnitsE:

00000000 <_ZN3vex5motor12setMaxTorqueEdNS_12currentUnitsE>:
   0:	eddf0b06 	vldr	d16, [pc, #24]	; 20 <_ZN3vex5motor12setMaxTorqueEdNS_12currentUnitsE+0x20>
   4:	e5900008 	ldr	r0, [r0, #8]
   8:	ec432b31 	vmov	d17, r2, r3
   c:	ee610ba0 	vmul.f64	d16, d17, d16
  10:	eefd7be0 	vcvt.s32.f64	s15, d16
  14:	ee171a90 	vmov	r1, s15
  18:	eafffffe 	b	0 <vexMotorCurrentLimitSet>
  1c:	e320f000 	nop	{0}
  20:	00000000 	andeq	r0, r0, r0
  24:	408f4000 	addmi	r4, pc, r0

Disassembly of section .text._ZN3vex5motor15torqueToCurrentEd:

00000000 <_ZN3vex5motor15torqueToCurrentEd>:
   0:	eddf0b06 	vldr	d16, [pc, #24]	; 20 <_ZN3vex5motor15torqueToCurrentEd+0x20>
   4:	ec432b31 	vmov	d17, r2, r3
   8:	eec10ba0 	vdiv.f64	d16, d17, d16
   c:	eddf1b05 	vldr	d17, [pc, #20]	; 28 <_ZN3vex5motor15torqueToCurrentEd+0x28>
  10:	ee700ba1 	vadd.f64	d16, d16, d17
  14:	ec510b30 	vmov	r0, r1, d16
  18:	e12fff1e 	bx	lr
  1c:	e320f000 	nop	{0}
  20:	c28f5c29 	addgt	r5, pc, #10496	; 0x2900
  24:	3fec28f5 	svccc	0x00ec28f5
  28:	6a7ef9db 	bvs	1fbe79c <_ZN3vex5motor15torqueToCurrentEd+0x1fbe79c>
  2c:	3fc374bc 	svccc	0x00c374bc

Disassembly of section .text._ZN3vex5motor9directionEv:

00000000 <_ZN3vex5motor9directionEv>:
   0:	e92d4008 	push	{r3, lr}
   4:	e5900008 	ldr	r0, [r0, #8]
   8:	ebfffffe 	bl	0 <vexMotorDirectionGet>
   c:	e3700001 	cmn	r0, #1
  10:	0a000003 	beq	24 <_ZN3vex5motor9directionEv+0x24>
  14:	e3500001 	cmp	r0, #1
  18:	03a00000 	moveq	r0, #0
  1c:	13a00002 	movne	r0, #2
  20:	e8bd8008 	pop	{r3, pc}
  24:	e3a00001 	mov	r0, #1
  28:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text._ZN3vex5motor7currentENS_12currentUnitsE:

00000000 <_ZN3vex5motor7currentENS_12currentUnitsE>:
   0:	e92d4008 	push	{r3, lr}
   4:	e5900008 	ldr	r0, [r0, #8]
   8:	ebfffffe 	bl	0 <vexMotorCurrentGet>
   c:	eddf0b05 	vldr	d16, [pc, #20]	; 28 <_ZN3vex5motor7currentENS_12currentUnitsE+0x28>
  10:	ee070a90 	vmov	s15, r0
  14:	eef81be7 	vcvt.f64.s32	d17, s15
  18:	eec10ba0 	vdiv.f64	d16, d17, d16
  1c:	ec510b30 	vmov	r0, r1, d16
  20:	e8bd8008 	pop	{r3, pc}
  24:	e320f000 	nop	{0}
  28:	00000000 	andeq	r0, r0, r0
  2c:	408f4000 	addmi	r4, pc, r0

Disassembly of section .text._ZN3vex5motor7currentENS_12percentUnitsE:

00000000 <_ZN3vex5motor7currentENS_12percentUnitsE>:
   0:	e92d4008 	push	{r3, lr}
   4:	e3a01000 	mov	r1, #0
   8:	ebfffffe 	bl	0 <_ZN3vex5motor7currentENS_12percentUnitsE>
   c:	eddf1b09 	vldr	d17, [pc, #36]	; 38 <_ZN3vex5motor7currentENS_12percentUnitsE+0x38>
  10:	eef02b04 	vmov.f64	d18, #4	; 0x40200000  2.5
  14:	ec410b30 	vmov	d16, r0, r1
  18:	ee600ba1 	vmul.f64	d16, d16, d17
  1c:	eec00ba2 	vdiv.f64	d16, d16, d18
  20:	eef40b61 	vcmp.f64	d16, d17
  24:	eef1fa10 	vmrs	APSR_nzcv, fpscr
  28:	cc510b31 	vmovgt	r0, r1, d17
  2c:	dc510b30 	vmovle	r0, r1, d16
  30:	e8bd8008 	pop	{r3, pc}
  34:	e320f000 	nop	{0}
  38:	00000000 	andeq	r0, r0, r0
  3c:	40590000 	subsmi	r0, r9, r0

Disassembly of section .text._ZN3vex5motor7voltageENS_12voltageUnitsE:

00000000 <_ZN3vex5motor7voltageENS_12voltageUnitsE>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	e5900008 	ldr	r0, [r0, #8]
   c:	ebfffffe 	bl	0 <vexMotorVoltageGet>
  10:	e59f3028 	ldr	r3, [pc, #40]	; 40 <_ZN3vex5motor7voltageENS_12voltageUnitsE+0x40>
  14:	e5933000 	ldr	r3, [r3]
  18:	e1540003 	cmp	r4, r3
  1c:	0ddf1b05 	vldreq	d17, [pc, #20]	; 38 <_ZN3vex5motor7voltageENS_12voltageUnitsE+0x38>
  20:	ee070a90 	vmov	s15, r0
  24:	eef80be7 	vcvt.f64.s32	d16, s15
  28:	0ec00ba1 	vdiveq.f64	d16, d16, d17
  2c:	ec510b30 	vmov	r0, r1, d16
  30:	e8bd8010 	pop	{r4, pc}
  34:	e320f000 	nop	{0}
  38:	00000000 	andeq	r0, r0, r0
  3c:	408f4000 	addmi	r4, pc, r0
  40:	00000000 	andeq	r0, r0, r0

Disassembly of section .text._ZN3vex5motor5powerENS_10powerUnitsE:

00000000 <_ZN3vex5motor5powerENS_10powerUnitsE>:
   0:	e5900008 	ldr	r0, [r0, #8]
   4:	eafffffe 	b	0 <vexMotorPowerGet>

Disassembly of section .text._ZN3vex5motor6torqueENS_11torqueUnitsE:

00000000 <_ZN3vex5motor6torqueENS_11torqueUnitsE>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	e5900008 	ldr	r0, [r0, #8]
   c:	ebfffffe 	bl	0 <vexMotorTorqueGet>
  10:	e3540001 	cmp	r4, #1
  14:	0ddf1b03 	vldreq	d17, [pc, #12]	; 28 <_ZN3vex5motor6torqueENS_11torqueUnitsE+0x28>
  18:	ec410b30 	vmov	d16, r0, r1
  1c:	0e600ba1 	vmuleq.f64	d16, d16, d17
  20:	ec510b30 	vmov	r0, r1, d16
  24:	e8bd8010 	pop	{r4, pc}
  28:	f3cdafb0 			; <UNDEFINED> instruction: 0xf3cdafb0
  2c:	4021b394 	mlami	r1, r4, r3, fp

Disassembly of section .text._ZN3vex5motor10efficiencyENS_12percentUnitsE:

00000000 <_ZN3vex5motor10efficiencyENS_12percentUnitsE>:
   0:	e5900008 	ldr	r0, [r0, #8]
   4:	eafffffe 	b	0 <vexMotorEfficiencyGet>

Disassembly of section .text._ZN3vex5motor11temperatureENS_12percentUnitsE:

00000000 <_ZN3vex5motor11temperatureENS_12percentUnitsE>:
   0:	e92d4008 	push	{r3, lr}
   4:	e5900008 	ldr	r0, [r0, #8]
   8:	ebfffffe 	bl	0 <vexMotorTemperatureGet>
   c:	eef30b04 	vmov.f64	d16, #52	; 0x41a00000  20.0
  10:	ec410b31 	vmov	d17, r0, r1
  14:	ee710be0 	vsub.f64	d16, d17, d16
  18:	eddf1b0c 	vldr	d17, [pc, #48]	; 50 <_ZN3vex5motor11temperatureENS_12percentUnitsE+0x50>
  1c:	eec00ba1 	vdiv.f64	d16, d16, d17
  20:	eddf1b0c 	vldr	d17, [pc, #48]	; 58 <_ZN3vex5motor11temperatureENS_12percentUnitsE+0x58>
  24:	ee600ba1 	vmul.f64	d16, d16, d17
  28:	eef50bc0 	vcmpe.f64	d16, #0.0
  2c:	eef1fa10 	vmrs	APSR_nzcv, fpscr
  30:	4ddf0b0a 	vldrmi	d16, [pc, #40]	; 60 <_ZN3vex5motor11temperatureENS_12percentUnitsE+0x60>
  34:	4a000002 	bmi	44 <_ZN3vex5motor11temperatureENS_12percentUnitsE+0x44>
  38:	eef40b61 	vcmp.f64	d16, d17
  3c:	eef1fa10 	vmrs	APSR_nzcv, fpscr
  40:	cef00b61 	vmovgt.f64	d16, d17
  44:	ec510b30 	vmov	r0, r1, d16
  48:	e8bd8008 	pop	{r3, pc}
  4c:	e320f000 	nop	{0}
  50:	00000000 	andeq	r0, r0, r0
  54:	40490000 	submi	r0, r9, r0
  58:	00000000 	andeq	r0, r0, r0
  5c:	40590000 	subsmi	r0, r9, r0
	...

Disassembly of section .text._ZN3vex5motor11temperatureENS_16temperatureUnitsE:

00000000 <_ZN3vex5motor11temperatureENS_16temperatureUnitsE>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	e5900008 	ldr	r0, [r0, #8]
   c:	ebfffffe 	bl	0 <vexMotorTemperatureGet>
  10:	e3540001 	cmp	r4, #1
  14:	0ddf1b05 	vldreq	d17, [pc, #20]	; 30 <_ZN3vex5motor11temperatureENS_16temperatureUnitsE+0x30>
  18:	0ddf2b06 	vldreq	d18, [pc, #24]	; 38 <_ZN3vex5motor11temperatureENS_16temperatureUnitsE+0x38>
  1c:	ec410b30 	vmov	d16, r0, r1
  20:	0e401ba2 	vmlaeq.f64	d17, d16, d18
  24:	0ef00b61 	vmoveq.f64	d16, d17
  28:	ec510b30 	vmov	r0, r1, d16
  2c:	e8bd8010 	pop	{r4, pc}
  30:	00000000 	andeq	r0, r0, r0
  34:	40400000 	submi	r0, r0, r0
  38:	cccccccd 	stclgt	12, cr12, [ip], {205}	; 0xcd
  3c:	3ffccccc 	svccc	0x00fccccc

Disassembly of section .text._ZN3vex5motor12getMotorTypeEv:

00000000 <_ZN3vex5motor12getMotorTypeEv>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <_ZN3vex6device4typeEv>
   c:	e3500002 	cmp	r0, #2
  10:	1a000003 	bne	24 <_ZN3vex5motor12getMotorTypeEv+0x24>
  14:	e1a00004 	mov	r0, r4
  18:	ebfffffe 	bl	0 <_ZN3vex6device5flagsEv>
  1c:	e2000001 	and	r0, r0, #1
  20:	e8bd8010 	pop	{r4, pc}
  24:	e3e00000 	mvn	r0, #0
  28:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex5motor16velocityToScaledEdNS_13velocityUnitsE:

00000000 <_ZN3vex5motor16velocityToScaledEdNS_13velocityUnitsE>:
   0:	e92d4010 	push	{r4, lr}
   4:	e5900008 	ldr	r0, [r0, #8]
   8:	ed2d8b02 	vpush	{d8}
   c:	e59d4010 	ldr	r4, [sp, #16]
  10:	ec432b18 	vmov	d8, r2, r3
  14:	ebfffffe 	bl	0 <vexMotorGearingGet>
  18:	e3500001 	cmp	r0, #1
  1c:	03a03002 	moveq	r3, #2
  20:	0a000002 	beq	30 <_ZN3vex5motor16velocityToScaledEdNS_13velocityUnitsE+0x30>
  24:	e3500002 	cmp	r0, #2
  28:	03a03006 	moveq	r3, #6
  2c:	13a03001 	movne	r3, #1
  30:	e3540000 	cmp	r4, #0
  34:	0e073a90 	vmoveq	s15, r3
  38:	0ef80be7 	vcvteq.f64.s32	d16, s15
  3c:	0e888b20 	vdiveq.f64	d8, d8, d16
  40:	0a000002 	beq	50 <_ZN3vex5motor16velocityToScaledEdNS_13velocityUnitsE+0x50>
  44:	e3540002 	cmp	r4, #2
  48:	0ef10b08 	vmoveq.f64	d16, #24	; 0x40c00000  6.0
  4c:	0e288b20 	vmuleq.f64	d8, d8, d16
  50:	ec510b18 	vmov	r0, r1, d8
  54:	ecbd8b02 	vpop	{d8}
  58:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex5motor11getVelocityENS_13velocityUnitsE:

00000000 <_ZN3vex5motor11getVelocityENS_13velocityUnitsE>:
   0:	e92d4007 	push	{r0, r1, r2, lr}
   4:	e5902014 	ldr	r2, [r0, #20]
   8:	e58d1000 	str	r1, [sp]
   c:	ee072a90 	vmov	s15, r2
  10:	eef80be7 	vcvt.f64.s32	d16, s15
  14:	ec532b30 	vmov	r2, r3, d16
  18:	ebfffffe 	bl	0 <_ZN3vex5motor11getVelocityENS_13velocityUnitsE>
  1c:	e28dd00c 	add	sp, sp, #12
  20:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

Disassembly of section .text._ZN3vex5motor8velocityENS_13velocityUnitsE:

00000000 <_ZN3vex5motor8velocityENS_13velocityUnitsE>:
   0:	e92d4037 	push	{r0, r1, r2, r4, r5, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e5900008 	ldr	r0, [r0, #8]
   c:	e1a05001 	mov	r5, r1
  10:	ebfffffe 	bl	0 <vexMotorActualVelocityGet>
  14:	e58d5000 	str	r5, [sp]
  18:	e1a02000 	mov	r2, r0
  1c:	e1a03001 	mov	r3, r1
  20:	e1a00004 	mov	r0, r4
  24:	ebfffffe 	bl	0 <_ZN3vex5motor8velocityENS_13velocityUnitsE>
  28:	e28dd00c 	add	sp, sp, #12
  2c:	e8bd8030 	pop	{r4, r5, pc}

Disassembly of section .text._ZN3vex5motor5valueEv:

00000000 <_ZN3vex5motor5valueEv>:
   0:	e92d4008 	push	{r3, lr}
   4:	e3a01000 	mov	r1, #0
   8:	ebfffffe 	bl	0 <_ZN3vex5motor5valueEv>
   c:	ec410b30 	vmov	d16, r0, r1
  10:	eefd7be0 	vcvt.s32.f64	s15, d16
  14:	ee170a90 	vmov	r0, s15
  18:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text._ZN3vex5motor7commandENS_13velocityUnitsE:

00000000 <_ZN3vex5motor7commandENS_13velocityUnitsE>:
   0:	e92d4037 	push	{r0, r1, r2, r4, r5, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e5900008 	ldr	r0, [r0, #8]
   c:	e1a05001 	mov	r5, r1
  10:	ebfffffe 	bl	0 <vexMotorVelocityGet>
  14:	e58d5000 	str	r5, [sp]
  18:	ee070a90 	vmov	s15, r0
  1c:	e1a00004 	mov	r0, r4
  20:	eef80be7 	vcvt.f64.s32	d16, s15
  24:	ec532b30 	vmov	r2, r3, d16
  28:	ebfffffe 	bl	0 <_ZN3vex5motor7commandENS_13velocityUnitsE>
  2c:	e28dd00c 	add	sp, sp, #12
  30:	e8bd8030 	pop	{r4, r5, pc}

Disassembly of section .text._ZN3vex5motor16scaledToVelocityEdNS_13velocityUnitsE:

00000000 <_ZN3vex5motor16scaledToVelocityEdNS_13velocityUnitsE>:
   0:	e92d4010 	push	{r4, lr}
   4:	e5900008 	ldr	r0, [r0, #8]
   8:	ed2d8b02 	vpush	{d8}
   c:	e59d4010 	ldr	r4, [sp, #16]
  10:	ec432b18 	vmov	d8, r2, r3
  14:	ebfffffe 	bl	0 <vexMotorGearingGet>
  18:	e3500001 	cmp	r0, #1
  1c:	03a02002 	moveq	r2, #2
  20:	0a000002 	beq	30 <_ZN3vex5motor16scaledToVelocityEdNS_13velocityUnitsE+0x30>
  24:	e3500002 	cmp	r0, #2
  28:	03a02006 	moveq	r2, #6
  2c:	13a02001 	movne	r2, #1
  30:	e3540000 	cmp	r4, #0
  34:	0e072a90 	vmoveq	s15, r2
  38:	0ef80be7 	vcvteq.f64.s32	d16, s15
  3c:	0e288b20 	vmuleq.f64	d8, d8, d16
  40:	0a000002 	beq	50 <_ZN3vex5motor16scaledToVelocityEdNS_13velocityUnitsE+0x50>
  44:	e3540002 	cmp	r4, #2
  48:	0ef10b08 	vmoveq.f64	d16, #24	; 0x40c00000  6.0
  4c:	0e888b20 	vdiveq.f64	d8, d8, d16
  50:	e3a03064 	mov	r3, #100	; 0x64
  54:	e0030293 	mul	r3, r3, r2
  58:	ee073a90 	vmov	s15, r3
  5c:	eef80be7 	vcvt.f64.s32	d16, s15
  60:	eefd7bc8 	vcvt.s32.f64	s15, d8
  64:	ee173a90 	vmov	r3, s15
  68:	e3530000 	cmp	r3, #0
  6c:	b2633000 	rsblt	r3, r3, #0
  70:	ee073a90 	vmov	s15, r3
  74:	eef81be7 	vcvt.f64.s32	d17, s15
  78:	eef41be0 	vcmpe.f64	d17, d16
  7c:	eef1fa10 	vmrs	APSR_nzcv, fpscr
  80:	da000003 	ble	94 <_ZN3vex5motor16scaledToVelocityEdNS_13velocityUnitsE+0x94>
  84:	eeb58bc0 	vcmpe.f64	d8, #0.0
  88:	eef1fa10 	vmrs	APSR_nzcv, fpscr
  8c:	beb18b60 	vneglt.f64	d8, d16
  90:	aeb08b60 	vmovge.f64	d8, d16
  94:	eefd7bc8 	vcvt.s32.f64	s15, d8
  98:	ecbd8b02 	vpop	{d8}
  9c:	ee170a90 	vmov	r0, s15
  a0:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex5motor4spinENS_13directionTypeEdNS_13velocityUnitsE:

00000000 <_ZN3vex5motor4spinENS_13directionTypeEdNS_13velocityUnitsE>:
   0:	e92d4073 	push	{r0, r1, r4, r5, r6, lr}
   4:	e1a06001 	mov	r6, r1
   8:	e59d1018 	ldr	r1, [sp, #24]
   c:	e1a04000 	mov	r4, r0
  10:	e58d1000 	str	r1, [sp]
  14:	ebfffffe 	bl	0 <_ZN3vex5motor4spinENS_13directionTypeEdNS_13velocityUnitsE>
  18:	e3560000 	cmp	r6, #0
  1c:	e1a05000 	mov	r5, r0
  20:	12605000 	rsbne	r5, r0, #0
  24:	e5940008 	ldr	r0, [r4, #8]
  28:	e1a01005 	mov	r1, r5
  2c:	ebfffffe 	bl	0 <vexMotorVelocitySet>
  30:	e3550000 	cmp	r5, #0
  34:	13a03003 	movne	r3, #3
  38:	15843018 	strne	r3, [r4, #24]
  3c:	1a000002 	bne	4c <_ZN3vex5motor4spinENS_13directionTypeEdNS_13velocityUnitsE+0x4c>
  40:	e1a00004 	mov	r0, r4
  44:	e594101c 	ldr	r1, [r4, #28]
  48:	ebfffffe 	bl	0 <_ZN3vex5motor4spinENS_13directionTypeEdNS_13velocityUnitsE>
  4c:	e3a03001 	mov	r3, #1
  50:	e5c43020 	strb	r3, [r4, #32]
  54:	e28dd008 	add	sp, sp, #8
  58:	e8bd8070 	pop	{r4, r5, r6, pc}

Disassembly of section .text._ZN3vex5motor4spinENS_13directionTypeE:

00000000 <_ZN3vex5motor4spinENS_13directionTypeE>:
   0:	e92d4007 	push	{r0, r1, r2, lr}
   4:	e3a03001 	mov	r3, #1
   8:	e5902014 	ldr	r2, [r0, #20]
   c:	e58d3000 	str	r3, [sp]
  10:	ee072a90 	vmov	s15, r2
  14:	eef80be7 	vcvt.f64.s32	d16, s15
  18:	ec532b30 	vmov	r2, r3, d16
  1c:	ebfffffe 	bl	0 <_ZN3vex5motor4spinENS_13directionTypeE>
  20:	e28dd00c 	add	sp, sp, #12
  24:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

Disassembly of section .text._ZN3vex5motor7spinForEdNS_9timeUnitsEdNS_13velocityUnitsE:

00000000 <_ZN3vex5motor7spinForEdNS_9timeUnitsEdNS_13velocityUnitsE>:
   0:	e92d4010 	push	{r4, lr}
   4:	ec432b30 	vmov	d16, r2, r3
   8:	ed2d8b02 	vpush	{d8}
   c:	e24dd008 	sub	sp, sp, #8
  10:	e59d3018 	ldr	r3, [sp, #24]
  14:	e3530000 	cmp	r3, #0
  18:	0ddf1b14 	vldreq	d17, [pc, #80]	; 70 <_ZN3vex5motor7spinForEdNS_9timeUnitsEdNS_13velocityUnitsE+0x70>
  1c:	0e600ba1 	vmuleq.f64	d16, d16, d17
  20:	eebd8be0 	vcvt.s32.f64	s16, d16
  24:	ee183a10 	vmov	r3, s16
  28:	e3530000 	cmp	r3, #0
  2c:	d3a00000 	movle	r0, #0
  30:	da00000a 	ble	60 <_ZN3vex5motor7spinForEdNS_9timeUnitsEdNS_13velocityUnitsE+0x60>
  34:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
  38:	e3a01000 	mov	r1, #0
  3c:	e1a04000 	mov	r4, r0
  40:	e58d3000 	str	r3, [sp]
  44:	e1cd22d0 	ldrd	r2, [sp, #32]
  48:	ebfffffe 	bl	0 <_ZN3vex5motor7spinForEdNS_9timeUnitsEdNS_13velocityUnitsE>
  4c:	ee180a10 	vmov	r0, s16
  50:	ebfffffe 	bl	0 <vexTaskSleep>
  54:	e1a00004 	mov	r0, r4
  58:	ebfffffe 	bl	0 <_ZN3vex5motor7spinForEdNS_9timeUnitsEdNS_13velocityUnitsE>
  5c:	e3a00001 	mov	r0, #1
  60:	e28dd008 	add	sp, sp, #8
  64:	ecbd8b02 	vpop	{d8}
  68:	e8bd8010 	pop	{r4, pc}
  6c:	e320f000 	nop	{0}
  70:	00000000 	andeq	r0, r0, r0
  74:	408f4000 	addmi	r4, pc, r0

Disassembly of section .text._ZN3vex5motor7spinForENS_13directionTypeEdNS_9timeUnitsEdNS_13velocityUnitsE:

00000000 <_ZN3vex5motor7spinForENS_13directionTypeEdNS_9timeUnitsEdNS_13velocityUnitsE>:
   0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
   4:	e3510000 	cmp	r1, #0
   8:	eddd0b03 	vldr	d16, [sp, #12]
   c:	e59de004 	ldr	lr, [sp, #4]
  10:	e59dc014 	ldr	ip, [sp, #20]
  14:	1ef10b60 	vnegne.f64	d16, d16
  18:	e58de004 	str	lr, [sp, #4]
  1c:	e58dc014 	str	ip, [sp, #20]
  20:	edcd0b03 	vstr	d16, [sp, #12]
  24:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
  28:	eafffffe 	b	0 <_ZN3vex5motor7spinForENS_13directionTypeEdNS_9timeUnitsEdNS_13velocityUnitsE>

Disassembly of section .text._ZN3vex5motor7spinForEdNS_9timeUnitsE:

00000000 <_ZN3vex5motor7spinForEdNS_9timeUnitsE>:
   0:	e92d407f 	push	{r0, r1, r2, r3, r4, r5, r6, lr}
   4:	e59d1020 	ldr	r1, [sp, #32]
   8:	e58d1000 	str	r1, [sp]
   c:	e3a01001 	mov	r1, #1
  10:	edd07a05 	vldr	s15, [r0, #20]
  14:	e58d1010 	str	r1, [sp, #16]
  18:	eef80be7 	vcvt.f64.s32	d16, s15
  1c:	edcd0b02 	vstr	d16, [sp, #8]
  20:	ebfffffe 	bl	0 <_ZN3vex5motor7spinForEdNS_9timeUnitsE>
  24:	e28dd01c 	add	sp, sp, #28
  28:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

Disassembly of section .text._ZN3vex5motor7spinForENS_13directionTypeEdNS_9timeUnitsE:

00000000 <_ZN3vex5motor7spinForENS_13directionTypeEdNS_9timeUnitsE>:
   0:	e92d4030 	push	{r4, r5, lr}
   4:	e1a05003 	mov	r5, r3
   8:	e5903014 	ldr	r3, [r0, #20]
   c:	e3510000 	cmp	r1, #0
  10:	e24dd01c 	sub	sp, sp, #28
  14:	12633000 	rsbne	r3, r3, #0
  18:	ee073a90 	vmov	s15, r3
  1c:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
  20:	eef80be7 	vcvt.f64.s32	d16, s15
  24:	e58d3000 	str	r3, [sp]
  28:	e3a03001 	mov	r3, #1
  2c:	e58d3010 	str	r3, [sp, #16]
  30:	e1a03005 	mov	r3, r5
  34:	edcd0b02 	vstr	d16, [sp, #8]
  38:	ebfffffe 	bl	0 <_ZN3vex5motor7spinForENS_13directionTypeEdNS_9timeUnitsE>
  3c:	e28dd01c 	add	sp, sp, #28
  40:	e8bd8030 	pop	{r4, r5, pc}

Disassembly of section .text._ZN3vex5motor11setVelocityEdNS_13velocityUnitsE:

00000000 <_ZN3vex5motor11setVelocityEdNS_13velocityUnitsE>:
   0:	e92d40f7 	push	{r0, r1, r2, r4, r5, r6, r7, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e59d5020 	ldr	r5, [sp, #32]
   c:	e1a07003 	mov	r7, r3
  10:	e1a06002 	mov	r6, r2
  14:	e58d5000 	str	r5, [sp]
  18:	ebfffffe 	bl	0 <_ZN3vex5motor11setVelocityEdNS_13velocityUnitsE>
  1c:	e5d43020 	ldrb	r3, [r4, #32]
  20:	e3530000 	cmp	r3, #0
  24:	e5840014 	str	r0, [r4, #20]
  28:	0a000007 	beq	4c <_ZN3vex5motor11setVelocityEdNS_13velocityUnitsE+0x4c>
  2c:	e58d5020 	str	r5, [sp, #32]
  30:	e1a00004 	mov	r0, r4
  34:	e3a01000 	mov	r1, #0
  38:	e1a02006 	mov	r2, r6
  3c:	e1a03007 	mov	r3, r7
  40:	e28dd00c 	add	sp, sp, #12
  44:	e8bd40f0 	pop	{r4, r5, r6, r7, lr}
  48:	eafffffe 	b	0 <_ZN3vex5motor11setVelocityEdNS_13velocityUnitsE>
  4c:	e28dd00c 	add	sp, sp, #12
  50:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}

Disassembly of section .text._ZN3vex5motor16setRotationUnitsENS_13rotationUnitsE:

00000000 <_ZN3vex5motor16setRotationUnitsENS_13rotationUnitsE>:
   0:	e3510001 	cmp	r1, #1
   4:	e5900008 	ldr	r0, [r0, #8]
   8:	0a000002 	beq	18 <_ZN3vex5motor16setRotationUnitsENS_13rotationUnitsE+0x18>
   c:	e3510063 	cmp	r1, #99	; 0x63
  10:	13a01000 	movne	r1, #0
  14:	03a01002 	moveq	r1, #2
  18:	eafffffe 	b	0 <vexMotorEncoderUnitsSet>

Disassembly of section .text._ZN3vex5motor11setPositionEdNS_13rotationUnitsE:

00000000 <_ZN3vex5motor11setPositionEdNS_13rotationUnitsE>:
   0:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e59d5018 	ldr	r5, [sp, #24]
   c:	e3a00001 	mov	r0, #1
  10:	e1a06002 	mov	r6, r2
  14:	e1a07003 	mov	r7, r3
  18:	ebfffffe 	bl	0 <vexCriticalSection>
  1c:	e1a00004 	mov	r0, r4
  20:	e1a01005 	mov	r1, r5
  24:	ebfffffe 	bl	0 <_ZN3vex5motor11setPositionEdNS_13rotationUnitsE>
  28:	e5940008 	ldr	r0, [r4, #8]
  2c:	e1a02006 	mov	r2, r6
  30:	e1a03007 	mov	r3, r7
  34:	ebfffffe 	bl	0 <vexMotorPositionSet>
  38:	e3a00000 	mov	r0, #0
  3c:	e8bd40f8 	pop	{r3, r4, r5, r6, r7, lr}
  40:	eafffffe 	b	0 <vexCriticalSection>

Disassembly of section .text._ZN3vex5motor13resetPositionEv:

00000000 <_ZN3vex5motor13resetPositionEv>:
   0:	e92d4007 	push	{r0, r1, r2, lr}
   4:	e3a03063 	mov	r3, #99	; 0x63
   8:	e3a02000 	mov	r2, #0
   c:	e58d3000 	str	r3, [sp]
  10:	e3a03000 	mov	r3, #0
  14:	ebfffffe 	bl	0 <_ZN3vex5motor13resetPositionEv>
  18:	e28dd00c 	add	sp, sp, #12
  1c:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

Disassembly of section .text._ZN3vex5motor6spinToEdNS_13rotationUnitsEdNS_13velocityUnitsEb:

00000000 <_ZN3vex5motor6spinToEdNS_13rotationUnitsEdNS_13velocityUnitsEb>:
   0:	e92d40f7 	push	{r0, r1, r2, r4, r5, r6, r7, lr}
   4:	e1a07003 	mov	r7, r3
   8:	e59d3030 	ldr	r3, [sp, #48]	; 0x30
   c:	e1a06002 	mov	r6, r2
  10:	e1a05000 	mov	r5, r0
  14:	e58d3000 	str	r3, [sp]
  18:	e1cd22d8 	ldrd	r2, [sp, #40]	; 0x28
  1c:	ebfffffe 	bl	0 <_ZN3vex5motor6spinToEdNS_13rotationUnitsEdNS_13velocityUnitsEb>
  20:	e1a04000 	mov	r4, r0
  24:	e3a00001 	mov	r0, #1
  28:	ebfffffe 	bl	0 <vexCriticalSection>
  2c:	e59d1020 	ldr	r1, [sp, #32]
  30:	e1a00005 	mov	r0, r5
  34:	ebfffffe 	bl	0 <_ZN3vex5motor6spinToEdNS_13rotationUnitsEdNS_13velocityUnitsEb>
  38:	e3540000 	cmp	r4, #0
  3c:	b2644000 	rsblt	r4, r4, #0
  40:	e1a03007 	mov	r3, r7
  44:	e58d4000 	str	r4, [sp]
  48:	e1a02006 	mov	r2, r6
  4c:	e5950008 	ldr	r0, [r5, #8]
  50:	e3a04000 	mov	r4, #0
  54:	ebfffffe 	bl	0 <vexMotorAbsoluteTargetSet>
  58:	e3a00000 	mov	r0, #0
  5c:	ebfffffe 	bl	0 <vexCriticalSection>
  60:	e5dd3034 	ldrb	r3, [sp, #52]	; 0x34
  64:	e5c54020 	strb	r4, [r5, #32]
  68:	e1530004 	cmp	r3, r4
  6c:	1a000001 	bne	78 <_ZN3vex5motor6spinToEdNS_13rotationUnitsEdNS_13velocityUnitsEb+0x78>
  70:	e3a00000 	mov	r0, #0
  74:	ea000017 	b	d8 <_ZN3vex5motor6spinToEdNS_13rotationUnitsEdNS_13velocityUnitsEb+0xd8>
  78:	e5956010 	ldr	r6, [r5, #16]
  7c:	e1e03006 	mvn	r3, r6
  80:	e1a03fa3 	lsr	r3, r3, #31
  84:	e1540003 	cmp	r4, r3
  88:	2a00000a 	bcs	b8 <_ZN3vex5motor6spinToEdNS_13rotationUnitsEdNS_13velocityUnitsEb+0xb8>
  8c:	e3a0000a 	mov	r0, #10
  90:	ebfffffe 	bl	0 <vexTaskSleep>
  94:	e5950008 	ldr	r0, [r5, #8]
  98:	ebfffffe 	bl	0 <vexMotorZeroPositionFlagGet>
  9c:	e1a04000 	mov	r4, r0
  a0:	e1a00005 	mov	r0, r5
  a4:	ebfffffe 	bl	0 <_ZN3vex5motor6spinToEdNS_13rotationUnitsEdNS_13velocityUnitsEb>
  a8:	e3500000 	cmp	r0, #0
  ac:	0affffef 	beq	70 <_ZN3vex5motor6spinToEdNS_13rotationUnitsEdNS_13velocityUnitsEb+0x70>
  b0:	e246600a 	sub	r6, r6, #10
  b4:	eafffff0 	b	7c <_ZN3vex5motor6spinToEdNS_13rotationUnitsEdNS_13velocityUnitsEb+0x7c>
  b8:	e3540000 	cmp	r4, #0
  bc:	1a000001 	bne	c8 <_ZN3vex5motor6spinToEdNS_13rotationUnitsEdNS_13velocityUnitsEb+0xc8>
  c0:	e1a00005 	mov	r0, r5
  c4:	ebfffffe 	bl	0 <_ZN3vex5motor6spinToEdNS_13rotationUnitsEdNS_13velocityUnitsEb>
  c8:	e1a00005 	mov	r0, r5
  cc:	e595101c 	ldr	r1, [r5, #28]
  d0:	ebfffffe 	bl	0 <_ZN3vex5motor6spinToEdNS_13rotationUnitsEdNS_13velocityUnitsEb>
  d4:	e1a00004 	mov	r0, r4
  d8:	e28dd00c 	add	sp, sp, #12
  dc:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}

Disassembly of section .text._ZN3vex5motor14spinToPositionEdNS_13rotationUnitsEdNS_13velocityUnitsEb:

00000000 <_ZN3vex5motor14spinToPositionEdNS_13rotationUnitsEdNS_13velocityUnitsEb>:
   0:	e92d4030 	push	{r4, r5, lr}
   4:	e5dd1020 	ldrb	r1, [sp, #32]
   8:	e58d1020 	str	r1, [sp, #32]
   c:	e8bd4030 	pop	{r4, r5, lr}
  10:	eafffffe 	b	0 <_ZN3vex5motor14spinToPositionEdNS_13rotationUnitsEdNS_13velocityUnitsEb>

Disassembly of section .text._ZN3vex5motor6spinToEdNS_13rotationUnitsEb:

00000000 <_ZN3vex5motor6spinToEdNS_13rotationUnitsEb>:
   0:	e92d407f 	push	{r0, r1, r2, r3, r4, r5, r6, lr}
   4:	e59d1020 	ldr	r1, [sp, #32]
   8:	e58d1000 	str	r1, [sp]
   c:	e3a01001 	mov	r1, #1
  10:	edd07a05 	vldr	s15, [r0, #20]
  14:	e58d1010 	str	r1, [sp, #16]
  18:	e5dd1024 	ldrb	r1, [sp, #36]	; 0x24
  1c:	eef80be7 	vcvt.f64.s32	d16, s15
  20:	e58d1014 	str	r1, [sp, #20]
  24:	edcd0b02 	vstr	d16, [sp, #8]
  28:	ebfffffe 	bl	0 <_ZN3vex5motor6spinToEdNS_13rotationUnitsEb>
  2c:	e28dd01c 	add	sp, sp, #28
  30:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

Disassembly of section .text._ZN3vex5motor14spinToPositionEdNS_13rotationUnitsEb:

00000000 <_ZN3vex5motor14spinToPositionEdNS_13rotationUnitsEb>:
   0:	e92d407f 	push	{r0, r1, r2, r3, r4, r5, r6, lr}
   4:	e59d1020 	ldr	r1, [sp, #32]
   8:	e58d1000 	str	r1, [sp]
   c:	e3a01001 	mov	r1, #1
  10:	edd07a05 	vldr	s15, [r0, #20]
  14:	e58d1010 	str	r1, [sp, #16]
  18:	e5dd1024 	ldrb	r1, [sp, #36]	; 0x24
  1c:	eef80be7 	vcvt.f64.s32	d16, s15
  20:	e58d1014 	str	r1, [sp, #20]
  24:	edcd0b02 	vstr	d16, [sp, #8]
  28:	ebfffffe 	bl	0 <_ZN3vex5motor14spinToPositionEdNS_13rotationUnitsEb>
  2c:	e28dd01c 	add	sp, sp, #28
  30:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

Disassembly of section .text._ZN3vex5motor7spinForEdNS_13rotationUnitsEdNS_13velocityUnitsEb:

00000000 <_ZN3vex5motor7spinForEdNS_13rotationUnitsEdNS_13velocityUnitsEb>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	ed2d8b02 	vpush	{d8}
   c:	ec432b18 	vmov	d8, r2, r3
  10:	e24dd008 	sub	sp, sp, #8
  14:	e59d3030 	ldr	r3, [sp, #48]	; 0x30
  18:	e58d3000 	str	r3, [sp]
  1c:	e1cd22d8 	ldrd	r2, [sp, #40]	; 0x28
  20:	ebfffffe 	bl	0 <_ZN3vex5motor7spinForEdNS_13rotationUnitsEdNS_13velocityUnitsEb>
  24:	eeb58b40 	vcmp.f64	d8, #0.0
  28:	eef1fa10 	vmrs	APSR_nzcv, fpscr
  2c:	03a00001 	moveq	r0, #1
  30:	0a00002c 	beq	e8 <_ZN3vex5motor7spinForEdNS_13rotationUnitsEdNS_13velocityUnitsEb+0xe8>
  34:	e1a04000 	mov	r4, r0
  38:	e3a00001 	mov	r0, #1
  3c:	ebfffffe 	bl	0 <vexCriticalSection>
  40:	e59d1020 	ldr	r1, [sp, #32]
  44:	e1a00005 	mov	r0, r5
  48:	ebfffffe 	bl	0 <_ZN3vex5motor7spinForEdNS_13rotationUnitsEdNS_13velocityUnitsEb>
  4c:	e3540000 	cmp	r4, #0
  50:	b2644000 	rsblt	r4, r4, #0
  54:	ec532b18 	vmov	r2, r3, d8
  58:	e58d4000 	str	r4, [sp]
  5c:	e3a04000 	mov	r4, #0
  60:	e5950008 	ldr	r0, [r5, #8]
  64:	ebfffffe 	bl	0 <vexMotorRelativeTargetSet>
  68:	e3a00000 	mov	r0, #0
  6c:	ebfffffe 	bl	0 <vexCriticalSection>
  70:	e5dd3034 	ldrb	r3, [sp, #52]	; 0x34
  74:	e5c54020 	strb	r4, [r5, #32]
  78:	e1530004 	cmp	r3, r4
  7c:	1a000001 	bne	88 <_ZN3vex5motor7spinForEdNS_13rotationUnitsEdNS_13velocityUnitsEb+0x88>
  80:	e3a00000 	mov	r0, #0
  84:	ea000017 	b	e8 <_ZN3vex5motor7spinForEdNS_13rotationUnitsEdNS_13velocityUnitsEb+0xe8>
  88:	e5956010 	ldr	r6, [r5, #16]
  8c:	e1e03006 	mvn	r3, r6
  90:	e1a03fa3 	lsr	r3, r3, #31
  94:	e1540003 	cmp	r4, r3
  98:	2a00000a 	bcs	c8 <_ZN3vex5motor7spinForEdNS_13rotationUnitsEdNS_13velocityUnitsEb+0xc8>
  9c:	e3a0000a 	mov	r0, #10
  a0:	ebfffffe 	bl	0 <vexTaskSleep>
  a4:	e5950008 	ldr	r0, [r5, #8]
  a8:	ebfffffe 	bl	0 <vexMotorZeroPositionFlagGet>
  ac:	e1a04000 	mov	r4, r0
  b0:	e1a00005 	mov	r0, r5
  b4:	ebfffffe 	bl	0 <_ZN3vex5motor7spinForEdNS_13rotationUnitsEdNS_13velocityUnitsEb>
  b8:	e3500000 	cmp	r0, #0
  bc:	0affffef 	beq	80 <_ZN3vex5motor7spinForEdNS_13rotationUnitsEdNS_13velocityUnitsEb+0x80>
  c0:	e246600a 	sub	r6, r6, #10
  c4:	eafffff0 	b	8c <_ZN3vex5motor7spinForEdNS_13rotationUnitsEdNS_13velocityUnitsEb+0x8c>
  c8:	e3540000 	cmp	r4, #0
  cc:	1a000001 	bne	d8 <_ZN3vex5motor7spinForEdNS_13rotationUnitsEdNS_13velocityUnitsEb+0xd8>
  d0:	e1a00005 	mov	r0, r5
  d4:	ebfffffe 	bl	0 <_ZN3vex5motor7spinForEdNS_13rotationUnitsEdNS_13velocityUnitsEb>
  d8:	e1a00005 	mov	r0, r5
  dc:	e595101c 	ldr	r1, [r5, #28]
  e0:	ebfffffe 	bl	0 <_ZN3vex5motor7spinForEdNS_13rotationUnitsEdNS_13velocityUnitsEb>
  e4:	e1a00004 	mov	r0, r4
  e8:	e28dd008 	add	sp, sp, #8
  ec:	ecbd8b02 	vpop	{d8}
  f0:	e8bd8070 	pop	{r4, r5, r6, pc}

Disassembly of section .text._ZN3vex5motor7spinForENS_13directionTypeEdNS_13rotationUnitsEdNS_13velocityUnitsEb:

00000000 <_ZN3vex5motor7spinForENS_13directionTypeEdNS_13rotationUnitsEdNS_13velocityUnitsEb>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e3510000 	cmp	r1, #0
   8:	e59d6010 	ldr	r6, [sp, #16]
   c:	12233102 	eorne	r3, r3, #-2147483648	; 0x80000000
  10:	e1cd41d8 	ldrd	r4, [sp, #24]
  14:	e59de020 	ldr	lr, [sp, #32]
  18:	e5ddc024 	ldrb	ip, [sp, #36]	; 0x24
  1c:	e58d6010 	str	r6, [sp, #16]
  20:	e1cd41f8 	strd	r4, [sp, #24]
  24:	e58de020 	str	lr, [sp, #32]
  28:	e58dc024 	str	ip, [sp, #36]	; 0x24
  2c:	e8bd4070 	pop	{r4, r5, r6, lr}
  30:	eafffffe 	b	0 <_ZN3vex5motor7spinForENS_13directionTypeEdNS_13rotationUnitsEdNS_13velocityUnitsEb>

Disassembly of section .text._ZN3vex5motor7spinForEdNS_13rotationUnitsEb:

00000000 <_ZN3vex5motor7spinForEdNS_13rotationUnitsEb>:
   0:	e92d407f 	push	{r0, r1, r2, r3, r4, r5, r6, lr}
   4:	e59d1020 	ldr	r1, [sp, #32]
   8:	e58d1000 	str	r1, [sp]
   c:	e3a01001 	mov	r1, #1
  10:	edd07a05 	vldr	s15, [r0, #20]
  14:	e58d1010 	str	r1, [sp, #16]
  18:	e5dd1024 	ldrb	r1, [sp, #36]	; 0x24
  1c:	eef80be7 	vcvt.f64.s32	d16, s15
  20:	e58d1014 	str	r1, [sp, #20]
  24:	edcd0b02 	vstr	d16, [sp, #8]
  28:	ebfffffe 	bl	0 <_ZN3vex5motor7spinForEdNS_13rotationUnitsEb>
  2c:	e28dd01c 	add	sp, sp, #28
  30:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

Disassembly of section .text._ZN3vex5motor7spinForENS_13directionTypeEdNS_13rotationUnitsEb:

00000000 <_ZN3vex5motor7spinForENS_13directionTypeEdNS_13rotationUnitsEb>:
   0:	e92d407f 	push	{r0, r1, r2, r3, r4, r5, r6, lr}
   4:	e3510000 	cmp	r1, #0
   8:	e59d1020 	ldr	r1, [sp, #32]
   c:	12233102 	eorne	r3, r3, #-2147483648	; 0x80000000
  10:	e58d1000 	str	r1, [sp]
  14:	e3a01001 	mov	r1, #1
  18:	edd07a05 	vldr	s15, [r0, #20]
  1c:	e58d1010 	str	r1, [sp, #16]
  20:	e5dd1024 	ldrb	r1, [sp, #36]	; 0x24
  24:	eef80be7 	vcvt.f64.s32	d16, s15
  28:	e58d1014 	str	r1, [sp, #20]
  2c:	edcd0b02 	vstr	d16, [sp, #8]
  30:	ebfffffe 	bl	0 <_ZN3vex5motor7spinForENS_13directionTypeEdNS_13rotationUnitsEb>
  34:	e28dd01c 	add	sp, sp, #28
  38:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

Disassembly of section .text._ZN3vex5motor8positionENS_13rotationUnitsE:

00000000 <_ZN3vex5motor8positionENS_13rotationUnitsE>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e1a05001 	mov	r5, r1
   c:	e3a00001 	mov	r0, #1
  10:	ebfffffe 	bl	0 <vexCriticalSection>
  14:	e1a00004 	mov	r0, r4
  18:	e1a01005 	mov	r1, r5
  1c:	ebfffffe 	bl	0 <_ZN3vex5motor8positionENS_13rotationUnitsE>
  20:	e5940008 	ldr	r0, [r4, #8]
  24:	ebfffffe 	bl	0 <vexMotorPositionGet>
  28:	e1a04000 	mov	r4, r0
  2c:	e1a05001 	mov	r5, r1
  30:	e3a00000 	mov	r0, #0
  34:	ebfffffe 	bl	0 <vexCriticalSection>
  38:	e1a00004 	mov	r0, r4
  3c:	e1a01005 	mov	r1, r5
  40:	e8bd8038 	pop	{r3, r4, r5, pc}

Disassembly of section .rodata._ZTVN3vex5motorE:

00000000 <_ZTVN3vex5motorE>:
	...

Disassembly of section .data._ZN3vex24__default_motor_velocityE:

00000000 <_ZN3vex24__default_motor_velocityE>:
   0:	00000032 	andeq	r0, r0, r2, lsr r0

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
  44:	5b202965 	blpl	80a5e0 <_ZN3vex5motor7spinForEdNS_13rotationUnitsEdNS_13velocityUnitsEb+0x80a5e0>
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

