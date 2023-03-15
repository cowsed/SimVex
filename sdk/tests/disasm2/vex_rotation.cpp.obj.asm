
vex_rotation.cpp.obj:     file format elf32-littlearm


Disassembly of section .text._ZN3vex8rotationD2Ev:

00000000 <vex::rotation::~rotation()>:
   0:	e59f3014 	ldr	r3, [pc, #20]	; 1c <vex::rotation::~rotation()+0x1c>
   4:	e92d4010 	push	{r4, lr}
   8:	e1a04000 	mov	r4, r0
   c:	e5803000 	str	r3, [r0]
  10:	ebfffffe 	bl	0 <vex::device::~device()>
  14:	e1a00004 	mov	r0, r4
  18:	e8bd8010 	pop	{r4, pc}
  1c:	00000008 	andeq	r0, r0, r8

Disassembly of section .text._ZN3vex8rotationD0Ev:

00000000 <vex::rotation::~rotation()>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <vex::rotation::~rotation()>
   c:	e1a00004 	mov	r0, r4
  10:	ebfffffe 	bl	0 <operator delete(void*)>
  14:	e1a00004 	mov	r0, r4
  18:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex8rotation9installedEv:

00000000 <vex::rotation::installed()>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vex::device::type()>
   8:	e2400004 	sub	r0, r0, #4
   c:	e16f0f10 	clz	r0, r0
  10:	e1a002a0 	lsr	r0, r0, #5
  14:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text._ZN3vex8rotation5valueEv:

00000000 <vex::rotation::value()>:
   0:	e5900008 	ldr	r0, [r0, #8]
   4:	eafffffe 	b	0 <vexAbsEncAngleGet>

Disassembly of section .text._ZN3vex8rotationC2Elb:

00000000 <vex::rotation::rotation(long, bool)>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e1a05002 	mov	r5, r2
   c:	ebfffffe 	bl	0 <vex::device::device(long)>
  10:	e59f3014 	ldr	r3, [pc, #20]	; 2c <vex::rotation::rotation(long, bool)+0x2c>
  14:	e1a01005 	mov	r1, r5
  18:	e5940008 	ldr	r0, [r4, #8]
  1c:	e5843000 	str	r3, [r4]
  20:	ebfffffe 	bl	0 <vexAbsEncReverseFlagSet>
  24:	e1a00004 	mov	r0, r4
  28:	e8bd8038 	pop	{r3, r4, r5, pc}
  2c:	00000008 	andeq	r0, r0, r8

Disassembly of section .text._ZN3vex8rotation6statusEv:

00000000 <vex::rotation::status()>:
   0:	e5900008 	ldr	r0, [r0, #8]
   4:	eafffffe 	b	0 <vexAbsEncStatusGet>

Disassembly of section .text._ZN3vex8rotation11temperatureEv:

00000000 <vex::rotation::temperature()>:
   0:	e5900008 	ldr	r0, [r0, #8]
   4:	eafffffe 	b	0 <vexAbsEncTemperatureGet>

Disassembly of section .text._ZN3vex8rotation8datarateEm:

00000000 <vex::rotation::datarate(unsigned long)>:
   0:	e5900008 	ldr	r0, [r0, #8]
   4:	eafffffe 	b	0 <vexAbsEncDataRateSet>

Disassembly of section .text._ZN3vex8rotation11setReversedEb:

00000000 <vex::rotation::setReversed(bool)>:
   0:	e5900008 	ldr	r0, [r0, #8]
   4:	eafffffe 	b	0 <vexAbsEncReverseFlagSet>

Disassembly of section .text._ZN3vex8rotation5angleENS_13rotationUnitsE:

00000000 <vex::rotation::angle(vex::rotationUnits)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	e5900008 	ldr	r0, [r0, #8]
   c:	ebfffffe 	bl	0 <vexAbsEncAngleGet>
  10:	e3540000 	cmp	r4, #0
  14:	ee070a90 	vmov	s15, r0
  18:	eef80be7 	vcvt.f64.s32	d16, s15
  1c:	0a000003 	beq	30 <vex::rotation::angle(vex::rotationUnits)+0x30>
  20:	e3540001 	cmp	r4, #1
  24:	1a000003 	bne	38 <vex::rotation::angle(vex::rotationUnits)+0x38>
  28:	eddf1b04 	vldr	d17, [pc, #16]	; 40 <vex::rotation::angle(vex::rotationUnits)+0x40>
  2c:	ea000000 	b	34 <vex::rotation::angle(vex::rotationUnits)+0x34>
  30:	eddf1b04 	vldr	d17, [pc, #16]	; 48 <vex::rotation::angle(vex::rotationUnits)+0x48>
  34:	eec00ba1 	vdiv.f64	d16, d16, d17
  38:	ec510b30 	vmov	r0, r1, d16
  3c:	e8bd8010 	pop	{r4, pc}
  40:	00000000 	andeq	r0, r0, r0
  44:	40e19400 	rscmi	r9, r1, r0, lsl #8
  48:	00000000 	andeq	r0, r0, r0
  4c:	40590000 	subsmi	r0, r9, r0

Disassembly of section .text._ZN3vex8rotation13resetPositionEv:

00000000 <vex::rotation::resetPosition()>:
   0:	e5900008 	ldr	r0, [r0, #8]
   4:	e3a01000 	mov	r1, #0
   8:	eafffffe 	b	0 <vexAbsEncPositionSet>

Disassembly of section .text._ZN3vex8rotation11setPositionEdNS_13rotationUnitsE:

00000000 <vex::rotation::setPosition(double, vex::rotationUnits)>:
   0:	ec432b30 	vmov	d16, r2, r3
   4:	e59d3000 	ldr	r3, [sp]
   8:	e3530000 	cmp	r3, #0
   c:	0a000003 	beq	20 <vex::rotation::setPosition(double, vex::rotationUnits)+0x20>
  10:	e3530001 	cmp	r3, #1
  14:	1a000003 	bne	28 <vex::rotation::setPosition(double, vex::rotationUnits)+0x28>
  18:	eddf1b06 	vldr	d17, [pc, #24]	; 38 <vex::rotation::setPosition(double, vex::rotationUnits)+0x38>
  1c:	ea000000 	b	24 <vex::rotation::setPosition(double, vex::rotationUnits)+0x24>
  20:	eddf1b06 	vldr	d17, [pc, #24]	; 40 <vex::rotation::setPosition(double, vex::rotationUnits)+0x40>
  24:	ee600ba1 	vmul.f64	d16, d16, d17
  28:	e5900008 	ldr	r0, [r0, #8]
  2c:	eefd7be0 	vcvt.s32.f64	s15, d16
  30:	ee171a90 	vmov	r1, s15
  34:	eafffffe 	b	0 <vexAbsEncPositionSet>
  38:	00000000 	andeq	r0, r0, r0
  3c:	40e19400 	rscmi	r9, r1, r0, lsl #8
  40:	00000000 	andeq	r0, r0, r0
  44:	40590000 	subsmi	r0, r9, r0

Disassembly of section .text._ZN3vex8rotation8positionENS_13rotationUnitsE:

00000000 <vex::rotation::position(vex::rotationUnits)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	e5900008 	ldr	r0, [r0, #8]
   c:	ebfffffe 	bl	0 <vexAbsEncPositionGet>
  10:	e3540000 	cmp	r4, #0
  14:	ee070a90 	vmov	s15, r0
  18:	eef80be7 	vcvt.f64.s32	d16, s15
  1c:	0a000003 	beq	30 <vex::rotation::position(vex::rotationUnits)+0x30>
  20:	e3540001 	cmp	r4, #1
  24:	1a000003 	bne	38 <vex::rotation::position(vex::rotationUnits)+0x38>
  28:	eddf1b04 	vldr	d17, [pc, #16]	; 40 <vex::rotation::position(vex::rotationUnits)+0x40>
  2c:	ea000000 	b	34 <vex::rotation::position(vex::rotationUnits)+0x34>
  30:	eddf1b04 	vldr	d17, [pc, #16]	; 48 <vex::rotation::position(vex::rotationUnits)+0x48>
  34:	eec00ba1 	vdiv.f64	d16, d16, d17
  38:	ec510b30 	vmov	r0, r1, d16
  3c:	e8bd8010 	pop	{r4, pc}
  40:	00000000 	andeq	r0, r0, r0
  44:	40e19400 	rscmi	r9, r1, r0, lsl #8
  48:	00000000 	andeq	r0, r0, r0
  4c:	40590000 	subsmi	r0, r9, r0

Disassembly of section .text._ZN3vex8rotation8velocityENS_13velocityUnitsE:

00000000 <vex::rotation::velocity(vex::velocityUnits)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	e5900008 	ldr	r0, [r0, #8]
   c:	ebfffffe 	bl	0 <vexAbsEncVelocityGet>
  10:	e3540001 	cmp	r4, #1
  14:	0ddf1b0b 	vldreq	d17, [pc, #44]	; 48 <vex::rotation::velocity(vex::velocityUnits)+0x48>
  18:	ee070a90 	vmov	s15, r0
  1c:	eef80be7 	vcvt.f64.s32	d16, s15
  20:	0a000002 	beq	30 <vex::rotation::velocity(vex::velocityUnits)+0x30>
  24:	e3540000 	cmp	r4, #0
  28:	1a000003 	bne	3c <vex::rotation::velocity(vex::velocityUnits)+0x3c>
  2c:	eef11b08 	vmov.f64	d17, #24	; 0x40c00000  6.0
  30:	ee600ba1 	vmul.f64	d16, d16, d17
  34:	eddf1b05 	vldr	d17, [pc, #20]	; 50 <vex::rotation::velocity(vex::velocityUnits)+0x50>
  38:	eec00ba1 	vdiv.f64	d16, d16, d17
  3c:	ec510b30 	vmov	r0, r1, d16
  40:	e8bd8010 	pop	{r4, pc}
  44:	e320f000 	nop	{0}
  48:	00000000 	andeq	r0, r0, r0
  4c:	404e0000 	submi	r0, lr, r0
  50:	00000000 	andeq	r0, r0, r0
  54:	40768000 	rsbsmi	r8, r6, r0

Disassembly of section .text._ZN3vex8rotation7changedEPFvvE:

00000000 <vex::rotation::changed(void (*)())>:
   0:	e1a02001 	mov	r2, r1
   4:	e5900008 	ldr	r0, [r0, #8]
   8:	e3a01001 	mov	r1, #1
   c:	eafffffe 	b	0 <vex::event::init(unsigned long, unsigned long, void (*)())>

Disassembly of section .rodata._ZTVN3vex8rotationE:

00000000 <vtable for vex::rotation>:
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
  44:	5b202965 	blpl	80a5e0 <vex::rotation::velocity(vex::velocityUnits)+0x80a5e0>
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

