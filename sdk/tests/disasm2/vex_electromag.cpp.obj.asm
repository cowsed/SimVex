
vex_electromag.cpp.obj:     file format elf32-littlearm


Disassembly of section .text._ZN3vex13electromagnetD2Ev:

00000000 <vex::electromagnet::~electromagnet()>:
   0:	e59f3014 	ldr	r3, [pc, #20]	; 1c <vex::electromagnet::~electromagnet()+0x1c>
   4:	e92d4010 	push	{r4, lr}
   8:	e1a04000 	mov	r4, r0
   c:	e5803000 	str	r3, [r0]
  10:	ebfffffe 	bl	0 <vex::device::~device()>
  14:	e1a00004 	mov	r0, r4
  18:	e8bd8010 	pop	{r4, pc}
  1c:	00000008 	andeq	r0, r0, r8

Disassembly of section .text._ZN3vex13electromagnetD0Ev:

00000000 <vex::electromagnet::~electromagnet()>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <vex::electromagnet::~electromagnet()>
   c:	e1a00004 	mov	r0, r4
  10:	ebfffffe 	bl	0 <operator delete(void*)>
  14:	e1a00004 	mov	r0, r4
  18:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex13electromagnet9installedEv:

00000000 <vex::electromagnet::installed()>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vex::device::type()>
   8:	e2400011 	sub	r0, r0, #17
   c:	e16f0f10 	clz	r0, r0
  10:	e1a002a0 	lsr	r0, r0, #5
  14:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text._ZN3vex13electromagnet5valueEv:

00000000 <vex::electromagnet::value()>:
   0:	e5900008 	ldr	r0, [r0, #8]
   4:	eafffffe 	b	0 <vexMagnetStatusGet>

Disassembly of section .text._ZN3vex13electromagnetC2El:

00000000 <vex::electromagnet::electromagnet(long)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <vex::device::device(long)>
   c:	e59f3010 	ldr	r3, [pc, #16]	; 24 <vex::electromagnet::electromagnet(long)+0x24>
  10:	e1a00004 	mov	r0, r4
  14:	e5843000 	str	r3, [r4]
  18:	e3a03032 	mov	r3, #50	; 0x32
  1c:	e5843010 	str	r3, [r4, #16]
  20:	e8bd8010 	pop	{r4, pc}
  24:	00000008 	andeq	r0, r0, r8

Disassembly of section .text._ZN3vex13electromagnet8setPowerEm:

00000000 <vex::electromagnet::setPower(unsigned long)>:
   0:	e3510064 	cmp	r1, #100	; 0x64
   4:	95801010 	strls	r1, [r0, #16]
   8:	83a03064 	movhi	r3, #100	; 0x64
   c:	85803010 	strhi	r3, [r0, #16]
  10:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex13electromagnet6pickupEv:

00000000 <vex::electromagnet::pickup()>:
   0:	e1a03000 	mov	r3, r0
   4:	e3a02ffa 	mov	r2, #1000	; 0x3e8
   8:	e5900008 	ldr	r0, [r0, #8]
   c:	e5931010 	ldr	r1, [r3, #16]
  10:	eafffffe 	b	0 <vexMagnetPowerSet>

Disassembly of section .text._ZN3vex13electromagnet6pickupEdNS_9timeUnitsEl:

00000000 <vex::electromagnet::pickup(double, vex::timeUnits, long)>:
   0:	ec432b30 	vmov	d16, r2, r3
   4:	e59d1004 	ldr	r1, [sp, #4]
   8:	e59d3000 	ldr	r3, [sp]
   c:	eddf1b0b 	vldr	d17, [pc, #44]	; 40 <vex::electromagnet::pickup(double, vex::timeUnits, long)+0x40>
  10:	e3510000 	cmp	r1, #0
  14:	b2611000 	rsblt	r1, r1, #0
  18:	e5900008 	ldr	r0, [r0, #8]
  1c:	eef50b40 	vcmp.f64	d16, #0.0
  20:	eef1fa10 	vmrs	APSR_nzcv, fpscr
  24:	4ef00b61 	vmovmi.f64	d16, d17
  28:	e3530001 	cmp	r3, #1
  2c:	1ddf1b05 	vldrne	d17, [pc, #20]	; 48 <vex::electromagnet::pickup(double, vex::timeUnits, long)+0x48>
  30:	1e600ba1 	vmulne.f64	d16, d16, d17
  34:	eefd7be0 	vcvt.s32.f64	s15, d16
  38:	ee172a90 	vmov	r2, s15
  3c:	eafffffe 	b	0 <vexMagnetPowerSet>
	...
  4c:	408f4000 	addmi	r4, pc, r0

Disassembly of section .text._ZN3vex13electromagnet6pickupEdNS_9timeUnitsE:

00000000 <vex::electromagnet::pickup(double, vex::timeUnits)>:
   0:	e92d4007 	push	{r0, r1, r2, lr}
   4:	e59d1010 	ldr	r1, [sp, #16]
   8:	e58d1000 	str	r1, [sp]
   c:	e5901010 	ldr	r1, [r0, #16]
  10:	e58d1004 	str	r1, [sp, #4]
  14:	ebfffffe 	bl	0 <vex::electromagnet::pickup(double, vex::timeUnits)>
  18:	e28dd00c 	add	sp, sp, #12
  1c:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

Disassembly of section .text._ZN3vex13electromagnet4dropEv:

00000000 <vex::electromagnet::drop()>:
   0:	e5901010 	ldr	r1, [r0, #16]
   4:	e3a02f7d 	mov	r2, #500	; 0x1f4
   8:	e5900008 	ldr	r0, [r0, #8]
   c:	e2611000 	rsb	r1, r1, #0
  10:	eafffffe 	b	0 <vexMagnetPowerSet>

Disassembly of section .text._ZN3vex13electromagnet4dropEdNS_9timeUnitsEl:

00000000 <vex::electromagnet::drop(double, vex::timeUnits, long)>:
   0:	ec432b30 	vmov	d16, r2, r3
   4:	e59d1004 	ldr	r1, [sp, #4]
   8:	e59d3000 	ldr	r3, [sp]
   c:	eddf1b0d 	vldr	d17, [pc, #52]	; 48 <vex::electromagnet::drop(double, vex::timeUnits, long)+0x48>
  10:	e3510000 	cmp	r1, #0
  14:	b2611000 	rsblt	r1, r1, #0
  18:	e5900008 	ldr	r0, [r0, #8]
  1c:	e2611000 	rsb	r1, r1, #0
  20:	eef50b40 	vcmp.f64	d16, #0.0
  24:	eef1fa10 	vmrs	APSR_nzcv, fpscr
  28:	4ef00b61 	vmovmi.f64	d16, d17
  2c:	e3530001 	cmp	r3, #1
  30:	1ddf1b06 	vldrne	d17, [pc, #24]	; 50 <vex::electromagnet::drop(double, vex::timeUnits, long)+0x50>
  34:	1e600ba1 	vmulne.f64	d16, d16, d17
  38:	eefd7be0 	vcvt.s32.f64	s15, d16
  3c:	ee172a90 	vmov	r2, s15
  40:	eafffffe 	b	0 <vexMagnetPowerSet>
  44:	e320f000 	nop	{0}
	...
  54:	408f4000 	addmi	r4, pc, r0

Disassembly of section .text._ZN3vex13electromagnet4dropEdNS_9timeUnitsE:

00000000 <vex::electromagnet::drop(double, vex::timeUnits)>:
   0:	e92d4007 	push	{r0, r1, r2, lr}
   4:	e59d1010 	ldr	r1, [sp, #16]
   8:	e58d1000 	str	r1, [sp]
   c:	e5901010 	ldr	r1, [r0, #16]
  10:	e58d1004 	str	r1, [sp, #4]
  14:	ebfffffe 	bl	0 <vex::electromagnet::drop(double, vex::timeUnits)>
  18:	e28dd00c 	add	sp, sp, #12
  1c:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

Disassembly of section .text._ZN3vex13electromagnet11temperatureENS_16temperatureUnitsE:

00000000 <vex::electromagnet::temperature(vex::temperatureUnits)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	e5900008 	ldr	r0, [r0, #8]
   c:	ebfffffe 	bl	0 <vexMagnetTemperatureGet>
  10:	e3540001 	cmp	r4, #1
  14:	0ddf1b05 	vldreq	d17, [pc, #20]	; 30 <vex::electromagnet::temperature(vex::temperatureUnits)+0x30>
  18:	0ddf2b06 	vldreq	d18, [pc, #24]	; 38 <vex::electromagnet::temperature(vex::temperatureUnits)+0x38>
  1c:	ec410b30 	vmov	d16, r0, r1
  20:	0e401ba2 	vmlaeq.f64	d17, d16, d18
  24:	0ef00b61 	vmoveq.f64	d16, d17
  28:	ec510b30 	vmov	r0, r1, d16
  2c:	e8bd8010 	pop	{r4, pc}
  30:	00000000 	andeq	r0, r0, r0
  34:	40400000 	submi	r0, r0, r0
  38:	cccccccd 	stclgt	12, cr12, [ip], {205}	; 0xcd
  3c:	3ffccccc 	svccc	0x00fccccc

Disassembly of section .rodata._ZTVN3vex13electromagnetE:

00000000 <vtable for vex::electromagnet>:
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
  44:	5b202965 	blpl	80a5e0 <vex::electromagnet::drop(double, vex::timeUnits, long)+0x80a5e0>
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

