
vex_thread.cpp.obj:     file format elf32-littlearm


Disassembly of section .text._ZN3vex6threadC2EPFivE:

00000000 <_ZN3vex6threadC1EPFivE>:
   0:	e92d4030 	push	{r4, r5, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e5841000 	str	r1, [r4]
   c:	e3a03000 	mov	r3, #0
  10:	e5803004 	str	r3, [r0, #4]
  14:	e24dd014 	sub	sp, sp, #20
  18:	e59f3034 	ldr	r3, [pc, #52]	; 54 <_ZN3vex6threadC1EPFivE+0x54>
  1c:	e1a05001 	mov	r5, r1
  20:	e1a0000d 	mov	r0, sp
  24:	e5932000 	ldr	r2, [r3]
  28:	e2821001 	add	r1, r2, #1
  2c:	e5831000 	str	r1, [r3]
  30:	e59f1020 	ldr	r1, [pc, #32]	; 58 <_ZN3vex6threadC1EPFivE+0x58>
  34:	ebfffffe 	bl	0 <vex_sprintf>
  38:	e1a00005 	mov	r0, r5
  3c:	e3a01002 	mov	r1, #2
  40:	e1a0200d 	mov	r2, sp
  44:	ebfffffe 	bl	0 <vexTaskAdd>
  48:	e1a00004 	mov	r0, r4
  4c:	e28dd014 	add	sp, sp, #20
  50:	e8bd8030 	pop	{r4, r5, pc}
	...

Disassembly of section .text._ZN3vex6threadC2EPFiPvES1_:

00000000 <_ZN3vex6threadC1EPFiPvES1_>:
   0:	e92d407f 	push	{r0, r1, r2, r3, r4, r5, r6, lr}
   4:	e1a06002 	mov	r6, r2
   8:	e59f3044 	ldr	r3, [pc, #68]	; 54 <_ZN3vex6threadC1EPFiPvES1_+0x54>
   c:	e1a04000 	mov	r4, r0
  10:	e5841000 	str	r1, [r4]
  14:	e1a05001 	mov	r5, r1
  18:	e1a0000d 	mov	r0, sp
  1c:	e5932000 	ldr	r2, [r3]
  20:	e2821001 	add	r1, r2, #1
  24:	e5831000 	str	r1, [r3]
  28:	e59f1028 	ldr	r1, [pc, #40]	; 58 <_ZN3vex6threadC1EPFiPvES1_+0x58>
  2c:	ebfffffe 	bl	0 <vex_sprintf>
  30:	e1a00005 	mov	r0, r5
  34:	e3a01002 	mov	r1, #2
  38:	e1a02006 	mov	r2, r6
  3c:	e1a0300d 	mov	r3, sp
  40:	ebfffffe 	bl	0 <vexTaskAddWithArg>
  44:	e5840004 	str	r0, [r4, #4]
  48:	e1a00004 	mov	r0, r4
  4c:	e28dd010 	add	sp, sp, #16
  50:	e8bd8070 	pop	{r4, r5, r6, pc}
  54:	00000000 	andeq	r0, r0, r0
  58:	0000000a 	andeq	r0, r0, sl

Disassembly of section .text._ZN3vex6threadD2Ev:

00000000 <_ZN3vex6threadD1Ev>:
   0:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex6thread8joinableEv:

00000000 <_ZN3vex6thread8joinableEv>:
   0:	e92d4008 	push	{r3, lr}
   4:	e1a03000 	mov	r3, r0
   8:	e5900000 	ldr	r0, [r0]
   c:	e3500000 	cmp	r0, #0
  10:	08bd8008 	popeq	{r3, pc}
  14:	e5931004 	ldr	r1, [r3, #4]
  18:	ebfffffe 	bl	0 <vexTaskStateGetWithId>
  1c:	e2500063 	subs	r0, r0, #99	; 0x63
  20:	13a00001 	movne	r0, #1
  24:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text._ZN3vex6thread6get_idEv:

00000000 <_ZN3vex6thread6get_idEv>:
   0:	e8900003 	ldm	r0, {r0, r1}
   4:	eafffffe 	b	0 <vexTaskGetTaskIndexWithId>

Disassembly of section .text._ZN3vex6thread4joinEv:

00000000 <_ZN3vex6thread4joinEv>:
   0:	e8900003 	ldm	r0, {r0, r1}
   4:	eafffffe 	b	0 <vexTaskWaitForExitWithId>

Disassembly of section .text._ZN3vex6thread13native_handleEv:

00000000 <_ZN3vex6thread13native_handleEv>:
   0:	e5900000 	ldr	r0, [r0]
   4:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex6thread20hardware_concurrencyEv:

00000000 <_ZN3vex6thread20hardware_concurrencyEv>:
   0:	eafffffe 	b	0 <vexTaskHardwareConcurrency>

Disassembly of section .text._ZN3vex6thread4swapERS0_:

00000000 <_ZN3vex6thread4swapERS0_>:
   0:	e5903000 	ldr	r3, [r0]
   4:	e5912000 	ldr	r2, [r1]
   8:	e5802000 	str	r2, [r0]
   c:	e5813000 	str	r3, [r1]
  10:	e5912004 	ldr	r2, [r1, #4]
  14:	e5903004 	ldr	r3, [r0, #4]
  18:	e5802004 	str	r2, [r0, #4]
  1c:	e5813004 	str	r3, [r1, #4]
  20:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex6thread9interruptEv:

00000000 <_ZN3vex6thread9interruptEv>:
   0:	e1a03000 	mov	r3, r0
   4:	e5900000 	ldr	r0, [r0]
   8:	e3500000 	cmp	r0, #0
   c:	012fff1e 	bxeq	lr
  10:	e5931004 	ldr	r1, [r3, #4]
  14:	eafffffe 	b	0 <vexTaskStopWithId>

Disassembly of section .text._ZN3vex6thread12interruptAllEv:

00000000 <_ZN3vex6thread12interruptAllEv>:
   0:	e92d4073 	push	{r0, r1, r4, r5, r6, lr}
   4:	e59f007c 	ldr	r0, [pc, #124]	; 88 <_ZN3vex6thread12interruptAllEv+0x88>
   8:	e3500000 	cmp	r0, #0
   c:	0a00001b 	beq	80 <_ZN3vex6thread12interruptAllEv+0x80>
  10:	ebfffffe 	bl	0 <vexTaskGetTaskIndex>
  14:	e1a04000 	mov	r4, r0
  18:	ebfffffe 	bl	0 <vexTaskHardwareConcurrency>
  1c:	e3a03000 	mov	r3, #0
  20:	e58d3004 	str	r3, [sp, #4]
  24:	e1a06000 	mov	r6, r0
  28:	e2844001 	add	r4, r4, #1
  2c:	e1540006 	cmp	r4, r6
  30:	aa000012 	bge	80 <_ZN3vex6thread12interruptAllEv+0x80>
  34:	e1a00004 	mov	r0, r4
  38:	e28d1004 	add	r1, sp, #4
  3c:	ebfffffe 	bl	0 <vexTaskGetCallbackAndId>
  40:	e2505000 	subs	r5, r0, #0
  44:	0a00000c 	beq	7c <_ZN3vex6thread12interruptAllEv+0x7c>
  48:	e59d1004 	ldr	r1, [sp, #4]
  4c:	ebfffffe 	bl	0 <vexTaskPriorityGetWithId>
  50:	e350000f 	cmp	r0, #15
  54:	cafffff3 	bgt	28 <_ZN3vex6thread12interruptAllEv+0x28>
  58:	e1a00005 	mov	r0, r5
  5c:	e59d1004 	ldr	r1, [sp, #4]
  60:	ebfffffe 	bl	0 <vexTaskStateGetWithId>
  64:	e3500063 	cmp	r0, #99	; 0x63
  68:	0affffee 	beq	28 <_ZN3vex6thread12interruptAllEv+0x28>
  6c:	e1a00005 	mov	r0, r5
  70:	e59d1004 	ldr	r1, [sp, #4]
  74:	ebfffffe 	bl	0 <vexTaskStopWithId>
  78:	eaffffea 	b	28 <_ZN3vex6thread12interruptAllEv+0x28>
  7c:	ebfffffe 	bl	0 <vexTaskYield>
  80:	e28dd008 	add	sp, sp, #8
  84:	e8bd8070 	pop	{r4, r5, r6, pc}
  88:	00000000 	andeq	r0, r0, r0

Disassembly of section .text._ZN3vex6thread11setPriorityEl:

00000000 <_ZN3vex6thread11setPriorityEl>:
   0:	e1a03000 	mov	r3, r0
   4:	e5900000 	ldr	r0, [r0]
   8:	e1a02001 	mov	r2, r1
   c:	e3500000 	cmp	r0, #0
  10:	012fff1e 	bxeq	lr
  14:	e5931004 	ldr	r1, [r3, #4]
  18:	eafffffe 	b	0 <vexTaskPrioritySetWithId>

Disassembly of section .text._ZN3vex6thread8priorityEv:

00000000 <_ZN3vex6thread8priorityEv>:
   0:	e1a03000 	mov	r3, r0
   4:	e5900000 	ldr	r0, [r0]
   8:	e3500000 	cmp	r0, #0
   c:	012fff1e 	bxeq	lr
  10:	e5931004 	ldr	r1, [r3, #4]
  14:	eafffffe 	b	0 <vexTaskPriorityGetWithId>

Disassembly of section .text._ZN3vex11this_thread6get_idEv:

00000000 <_ZN3vex11this_thread6get_idEv>:
   0:	eafffffe 	b	0 <vexTaskGetIndex>

Disassembly of section .text._ZN3vex11this_thread5yieldEv:

00000000 <_ZN3vex11this_thread5yieldEv>:
   0:	eafffffe 	b	0 <vexTaskYield>

Disassembly of section .text._ZN3vex11this_thread9sleep_forEm:

00000000 <_ZN3vex11this_thread9sleep_forEm>:
   0:	eafffffe 	b	0 <vexTaskSleep>

Disassembly of section .text._ZN3vex11this_thread11sleep_untilEm:

00000000 <_ZN3vex11this_thread11sleep_untilEm>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <vexSystemTimeGet>
   c:	e0600004 	rsb	r0, r0, r4
  10:	e3500000 	cmp	r0, #0
  14:	d8bd8010 	pople	{r4, pc}
  18:	e8bd4010 	pop	{r4, lr}
  1c:	eafffffe 	b	0 <vexTaskSleep>

Disassembly of section .text._ZN3vex11this_thread11setPriorityEl:

00000000 <_ZN3vex11this_thread11setPriorityEl>:
   0:	e92d4013 	push	{r0, r1, r4, lr}
   4:	e3a03000 	mov	r3, #0
   8:	e1a04000 	mov	r4, r0
   c:	e58d3004 	str	r3, [sp, #4]
  10:	ebfffffe 	bl	0 <vexTaskGetIndex>
  14:	e3500000 	cmp	r0, #0
  18:	ba000006 	blt	38 <_ZN3vex11this_thread11setPriorityEl+0x38>
  1c:	e28d1004 	add	r1, sp, #4
  20:	ebfffffe 	bl	0 <vexTaskGetCallbackAndId>
  24:	e3500000 	cmp	r0, #0
  28:	0a000002 	beq	38 <_ZN3vex11this_thread11setPriorityEl+0x38>
  2c:	e59d1004 	ldr	r1, [sp, #4]
  30:	e1a02004 	mov	r2, r4
  34:	ebfffffe 	bl	0 <vexTaskPrioritySetWithId>
  38:	e28dd008 	add	sp, sp, #8
  3c:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex11this_thread8priorityEv:

00000000 <_ZN3vex11this_thread8priorityEv>:
   0:	e92d4007 	push	{r0, r1, r2, lr}
   4:	e3a03000 	mov	r3, #0
   8:	e58d3004 	str	r3, [sp, #4]
   c:	ebfffffe 	bl	0 <vexTaskGetIndex>
  10:	e3500000 	cmp	r0, #0
  14:	aa000001 	bge	20 <_ZN3vex11this_thread8priorityEv+0x20>
  18:	e3a00000 	mov	r0, #0
  1c:	ea000005 	b	38 <_ZN3vex11this_thread8priorityEv+0x38>
  20:	e28d1004 	add	r1, sp, #4
  24:	ebfffffe 	bl	0 <vexTaskGetCallbackAndId>
  28:	e3500000 	cmp	r0, #0
  2c:	0afffff9 	beq	18 <_ZN3vex11this_thread8priorityEv+0x18>
  30:	e59d1004 	ldr	r1, [sp, #4]
  34:	ebfffffe 	bl	0 <vexTaskPriorityGetWithId>
  38:	e28dd00c 	add	sp, sp, #12
  3c:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

Disassembly of section .text._ZN3vex5mutexC2Ev:

00000000 <_ZN3vex5mutexC1Ev>:
   0:	e92d4010 	push	{r4, lr}
   4:	e3a03000 	mov	r3, #0
   8:	e1a04000 	mov	r4, r0
   c:	e5803000 	str	r3, [r0]
  10:	ebfffffe 	bl	0 <vexSemaphoreInit>
  14:	e1a00004 	mov	r0, r4
  18:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex5mutexD2Ev:

00000000 <_ZN3vex5mutexD1Ev>:
   0:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex5mutex4lockEv:

00000000 <_ZN3vex5mutex4lockEv>:
   0:	e3e01000 	mvn	r1, #0
   4:	eafffffe 	b	0 <vexSemaphoreLock>

Disassembly of section .text._ZN3vex5mutex8try_lockEv:

00000000 <_ZN3vex5mutex8try_lockEv>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e5d03001 	ldrb	r3, [r0, #1]
   c:	e3530000 	cmp	r3, #0
  10:	0a000005 	beq	2c <_ZN3vex5mutex8try_lockEv+0x2c>
  14:	e5d05000 	ldrb	r5, [r0]
  18:	ebfffffe 	bl	0 <vexTaskGetIndex>
  1c:	e1550000 	cmp	r5, r0
  20:	0a000001 	beq	2c <_ZN3vex5mutex8try_lockEv+0x2c>
  24:	e3a00000 	mov	r0, #0
  28:	e8bd8038 	pop	{r3, r4, r5, pc}
  2c:	e1a00004 	mov	r0, r4
  30:	e3a01000 	mov	r1, #0
  34:	ebfffffe 	bl	0 <vexSemaphoreLock>
  38:	e3a00001 	mov	r0, #1
  3c:	e8bd8038 	pop	{r3, r4, r5, pc}

Disassembly of section .text._ZN3vex5mutex6unlockEv:

00000000 <_ZN3vex5mutex6unlockEv>:
   0:	eafffffe 	b	0 <vexSemaphoreUnlock>

Disassembly of section .rodata.str1.1:

00000000 <.rodata.str1.1>:
   0:	44524854 	ldrbmi	r4, [r2], #-2132	; 0xfffff7ac
   4:	3230255f 	eorscc	r2, r0, #398458880	; 0x17c00000
   8:	48540064 	ldmdami	r4, {r2, r5, r6}^
   c:	255f4152 	ldrbcs	r4, [pc, #-338]	; fffffec2 <_ZN3vex6thread12interruptAllEv+0xfffffec2>
  10:	00643230 	rsbeq	r3, r4, r0, lsr r2

Disassembly of section .bss._ZN3vex6thread8_labelIdE:

00000000 <_ZN3vex6thread8_labelIdE>:
   0:	00000000 	andeq	r0, r0, r0

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
  44:	5b202965 	blpl	80a5e0 <_ZN3vex6thread12interruptAllEv+0x80a5e0>
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

