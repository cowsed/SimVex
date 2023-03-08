
vex_event.cpp.obj:     file format elf32-littlearm


Disassembly of section .text._ZN3vex5eventC2Ev:

00000000 <_ZN3vex5eventC1Ev>:
   0:	e3a02000 	mov	r2, #0
   4:	e5802004 	str	r2, [r0, #4]
   8:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex5eventC2EmmPFvvE:

00000000 <_ZN3vex5eventC1EmmPFvvE>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e5803000 	str	r3, [r0]
   c:	e1a00001 	mov	r0, r1
  10:	e1a01002 	mov	r1, r2
  14:	e1a02003 	mov	r2, r3
  18:	ebfffffe 	bl	0 <vexEventAdd>
  1c:	e1a00004 	mov	r0, r4
  20:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex5eventC2EPFvvE:

00000000 <_ZN3vex5eventC1EPFvvE>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e59f5028 	ldr	r5, [pc, #40]	; 38 <_ZN3vex5eventC1EPFvvE+0x38>
   c:	e1a02001 	mov	r2, r1
  10:	e5841000 	str	r1, [r4]
  14:	e3a01000 	mov	r1, #0
  18:	e5950000 	ldr	r0, [r5]
  1c:	ebfffffe 	bl	0 <vexEventAdd>
  20:	e5953000 	ldr	r3, [r5]
  24:	e1a00004 	mov	r0, r4
  28:	e2832001 	add	r2, r3, #1
  2c:	e5852000 	str	r2, [r5]
  30:	e5843004 	str	r3, [r4, #4]
  34:	e8bd8038 	pop	{r3, r4, r5, pc}
  38:	00000000 	andeq	r0, r0, r0

Disassembly of section .text._ZN3vex5eventC2EPFvPvES1_:

00000000 <_ZN3vex5eventC1EPFvPvES1_>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a0c001 	mov	ip, r1
   8:	e59f5030 	ldr	r5, [pc, #48]	; 40 <_ZN3vex5eventC1EPFvPvES1_+0x40>
   c:	e1a04000 	mov	r4, r0
  10:	e1a03002 	mov	r3, r2
  14:	e5841000 	str	r1, [r4]
  18:	e1a0200c 	mov	r2, ip
  1c:	e3a01000 	mov	r1, #0
  20:	e5950000 	ldr	r0, [r5]
  24:	ebfffffe 	bl	0 <vexEventAddWithArg>
  28:	e5953000 	ldr	r3, [r5]
  2c:	e1a00004 	mov	r0, r4
  30:	e2832001 	add	r2, r3, #1
  34:	e5852000 	str	r2, [r5]
  38:	e5843004 	str	r3, [r4, #4]
  3c:	e8bd8038 	pop	{r3, r4, r5, pc}
  40:	00000000 	andeq	r0, r0, r0

Disassembly of section .text._ZN3vex5eventC2ES0_PFvvE:

00000000 <_ZN3vex5eventC1ES0_PFvvE>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e5802000 	str	r2, [r0]
   c:	e5910004 	ldr	r0, [r1, #4]
  10:	e3500000 	cmp	r0, #0
  14:	da000001 	ble	20 <_ZN3vex5eventC1ES0_PFvvE+0x20>
  18:	e3a01000 	mov	r1, #0
  1c:	ebfffffe 	bl	0 <vexEventAdd>
  20:	e1a00004 	mov	r0, r4
  24:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex5eventC2ES0_PFvPvES1_:

00000000 <_ZN3vex5eventC1ES0_PFvPvES1_>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e5802000 	str	r2, [r0]
   c:	e5910004 	ldr	r0, [r1, #4]
  10:	e3500000 	cmp	r0, #0
  14:	da000001 	ble	20 <_ZN3vex5eventC1ES0_PFvPvES1_+0x20>
  18:	e3a01000 	mov	r1, #0
  1c:	ebfffffe 	bl	0 <vexEventAddWithArg>
  20:	e1a00004 	mov	r0, r4
  24:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex5eventD2Ev:

00000000 <_ZN3vex5eventD1Ev>:
   0:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex5event3setEPFvvE:

00000000 <_ZN3vex5event3setEPFvvE>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e5900004 	ldr	r0, [r0, #4]
   c:	e1a02001 	mov	r2, r1
  10:	e3500000 	cmp	r0, #0
  14:	da000002 	ble	24 <_ZN3vex5event3setEPFvvE+0x24>
  18:	e3a01000 	mov	r1, #0
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	eafffffe 	b	0 <vexEventAdd>
  24:	e59f6024 	ldr	r6, [pc, #36]	; 50 <_ZN3vex5event3setEPFvvE+0x50>
  28:	e1a05001 	mov	r5, r1
  2c:	e3a01000 	mov	r1, #0
  30:	e5960000 	ldr	r0, [r6]
  34:	ebfffffe 	bl	0 <vexEventAdd>
  38:	e5963000 	ldr	r3, [r6]
  3c:	e2832001 	add	r2, r3, #1
  40:	e5862000 	str	r2, [r6]
  44:	e5843004 	str	r3, [r4, #4]
  48:	e5845000 	str	r5, [r4]
  4c:	e8bd8070 	pop	{r4, r5, r6, pc}
  50:	00000000 	andeq	r0, r0, r0

Disassembly of section .text._ZN3vex5eventclEPFvvE:

00000000 <_ZN3vex5eventclEPFvvE>:
   0:	eafffffe 	b	0 <_ZN3vex5eventclEPFvvE>

Disassembly of section .text._ZN3vex5event4initEmmPFvvE:

00000000 <_ZN3vex5event4initEmmPFvvE>:
   0:	eafffffe 	b	0 <vexEventAdd>

Disassembly of section .text._ZN3vex5event4initEmmPFviE:

00000000 <_ZN3vex5event4initEmmPFviE>:
   0:	e350001f 	cmp	r0, #31
   4:	93800902 	orrls	r0, r0, #32768	; 0x8000
   8:	eafffffe 	b	0 <vexEventAdd>

Disassembly of section .text._ZN3vex5event4initEmmPFvPvES1_:

00000000 <_ZN3vex5event4initEmmPFvPvES1_>:
   0:	eafffffe 	b	0 <vexEventAddWithArg>

Disassembly of section .text._ZN3vex5event9userindexEv:

00000000 <_ZN3vex5event9userindexEv>:
   0:	eafffffe 	b	0 <vexEventUserIndexGet>

Disassembly of section .text._ZN3vex5event9broadcastEv:

00000000 <_ZN3vex5event9broadcastEv>:
   0:	e5900004 	ldr	r0, [r0, #4]
   4:	e3500000 	cmp	r0, #0
   8:	d12fff1e 	bxle	lr
   c:	eafffffe 	b	0 <vexEventBroadcast>

Disassembly of section .text._ZN3vex5event16broadcastAndWaitEl:

00000000 <_ZN3vex5event16broadcastAndWaitEl>:
   0:	e5900004 	ldr	r0, [r0, #4]
   4:	e3500000 	cmp	r0, #0
   8:	d12fff1e 	bxle	lr
   c:	eafffffe 	b	0 <vexEventBroadcastAndWait>

Disassembly of section .text._ZN3vex5event9broadcastEm:

00000000 <_ZN3vex5event9broadcastEm>:
   0:	eafffffe 	b	0 <vexEventBroadcast>

Disassembly of section .text._ZN3vex5event16broadcastAndWaitEml:

00000000 <_ZN3vex5event16broadcastAndWaitEml>:
   0:	eafffffe 	b	0 <vexEventBroadcastAndWait>

Disassembly of section .data._ZN3vex5event12_usereventidE:

00000000 <_ZN3vex5event12_usereventidE>:
   0:	00000064 	andeq	r0, r0, r4, rrx

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
  44:	5b202965 	blpl	80a5e0 <_ZN3vex5event3setEPFvvE+0x80a5e0>
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

