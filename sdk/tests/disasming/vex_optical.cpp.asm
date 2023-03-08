
vex_optical.cpp.obj:     file format elf32-littlearm


Disassembly of section .text._ZN3vex7opticalD2Ev:

00000000 <_ZN3vex7opticalD1Ev>:
   0:	e59f3014 	ldr	r3, [pc, #20]	; 1c <_ZN3vex7opticalD1Ev+0x1c>
   4:	e92d4010 	push	{r4, lr}
   8:	e1a04000 	mov	r4, r0
   c:	e5803000 	str	r3, [r0]
  10:	ebfffffe 	bl	0 <_ZN3vex6deviceD2Ev>
  14:	e1a00004 	mov	r0, r4
  18:	e8bd8010 	pop	{r4, pc}
  1c:	00000008 	andeq	r0, r0, r8

Disassembly of section .text._ZN3vex7opticalD0Ev:

00000000 <_ZN3vex7opticalD0Ev>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <_ZN3vex7opticalD0Ev>
   c:	e1a00004 	mov	r0, r4
  10:	ebfffffe 	bl	0 <_ZdlPv>
  14:	e1a00004 	mov	r0, r4
  18:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex7optical9installedEv:

00000000 <_ZN3vex7optical9installedEv>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <_ZN3vex6device4typeEv>
   8:	e2400010 	sub	r0, r0, #16
   c:	e16f0f10 	clz	r0, r0
  10:	e1a002a0 	lsr	r0, r0, #5
  14:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text._ZN3vex7optical3hueEv:

00000000 <_ZN3vex7optical3hueEv>:
   0:	e5900008 	ldr	r0, [r0, #8]
   4:	eafffffe 	b	0 <vexOpticalHueGet>

Disassembly of section .text._ZN3vex7optical5valueEv:

00000000 <_ZN3vex7optical5valueEv>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <_ZN3vex7optical5valueEv>
   8:	ec410b30 	vmov	d16, r0, r1
   c:	eefd7be0 	vcvt.s32.f64	s15, d16
  10:	ee170a90 	vmov	r0, s15
  14:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text._ZN3vex7optical10brightnessEb:

00000000 <_ZN3vex7optical10brightnessEb>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	e5900008 	ldr	r0, [r0, #8]
   c:	ebfffffe 	bl	0 <vexOpticalBrightnessGet>
  10:	e3540000 	cmp	r4, #0
  14:	ec410b30 	vmov	d16, r0, r1
  18:	1a000005 	bne	34 <_ZN3vex7optical10brightnessEb+0x34>
  1c:	eddf1b07 	vldr	d17, [pc, #28]	; 40 <_ZN3vex7optical10brightnessEb+0x40>
  20:	ee600ba1 	vmul.f64	d16, d16, d17
  24:	eddf1b07 	vldr	d17, [pc, #28]	; 48 <_ZN3vex7optical10brightnessEb+0x48>
  28:	eef40b61 	vcmp.f64	d16, d17
  2c:	eef1fa10 	vmrs	APSR_nzcv, fpscr
  30:	cef00b61 	vmovgt.f64	d16, d17
  34:	ec510b30 	vmov	r0, r1, d16
  38:	e8bd8010 	pop	{r4, pc}
  3c:	e320f000 	nop	{0}
  40:	00000000 	andeq	r0, r0, r0
  44:	407f4000 	rsbsmi	r4, pc, r0
  48:	00000000 	andeq	r0, r0, r0
  4c:	40590000 	subsmi	r0, r9, r0

Disassembly of section .text._ZN3vex7optical5colorEv:

00000000 <_ZN3vex7optical5colorEv>:
   0:	e92d4030 	push	{r4, r5, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e24dd014 	sub	sp, sp, #20
   c:	e5910008 	ldr	r0, [r1, #8]
  10:	ebfffffe 	bl	0 <vexOpticalHueGet>
  14:	ec410b30 	vmov	d16, r0, r1
  18:	eefd7be0 	vcvt.s32.f64	s15, d16
  1c:	ee170a90 	vmov	r0, s15
  20:	e2403015 	sub	r3, r0, #21
  24:	e3530d05 	cmp	r3, #320	; 0x140
  28:	23a04000 	movcs	r4, #0
  2c:	2a000017 	bcs	90 <_ZN3vex7optical5colorEv+0x90>
  30:	e3500028 	cmp	r0, #40	; 0x28
  34:	d3a0401e 	movle	r4, #30
  38:	da000014 	ble	90 <_ZN3vex7optical5colorEv+0x90>
  3c:	e350003c 	cmp	r0, #60	; 0x3c
  40:	d3a0403c 	movle	r4, #60	; 0x3c
  44:	da000011 	ble	90 <_ZN3vex7optical5colorEv+0x90>
  48:	e3500050 	cmp	r0, #80	; 0x50
  4c:	d3a0405a 	movle	r4, #90	; 0x5a
  50:	da00000e 	ble	90 <_ZN3vex7optical5colorEv+0x90>
  54:	e350008c 	cmp	r0, #140	; 0x8c
  58:	d3a04078 	movle	r4, #120	; 0x78
  5c:	da00000b 	ble	90 <_ZN3vex7optical5colorEv+0x90>
  60:	e35000c8 	cmp	r0, #200	; 0xc8
  64:	d3a040b4 	movle	r4, #180	; 0xb4
  68:	da000008 	ble	90 <_ZN3vex7optical5colorEv+0x90>
  6c:	e35000f0 	cmp	r0, #240	; 0xf0
  70:	d3a040f0 	movle	r4, #240	; 0xf0
  74:	da000005 	ble	90 <_ZN3vex7optical5colorEv+0x90>
  78:	e3500f46 	cmp	r0, #280	; 0x118
  7c:	d300410e 	movwle	r4, #270	; 0x10e
  80:	da000002 	ble	90 <_ZN3vex7optical5colorEv+0x90>
  84:	e3500d05 	cmp	r0, #320	; 0x140
  88:	e300414a 	movw	r4, #330	; 0x14a
  8c:	d3a04f4b 	movle	r4, #300	; 0x12c
  90:	e28d0008 	add	r0, sp, #8
  94:	ebfffffe 	bl	0 <_ZN3vex5colorC1Ev>
  98:	e59f302c 	ldr	r3, [pc, #44]	; cc <_ZN3vex7optical5colorEv+0xcc>
  9c:	e3a02000 	mov	r2, #0
  a0:	e1a01004 	mov	r1, r4
  a4:	e28d0008 	add	r0, sp, #8
  a8:	e1cd20f0 	strd	r2, [sp]
  ac:	ebfffffe 	bl	0 <_ZN3vex5color3hsvEmdd>
  b0:	e8900003 	ldm	r0, {r0, r1}
  b4:	e8850003 	stm	r5, {r0, r1}
  b8:	e28d0008 	add	r0, sp, #8
  bc:	ebfffffe 	bl	0 <_ZN3vex5colorD1Ev>
  c0:	e1a00005 	mov	r0, r5
  c4:	e28dd014 	add	sp, sp, #20
  c8:	e8bd8030 	pop	{r4, r5, pc}
  cc:	3ff00000 	svccc	0x00f00000	; IMB

Disassembly of section .text._ZN3vex7optical12isNearObjectEv:

00000000 <_ZN3vex7optical12isNearObjectEv>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e5900008 	ldr	r0, [r0, #8]
   c:	ebfffffe 	bl	0 <vexOpticalProximityGet>
  10:	e5943014 	ldr	r3, [r4, #20]
  14:	e1500003 	cmp	r0, r3
  18:	d3a00000 	movle	r0, #0
  1c:	c3a00001 	movgt	r0, #1
  20:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex7optical8setLightENS_8ledStateE:

00000000 <_ZN3vex7optical8setLightENS_8ledStateE>:
   0:	e3510001 	cmp	r1, #1
   4:	e1a03000 	mov	r3, r0
   8:	e5900008 	ldr	r0, [r0, #8]
   c:	05931010 	ldreq	r1, [r3, #16]
  10:	13a01000 	movne	r1, #0
  14:	eafffffe 	b	0 <vexOpticalLedPwmSet>

Disassembly of section .text._ZN3vex7optical13setLightPowerElNS_12percentUnitsE:

00000000 <_ZN3vex7optical13setLightPowerElNS_12percentUnitsE>:
   0:	e3510000 	cmp	r1, #0
   4:	b3a01000 	movlt	r1, #0
   8:	ba000005 	blt	24 <_ZN3vex7optical13setLightPowerElNS_12percentUnitsE+0x24>
   c:	e3510064 	cmp	r1, #100	; 0x64
  10:	c3a01064 	movgt	r1, #100	; 0x64
  14:	ca000001 	bgt	20 <_ZN3vex7optical13setLightPowerElNS_12percentUnitsE+0x20>
  18:	e3510000 	cmp	r1, #0
  1c:	0a000000 	beq	24 <_ZN3vex7optical13setLightPowerElNS_12percentUnitsE+0x24>
  20:	e5801010 	str	r1, [r0, #16]
  24:	e5900008 	ldr	r0, [r0, #8]
  28:	eafffffe 	b	0 <vexOpticalLedPwmSet>

Disassembly of section .text._ZN3vex7optical21objectDetectThresholdEl:

00000000 <_ZN3vex7optical21objectDetectThresholdEl>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e5900008 	ldr	r0, [r0, #8]
   c:	ebfffffe 	bl	0 <vexOpticalProximityThreshold>
  10:	e5840014 	str	r0, [r4, #20]
  14:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex7optical14objectDetectedEPFvvE:

00000000 <_ZN3vex7optical14objectDetectedEPFvvE>:
   0:	e1a02001 	mov	r2, r1
   4:	e5900008 	ldr	r0, [r0, #8]
   8:	e3a01001 	mov	r1, #1
   c:	eafffffe 	b	0 <_ZN3vex5event4initEmmPFvvE>

Disassembly of section .text._ZN3vex7optical10objectLostEPFvvE:

00000000 <_ZN3vex7optical10objectLostEPFvvE>:
   0:	e1a02001 	mov	r2, r1
   4:	e5900008 	ldr	r0, [r0, #8]
   8:	e3a01002 	mov	r1, #2
   c:	eafffffe 	b	0 <_ZN3vex5event4initEmmPFvvE>

Disassembly of section .text._ZN3vex7optical13gestureEnableEv:

00000000 <_ZN3vex7optical13gestureEnableEv>:
   0:	e5900008 	ldr	r0, [r0, #8]
   4:	eafffffe 	b	0 <vexOpticalGestureEnable>

Disassembly of section .text._ZN3vex7optical14gestureDisableEv:

00000000 <_ZN3vex7optical14gestureDisableEv>:
   0:	e5900008 	ldr	r0, [r0, #8]
   4:	eafffffe 	b	0 <vexOpticalGestureDisable>

Disassembly of section .text._ZN3vex7opticalC2Elb:

00000000 <_ZN3vex7opticalC1Elb>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e1a05002 	mov	r5, r2
   c:	ebfffffe 	bl	0 <_ZN3vex6deviceC2El>
  10:	e59f3038 	ldr	r3, [pc, #56]	; 50 <_ZN3vex7opticalC1Elb+0x50>
  14:	e3a01000 	mov	r1, #0
  18:	e5940008 	ldr	r0, [r4, #8]
  1c:	e5843000 	str	r3, [r4]
  20:	e3a03064 	mov	r3, #100	; 0x64
  24:	e5843010 	str	r3, [r4, #16]
  28:	ebfffffe 	bl	0 <vexOpticalProximityThreshold>
  2c:	e3550000 	cmp	r5, #0
  30:	e5840014 	str	r0, [r4, #20]
  34:	e1a00004 	mov	r0, r4
  38:	0a000001 	beq	44 <_ZN3vex7opticalC1Elb+0x44>
  3c:	ebfffffe 	bl	0 <_ZN3vex7opticalC1Elb>
  40:	ea000000 	b	48 <_ZN3vex7opticalC1Elb+0x48>
  44:	ebfffffe 	bl	0 <_ZN3vex7opticalC1Elb>
  48:	e1a00004 	mov	r0, r4
  4c:	e8bd8038 	pop	{r3, r4, r5, pc}
  50:	00000008 	andeq	r0, r0, r8

Disassembly of section .text._ZN3vex7optical7gestureC2Ev:

00000000 <_ZN3vex7optical7gestureC1Ev>:
   0:	e1a03000 	mov	r3, r0
   4:	e3a02000 	mov	r2, #0
   8:	e5c02000 	strb	r2, [r0]
   c:	e5c02001 	strb	r2, [r0, #1]
  10:	e5c02002 	strb	r2, [r0, #2]
  14:	e5c02003 	strb	r2, [r0, #3]
  18:	e2802001 	add	r2, r0, #1
  1c:	e583000c 	str	r0, [r3, #12]
  20:	e5802010 	str	r2, [r0, #16]
  24:	e2802002 	add	r2, r0, #2
  28:	e5802014 	str	r2, [r0, #20]
  2c:	e2802003 	add	r2, r0, #3
  30:	e5802018 	str	r2, [r0, #24]
  34:	e2802004 	add	r2, r0, #4
  38:	e580201c 	str	r2, [r0, #28]
  3c:	e2802008 	add	r2, r0, #8
  40:	e5802020 	str	r2, [r0, #32]
  44:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex7optical7gestureD2Ev:

00000000 <_ZN3vex7optical7gestureD1Ev>:
   0:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex7optical10getGestureEv:

00000000 <_ZN3vex7optical10getGestureEv>:
   0:	e92d401f 	push	{r0, r1, r2, r3, r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e5910008 	ldr	r0, [r1, #8]
   c:	e28d1004 	add	r1, sp, #4
  10:	ebfffffe 	bl	0 <vexOpticalGestureGet>
  14:	e1a00004 	mov	r0, r4
  18:	ebfffffe 	bl	0 <_ZN3vex7optical10getGestureEv>
  1c:	e5dd3004 	ldrb	r3, [sp, #4]
  20:	e5c43000 	strb	r3, [r4]
  24:	e5dd3005 	ldrb	r3, [sp, #5]
  28:	e5c43001 	strb	r3, [r4, #1]
  2c:	e5dd3006 	ldrb	r3, [sp, #6]
  30:	e5c43002 	strb	r3, [r4, #2]
  34:	e5dd3007 	ldrb	r3, [sp, #7]
  38:	e5c43003 	strb	r3, [r4, #3]
  3c:	e1dd30ba 	ldrh	r3, [sp, #10]
  40:	e5843004 	str	r3, [r4, #4]
  44:	e5dd3008 	ldrb	r3, [sp, #8]
  48:	e2433001 	sub	r3, r3, #1
  4c:	e3530003 	cmp	r3, #3
  50:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
  54:	ea000003 	b	68 <_ZN3vex7optical10getGestureEv+0x68>
  58:	00000070 	andeq	r0, r0, r0, ror r0
  5c:	00000078 	andeq	r0, r0, r8, ror r0
  60:	00000080 	andeq	r0, r0, r0, lsl #1
  64:	00000088 	andeq	r0, r0, r8, lsl #1
  68:	e3a03000 	mov	r3, #0
  6c:	ea000006 	b	8c <_ZN3vex7optical10getGestureEv+0x8c>
  70:	e3a03001 	mov	r3, #1
  74:	ea000004 	b	8c <_ZN3vex7optical10getGestureEv+0x8c>
  78:	e3a03002 	mov	r3, #2
  7c:	ea000002 	b	8c <_ZN3vex7optical10getGestureEv+0x8c>
  80:	e3a03004 	mov	r3, #4
  84:	ea000000 	b	8c <_ZN3vex7optical10getGestureEv+0x8c>
  88:	e3a03003 	mov	r3, #3
  8c:	e1a00004 	mov	r0, r4
  90:	e5843008 	str	r3, [r4, #8]
  94:	e28dd010 	add	sp, sp, #16
  98:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex7optical6getRgbEb:

00000000 <_ZN3vex7optical6getRgbEb>:
   0:	e92d4010 	push	{r4, lr}
   4:	e3520000 	cmp	r2, #0
   8:	e24dd020 	sub	sp, sp, #32
   c:	e1a04000 	mov	r4, r0
  10:	e1a03001 	mov	r3, r1
  14:	e3a00000 	mov	r0, #0
  18:	e3a01000 	mov	r1, #0
  1c:	e1c400f0 	strd	r0, [r4]
  20:	e1c400f8 	strd	r0, [r4, #8]
  24:	e1c401f0 	strd	r0, [r4, #16]
  28:	e1c401f8 	strd	r0, [r4, #24]
  2c:	e1a0100d 	mov	r1, sp
  30:	e5930008 	ldr	r0, [r3, #8]
  34:	0a000011 	beq	80 <_ZN3vex7optical6getRgbEb+0x80>
  38:	ebfffffe 	bl	0 <vexOpticalRawGet>
  3c:	e1dd30b2 	ldrh	r3, [sp, #2]
  40:	ee073a90 	vmov	s15, r3
  44:	e1dd30b4 	ldrh	r3, [sp, #4]
  48:	eef80b67 	vcvt.f64.u32	d16, s15
  4c:	ee073a90 	vmov	s15, r3
  50:	e1dd30b6 	ldrh	r3, [sp, #6]
  54:	edc40b00 	vstr	d16, [r4]
  58:	eef80b67 	vcvt.f64.u32	d16, s15
  5c:	ee073a90 	vmov	s15, r3
  60:	e1dd30b0 	ldrh	r3, [sp]
  64:	edc40b02 	vstr	d16, [r4, #8]
  68:	eef80b67 	vcvt.f64.u32	d16, s15
  6c:	ee073a90 	vmov	s15, r3
  70:	edc40b04 	vstr	d16, [r4, #16]
  74:	eef80b67 	vcvt.f64.u32	d16, s15
  78:	edc40b06 	vstr	d16, [r4, #24]
  7c:	ea000008 	b	a4 <_ZN3vex7optical6getRgbEb+0xa4>
  80:	ebfffffe 	bl	0 <vexOpticalRgbGet>
  84:	e1cd20d0 	ldrd	r2, [sp]
  88:	e1c420f0 	strd	r2, [r4]
  8c:	e1cd20d8 	ldrd	r2, [sp, #8]
  90:	e1c420f8 	strd	r2, [r4, #8]
  94:	e1cd21d0 	ldrd	r2, [sp, #16]
  98:	e1c421f0 	strd	r2, [r4, #16]
  9c:	e1cd21d8 	ldrd	r2, [sp, #24]
  a0:	e1c421f8 	strd	r2, [r4, #24]
  a4:	e1a00004 	mov	r0, r4
  a8:	e28dd020 	add	sp, sp, #32
  ac:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex7optical15integrationTimeEd:

00000000 <_ZN3vex7optical15integrationTimeEd>:
   0:	e5900008 	ldr	r0, [r0, #8]
   4:	eafffffe 	b	0 <vexOpticalIntegrationTimeSet>

Disassembly of section .text._ZN3vex7optical15integrationTimeEv:

00000000 <_ZN3vex7optical15integrationTimeEv>:
   0:	e5900008 	ldr	r0, [r0, #8]
   4:	eafffffe 	b	0 <vexOpticalIntegrationTimeGet>

Disassembly of section .text._ZN3vex7optical9gestureUpEPFvvE:

00000000 <_ZN3vex7optical9gestureUpEPFvvE>:
   0:	e1a02001 	mov	r2, r1
   4:	e5900008 	ldr	r0, [r0, #8]
   8:	e3a01004 	mov	r1, #4
   c:	eafffffe 	b	0 <_ZN3vex5event4initEmmPFvvE>

Disassembly of section .text._ZN3vex7optical11gestureDownEPFvvE:

00000000 <_ZN3vex7optical11gestureDownEPFvvE>:
   0:	e1a02001 	mov	r2, r1
   4:	e5900008 	ldr	r0, [r0, #8]
   8:	e3a01008 	mov	r1, #8
   c:	eafffffe 	b	0 <_ZN3vex5event4initEmmPFvvE>

Disassembly of section .text._ZN3vex7optical11gestureLeftEPFvvE:

00000000 <_ZN3vex7optical11gestureLeftEPFvvE>:
   0:	e1a02001 	mov	r2, r1
   4:	e5900008 	ldr	r0, [r0, #8]
   8:	e3a01010 	mov	r1, #16
   c:	eafffffe 	b	0 <_ZN3vex5event4initEmmPFvvE>

Disassembly of section .text._ZN3vex7optical12gestureRightEPFvvE:

00000000 <_ZN3vex7optical12gestureRightEPFvvE>:
   0:	e1a02001 	mov	r2, r1
   4:	e5900008 	ldr	r0, [r0, #8]
   8:	e3a01020 	mov	r1, #32
   c:	eafffffe 	b	0 <_ZN3vex5event4initEmmPFvvE>

Disassembly of section .rodata._ZTVN3vex7opticalE:

00000000 <_ZTVN3vex7opticalE>:
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
  44:	5b202965 	blpl	80a5e0 <_ZN3vex7optical5colorEv+0x80a5e0>
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

