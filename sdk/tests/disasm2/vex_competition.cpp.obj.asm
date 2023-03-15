
vex_competition.cpp.obj:     file format elf32-littlearm


Disassembly of section .text._ZN3vex11competition8_disableEPv:

00000000 <vex::competition::_disable(void*)>:
   0:	e59f3084 	ldr	r3, [pc, #132]	; 8c <vex::competition::_disable(void*)+0x8c>
   4:	e92d4010 	push	{r4, lr}
   8:	e5d33000 	ldrb	r3, [r3]
   c:	e3530000 	cmp	r3, #0
  10:	0a000017 	beq	74 <vex::competition::_disable(void*)+0x74>
  14:	e59f3074 	ldr	r3, [pc, #116]	; 90 <vex::competition::_disable(void*)+0x90>
  18:	e1a04000 	mov	r4, r0
  1c:	e5930000 	ldr	r0, [r3]
  20:	e3500000 	cmp	r0, #0
  24:	0a000001 	beq	30 <vex::competition::_disable(void*)+0x30>
  28:	e3a01000 	mov	r1, #0
  2c:	ebfffffe 	bl	0 <vex::task::stop(void*, int)>
  30:	e59f305c 	ldr	r3, [pc, #92]	; 94 <vex::competition::_disable(void*)+0x94>
  34:	e5930000 	ldr	r0, [r3]
  38:	e3500000 	cmp	r0, #0
  3c:	0a000001 	beq	48 <vex::competition::_disable(void*)+0x48>
  40:	e3a01000 	mov	r1, #0
  44:	ebfffffe 	bl	0 <vex::task::stop(void*, int)>
  48:	e59f3048 	ldr	r3, [pc, #72]	; 98 <vex::competition::_disable(void*)+0x98>
  4c:	e5d33000 	ldrb	r3, [r3]
  50:	e3540000 	cmp	r4, #0
  54:	03a03000 	moveq	r3, #0
  58:	12033001 	andne	r3, r3, #1
  5c:	e3530000 	cmp	r3, #0
  60:	0a000003 	beq	74 <vex::competition::_disable(void*)+0x74>
  64:	e5d43004 	ldrb	r3, [r4, #4]
  68:	e3530000 	cmp	r3, #0
  6c:	0a000000 	beq	74 <vex::competition::_disable(void*)+0x74>
  70:	ebfffffe 	bl	0 <vex::task::_stopAll()>
  74:	e59f2020 	ldr	r2, [pc, #32]	; 9c <vex::competition::_disable(void*)+0x9c>
  78:	e3a03000 	mov	r3, #0
  7c:	e5c23000 	strb	r3, [r2]
  80:	e59f2018 	ldr	r2, [pc, #24]	; a0 <vex::competition::_disable(void*)+0xa0>
  84:	e5c23000 	strb	r3, [r2]
  88:	e8bd8010 	pop	{r4, pc}
	...

Disassembly of section .text._ZN3vex11competition11_autonomousEv:

00000000 <vex::competition::_autonomous()>:
   0:	e59f3064 	ldr	r3, [pc, #100]	; 6c <vex::competition::_autonomous()+0x6c>
   4:	e92d4007 	push	{r0, r1, r2, lr}
   8:	e5d33000 	ldrb	r3, [r3]
   c:	e3530000 	cmp	r3, #0
  10:	0a000005 	beq	2c <vex::competition::_autonomous()+0x2c>
  14:	e59f3054 	ldr	r3, [pc, #84]	; 70 <vex::competition::_autonomous()+0x70>
  18:	e5930000 	ldr	r0, [r3]
  1c:	e3500000 	cmp	r0, #0
  20:	0a000001 	beq	2c <vex::competition::_autonomous()+0x2c>
  24:	e3a01000 	mov	r1, #0
  28:	ebfffffe 	bl	0 <vex::task::stop(void*, int)>
  2c:	e59f3040 	ldr	r3, [pc, #64]	; 74 <vex::competition::_autonomous()+0x74>
  30:	e5931000 	ldr	r1, [r3]
  34:	e3510000 	cmp	r1, #0
  38:	0a000004 	beq	50 <vex::competition::_autonomous()+0x50>
  3c:	e1a0000d 	mov	r0, sp
  40:	ebfffffe 	bl	0 <vex::task::task(int (*)())>
  44:	e1a0000d 	mov	r0, sp
  48:	ebfffffe 	bl	0 <vex::task::~task()>
  4c:	ea000004 	b	64 <vex::competition::_autonomous()+0x64>
  50:	e59f3020 	ldr	r3, [pc, #32]	; 78 <vex::competition::_autonomous()+0x78>
  54:	e3a02001 	mov	r2, #1
  58:	e5c32000 	strb	r2, [r3]
  5c:	e59f3018 	ldr	r3, [pc, #24]	; 7c <vex::competition::_autonomous()+0x7c>
  60:	e5c31000 	strb	r1, [r3]
  64:	e28dd00c 	add	sp, sp, #12
  68:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)
	...

Disassembly of section .text._ZN3vex11competition14_drivercontrolEv:

00000000 <vex::competition::_drivercontrol()>:
   0:	e59f3064 	ldr	r3, [pc, #100]	; 6c <vex::competition::_drivercontrol()+0x6c>
   4:	e92d4007 	push	{r0, r1, r2, lr}
   8:	e5d33000 	ldrb	r3, [r3]
   c:	e3530000 	cmp	r3, #0
  10:	0a000005 	beq	2c <vex::competition::_drivercontrol()+0x2c>
  14:	e59f3054 	ldr	r3, [pc, #84]	; 70 <vex::competition::_drivercontrol()+0x70>
  18:	e5930000 	ldr	r0, [r3]
  1c:	e3500000 	cmp	r0, #0
  20:	0a000001 	beq	2c <vex::competition::_drivercontrol()+0x2c>
  24:	e3a01000 	mov	r1, #0
  28:	ebfffffe 	bl	0 <vex::task::stop(void*, int)>
  2c:	e59f3040 	ldr	r3, [pc, #64]	; 74 <vex::competition::_drivercontrol()+0x74>
  30:	e5931000 	ldr	r1, [r3]
  34:	e3510000 	cmp	r1, #0
  38:	0a000004 	beq	50 <vex::competition::_drivercontrol()+0x50>
  3c:	e1a0000d 	mov	r0, sp
  40:	ebfffffe 	bl	0 <vex::task::task(int (*)())>
  44:	e1a0000d 	mov	r0, sp
  48:	ebfffffe 	bl	0 <vex::task::~task()>
  4c:	ea000004 	b	64 <vex::competition::_drivercontrol()+0x64>
  50:	e59f3020 	ldr	r3, [pc, #32]	; 78 <vex::competition::_drivercontrol()+0x78>
  54:	e3a02001 	mov	r2, #1
  58:	e5c32000 	strb	r2, [r3]
  5c:	e59f3018 	ldr	r3, [pc, #24]	; 7c <vex::competition::_drivercontrol()+0x7c>
  60:	e5c31000 	strb	r1, [r3]
  64:	e28dd00c 	add	sp, sp, #12
  68:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)
	...

Disassembly of section .text._ZN3vex11competitionC2Ev:

00000000 <vex::competition::competition()>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <vex::brain::_getIndex()>
   c:	e3a02008 	mov	r2, #8
  10:	e1a01000 	mov	r1, r0
  14:	e2840008 	add	r0, r4, #8
  18:	ebfffffe 	bl	0 <vex::mevent::mevent(unsigned long, unsigned long)>
  1c:	ebfffffe 	bl	0 <vex::brain::_getIndex()>
  20:	e3a02009 	mov	r2, #9
  24:	e1a01000 	mov	r1, r0
  28:	e2840010 	add	r0, r4, #16
  2c:	ebfffffe 	bl	0 <vex::mevent::mevent(unsigned long, unsigned long)>
  30:	ebfffffe 	bl	0 <vex::brain::_getIndex()>
  34:	e3a0200a 	mov	r2, #10
  38:	e1a01000 	mov	r1, r0
  3c:	e2840018 	add	r0, r4, #24
  40:	ebfffffe 	bl	0 <vex::mevent::mevent(unsigned long, unsigned long)>
  44:	ebfffffe 	bl	0 <vex::brain::_getIndex()>
  48:	e3a0200b 	mov	r2, #11
  4c:	e1a01000 	mov	r1, r0
  50:	e2840020 	add	r0, r4, #32
  54:	ebfffffe 	bl	0 <vex::mevent::mevent(unsigned long, unsigned long)>
  58:	ebfffffe 	bl	0 <vex::brain::_getIndex()>
  5c:	e59f30a8 	ldr	r3, [pc, #168]	; 10c <vex::competition::competition()+0x10c>
  60:	e3a02001 	mov	r2, #1
  64:	e59f10a4 	ldr	r1, [pc, #164]	; 110 <vex::competition::competition()+0x110>
  68:	e5840000 	str	r0, [r4]
  6c:	e5c32000 	strb	r2, [r3]
  70:	e3a02000 	mov	r2, #0
  74:	e59f3098 	ldr	r3, [pc, #152]	; 114 <vex::competition::competition()+0x114>
  78:	e5812000 	str	r2, [r1]
  7c:	e5c32000 	strb	r2, [r3]
  80:	e59f3090 	ldr	r3, [pc, #144]	; 118 <vex::competition::competition()+0x118>
  84:	e5832000 	str	r2, [r3]
  88:	e59f208c 	ldr	r2, [pc, #140]	; 11c <vex::competition::competition()+0x11c>
  8c:	e3520000 	cmp	r2, #0
  90:	15812000 	strne	r2, [r1]
  94:	e3a01b02 	mov	r1, #2048	; 0x800
  98:	e59f2080 	ldr	r2, [pc, #128]	; 120 <vex::competition::competition()+0x120>
  9c:	e3520000 	cmp	r2, #0
  a0:	15832000 	strne	r2, [r3]
  a4:	e1a03004 	mov	r3, r4
  a8:	e59f2074 	ldr	r2, [pc, #116]	; 124 <vex::competition::competition()+0x124>
  ac:	ebfffffe 	bl	0 <vex::event::init(unsigned long, unsigned long, void (*)(void*), void*)>
  b0:	e5940000 	ldr	r0, [r4]
  b4:	e3a01c02 	mov	r1, #512	; 0x200
  b8:	e59f2068 	ldr	r2, [pc, #104]	; 128 <vex::competition::competition()+0x128>
  bc:	ebfffffe 	bl	0 <vex::event::init(unsigned long, unsigned long, void (*)())>
  c0:	e5940000 	ldr	r0, [r4]
  c4:	e59f2060 	ldr	r2, [pc, #96]	; 12c <vex::competition::competition()+0x12c>
  c8:	e3a01b01 	mov	r1, #1024	; 0x400
  cc:	ebfffffe 	bl	0 <vex::event::init(unsigned long, unsigned long, void (*)())>
  d0:	e59f2058 	ldr	r2, [pc, #88]	; 130 <vex::competition::competition()+0x130>
  d4:	e59f0058 	ldr	r0, [pc, #88]	; 134 <vex::competition::competition()+0x134>
  d8:	e3a03000 	mov	r3, #0
  dc:	e5c43004 	strb	r3, [r4, #4]
  e0:	e5c23000 	strb	r3, [r2]
  e4:	e1500003 	cmp	r0, r3
  e8:	e59f2048 	ldr	r2, [pc, #72]	; 138 <vex::competition::competition()+0x138>
  ec:	e5c23000 	strb	r3, [r2]
  f0:	0a000003 	beq	104 <vex::competition::competition()+0x104>
  f4:	ebfffffe 	bl	0 <vex::task::_index(int (*)())>
  f8:	e3500000 	cmp	r0, #0
  fc:	b3a03001 	movlt	r3, #1
 100:	b5c43004 	strblt	r3, [r4, #4]
 104:	e1a00004 	mov	r0, r4
 108:	e8bd8010 	pop	{r4, pc}
	...

Disassembly of section .text._ZN3vex11competitionD2Ev:

00000000 <vex::competition::~competition()>:
   0:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex11competition9_getIndexEv:

00000000 <vex::competition::_getIndex()>:
   0:	eafffffe 	b	0 <vex::brain::_getIndex()>

Disassembly of section .text._ZN3vex11competition10autonomousEPFvvE:

00000000 <vex::competition::autonomous(void (*)())>:
   0:	e92d4013 	push	{r0, r1, r4, lr}
   4:	e59f3030 	ldr	r3, [pc, #48]	; 3c <vex::competition::autonomous(void (*)())+0x3c>
   8:	e59f4030 	ldr	r4, [pc, #48]	; 40 <vex::competition::autonomous(void (*)())+0x40>
   c:	e5831000 	str	r1, [r3]
  10:	e5d43000 	ldrb	r3, [r4]
  14:	e3530000 	cmp	r3, #0
  18:	0a000005 	beq	34 <vex::competition::autonomous(void (*)())+0x34>
  1c:	e1a0000d 	mov	r0, sp
  20:	ebfffffe 	bl	0 <vex::task::task(int (*)())>
  24:	e1a0000d 	mov	r0, sp
  28:	e3a03000 	mov	r3, #0
  2c:	e5c43000 	strb	r3, [r4]
  30:	ebfffffe 	bl	0 <vex::task::~task()>
  34:	e28dd008 	add	sp, sp, #8
  38:	e8bd8010 	pop	{r4, pc}
	...

Disassembly of section .text._ZN3vex11competition13drivercontrolEPFvvE:

00000000 <vex::competition::drivercontrol(void (*)())>:
   0:	e92d4013 	push	{r0, r1, r4, lr}
   4:	e59f3030 	ldr	r3, [pc, #48]	; 3c <vex::competition::drivercontrol(void (*)())+0x3c>
   8:	e59f4030 	ldr	r4, [pc, #48]	; 40 <vex::competition::drivercontrol(void (*)())+0x40>
   c:	e5831000 	str	r1, [r3]
  10:	e5d43000 	ldrb	r3, [r4]
  14:	e3530000 	cmp	r3, #0
  18:	0a000005 	beq	34 <vex::competition::drivercontrol(void (*)())+0x34>
  1c:	e1a0000d 	mov	r0, sp
  20:	ebfffffe 	bl	0 <vex::task::task(int (*)())>
  24:	e1a0000d 	mov	r0, sp
  28:	e3a03000 	mov	r3, #0
  2c:	e5c43000 	strb	r3, [r4]
  30:	ebfffffe 	bl	0 <vex::task::~task()>
  34:	e28dd008 	add	sp, sp, #8
  38:	e8bd8010 	pop	{r4, pc}
	...

Disassembly of section .text._ZN3vex11competition9isEnabledEv:

00000000 <vex::competition::isEnabled()>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexCompetitionStatus>
   8:	e2000001 	and	r0, r0, #1
   c:	e2200001 	eor	r0, r0, #1
  10:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text._ZN3vex11competition15isDriverControlEv:

00000000 <vex::competition::isDriverControl()>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexCompetitionStatus>
   8:	e2200002 	eor	r0, r0, #2
   c:	e7e000d0 	ubfx	r0, r0, #1, #1
  10:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text._ZN3vex11competition12isAutonomousEv:

00000000 <vex::competition::isAutonomous()>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vex::competition::isAutonomous()>
   8:	e2200001 	eor	r0, r0, #1
   c:	e6ef0070 	uxtb	r0, r0
  10:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text._ZN3vex11competition19isCompetitionSwitchEv:

00000000 <vex::competition::isCompetitionSwitch()>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexCompetitionStatus>
   8:	e200000c 	and	r0, r0, #12
   c:	e2400004 	sub	r0, r0, #4
  10:	e16f0f10 	clz	r0, r0
  14:	e1a002a0 	lsr	r0, r0, #5
  18:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text._ZN3vex11competition14isFieldControlEv:

00000000 <vex::competition::isFieldControl()>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexCompetitionStatus>
   8:	e7e001d0 	ubfx	r0, r0, #3, #1
   c:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text._ZN3vex11competition10test_autonEv:

00000000 <vex::competition::test_auton()>:
   0:	eafffffe 	b	0 <vex::competition::test_auton()>

Disassembly of section .text._ZN3vex11competition11test_driverEv:

00000000 <vex::competition::test_driver()>:
   0:	eafffffe 	b	0 <vex::competition::test_driver()>

Disassembly of section .text._ZN3vex11competition12test_disableEv:

00000000 <vex::competition::test_disable()>:
   0:	eafffffe 	b	0 <vex::competition::test_disable()>

Disassembly of section .bss._ZN3vex11competition22bStopTasksBetweenModesE:

00000000 <vex::competition::bStopTasksBetweenModes>:
	...

Disassembly of section .bss._ZN3vex11competition25bStopAllTasksBetweenModesE:

00000000 <vex::competition::bStopAllTasksBetweenModes>:
	...

Disassembly of section .bss._ZN3vex11competition14_auton_pendingE:

00000000 <vex::competition::_auton_pending>:
	...

Disassembly of section .bss._ZN3vex11competition20_autonomous_callbackE:

00000000 <vex::competition::_autonomous_callback>:
   0:	00000000 	andeq	r0, r0, r0

Disassembly of section .bss._ZN3vex11competition20_initialize_callbackE:

00000000 <vex::competition::_initialize_callback>:
   0:	00000000 	andeq	r0, r0, r0

Disassembly of section .bss._ZN3vex11competition23_drivercontrol_callbackE:

00000000 <vex::competition::_drivercontrol_callback>:
   0:	00000000 	andeq	r0, r0, r0

Disassembly of section .bss._ZN3vex11competition15_driver_pendingE:

00000000 <vex::competition::_driver_pending>:
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
  44:	5b202965 	blpl	80a5e0 <vex::competition::competition()+0x80a5e0>
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

