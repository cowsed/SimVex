
v5_startup.c.obj:     file format elf32-littlearm


Disassembly of section .text.vexMain:

00000000 <vexMain>:
   0:	e92d4010 	push	{r4, lr}
   4:	e3a02000 	mov	r2, #0
   8:	e59f3084 	ldr	r3, [pc, #132]	; 94 <vexMain+0x94>
   c:	e59f4084 	ldr	r4, [pc, #132]	; 98 <vexMain+0x98>
  10:	e59f0084 	ldr	r0, [pc, #132]	; 9c <vexMain+0x9c>
  14:	e5c32000 	strb	r2, [r3]
  18:	ebfffffe 	bl	0 <vexDebug>
  1c:	e594000c 	ldr	r0, [r4, #12]
  20:	ebfffffe 	bl	0 <vexPrivateApiEnable>
  24:	e59f0074 	ldr	r0, [pc, #116]	; a0 <vexMain+0xa0>
  28:	e3a01002 	mov	r1, #2
  2c:	e59f2070 	ldr	r2, [pc, #112]	; a4 <vexMain+0xa4>
  30:	ebfffffe 	bl	0 <vexTaskAdd>
  34:	e594300c 	ldr	r3, [r4, #12]
  38:	e3130002 	tst	r3, #2
  3c:	0a000002 	beq	4c <vexMain+0x4c>
  40:	e59f0058 	ldr	r0, [pc, #88]	; a0 <vexMain+0xa0>
  44:	ebfffffe 	bl	0 <vexTaskGetTaskIndex>
  48:	ebfffffe 	bl	0 <vexTaskCompletionIdSet>
  4c:	ebfffffe 	bl	0 <vexTasksDump>
  50:	e59f4050 	ldr	r4, [pc, #80]	; a8 <vexMain+0xa8>
  54:	e5943000 	ldr	r3, [r4]
  58:	e3530000 	cmp	r3, #0
  5c:	0a000002 	beq	6c <vexMain+0x6c>
  60:	ebfffffe 	bl	0 <vexTasksRun>
  64:	e5840000 	str	r0, [r4]
  68:	eafffff8 	b	50 <vexMain+0x50>
  6c:	ebfffffe 	bl	0 <vexTaskStopAll>
  70:	e59f0034 	ldr	r0, [pc, #52]	; ac <vexMain+0xac>
  74:	ebfffffe 	bl	0 <vexDebug>
  78:	ebfffffe 	bl	0 <vexSystemTimeGet>
  7c:	e2804f7d 	add	r4, r0, #500	; 0x1f4
  80:	ebfffffe 	bl	0 <vexSystemTimeGet>
  84:	e1500004 	cmp	r0, r4
  88:	3afffffc 	bcc	80 <vexMain+0x80>
  8c:	e8bd4010 	pop	{r4, lr}
  90:	eafffffe 	b	0 <vexSystemExitRequest>
	...
  a4:	00000010 	andeq	r0, r0, r0, lsl r0
  a8:	00000000 	andeq	r0, r0, r0
  ac:	00000015 	andeq	r0, r0, r5, lsl r0

Disassembly of section .boot:

00000000 <vexStartup>:
   0:	e92d4010 	push	{r4, lr}
   4:	e59f00a0 	ldr	r0, [pc, #160]	; ac <vexStartup+0xac>
   8:	e59f10a0 	ldr	r1, [pc, #160]	; b0 <vexStartup+0xb0>
   c:	e3a02000 	mov	r2, #0
  10:	e1500001 	cmp	r0, r1
  14:	b4802004 	strlt	r2, [r0], #4
  18:	bafffffc 	blt	10 <vexStartup+0x10>
  1c:	e59f0090 	ldr	r0, [pc, #144]	; b4 <vexStartup+0xb4>
  20:	e59f1090 	ldr	r1, [pc, #144]	; b8 <vexStartup+0xb8>
  24:	e3a02000 	mov	r2, #0
  28:	e1500001 	cmp	r0, r1
  2c:	b4802004 	strlt	r2, [r0], #4
  30:	bafffffc 	blt	28 <vexStartup+0x28>
  34:	ebfffffe 	bl	0 <vexStdlibVersionVerify>
  38:	e3500000 	cmp	r0, #0
  3c:	1a000006 	bne	5c <vexStartup+0x5c>
  40:	ebfffffe 	bl	0 <vexStdlibVersion>
  44:	e1a04000 	mov	r4, r0
  48:	ebfffffe 	bl	0 <vexStdlibVersionLinked>
  4c:	e1a01000 	mov	r1, r0
  50:	e1a00004 	mov	r0, r4
  54:	ebfffffe 	bl	0 <vexStdlibMismatchError>
  58:	ea000010 	b	a0 <vexStartup+0xa0>
  5c:	ebfffffe 	bl	0 <vexSystemStdlibImpureDataAddr>
  60:	e3500000 	cmp	r0, #0
  64:	13700001 	cmnne	r0, #1
  68:	e1a04000 	mov	r4, r0
  6c:	0a000008 	beq	94 <vexStartup+0x94>
  70:	ebfffffe 	bl	0 <vexSystemStdlibImpureDataSize>
  74:	e3003428 	movw	r3, #1064	; 0x428
  78:	e1500003 	cmp	r0, r3
  7c:	1a000004 	bne	94 <vexStartup+0x94>
  80:	e59f3020 	ldr	r3, [pc, #32]	; a8 <vexStartup+0xa8>
  84:	e5834000 	str	r4, [r3]
  88:	e3a03000 	mov	r3, #0
  8c:	e5843000 	str	r3, [r4]
  90:	ebfffffe 	bl	0 <vexSystemSaveUserData>
  94:	ebfffffe 	bl	0 <__libc_init_array>
  98:	ebfffffe 	bl	0 <vexStartup>
  9c:	ebfffffe 	bl	0 <__libc_fini_array>
  a0:	e3a00000 	mov	r0, #0
  a4:	e8bd8010 	pop	{r4, pc}
	...

Disassembly of section .text.__cyg_profile_func_enter:

00000000 <__cyg_profile_func_enter>:
   0:	eafffffe 	b	0 <vexTaskCheckTimeslice>

Disassembly of section .text.__cyg_profile_func_exit:

00000000 <__cyg_profile_func_exit>:
   0:	e12fff1e 	bx	lr

Disassembly of section .text.__vex_function_prolog:

00000000 <__vex_function_prolog>:
   0:	e59f300c 	ldr	r3, [pc, #12]	; 14 <__vex_function_prolog+0x14>
   4:	e5d33000 	ldrb	r3, [r3]
   8:	e3530000 	cmp	r3, #0
   c:	112fff1e 	bxne	lr
  10:	eafffffe 	b	0 <vexTaskCheckTimeslice>
  14:	00000000 	andeq	r0, r0, r0

Disassembly of section .text._init:

00000000 <_init>:
   0:	e12fff1e 	bx	lr

Disassembly of section .text._fini:

00000000 <_fini>:
   0:	e12fff1e 	bx	lr

Disassembly of section .text._sbrk:

00000000 <_sbrk>:
   0:	e59f2040 	ldr	r2, [pc, #64]	; 48 <_sbrk+0x48>
   4:	e5923000 	ldr	r3, [r2]
   8:	e3530000 	cmp	r3, #0
   c:	059f3038 	ldreq	r3, [pc, #56]	; 4c <_sbrk+0x4c>
  10:	05823000 	streq	r3, [r2]
  14:	e5923000 	ldr	r3, [r2]
  18:	e0830000 	add	r0, r3, r0
  1c:	e5820000 	str	r0, [r2]
  20:	e59f2028 	ldr	r2, [pc, #40]	; 50 <_sbrk+0x50>
  24:	e1500002 	cmp	r0, r2
  28:	859f2018 	ldrhi	r2, [pc, #24]	; 48 <_sbrk+0x48>
  2c:	85823000 	strhi	r3, [r2]
  30:	83e03000 	mvnhi	r3, #0
  34:	8a000001 	bhi	40 <_sbrk+0x40>
  38:	e3530000 	cmp	r3, #0
  3c:	03e03000 	mvneq	r3, #0
  40:	e1a00003 	mov	r0, r3
  44:	e12fff1e 	bx	lr
	...

Disassembly of section .text._exit:

00000000 <_exit>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexTaskGetIndex>
   8:	e6bf4070 	sxth	r4, r0
   c:	e59f003c 	ldr	r0, [pc, #60]	; 50 <_exit+0x50>
  10:	e1a01004 	mov	r1, r4
  14:	ebfffffe 	bl	0 <vexDebug>
  18:	e59f3034 	ldr	r3, [pc, #52]	; 54 <_exit+0x54>
  1c:	e593300c 	ldr	r3, [r3, #12]
  20:	e3130002 	tst	r3, #2
  24:	0a000002 	beq	34 <_exit+0x34>
  28:	e59f0028 	ldr	r0, [pc, #40]	; 58 <_exit+0x58>
  2c:	ebfffffe 	bl	0 <vexTaskStop>
  30:	ebfffffe 	bl	0 <vexTaskYield>
  34:	e3540000 	cmp	r4, #0
  38:	aa000001 	bge	44 <_exit+0x44>
  3c:	ebfffffe 	bl	0 <vexTasksRun>
  40:	eafffffb 	b	34 <_exit+0x34>
  44:	e3a00ffa 	mov	r0, #1000	; 0x3e8
  48:	ebfffffe 	bl	0 <vexTaskSleep>
  4c:	eafffff8 	b	34 <_exit+0x34>
  50:	00000024 	andeq	r0, r0, r4, lsr #32
	...

Disassembly of section .text.kill:

00000000 <kill>:
   0:	e3500001 	cmp	r0, #1
   4:	1a000002 	bne	14 <kill+0x14>
   8:	e92d4008 	push	{r3, lr}
   c:	e1a00001 	mov	r0, r1
  10:	ebfffffe 	bl	0 <kill>
  14:	e3a00000 	mov	r0, #0
  18:	e12fff1e 	bx	lr

Disassembly of section .text._kill:

00000000 <_kill>:
   0:	e3500001 	cmp	r0, #1
   4:	1a000002 	bne	14 <_kill+0x14>
   8:	e92d4008 	push	{r3, lr}
   c:	e1a00001 	mov	r0, r1
  10:	ebfffffe 	bl	0 <_kill>
  14:	e3a00000 	mov	r0, #0
  18:	e12fff1e 	bx	lr

Disassembly of section .text.getpid:

00000000 <getpid>:
   0:	e3a00001 	mov	r0, #1
   4:	e12fff1e 	bx	lr

Disassembly of section .text._getpid:

00000000 <_getpid>:
   0:	e3a00001 	mov	r0, #1
   4:	e12fff1e 	bx	lr

Disassembly of section .text.__cxa_atexit:

00000000 <__cxa_atexit>:
   0:	e3a00000 	mov	r0, #0
   4:	e12fff1e 	bx	lr

Disassembly of section .text.__cxa_guard_acquire:

00000000 <__cxa_guard_acquire>:
   0:	e5d00000 	ldrb	r0, [r0]
   4:	e16f0f10 	clz	r0, r0
   8:	e1a002a0 	lsr	r0, r0, #5
   c:	e12fff1e 	bx	lr

Disassembly of section .text.__cxa_guard_release:

00000000 <__cxa_guard_release>:
   0:	e3a03001 	mov	r3, #1
   4:	e5c03000 	strb	r3, [r0]
   8:	e12fff1e 	bx	lr

Disassembly of section .text.__cxa_guard_abort:

00000000 <__cxa_guard_abort>:
   0:	e12fff1e 	bx	lr

Disassembly of section .text.__cxa_pure_virtual:

00000000 <__cxa_pure_virtual>:
   0:	eafffffe 	b	0 <__cxa_pure_virtual>

Disassembly of section .data.appRunning:

00000000 <appRunning>:
   0:	00000001 	andeq	r0, r0, r1

Disassembly of section .bss.__dso_handle:

00000000 <__dso_handle>:
   0:	00000000 	andeq	r0, r0, r0

Disassembly of section .rodata.str1.1:

00000000 <.rodata.str1.1>:
   0:	72617453 	rsbvc	r7, r1, #1392508928	; 0x53000000
   4:	45562074 	ldrbmi	r2, [r6, #-116]	; 0xffffff8c
   8:	6f632058 	svcvs	0x00632058
   c:	000a6564 	andeq	r6, sl, r4, ror #10
  10:	4e49414d 	dvfmiem	f4, f1, #5.0
  14:	6f745300 	svcvs	0x00745300
  18:	45562070 	ldrbmi	r2, [r6, #-112]	; 0xffffff90
  1c:	6f632058 	svcvs	0x00632058
  20:	000a6564 	andeq	r6, sl, r4, ror #10
  24:	6978655f 	ldmdbvs	r8!, {r0, r1, r2, r3, r4, r6, r8, sl, sp, lr}^
  28:	64252074 	strtvs	r2, [r5], #-116	; 0xffffff8c
  2c:	Address 0x000000000000002c is out of bounds.


Disassembly of section .boot_data:

00000000 <vexCodeSig>:
   0:	35585658 	ldrbcc	r5, [r8, #-1624]	; 0xfffff9a8
   4:	00000000 	andeq	r0, r0, r0
   8:	00000001 	andeq	r0, r0, r1
	...

Disassembly of section .bss.heap.8509:

00000000 <.bss.heap.8509>:
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
  44:	5b202965 	blpl	80a5e0 <vexMain+0x80a5e0>
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

