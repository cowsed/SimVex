
vex_timer.cpp.obj:     file format elf32-littlearm


Disassembly of section .text._ZN3vex5timerD2Ev:

00000000 <_ZN3vex5timerD1Ev>:
   0:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex5timer5clearEv:

00000000 <_ZN3vex5timer5clearEv>:
   0:	e92d4010 	push	{r4, lr}
   4:	e3a03000 	mov	r3, #0
   8:	e5803000 	str	r3, [r0]
   c:	e1a04000 	mov	r4, r0
  10:	ebfffffe 	bl	0 <vexSystemTimeGet>
  14:	e5840004 	str	r0, [r4, #4]
  18:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex5timerC2Ev:

00000000 <_ZN3vex5timerC1Ev>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <_ZN3vex5timerC1Ev>
   c:	e1a00004 	mov	r0, r4
  10:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex5timeraSEm:

00000000 <_ZN3vex5timeraSEm>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e1a05001 	mov	r5, r1
   c:	ebfffffe 	bl	0 <_ZN3vex5timeraSEm>
  10:	e5845000 	str	r5, [r4]
  14:	e8bd8038 	pop	{r3, r4, r5, pc}

Disassembly of section .text._ZN3vex5timer5resetEv:

00000000 <_ZN3vex5timer5resetEv>:
   0:	eafffffe 	b	0 <_ZN3vex5timer5resetEv>

Disassembly of section .text._ZNK3vex5timer4timeEv:

00000000 <_ZNK3vex5timer4timeEv>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <vexSystemTimeGet>
   c:	e894000c 	ldm	r4, {r2, r3}
  10:	e0423003 	sub	r3, r2, r3
  14:	e0830000 	add	r0, r3, r0
  18:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZNK3vex5timercvmEv:

00000000 <_ZNK3vex5timercvmEv>:
   0:	eafffffe 	b	0 <_ZNK3vex5timercvmEv>

Disassembly of section .text._ZNK3vex5timer4timeENS_9timeUnitsE:

00000000 <_ZNK3vex5timer4timeENS_9timeUnitsE>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a05001 	mov	r5, r1
   8:	e1a04000 	mov	r4, r0
   c:	ebfffffe 	bl	0 <vexSystemTimeGet>
  10:	e894000c 	ldm	r4, {r2, r3}
  14:	e0423003 	sub	r3, r2, r3
  18:	e3550000 	cmp	r5, #0
  1c:	0ddf1b05 	vldreq	d17, [pc, #20]	; 38 <_ZNK3vex5timer4timeENS_9timeUnitsE+0x38>
  20:	e0830000 	add	r0, r3, r0
  24:	ee070a90 	vmov	s15, r0
  28:	eef80b67 	vcvt.f64.u32	d16, s15
  2c:	0ec00ba1 	vdiveq.f64	d16, d16, d17
  30:	ec510b30 	vmov	r0, r1, d16
  34:	e8bd8038 	pop	{r3, r4, r5, pc}
  38:	00000000 	andeq	r0, r0, r0
  3c:	408f4000 	addmi	r4, pc, r0

Disassembly of section .text._ZNK3vex5timer5valueEv:

00000000 <_ZNK3vex5timer5valueEv>:
   0:	e3a01000 	mov	r1, #0
   4:	eafffffe 	b	0 <_ZNK3vex5timer5valueEv>

Disassembly of section .text._ZN3vex5timer6systemEv:

00000000 <_ZN3vex5timer6systemEv>:
   0:	eafffffe 	b	0 <vexSystemTimeGet>

Disassembly of section .text._ZN3vex5timer20systemHighResolutionEv:

00000000 <_ZN3vex5timer20systemHighResolutionEv>:
   0:	eafffffe 	b	0 <vexSystemHighResTimeGet>

Disassembly of section .text._ZN3vex5timer5eventEPFvPvEm:

00000000 <_ZN3vex5timer5eventEPFvPvEm>:
   0:	e1a03000 	mov	r3, r0
   4:	e1a02001 	mov	r2, r1
   8:	e3e00000 	mvn	r0, #0
   c:	e1a01003 	mov	r1, r3
  10:	eafffffe 	b	0 <vexDeviceTimerSet>

Disassembly of section .text._ZN3vex5timer5eventEPFvvEm:

00000000 <_ZN3vex5timer5eventEPFvvEm>:
   0:	e1a03000 	mov	r3, r0
   4:	e1a02001 	mov	r2, r1
   8:	e3e00000 	mvn	r0, #0
   c:	e1a01003 	mov	r1, r3
  10:	eafffffe 	b	0 <vexDeviceTimerSet>

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
  44:	5b202965 	blpl	80a5e0 <_ZNK3vex5timer4timeENS_9timeUnitsE+0x80a5e0>
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

