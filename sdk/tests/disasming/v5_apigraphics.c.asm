
v5_apigraphics.c.obj:     file format elf32-littlearm


Disassembly of section .text.vexDisplayOffscreenBufferGet:

00000000 <vexDisplayOffscreenBufferGet>:
   0:	e3510c02 	cmp	r1, #512	; 0x200
   4:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
   8:	d3a03000 	movle	r3, #0
   c:	c3a03001 	movgt	r3, #1
  10:	e3500c02 	cmp	r0, #512	; 0x200
  14:	83833001 	orrhi	r3, r3, #1
  18:	e3530000 	cmp	r3, #0
  1c:	1a000016 	bne	7c <vexDisplayOffscreenBufferGet+0x7c>
  20:	e1a07000 	mov	r7, r0
  24:	e3a00010 	mov	r0, #16
  28:	e1a06002 	mov	r6, r2
  2c:	e1a05001 	mov	r5, r1
  30:	ebfffffe 	bl	0 <malloc>
  34:	e2504000 	subs	r4, r0, #0
  38:	0a000002 	beq	48 <vexDisplayOffscreenBufferGet+0x48>
  3c:	e1a00585 	lsl	r0, r5, #11
  40:	ebfffffe 	bl	0 <malloc>
  44:	e5840000 	str	r0, [r4]
  48:	e5942000 	ldr	r2, [r4]
  4c:	e3520000 	cmp	r2, #0
  50:	0a00000b 	beq	84 <vexDisplayOffscreenBufferGet+0x84>
  54:	e5845008 	str	r5, [r4, #8]
  58:	e1a05485 	lsl	r5, r5, #9
  5c:	e3a03000 	mov	r3, #0
  60:	e5847004 	str	r7, [r4, #4]
  64:	e584600c 	str	r6, [r4, #12]
  68:	e1530005 	cmp	r3, r5
  6c:	aa000004 	bge	84 <vexDisplayOffscreenBufferGet+0x84>
  70:	e7826103 	str	r6, [r2, r3, lsl #2]
  74:	e2833001 	add	r3, r3, #1
  78:	eafffffa 	b	68 <vexDisplayOffscreenBufferGet+0x68>
  7c:	e3a00000 	mov	r0, #0
  80:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
  84:	e1a00004 	mov	r0, r4
  88:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}

Disassembly of section .text.vexDisplayOffscreenBufferDestroy:

00000000 <vexDisplayOffscreenBufferDestroy>:
   0:	e3500000 	cmp	r0, #0
   4:	012fff1e 	bxeq	lr
   8:	e92d4010 	push	{r4, lr}
   c:	e1a04000 	mov	r4, r0
  10:	e5900000 	ldr	r0, [r0]
  14:	e3500000 	cmp	r0, #0
  18:	0a000000 	beq	20 <vexDisplayOffscreenBufferDestroy+0x20>
  1c:	ebfffffe 	bl	0 <free>
  20:	e1a00004 	mov	r0, r4
  24:	e8bd4010 	pop	{r4, lr}
  28:	eafffffe 	b	0 <free>

Disassembly of section .text.vexDisplayOffscreenBufferPixelSet:

00000000 <vexDisplayOffscreenBufferPixelSet>:
   0:	e3500000 	cmp	r0, #0
   4:	012fff1e 	bxeq	lr
   8:	e590c004 	ldr	ip, [r0, #4]
   c:	e151000c 	cmp	r1, ip
  10:	212fff1e 	bxcs	lr
  14:	e590c008 	ldr	ip, [r0, #8]
  18:	e152000c 	cmp	r2, ip
  1c:	30811482 	addcc	r1, r1, r2, lsl #9
  20:	35902000 	ldrcc	r2, [r0]
  24:	37823101 	strcc	r3, [r2, r1, lsl #2]
  28:	e12fff1e 	bx	lr

Disassembly of section .text.vexDisplayOffscreenBufferPixelGet:

00000000 <vexDisplayOffscreenBufferPixelGet>:
   0:	e3500000 	cmp	r0, #0
   4:	012fff1e 	bxeq	lr
   8:	e5903004 	ldr	r3, [r0, #4]
   c:	e1510003 	cmp	r1, r3
  10:	2a000006 	bcs	30 <vexDisplayOffscreenBufferPixelGet+0x30>
  14:	e5903008 	ldr	r3, [r0, #8]
  18:	e1520003 	cmp	r2, r3
  1c:	2a000003 	bcs	30 <vexDisplayOffscreenBufferPixelGet+0x30>
  20:	e5903000 	ldr	r3, [r0]
  24:	e0811482 	add	r1, r1, r2, lsl #9
  28:	e7930101 	ldr	r0, [r3, r1, lsl #2]
  2c:	e12fff1e 	bx	lr
  30:	e3a00000 	mov	r0, #0
  34:	e12fff1e 	bx	lr

Disassembly of section .text.vexDisplayOffscreenBufferRectDraw:

00000000 <vexDisplayOffscreenBufferRectDraw>:
   0:	e92d43f8 	push	{r3, r4, r5, r6, r7, r8, r9, lr}
   4:	e1a06000 	mov	r6, r0
   8:	e59d9020 	ldr	r9, [sp, #32]
   c:	e1a04001 	mov	r4, r1
  10:	e1a08002 	mov	r8, r2
  14:	e1a07003 	mov	r7, r3
  18:	e1a05002 	mov	r5, r2
  1c:	e1550009 	cmp	r5, r9
  20:	ca00000b 	bgt	54 <vexDisplayOffscreenBufferRectDraw+0x54>
  24:	e1a02005 	mov	r2, r5
  28:	e1a00006 	mov	r0, r6
  2c:	e1a01004 	mov	r1, r4
  30:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
  34:	ebfffffe 	bl	0 <vexDisplayOffscreenBufferRectDraw>
  38:	e1a02005 	mov	r2, r5
  3c:	e1a00006 	mov	r0, r6
  40:	e1a01007 	mov	r1, r7
  44:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
  48:	e2855001 	add	r5, r5, #1
  4c:	ebfffffe 	bl	0 <vexDisplayOffscreenBufferRectDraw>
  50:	eafffff1 	b	1c <vexDisplayOffscreenBufferRectDraw+0x1c>
  54:	e1540007 	cmp	r4, r7
  58:	ca00000b 	bgt	8c <vexDisplayOffscreenBufferRectDraw+0x8c>
  5c:	e1a01004 	mov	r1, r4
  60:	e1a00006 	mov	r0, r6
  64:	e1a02008 	mov	r2, r8
  68:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
  6c:	ebfffffe 	bl	0 <vexDisplayOffscreenBufferRectDraw>
  70:	e1a01004 	mov	r1, r4
  74:	e1a00006 	mov	r0, r6
  78:	e1a02009 	mov	r2, r9
  7c:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
  80:	e2844001 	add	r4, r4, #1
  84:	ebfffffe 	bl	0 <vexDisplayOffscreenBufferRectDraw>
  88:	eafffff1 	b	54 <vexDisplayOffscreenBufferRectDraw+0x54>
  8c:	e8bd83f8 	pop	{r3, r4, r5, r6, r7, r8, r9, pc}

Disassembly of section .text.vexDisplayOffscreenBufferRectFill:

00000000 <vexDisplayOffscreenBufferRectFill>:
   0:	e92d43f8 	push	{r3, r4, r5, r6, r7, r8, r9, lr}
   4:	e1a07000 	mov	r7, r0
   8:	e59d9020 	ldr	r9, [sp, #32]
   c:	e1a06001 	mov	r6, r1
  10:	e1a05002 	mov	r5, r2
  14:	e1a08003 	mov	r8, r3
  18:	e1550009 	cmp	r5, r9
  1c:	c8bd83f8 	popgt	{r3, r4, r5, r6, r7, r8, r9, pc}
  20:	e1a04006 	mov	r4, r6
  24:	e1540008 	cmp	r4, r8
  28:	ca000006 	bgt	48 <vexDisplayOffscreenBufferRectFill+0x48>
  2c:	e1a01004 	mov	r1, r4
  30:	e1a00007 	mov	r0, r7
  34:	e1a02005 	mov	r2, r5
  38:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
  3c:	ebfffffe 	bl	0 <vexDisplayOffscreenBufferRectFill>
  40:	e2844001 	add	r4, r4, #1
  44:	eafffff6 	b	24 <vexDisplayOffscreenBufferRectFill+0x24>
  48:	e2855001 	add	r5, r5, #1
  4c:	eafffff1 	b	18 <vexDisplayOffscreenBufferRectFill+0x18>

Disassembly of section .text.vexDisplayOffscreenBufferScrollH:

00000000 <vexDisplayOffscreenBufferScrollH>:
   0:	e3500000 	cmp	r0, #0
   4:	012fff1e 	bxeq	lr
   8:	e3e03003 	mvn	r3, #3
   c:	e0030193 	mul	r3, r3, r1
  10:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
  14:	e1a09101 	lsl	r9, r1, #2
  18:	e5908000 	ldr	r8, [r0]
  1c:	e283ab02 	add	sl, r3, #2048	; 0x800
  20:	e0833009 	add	r3, r3, r9
  24:	e1a05000 	mov	r5, r0
  28:	e2834b02 	add	r4, r3, #2048	; 0x800
  2c:	e1a06001 	mov	r6, r1
  30:	e1a03008 	mov	r3, r8
  34:	e3a07000 	mov	r7, #0
  38:	e5952008 	ldr	r2, [r5, #8]
  3c:	e0891587 	add	r1, r9, r7, lsl #11
  40:	e0881001 	add	r1, r8, r1
  44:	e1570002 	cmp	r7, r2
  48:	2a00000d 	bcs	84 <vexDisplayOffscreenBufferScrollH+0x84>
  4c:	e1a00003 	mov	r0, r3
  50:	e1a0200a 	mov	r2, sl
  54:	ebfffffe 	bl	0 <memmove>
  58:	e3a02000 	mov	r2, #0
  5c:	e080100a 	add	r1, r0, sl
  60:	e1a03000 	mov	r3, r0
  64:	e1520006 	cmp	r2, r6
  68:	1595000c 	ldrne	r0, [r5, #12]
  6c:	17810102 	strne	r0, [r1, r2, lsl #2]
  70:	12822001 	addne	r2, r2, #1
  74:	1afffffa 	bne	64 <vexDisplayOffscreenBufferScrollH+0x64>
  78:	e0833004 	add	r3, r3, r4
  7c:	e2877001 	add	r7, r7, #1
  80:	eaffffec 	b	38 <vexDisplayOffscreenBufferScrollH+0x38>
  84:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}

Disassembly of section .text.vexDisplayOffscreenBufferBlit:

00000000 <vexDisplayOffscreenBufferBlit>:
   0:	e92d4007 	push	{r0, r1, r2, lr}
   4:	e5900000 	ldr	r0, [r0]
   8:	e58d0000 	str	r0, [sp]
   c:	e3a00c02 	mov	r0, #512	; 0x200
  10:	e58d0004 	str	r0, [sp, #4]
  14:	e1a00001 	mov	r0, r1
  18:	e1a01002 	mov	r1, r2
  1c:	e1a02003 	mov	r2, r3
  20:	e59d3010 	ldr	r3, [sp, #16]
  24:	ebfffffe 	bl	0 <vexDisplayCopyRect>
  28:	e28dd00c 	add	sp, sp, #12
  2c:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

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
  44:	5b202965 	blpl	80a5e0 <vexDisplayOffscreenBufferRectDraw+0x80a5e0>
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

