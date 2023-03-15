
v5_fstubs.c.obj:     file format elf32-littlearm


Disassembly of section .text.__errno:

00000000 <__errno>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <__errno+0xc>
   4:	e5930000 	ldr	r0, [r3]
   8:	e12fff1e 	bx	lr
   c:	00000000 	andeq	r0, r0, r0

Disassembly of section .text._fstat:

00000000 <_fstat>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e3a03a02 	mov	r3, #8192	; 0x2000
   8:	e5813004 	str	r3, [r1, #4]
   c:	e1a05000 	mov	r5, r0
  10:	e1a04001 	mov	r4, r1
  14:	ebfffffe 	bl	0 <_fstat>
  18:	e1a01004 	mov	r1, r4
  1c:	e1a02000 	mov	r2, r0
  20:	e1a00005 	mov	r0, r5
  24:	e8bd4038 	pop	{r3, r4, r5, lr}
  28:	eafffffe 	b	0 <_fstat_user>

Disassembly of section .text.fcntl:

00000000 <fcntl>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a06000 	mov	r6, r0
   8:	e1a05001 	mov	r5, r1
   c:	e1a04002 	mov	r4, r2
  10:	ebfffffe 	bl	0 <fcntl>
  14:	e1a01005 	mov	r1, r5
  18:	e1a02004 	mov	r2, r4
  1c:	e1a03000 	mov	r3, r0
  20:	e1a00006 	mov	r0, r6
  24:	e8bd4070 	pop	{r4, r5, r6, lr}
  28:	eafffffe 	b	0 <_fcntl_user>

Disassembly of section .text._lseek:

00000000 <_lseek>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a06000 	mov	r6, r0
   8:	e1a05001 	mov	r5, r1
   c:	e1a04002 	mov	r4, r2
  10:	ebfffffe 	bl	0 <_lseek>
  14:	e1a01005 	mov	r1, r5
  18:	e1a02004 	mov	r2, r4
  1c:	e1a03000 	mov	r3, r0
  20:	e1a00006 	mov	r0, r6
  24:	e8bd4070 	pop	{r4, r5, r6, lr}
  28:	eafffffe 	b	0 <_lseek_user>

Disassembly of section .text.lseek:

00000000 <lseek>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <lseek>
   8:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text._open:

00000000 <_open>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a06000 	mov	r6, r0
   8:	e1a05001 	mov	r5, r1
   c:	e1a04002 	mov	r4, r2
  10:	ebfffffe 	bl	0 <_open>
  14:	e1a01005 	mov	r1, r5
  18:	e1a02004 	mov	r2, r4
  1c:	e1a03000 	mov	r3, r0
  20:	e1a00006 	mov	r0, r6
  24:	e8bd4070 	pop	{r4, r5, r6, lr}
  28:	eafffffe 	b	0 <_open_user>

Disassembly of section .text.open:

00000000 <open>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <open>
   8:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text._close:

00000000 <_close>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <_close>
   c:	e1a01000 	mov	r1, r0
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	eafffffe 	b	0 <_close_user>

Disassembly of section .text._read:

00000000 <_read>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a06000 	mov	r6, r0
   8:	e1a05001 	mov	r5, r1
   c:	e1a04002 	mov	r4, r2
  10:	ebfffffe 	bl	0 <_read>
  14:	e1a01005 	mov	r1, r5
  18:	e1a02004 	mov	r2, r4
  1c:	e1a03000 	mov	r3, r0
  20:	e1a00006 	mov	r0, r6
  24:	e8bd4070 	pop	{r4, r5, r6, lr}
  28:	eafffffe 	b	0 <_read_user>

Disassembly of section .text.read:

00000000 <read>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <read>
   8:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text._write:

00000000 <_write>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a06000 	mov	r6, r0
   8:	e1a05001 	mov	r5, r1
   c:	e1a04002 	mov	r4, r2
  10:	ebfffffe 	bl	0 <_write>
  14:	e1a01005 	mov	r1, r5
  18:	e1a02004 	mov	r2, r4
  1c:	e1a03000 	mov	r3, r0
  20:	e1a00006 	mov	r0, r6
  24:	ebfffffe 	bl	0 <_write_user>
  28:	e3500000 	cmp	r0, #0
  2c:	c8bd8070 	popgt	{r4, r5, r6, pc}
  30:	ebfffffe 	bl	0 <_write>
  34:	e3a03005 	mov	r3, #5
  38:	e5803000 	str	r3, [r0]
  3c:	e3a00000 	mov	r0, #0
  40:	e8bd8070 	pop	{r4, r5, r6, pc}

Disassembly of section .text.write:

00000000 <write>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <write>
   8:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text._isatty:

00000000 <_isatty>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <_isatty>
   c:	e1a01000 	mov	r1, r0
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	eafffffe 	b	0 <_isatty_user>

Disassembly of section .text.isatty:

00000000 <isatty>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <isatty>
   8:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text._gettimeofday:

00000000 <_gettimeofday>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <vexSystemTimeGet>
   c:	e3540000 	cmp	r4, #0
  10:	08bd8010 	popeq	{r4, pc}
  14:	e59f201c 	ldr	r2, [pc, #28]	; 38 <_gettimeofday+0x38>
  18:	e0832290 	umull	r2, r3, r0, r2
  1c:	e1a02323 	lsr	r2, r3, #6
  20:	e3a03ffa 	mov	r3, #1000	; 0x3e8
  24:	e5842000 	str	r2, [r4]
  28:	e0620293 	mls	r2, r3, r2, r0
  2c:	e0030293 	mul	r3, r3, r2
  30:	e5843004 	str	r3, [r4, #4]
  34:	e8bd8010 	pop	{r4, pc}
  38:	10624dd3 	ldrdne	r4, [r2], #-211	; 0xffffff2d	; <UNPREDICTABLE>

Disassembly of section .text._times:

00000000 <_times>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <vexSystemTimeGet>
   c:	e59f3020 	ldr	r3, [pc, #32]	; 34 <_times+0x34>
  10:	e3540000 	cmp	r4, #0
  14:	e0810390 	umull	r0, r1, r0, r3
  18:	13a03000 	movne	r3, #0
  1c:	15843008 	strne	r3, [r4, #8]
  20:	15843004 	strne	r3, [r4, #4]
  24:	15843000 	strne	r3, [r4]
  28:	e1a002a1 	lsr	r0, r1, #5
  2c:	1584000c 	strne	r0, [r4, #12]
  30:	e8bd8010 	pop	{r4, pc}
  34:	51eb851f 	mvnpl	r8, pc, lsl r5

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
  44:	5b202965 	blpl	80a5e0 <_write+0x80a5e0>
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

