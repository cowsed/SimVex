
vex_distance.cpp.obj:     file format elf32-littlearm


Disassembly of section .text._ZN3vex8distanceD2Ev:

00000000 <_ZN3vex8distanceD1Ev>:
   0:	e59f3014 	ldr	r3, [pc, #20]	; 1c <_ZN3vex8distanceD1Ev+0x1c>
   4:	e92d4010 	push	{r4, lr}
   8:	e1a04000 	mov	r4, r0
   c:	e5803000 	str	r3, [r0]
  10:	ebfffffe 	bl	0 <_ZN3vex6deviceD2Ev>
  14:	e1a00004 	mov	r0, r4
  18:	e8bd8010 	pop	{r4, pc}
  1c:	00000008 	andeq	r0, r0, r8

Disassembly of section .text._ZN3vex8distanceD0Ev:

00000000 <_ZN3vex8distanceD0Ev>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <_ZN3vex8distanceD0Ev>
   c:	e1a00004 	mov	r0, r4
  10:	ebfffffe 	bl	0 <_ZdlPv>
  14:	e1a00004 	mov	r0, r4
  18:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex8distance9installedEv:

00000000 <_ZN3vex8distance9installedEv>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <_ZN3vex6device4typeEv>
   8:	e2400007 	sub	r0, r0, #7
   c:	e16f0f10 	clz	r0, r0
  10:	e1a002a0 	lsr	r0, r0, #5
  14:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text._ZN3vex8distance5valueEv:

00000000 <_ZN3vex8distance5valueEv>:
   0:	e5900008 	ldr	r0, [r0, #8]
   4:	eafffffe 	b	0 <vexDistanceDistanceGet>

Disassembly of section .text._ZN3vex8distanceC2El:

00000000 <_ZN3vex8distanceC1El>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <_ZN3vex6deviceC2El>
   c:	e59f3008 	ldr	r3, [pc, #8]	; 1c <_ZN3vex8distanceC1El+0x1c>
  10:	e1a00004 	mov	r0, r4
  14:	e5843000 	str	r3, [r4]
  18:	e8bd8010 	pop	{r4, pc}
  1c:	00000008 	andeq	r0, r0, r8

Disassembly of section .text._ZN3vex8distance14objectDistanceENS_13distanceUnitsE:

00000000 <_ZN3vex8distance14objectDistanceENS_13distanceUnitsE>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	e5900008 	ldr	r0, [r0, #8]
   c:	ebfffffe 	bl	0 <vexDistanceDistanceGet>
  10:	e3540001 	cmp	r4, #1
  14:	0ddf1b09 	vldreq	d17, [pc, #36]	; 40 <_ZN3vex8distance14objectDistanceENS_13distanceUnitsE+0x40>
  18:	ee070a90 	vmov	s15, r0
  1c:	eef80b67 	vcvt.f64.u32	d16, s15
  20:	0a000002 	beq	30 <_ZN3vex8distance14objectDistanceENS_13distanceUnitsE+0x30>
  24:	e3540002 	cmp	r4, #2
  28:	1a000001 	bne	34 <_ZN3vex8distance14objectDistanceENS_13distanceUnitsE+0x34>
  2c:	eef21b04 	vmov.f64	d17, #36	; 0x41200000  10.0
  30:	eec00ba1 	vdiv.f64	d16, d16, d17
  34:	ec510b30 	vmov	r0, r1, d16
  38:	e8bd8010 	pop	{r4, pc}
  3c:	e320f000 	nop	{0}
  40:	66666666 	strbtvs	r6, [r6], -r6, ror #12
  44:	40396666 	eorsmi	r6, r9, r6, ror #12

Disassembly of section .text._ZN3vex8distance10objectSizeEv:

00000000 <_ZN3vex8distance10objectSizeEv>:
   0:	e92d4008 	push	{r3, lr}
   4:	e5900008 	ldr	r0, [r0, #8]
   8:	ebfffffe 	bl	0 <vexDistanceObjectSizeGet>
   c:	e3500000 	cmp	r0, #0
  10:	08bd8008 	popeq	{r3, pc}
  14:	e3500031 	cmp	r0, #49	; 0x31
  18:	da000003 	ble	2c <_ZN3vex8distance10objectSizeEv+0x2c>
  1c:	e3500050 	cmp	r0, #80	; 0x50
  20:	b3a00002 	movlt	r0, #2
  24:	a3a00003 	movge	r0, #3
  28:	e8bd8008 	pop	{r3, pc}
  2c:	e3a00001 	mov	r0, #1
  30:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text._ZN3vex8distance13objectRawSizeEv:

00000000 <_ZN3vex8distance13objectRawSizeEv>:
   0:	e5900008 	ldr	r0, [r0, #8]
   4:	eafffffe 	b	0 <vexDistanceObjectSizeGet>

Disassembly of section .text._ZN3vex8distance14objectVelocityEv:

00000000 <_ZN3vex8distance14objectVelocityEv>:
   0:	e5900008 	ldr	r0, [r0, #8]
   4:	eafffffe 	b	0 <vexDistanceObjectVelocityGet>

Disassembly of section .text._ZN3vex8distance16isObjectDetectedEv:

00000000 <_ZN3vex8distance16isObjectDetectedEv>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ed2d8b02 	vpush	{d8}
   c:	e5900008 	ldr	r0, [r0, #8]
  10:	ebfffffe 	bl	0 <vexDistanceDistanceGet>
  14:	ee070a90 	vmov	s15, r0
  18:	e5940008 	ldr	r0, [r4, #8]
  1c:	eeb88b67 	vcvt.f64.u32	d8, s15
  20:	ebfffffe 	bl	0 <vexDistanceObjectSizeGet>
  24:	eddf0b13 	vldr	d16, [pc, #76]	; 78 <_ZN3vex8distance16isObjectDetectedEv+0x78>
  28:	eeb58bc0 	vcmpe.f64	d8, #0.0
  2c:	eef1fa10 	vmrs	APSR_nzcv, fpscr
  30:	eeb48be0 	vcmpe.f64	d8, d16
  34:	c3a03001 	movgt	r3, #1
  38:	d3a03000 	movle	r3, #0
  3c:	eef1fa10 	vmrs	APSR_nzcv, fpscr
  40:	e1a02000 	mov	r2, r0
  44:	92030001 	andls	r0, r3, #1
  48:	83a00000 	movhi	r0, #0
  4c:	e3500000 	cmp	r0, #0
  50:	1a000006 	bne	70 <_ZN3vex8distance16isObjectDetectedEv+0x70>
  54:	eeb48be0 	vcmpe.f64	d8, d16
  58:	eef1fa10 	vmrs	APSR_nzcv, fpscr
  5c:	c3a03001 	movgt	r3, #1
  60:	d3a03000 	movle	r3, #0
  64:	e2920001 	adds	r0, r2, #1
  68:	13a00001 	movne	r0, #1
  6c:	e0000003 	and	r0, r0, r3
  70:	ecbd8b02 	vpop	{d8}
  74:	e8bd8010 	pop	{r4, pc}
  78:	00000000 	andeq	r0, r0, r0
  7c:	40690000 	rsbmi	r0, r9, r0

Disassembly of section .text._ZN3vex8distance7changedEPFvvE:

00000000 <_ZN3vex8distance7changedEPFvvE>:
   0:	e1a02001 	mov	r2, r1
   4:	e5900008 	ldr	r0, [r0, #8]
   8:	e3a01001 	mov	r1, #1
   c:	eafffffe 	b	0 <_ZN3vex5event4initEmmPFvvE>

Disassembly of section .rodata._ZTVN3vex8distanceE:

00000000 <_ZTVN3vex8distanceE>:
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
  44:	5b202965 	blpl	80a5e0 <_ZN3vex8distance16isObjectDetectedEv+0x80a5e0>
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

