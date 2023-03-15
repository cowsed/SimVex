
vex_mevent.cpp.obj:     file format elf32-littlearm


Disassembly of section .text._ZZN3vex6meventC4EmmENUlvE_4_FUNEv:

00000000 <vex::mevent::mevent(unsigned long, unsigned long)::{lambda()#1}::_FUN()>:
   0:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex6meventC2Emm:

00000000 <vex::mevent::mevent(unsigned long, unsigned long)>:
   0:	e352001f 	cmp	r2, #31
   4:	9351001f 	cmpls	r1, #31
   8:	e92d4070 	push	{r4, r5, r6, lr}
   c:	e1a04000 	mov	r4, r0
  10:	e1a05001 	mov	r5, r1
  14:	8a000012 	bhi	64 <vex::mevent::mevent(unsigned long, unsigned long)+0x64>
  18:	e8800024 	stm	r0, {r2, r5}
  1c:	e1a00001 	mov	r0, r1
  20:	ebfffffe 	bl	0 <vexEventMaskGet>
  24:	e2506000 	subs	r6, r0, #0
  28:	1a000007 	bne	4c <vex::mevent::mevent(unsigned long, unsigned long)+0x4c>
  2c:	e1a00005 	mov	r0, r5
  30:	e3e01000 	mvn	r1, #0
  34:	e59f2030 	ldr	r2, [pc, #48]	; 6c <vex::mevent::mevent(unsigned long, unsigned long)+0x6c>
  38:	ebfffffe 	bl	0 <vex::event::init(unsigned long, unsigned long, void (*)())>
  3c:	e1a00005 	mov	r0, r5
  40:	e1a01006 	mov	r1, r6
  44:	e3e02000 	mvn	r2, #0
  48:	ebfffffe 	bl	0 <vexEventMaskSet>
  4c:	e5941000 	ldr	r1, [r4]
  50:	e3a03001 	mov	r3, #1
  54:	e5940004 	ldr	r0, [r4, #4]
  58:	e1a01113 	lsl	r1, r3, r1
  5c:	e1a02001 	mov	r2, r1
  60:	ebfffffe 	bl	0 <vexEventMaskSet>
  64:	e1a00004 	mov	r0, r4
  68:	e8bd8070 	pop	{r4, r5, r6, pc}
  6c:	00000000 	andeq	r0, r0, r0

Disassembly of section .text._ZNK3vex6meventcviEv:

00000000 <vex::mevent::operator int() const>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e5903000 	ldr	r3, [r0]
   8:	e353001f 	cmp	r3, #31
   c:	9a000001 	bls	18 <vex::mevent::operator int() const+0x18>
  10:	e3a00000 	mov	r0, #0
  14:	e8bd8038 	pop	{r3, r4, r5, pc}
  18:	e1a04000 	mov	r4, r0
  1c:	e5900004 	ldr	r0, [r0, #4]
  20:	ebfffffe 	bl	0 <vexEventBitsGet>
  24:	e5942000 	ldr	r2, [r4]
  28:	e3a05001 	mov	r5, #1
  2c:	e1a02215 	lsl	r2, r5, r2
  30:	e1100002 	tst	r0, r2
  34:	0afffff5 	beq	10 <vex::mevent::operator int() const+0x10>
  38:	e5940004 	ldr	r0, [r4, #4]
  3c:	e3a01000 	mov	r1, #0
  40:	ebfffffe 	bl	0 <vexEventBitsSet>
  44:	e1a00005 	mov	r0, r5
  48:	e8bd8038 	pop	{r3, r4, r5, pc}

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
  44:	5b202965 	blpl	80a5e0 <vex::mevent::mevent(unsigned long, unsigned long)+0x80a5e0>
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

