
vex_device.cpp.obj:     file format elf32-littlearm


Disassembly of section .text._ZN3vex6deviceD2Ev:

00000000 <_ZN3vex6deviceD1Ev>:
   0:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex6device5valueEv:

00000000 <_ZN3vex6device5valueEv>:
   0:	e3a00000 	mov	r0, #0
   4:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex6deviceD0Ev:

00000000 <_ZN3vex6deviceD0Ev>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <_ZdlPv>
   c:	e1a00004 	mov	r0, r4
  10:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex6device4initEl:

00000000 <_ZN3vex6device4initEl>:
   0:	e351001f 	cmp	r1, #31
   4:	e92d4010 	push	{r4, lr}
   8:	83a03000 	movhi	r3, #0
   c:	e1a04000 	mov	r4, r0
  10:	85803008 	strhi	r3, [r0, #8]
  14:	95801008 	strls	r1, [r0, #8]
  18:	e5900008 	ldr	r0, [r0, #8]
  1c:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
  20:	e3e03000 	mvn	r3, #0
  24:	e584300c 	str	r3, [r4, #12]
  28:	e5840004 	str	r0, [r4, #4]
  2c:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex6deviceC2Ev:

00000000 <_ZN3vex6deviceC1Ev>:
   0:	e59f3018 	ldr	r3, [pc, #24]	; 20 <_ZN3vex6deviceC1Ev+0x20>
   4:	e3a01000 	mov	r1, #0
   8:	e92d4010 	push	{r4, lr}
   c:	e1a04000 	mov	r4, r0
  10:	e5803000 	str	r3, [r0]
  14:	ebfffffe 	bl	0 <_ZN3vex6deviceC1Ev>
  18:	e1a00004 	mov	r0, r4
  1c:	e8bd8010 	pop	{r4, pc}
  20:	00000008 	andeq	r0, r0, r8

Disassembly of section .text._ZN3vex6deviceC2El:

00000000 <_ZN3vex6deviceC1El>:
   0:	e59f3014 	ldr	r3, [pc, #20]	; 1c <_ZN3vex6deviceC1El+0x1c>
   4:	e92d4010 	push	{r4, lr}
   8:	e1a04000 	mov	r4, r0
   c:	e5803000 	str	r3, [r0]
  10:	ebfffffe 	bl	0 <_ZN3vex6deviceC1El>
  14:	e1a00004 	mov	r0, r4
  18:	e8bd8010 	pop	{r4, pc}
  1c:	00000008 	andeq	r0, r0, r8

Disassembly of section .text._ZN3vex6device4typeEv:

00000000 <_ZN3vex6device4typeEv>:
   0:	e5900004 	ldr	r0, [r0, #4]
   4:	e3500000 	cmp	r0, #0
   8:	15d00006 	ldrbne	r0, [r0, #6]
   c:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex6device9installedEv:

00000000 <_ZN3vex6device9installedEv>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <_ZN3vex6device9installedEv>
   8:	e2900000 	adds	r0, r0, #0
   c:	13a00001 	movne	r0, #1
  10:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text._ZN3vex6device5indexEv:

00000000 <_ZN3vex6device5indexEv>:
   0:	e5900008 	ldr	r0, [r0, #8]
   4:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex6device9timestampEv:

00000000 <_ZN3vex6device9timestampEv>:
   0:	e5900004 	ldr	r0, [r0, #4]
   4:	e3500000 	cmp	r0, #0
   8:	012fff1e 	bxeq	lr
   c:	eafffffe 	b	0 <vexDeviceGetTimestamp>

Disassembly of section .text._ZN3vex6device5flagsEv:

00000000 <_ZN3vex6device5flagsEv>:
   0:	e5900004 	ldr	r0, [r0, #4]
   4:	e3500000 	cmp	r0, #0
   8:	11d000ba 	ldrhne	r0, [r0, #10]
   c:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex7devicesC2Ev:

00000000 <_ZN3vex7devicesC1Ev>:
   0:	e92d40f0 	push	{r4, r5, r6, r7, lr}
   4:	e2805004 	add	r5, r0, #4
   8:	e24dd014 	sub	sp, sp, #20
   c:	e2807f81 	add	r7, r0, #516	; 0x204
  10:	e1a04000 	mov	r4, r0
  14:	e1a06005 	mov	r6, r5
  18:	e1a00005 	mov	r0, r5
  1c:	e2855010 	add	r5, r5, #16
  20:	ebfffffe 	bl	0 <_ZN3vex7devicesC1Ev>
  24:	e1550007 	cmp	r5, r7
  28:	1afffffa 	bne	18 <_ZN3vex7devicesC1Ev+0x18>
  2c:	e1a00007 	mov	r0, r7
  30:	e3a05000 	mov	r5, #0
  34:	ebfffffe 	bl	0 <_ZN3vex7devicesC1Ev>
  38:	e3a03020 	mov	r3, #32
  3c:	e1a0000d 	mov	r0, sp
  40:	e5843000 	str	r3, [r4]
  44:	e3a01000 	mov	r1, #0
  48:	ebfffffe 	bl	0 <_ZN3vex7devicesC1Ev>
  4c:	e59d3004 	ldr	r3, [sp, #4]
  50:	e5843208 	str	r3, [r4, #520]	; 0x208
  54:	e59d3008 	ldr	r3, [sp, #8]
  58:	e584320c 	str	r3, [r4, #524]	; 0x20c
  5c:	e59d300c 	ldr	r3, [sp, #12]
  60:	e5843210 	str	r3, [r4, #528]	; 0x210
  64:	e5940000 	ldr	r0, [r4]
  68:	e1a01005 	mov	r1, r5
  6c:	e1500005 	cmp	r0, r5
  70:	e2855001 	add	r5, r5, #1
  74:	c1a00006 	movgt	r0, r6
  78:	d1a00007 	movle	r0, r7
  7c:	ebfffffe 	bl	0 <_ZN3vex7devicesC1Ev>
  80:	e3550020 	cmp	r5, #32
  84:	e2866010 	add	r6, r6, #16
  88:	1afffff5 	bne	64 <_ZN3vex7devicesC1Ev+0x64>
  8c:	e1a00004 	mov	r0, r4
  90:	e28dd014 	add	sp, sp, #20
  94:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}

Disassembly of section .text._ZN3vex7devicesD2Ev:

00000000 <_ZN3vex7devicesD1Ev>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e2806004 	add	r6, r0, #4
   8:	e2804f81 	add	r4, r0, #516	; 0x204
   c:	e1a05000 	mov	r5, r0
  10:	e1540006 	cmp	r4, r6
  14:	0a000004 	beq	2c <_ZN3vex7devicesD1Ev+0x2c>
  18:	e5343010 	ldr	r3, [r4, #-16]!
  1c:	e5933000 	ldr	r3, [r3]
  20:	e1a00004 	mov	r0, r4
  24:	e12fff33 	blx	r3
  28:	eafffff8 	b	10 <_ZN3vex7devicesD1Ev+0x10>
  2c:	e1a00005 	mov	r0, r5
  30:	e8bd8070 	pop	{r4, r5, r6, pc}

Disassembly of section .text._ZN3vex7devices4typeEl:

00000000 <_ZN3vex7devices4typeEl>:
   0:	e3510000 	cmp	r1, #0
   4:	ba000004 	blt	1c <_ZN3vex7devices4typeEl+0x1c>
   8:	e5903000 	ldr	r3, [r0]
   c:	e1530001 	cmp	r3, r1
  10:	c0800201 	addgt	r0, r0, r1, lsl #4
  14:	c2800004 	addgt	r0, r0, #4
  18:	ca000000 	bgt	20 <_ZN3vex7devices4typeEl+0x20>
  1c:	e2800f81 	add	r0, r0, #516	; 0x204
  20:	eafffffe 	b	0 <_ZN3vex7devices4typeEl>

Disassembly of section .text._ZN3vex7devices6numberEv:

00000000 <_ZN3vex7devices6numberEv>:
   0:	eafffffe 	b	0 <vexDevicesGetNumber>

Disassembly of section .text._ZN3vex7devices8numberOfE13V5_DeviceType:

00000000 <_ZN3vex7devices8numberOfE13V5_DeviceType>:
   0:	e1a00001 	mov	r0, r1
   4:	eafffffe 	b	0 <vexDevicesGetNumberByType>

Disassembly of section .rodata._ZTVN3vex6deviceE:

00000000 <_ZTVN3vex6deviceE>:
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
  44:	5b202965 	blpl	80a5e0 <_ZN3vex7devicesC1Ev+0x80a5e0>
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

