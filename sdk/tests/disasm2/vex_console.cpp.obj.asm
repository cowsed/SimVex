
vex_console.cpp.obj:     file format elf32-littlearm


Disassembly of section .text._ZN3vex7console5writeElPcl:

00000000 <vex::console::write(long, char*, long)>:
   0:	e92d41ff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
   4:	e3a00001 	mov	r0, #1
   8:	e1a07001 	mov	r7, r1
   c:	e1a06002 	mov	r6, r2
  10:	ebfffffe 	bl	0 <vexCriticalSection>
  14:	e59f00c8 	ldr	r0, [pc, #200]	; e4 <vex::console::write(long, char*, long)+0xe4>
  18:	ebfffffe 	bl	0 <vexDisplayStringHeightGet>
  1c:	e1a04007 	mov	r4, r7
  20:	e3a03000 	mov	r3, #0
  24:	e5cd300c 	strb	r3, [sp, #12]
  28:	e5cd300d 	strb	r3, [sp, #13]
  2c:	e2808002 	add	r8, r0, #2
  30:	e0673004 	rsb	r3, r7, r4
  34:	e1530006 	cmp	r3, r6
  38:	aa000024 	bge	d0 <vex::console::write(long, char*, long)+0xd0>
  3c:	e4d43001 	ldrb	r3, [r4], #1
  40:	e353000a 	cmp	r3, #10
  44:	1a000010 	bne	8c <vex::console::write(long, char*, long)+0x8c>
  48:	e3a00000 	mov	r0, #0
  4c:	e30021df 	movw	r2, #479	; 0x1df
  50:	e1a01000 	mov	r1, r0
  54:	e3a030ef 	mov	r3, #239	; 0xef
  58:	e58d8000 	str	r8, [sp]
  5c:	ebfffffe 	bl	0 <vexDisplayScrollRect>
  60:	e3a00000 	mov	r0, #0
  64:	e1a02000 	mov	r2, r0
  68:	e59f3078 	ldr	r3, [pc, #120]	; e8 <vex::console::write(long, char*, long)+0xe8>
  6c:	e3a010ec 	mov	r1, #236	; 0xec
  70:	ebfffffe 	bl	0 <vexDisplayPrintf>
  74:	e59f006c 	ldr	r0, [pc, #108]	; e8 <vex::console::write(long, char*, long)+0xe8>
  78:	ebfffffe 	bl	0 <vexDisplayStringWidthGet>
  7c:	e59f3068 	ldr	r3, [pc, #104]	; ec <vex::console::write(long, char*, long)+0xec>
  80:	e2800004 	add	r0, r0, #4
  84:	e5830000 	str	r0, [r3]
  88:	eaffffe8 	b	30 <vex::console::write(long, char*, long)+0x30>
  8c:	e353001f 	cmp	r3, #31
  90:	9affffe6 	bls	30 <vex::console::write(long, char*, long)+0x30>
  94:	e59f5050 	ldr	r5, [pc, #80]	; ec <vex::console::write(long, char*, long)+0xec>
  98:	e3a010ec 	mov	r1, #236	; 0xec
  9c:	e58d3000 	str	r3, [sp]
  a0:	e3a02000 	mov	r2, #0
  a4:	e59f3044 	ldr	r3, [pc, #68]	; f0 <vex::console::write(long, char*, long)+0xf0>
  a8:	e5950000 	ldr	r0, [r5]
  ac:	ebfffffe 	bl	0 <vexDisplayPrintf>
  b0:	e5543001 	ldrb	r3, [r4, #-1]
  b4:	e28d0010 	add	r0, sp, #16
  b8:	e5603004 	strb	r3, [r0, #-4]!
  bc:	ebfffffe 	bl	0 <vexDisplayStringWidthGet>
  c0:	e5953000 	ldr	r3, [r5]
  c4:	e0830000 	add	r0, r3, r0
  c8:	e5850000 	str	r0, [r5]
  cc:	eaffffd7 	b	30 <vex::console::write(long, char*, long)+0x30>
  d0:	e3a00000 	mov	r0, #0
  d4:	ebfffffe 	bl	0 <vexCriticalSection>
  d8:	e1a00006 	mov	r0, r6
  dc:	e28dd010 	add	sp, sp, #16
  e0:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
	...
  f0:	00000002 	andeq	r0, r0, r2

Disassembly of section .text._ZN3vex7consoleC2Ev:

00000000 <vex::console::console()>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <vex::brain::brain()>
   c:	e59f0034 	ldr	r0, [pc, #52]	; 48 <vex::console::console()+0x48>
  10:	ebfffffe 	bl	0 <vexSystemUserWriteInstall>
  14:	e3a01008 	mov	r1, #8
  18:	e1a00004 	mov	r0, r4
  1c:	ebfffffe 	bl	0 <vex::brain::lcd::setFont(vex::fontType)>
  20:	e3a00cff 	mov	r0, #65280	; 0xff00
  24:	ebfffffe 	bl	0 <vexDisplayForegroundColor>
  28:	e3a00000 	mov	r0, #0
  2c:	ebfffffe 	bl	0 <vexDisplayBackgroundColor>
  30:	e59f1014 	ldr	r1, [pc, #20]	; 4c <vex::console::console()+0x4c>
  34:	e3a02001 	mov	r2, #1
  38:	e3a00000 	mov	r0, #0
  3c:	ebfffffe 	bl	0 <vex::console::console()>
  40:	e1a00004 	mov	r0, r4
  44:	e8bd8010 	pop	{r4, pc}
  48:	00000000 	andeq	r0, r0, r0
  4c:	00000005 	andeq	r0, r0, r5

Disassembly of section .text._ZN3vex7consoleD2Ev:

00000000 <vex::console::~console()>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e3a00000 	mov	r0, #0
   c:	ebfffffe 	bl	0 <vexSystemUserWriteInstall>
  10:	e1a00004 	mov	r0, r4
  14:	ebfffffe 	bl	0 <vex::brain::~brain()>
  18:	e1a00004 	mov	r0, r4
  1c:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex7console4initEv:

00000000 <vex::console::init()>:
   0:	e92d4008 	push	{r3, lr}
   4:	e3a01008 	mov	r1, #8
   8:	ebfffffe 	bl	0 <vex::brain::lcd::setFont(vex::fontType)>
   c:	e3a00cff 	mov	r0, #65280	; 0xff00
  10:	ebfffffe 	bl	0 <vexDisplayForegroundColor>
  14:	e3a00000 	mov	r0, #0
  18:	e8bd4008 	pop	{r3, lr}
  1c:	eafffffe 	b	0 <vexDisplayBackgroundColor>

Disassembly of section .bss._ZZN3vex7console5writeElPclE4_col:

00000000 <.bss._ZZN3vex7console5writeElPclE4_col>:
   0:	00000000 	andeq	r0, r0, r0

Disassembly of section .rodata.str1.1:

00000000 <.rodata.str1.1>:
   0:	63250041 			; <UNDEFINED> instruction: 0x63250041
   4:	Address 0x0000000000000004 is out of bounds.


Disassembly of section .data._ZZN3vex7console5writeElPclE6prompt:

00000000 <.data._ZZN3vex7console5writeElPclE6prompt>:
   0:	003e3556 	eorseq	r3, lr, r6, asr r5

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
  44:	5b202965 	blpl	80a5e0 <vex::console::write(long, char*, long)+0x80a5e0>
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

