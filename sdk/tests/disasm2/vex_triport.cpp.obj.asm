
vex_triport.cpp.obj:     file format elf32-littlearm


Disassembly of section .group:

00000000 <.group>:
   0:	00000001 	andeq	r0, r0, r1
   4:	000000c7 	andeq	r0, r0, r7, asr #1

Disassembly of section .text._ZN3vex4gyroD2Ev:

00000000 <vex::gyro::~gyro()>:
   0:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex4gyro7headingENS_13rotationUnitsE:

00000000 <vex::gyro::heading(vex::rotationUnits)>:
   0:	e5903000 	ldr	r3, [r0]
   4:	e5933008 	ldr	r3, [r3, #8]
   8:	e12fff13 	bx	r3

Disassembly of section .text._ZN3vex4gyro11getTurnTypeEv:

00000000 <vex::gyro::getTurnType()>:
   0:	e3a00001 	mov	r0, #1
   4:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex7triportD2Ev:

00000000 <vex::triport::~triport()>:
   0:	e59f302c 	ldr	r3, [pc, #44]	; 34 <vex::triport::~triport()+0x34>
   4:	e1a02000 	mov	r2, r0
   8:	e92d4010 	push	{r4, lr}
   c:	e1a04000 	mov	r4, r0
  10:	e4823014 	str	r3, [r2], #20
  14:	e2803f55 	add	r3, r0, #340	; 0x154
  18:	e1530002 	cmp	r3, r2
  1c:	12433028 	subne	r3, r3, #40	; 0x28
  20:	1afffffc 	bne	18 <vex::triport::~triport()+0x18>
  24:	e1a00004 	mov	r0, r4
  28:	ebfffffe 	bl	0 <vex::device::~device()>
  2c:	e1a00004 	mov	r0, r4
  30:	e8bd8010 	pop	{r4, pc}
  34:	00000008 	andeq	r0, r0, r8

Disassembly of section .text._ZN3vex7triportD0Ev:

00000000 <vex::triport::~triport()>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <vex::triport::~triport()>
   c:	e1a00004 	mov	r0, r4
  10:	ebfffffe 	bl	0 <operator delete(void*)>
  14:	e1a00004 	mov	r0, r4
  18:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex4gyroD0Ev:

00000000 <vex::gyro::~gyro()>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <operator delete(void*)>
   c:	e1a00004 	mov	r0, r4
  10:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex7triport9installedEv:

00000000 <vex::triport::installed()>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vex::device::type()>
   8:	e240000c 	sub	r0, r0, #12
   c:	e16f0f10 	clz	r0, r0
  10:	e1a002a0 	lsr	r0, r0, #5
  14:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text._ZN3vex7triport9_getIndexEv:

00000000 <vex::triport::_getIndex()>:
   0:	e5900008 	ldr	r0, [r0, #8]
   4:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex7triport11_configPortEmNS_11triportTypeE:

00000000 <vex::triport::_configPort(unsigned long, vex::triportType)>:
   0:	e2422001 	sub	r2, r2, #1
   4:	e5900008 	ldr	r0, [r0, #8]
   8:	e352000d 	cmp	r2, #13
   c:	959f3008 	ldrls	r3, [pc, #8]	; 1c <vex::triport::_configPort(unsigned long, vex::triportType)+0x1c>
  10:	83a02000 	movhi	r2, #0
  14:	97d32002 	ldrbls	r2, [r3, r2]
  18:	eafffffe 	b	0 <vexAdiPortConfigSet>
  1c:	00000000 	andeq	r0, r0, r0

Disassembly of section .text._ZN3vex7triport4portC2ElPS0_:

00000000 <vex::triport::port::port(long, vex::triport*)>:
   0:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
   4:	e2807008 	add	r7, r0, #8
   8:	e1a04000 	mov	r4, r0
   c:	e1a03001 	mov	r3, r1
  10:	e5841000 	str	r1, [r4]
  14:	e1a05004 	mov	r5, r4
  18:	e5802004 	str	r2, [r0, #4]
  1c:	e1a00007 	mov	r0, r7
  20:	e5921008 	ldr	r1, [r2, #8]
  24:	e1a02103 	lsl	r2, r3, #2
  28:	ebfffffe 	bl	0 <vex::mevent::mevent(unsigned long, unsigned long)>
  2c:	e4952018 	ldr	r2, [r5], #24
  30:	e5943004 	ldr	r3, [r4, #4]
  34:	e2846010 	add	r6, r4, #16
  38:	e1a02102 	lsl	r2, r2, #2
  3c:	e1a00006 	mov	r0, r6
  40:	e5931008 	ldr	r1, [r3, #8]
  44:	e2822001 	add	r2, r2, #1
  48:	ebfffffe 	bl	0 <vex::mevent::mevent(unsigned long, unsigned long)>
  4c:	e894000c 	ldm	r4, {r2, r3}
  50:	e1a00005 	mov	r0, r5
  54:	e1a02102 	lsl	r2, r2, #2
  58:	e5931008 	ldr	r1, [r3, #8]
  5c:	e2822002 	add	r2, r2, #2
  60:	ebfffffe 	bl	0 <vex::mevent::mevent(unsigned long, unsigned long)>
  64:	e5847020 	str	r7, [r4, #32]
  68:	e5846024 	str	r6, [r4, #36]	; 0x24
  6c:	e1a00004 	mov	r0, r4
  70:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}

Disassembly of section .text._ZN3vex7triportC2El:

00000000 <vex::triport::triport(long)>:
   0:	e92d4ff7 	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <vex::device::device(long)>
   c:	e59f30d8 	ldr	r3, [pc, #216]	; ec <vex::triport::triport(long)+0xec>
  10:	e284b03c 	add	fp, r4, #60	; 0x3c
  14:	e3a01000 	mov	r1, #0
  18:	e1a02004 	mov	r2, r4
  1c:	e5841010 	str	r1, [r4, #16]
  20:	e284a064 	add	sl, r4, #100	; 0x64
  24:	e5843000 	str	r3, [r4]
  28:	e2843014 	add	r3, r4, #20
  2c:	e284908c 	add	r9, r4, #140	; 0x8c
  30:	e58d3004 	str	r3, [sp, #4]
  34:	e1a00003 	mov	r0, r3
  38:	e28480b4 	add	r8, r4, #180	; 0xb4
  3c:	ebfffffe 	bl	0 <vex::triport::triport(long)>
  40:	e1a02004 	mov	r2, r4
  44:	e1a0000b 	mov	r0, fp
  48:	e3a01001 	mov	r1, #1
  4c:	ebfffffe 	bl	0 <vex::triport::triport(long)>
  50:	e1a02004 	mov	r2, r4
  54:	e1a0000a 	mov	r0, sl
  58:	e3a01002 	mov	r1, #2
  5c:	ebfffffe 	bl	0 <vex::triport::triport(long)>
  60:	e28470dc 	add	r7, r4, #220	; 0xdc
  64:	e1a02004 	mov	r2, r4
  68:	e1a00009 	mov	r0, r9
  6c:	e3a01003 	mov	r1, #3
  70:	e2846f41 	add	r6, r4, #260	; 0x104
  74:	ebfffffe 	bl	0 <vex::triport::triport(long)>
  78:	e1a02004 	mov	r2, r4
  7c:	e1a00008 	mov	r0, r8
  80:	e3a01004 	mov	r1, #4
  84:	ebfffffe 	bl	0 <vex::triport::triport(long)>
  88:	e2845f4b 	add	r5, r4, #300	; 0x12c
  8c:	e1a02004 	mov	r2, r4
  90:	e1a00007 	mov	r0, r7
  94:	e3a01005 	mov	r1, #5
  98:	ebfffffe 	bl	0 <vex::triport::triport(long)>
  9c:	e1a02004 	mov	r2, r4
  a0:	e1a00006 	mov	r0, r6
  a4:	e3a01006 	mov	r1, #6
  a8:	ebfffffe 	bl	0 <vex::triport::triport(long)>
  ac:	e1a00005 	mov	r0, r5
  b0:	e3a01007 	mov	r1, #7
  b4:	e1a02004 	mov	r2, r4
  b8:	ebfffffe 	bl	0 <vex::triport::triport(long)>
  bc:	e59d3004 	ldr	r3, [sp, #4]
  c0:	e1a00004 	mov	r0, r4
  c4:	e584b158 	str	fp, [r4, #344]	; 0x158
  c8:	e584a15c 	str	sl, [r4, #348]	; 0x15c
  cc:	e5843154 	str	r3, [r4, #340]	; 0x154
  d0:	e5849160 	str	r9, [r4, #352]	; 0x160
  d4:	e5848164 	str	r8, [r4, #356]	; 0x164
  d8:	e5847168 	str	r7, [r4, #360]	; 0x168
  dc:	e584616c 	str	r6, [r4, #364]	; 0x16c
  e0:	e5845170 	str	r5, [r4, #368]	; 0x170
  e4:	e28dd00c 	add	sp, sp, #12
  e8:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
  ec:	00000008 	andeq	r0, r0, r8

Disassembly of section .text._ZN3vex7triport4portC2ElNS_11triportTypeEPS0_:

00000000 <vex::triport::port::port(long, vex::triportType, vex::triport*)>:
   0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   4:	e2808008 	add	r8, r0, #8
   8:	e1a04000 	mov	r4, r0
   c:	e1a0c001 	mov	ip, r1
  10:	e5841000 	str	r1, [r4]
  14:	e1a05002 	mov	r5, r2
  18:	e5803004 	str	r3, [r0, #4]
  1c:	e1a0210c 	lsl	r2, ip, #2
  20:	e5931008 	ldr	r1, [r3, #8]
  24:	e1a06004 	mov	r6, r4
  28:	e1a00008 	mov	r0, r8
  2c:	e2847010 	add	r7, r4, #16
  30:	ebfffffe 	bl	0 <vex::mevent::mevent(unsigned long, unsigned long)>
  34:	e4962018 	ldr	r2, [r6], #24
  38:	e5943004 	ldr	r3, [r4, #4]
  3c:	e1a00007 	mov	r0, r7
  40:	e1a02102 	lsl	r2, r2, #2
  44:	e5931008 	ldr	r1, [r3, #8]
  48:	e2822001 	add	r2, r2, #1
  4c:	ebfffffe 	bl	0 <vex::mevent::mevent(unsigned long, unsigned long)>
  50:	e894000c 	ldm	r4, {r2, r3}
  54:	e1a00006 	mov	r0, r6
  58:	e1a02102 	lsl	r2, r2, #2
  5c:	e5931008 	ldr	r1, [r3, #8]
  60:	e2822002 	add	r2, r2, #2
  64:	ebfffffe 	bl	0 <vex::mevent::mevent(unsigned long, unsigned long)>
  68:	e5943004 	ldr	r3, [r4, #4]
  6c:	e2452001 	sub	r2, r5, #1
  70:	e5848020 	str	r8, [r4, #32]
  74:	e352000d 	cmp	r2, #13
  78:	e5847024 	str	r7, [r4, #36]	; 0x24
  7c:	e5930008 	ldr	r0, [r3, #8]
  80:	959f3014 	ldrls	r3, [pc, #20]	; 9c <vex::triport::port::port(long, vex::triportType, vex::triport*)+0x9c>
  84:	83a02000 	movhi	r2, #0
  88:	e5941000 	ldr	r1, [r4]
  8c:	97d32002 	ldrbls	r2, [r3, r2]
  90:	ebfffffe 	bl	0 <vexAdiPortConfigSet>
  94:	e1a00004 	mov	r0, r4
  98:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
  9c:	00000000 	andeq	r0, r0, r0

Disassembly of section .text._ZN3vex7triport4port4typeENS_11triportTypeE:

00000000 <vex::triport::port::type(vex::triportType)>:
   0:	e5902004 	ldr	r2, [r0, #4]
   4:	e2411001 	sub	r1, r1, #1
   8:	e351000d 	cmp	r1, #13
   c:	e1a03000 	mov	r3, r0
  10:	e5933000 	ldr	r3, [r3]
  14:	e5920008 	ldr	r0, [r2, #8]
  18:	83a02000 	movhi	r2, #0
  1c:	959f2008 	ldrls	r2, [pc, #8]	; 2c <vex::triport::port::type(vex::triportType)+0x2c>
  20:	97d22001 	ldrbls	r2, [r2, r1]
  24:	e1a01003 	mov	r1, r3
  28:	eafffffe 	b	0 <vexAdiPortConfigSet>
  2c:	00000000 	andeq	r0, r0, r0

Disassembly of section .text._ZN3vex7triport4port4typeEv:

00000000 <vex::triport::port::type()>:
   0:	e5902004 	ldr	r2, [r0, #4]
   4:	e92d4008 	push	{r3, lr}
   8:	e1a03000 	mov	r3, r0
   c:	e5931000 	ldr	r1, [r3]
  10:	e5920008 	ldr	r0, [r2, #8]
  14:	ebfffffe 	bl	0 <vexAdiPortConfigGet>
  18:	e2400001 	sub	r0, r0, #1
  1c:	e6ef0070 	uxtb	r0, r0
  20:	e350000f 	cmp	r0, #15
  24:	959f3008 	ldrls	r3, [pc, #8]	; 34 <vex::triport::port::type()+0x34>
  28:	919300d0 	ldrsbls	r0, [r3, r0]
  2c:	83a00000 	movhi	r0, #0
  30:	e8bd8008 	pop	{r3, pc}
  34:	00000000 	andeq	r0, r0, r0

Disassembly of section .text._ZN3vex7triport4port5indexEv:

00000000 <vex::triport::port::index()>:
   0:	e5900004 	ldr	r0, [r0, #4]
   4:	eafffffe 	b	0 <vex::device::index()>

Disassembly of section .text._ZN3vex7triport4port2idEv:

00000000 <vex::triport::port::id()>:
   0:	e5900000 	ldr	r0, [r0]
   4:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex7triport4port5valueEv:

00000000 <vex::triport::port::value()>:
   0:	e5902004 	ldr	r2, [r0, #4]
   4:	e1a03000 	mov	r3, r0
   8:	e5931000 	ldr	r1, [r3]
   c:	e5920008 	ldr	r0, [r2, #8]
  10:	eafffffe 	b	0 <vexAdiValueGet>

Disassembly of section .text._ZN3vex7triport4port5valueEl:

00000000 <vex::triport::port::value(long)>:
   0:	e1a02001 	mov	r2, r1
   4:	e5901004 	ldr	r1, [r0, #4]
   8:	e1a03000 	mov	r3, r0
   c:	e5910008 	ldr	r0, [r1, #8]
  10:	e5931000 	ldr	r1, [r3]
  14:	eafffffe 	b	0 <vexAdiValueSet>

Disassembly of section .text._ZN3vex7triport4port3setEb:

00000000 <vex::triport::port::set(bool)>:
   0:	e1a02001 	mov	r2, r1
   4:	e5901004 	ldr	r1, [r0, #4]
   8:	e1a03000 	mov	r3, r0
   c:	e5910008 	ldr	r0, [r1, #8]
  10:	e5931000 	ldr	r1, [r3]
  14:	eafffffe 	b	0 <vexAdiValueSet>

Disassembly of section .text._ZN3vex7triport4port7pressedEPFvvE:

00000000 <vex::triport::port::pressed(void (*)())>:
   0:	e5903000 	ldr	r3, [r0]
   4:	e1a02001 	mov	r2, r1
   8:	e5901004 	ldr	r1, [r0, #4]
   c:	e1a03103 	lsl	r3, r3, #2
  10:	e5910008 	ldr	r0, [r1, #8]
  14:	e3a01001 	mov	r1, #1
  18:	e1a01311 	lsl	r1, r1, r3
  1c:	eafffffe 	b	0 <vex::event::init(unsigned long, unsigned long, void (*)())>

Disassembly of section .text._ZN3vex7triport4port8releasedEPFvvE:

00000000 <vex::triport::port::released(void (*)())>:
   0:	e5903000 	ldr	r3, [r0]
   4:	e1a02001 	mov	r2, r1
   8:	e5901004 	ldr	r1, [r0, #4]
   c:	e1a03103 	lsl	r3, r3, #2
  10:	e2833001 	add	r3, r3, #1
  14:	e5910008 	ldr	r0, [r1, #8]
  18:	e3a01001 	mov	r1, #1
  1c:	e1a01311 	lsl	r1, r1, r3
  20:	eafffffe 	b	0 <vex::event::init(unsigned long, unsigned long, void (*)())>

Disassembly of section .text._ZN3vex7triport4port7changedEPFvvE:

00000000 <vex::triport::port::changed(void (*)())>:
   0:	e5903000 	ldr	r3, [r0]
   4:	e1a02001 	mov	r2, r1
   8:	e5901004 	ldr	r1, [r0, #4]
   c:	e1a03103 	lsl	r3, r3, #2
  10:	e2833002 	add	r3, r3, #2
  14:	e5910008 	ldr	r0, [r1, #8]
  18:	e3a01001 	mov	r1, #1
  1c:	e1a01311 	lsl	r1, r1, r3
  20:	eafffffe 	b	0 <vex::event::init(unsigned long, unsigned long, void (*)())>

Disassembly of section .text._ZN3vex7triport4port11setRotationEdNS_13rotationUnitsE:

00000000 <vex::triport::port::setRotation(double, vex::rotationUnits)>:
   0:	e24dd008 	sub	sp, sp, #8
   4:	ec432b30 	vmov	d16, r2, r3
   8:	e59d3008 	ldr	r3, [sp, #8]
   c:	e3530001 	cmp	r3, #1
  10:	0a000005 	beq	2c <vex::triport::port::setRotation(double, vex::rotationUnits)+0x2c>
  14:	eefd7be0 	vcvt.s32.f64	s15, d16
  18:	e3530063 	cmp	r3, #99	; 0x63
  1c:	edcd7a01 	vstr	s15, [sp, #4]
  20:	059d1004 	ldreq	r1, [sp, #4]
  24:	0a000004 	beq	3c <vex::triport::port::setRotation(double, vex::rotationUnits)+0x3c>
  28:	ea000002 	b	38 <vex::triport::port::setRotation(double, vex::rotationUnits)+0x38>
  2c:	eddf1b05 	vldr	d17, [pc, #20]	; 48 <vex::triport::port::setRotation(double, vex::rotationUnits)+0x48>
  30:	ee600ba1 	vmul.f64	d16, d16, d17
  34:	eefd7be0 	vcvt.s32.f64	s15, d16
  38:	ee171a90 	vmov	r1, s15
  3c:	e28dd008 	add	sp, sp, #8
  40:	eafffffe 	b	0 <vex::triport::port::setRotation(double, vex::rotationUnits)>
  44:	e320f000 	nop	{0}
  48:	00000000 	andeq	r0, r0, r0
  4c:	40768000 	rsbsmi	r8, r6, r0

Disassembly of section .text._ZN3vex7triport4port13resetRotationEv:

00000000 <vex::triport::port::resetRotation()>:
   0:	e92d4007 	push	{r0, r1, r2, lr}
   4:	e3a03063 	mov	r3, #99	; 0x63
   8:	e3a02000 	mov	r2, #0
   c:	e58d3000 	str	r3, [sp]
  10:	e3a03000 	mov	r3, #0
  14:	ebfffffe 	bl	0 <vex::triport::port::resetRotation()>
  18:	e28dd00c 	add	sp, sp, #12
  1c:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

Disassembly of section .text._ZN3vex7triport4port8rotationENS_13rotationUnitsE:

00000000 <vex::triport::port::rotation(vex::rotationUnits)>:
   0:	e3510001 	cmp	r1, #1
   4:	e92d4008 	push	{r3, lr}
   8:	1a000005 	bne	24 <vex::triport::port::rotation(vex::rotationUnits)+0x24>
   c:	ebfffffe 	bl	0 <vex::triport::port::rotation(vex::rotationUnits)>
  10:	eddf1b08 	vldr	d17, [pc, #32]	; 38 <vex::triport::port::rotation(vex::rotationUnits)+0x38>
  14:	ee070a90 	vmov	s15, r0
  18:	eef80be7 	vcvt.f64.s32	d16, s15
  1c:	eec00ba1 	vdiv.f64	d16, d16, d17
  20:	ea000002 	b	30 <vex::triport::port::rotation(vex::rotationUnits)+0x30>
  24:	ebfffffe 	bl	0 <vex::triport::port::rotation(vex::rotationUnits)>
  28:	ee070a90 	vmov	s15, r0
  2c:	eef80be7 	vcvt.f64.s32	d16, s15
  30:	ec510b30 	vmov	r0, r1, d16
  34:	e8bd8008 	pop	{r3, pc}
  38:	00000000 	andeq	r0, r0, r0
  3c:	40768000 	rsbsmi	r8, r6, r0

Disassembly of section .text._ZN3vex7triport4port8velocityENS_13velocityUnitsE:

00000000 <vex::triport::port::velocity(vex::velocityUnits)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	e890000a 	ldm	r0, {r1, r3}
   c:	e20110fe 	and	r1, r1, #254	; 0xfe
  10:	e5930008 	ldr	r0, [r3, #8]
  14:	e2811001 	add	r1, r1, #1
  18:	ebfffffe 	bl	0 <vexAdiValueGet>
  1c:	e3540001 	cmp	r4, #1
  20:	ee070a90 	vmov	s15, r0
  24:	eef80be7 	vcvt.f64.s32	d16, s15
  28:	0a000001 	beq	34 <vex::triport::port::velocity(vex::velocityUnits)+0x34>
  2c:	e3540000 	cmp	r4, #0
  30:	1a000003 	bne	44 <vex::triport::port::velocity(vex::velocityUnits)+0x44>
  34:	eddf1b05 	vldr	d17, [pc, #20]	; 50 <vex::triport::port::velocity(vex::velocityUnits)+0x50>
  38:	ee600ba1 	vmul.f64	d16, d16, d17
  3c:	eddf1b05 	vldr	d17, [pc, #20]	; 58 <vex::triport::port::velocity(vex::velocityUnits)+0x58>
  40:	eec00ba1 	vdiv.f64	d16, d16, d17
  44:	ec510b30 	vmov	r0, r1, d16
  48:	e8bd8010 	pop	{r4, pc}
  4c:	e320f000 	nop	{0}
  50:	00000000 	andeq	r0, r0, r0
  54:	404e0000 	submi	r0, lr, r0
  58:	00000000 	andeq	r0, r0, r0
  5c:	40768000 	rsbsmi	r8, r6, r0

Disassembly of section .text._ZN3vex7triport4port8distanceENS_13distanceUnitsE:

00000000 <vex::triport::port::distance(vex::distanceUnits)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vex::triport::port::distance(vex::distanceUnits)>
   c:	eeff1b00 	vmov.f64	d17, #240	; 0xbf800000 -1.0
  10:	ee070a90 	vmov	s15, r0
  14:	eef80be7 	vcvt.f64.s32	d16, s15
  18:	eef40b61 	vcmp.f64	d16, d17
  1c:	eef1fa10 	vmrs	APSR_nzcv, fpscr
  20:	0ddf0b0a 	vldreq	d16, [pc, #40]	; 50 <vex::triport::port::distance(vex::distanceUnits)+0x50>
  24:	0a000006 	beq	44 <vex::triport::port::distance(vex::distanceUnits)+0x44>
  28:	e3540001 	cmp	r4, #1
  2c:	0ddf1b09 	vldreq	d17, [pc, #36]	; 58 <vex::triport::port::distance(vex::distanceUnits)+0x58>
  30:	0a000002 	beq	40 <vex::triport::port::distance(vex::distanceUnits)+0x40>
  34:	e3540002 	cmp	r4, #2
  38:	1a000001 	bne	44 <vex::triport::port::distance(vex::distanceUnits)+0x44>
  3c:	eef21b04 	vmov.f64	d17, #36	; 0x41200000  10.0
  40:	eec00ba1 	vdiv.f64	d16, d16, d17
  44:	ec510b30 	vmov	r0, r1, d16
  48:	e8bd8010 	pop	{r4, pc}
  4c:	e320f000 	nop	{0}
  50:	00000000 	andeq	r0, r0, r0
  54:	412e847e 			; <UNDEFINED> instruction: 0x412e847e
  58:	66666666 	strbtvs	r6, [r6], -r6, ror #12
  5c:	40396666 	eorsmi	r6, r9, r6, ror #12

Disassembly of section .text._ZN3vex7triport13_internalTypeENS_11triportTypeE:

00000000 <vex::triport::_internalType(vex::triportType)>:
   0:	e2411001 	sub	r1, r1, #1
   4:	e351000d 	cmp	r1, #13
   8:	959f3008 	ldrls	r3, [pc, #8]	; 18 <vex::triport::_internalType(vex::triportType)+0x18>
   c:	97d30001 	ldrbls	r0, [r3, r1]
  10:	83a00000 	movhi	r0, #0
  14:	e12fff1e 	bx	lr
  18:	00000000 	andeq	r0, r0, r0

Disassembly of section .text._ZN3vex7triport13_externalTypeE24_V5_AdiPortConfiguration:

00000000 <vex::triport::_externalType(_V5_AdiPortConfiguration)>:
   0:	e2411001 	sub	r1, r1, #1
   4:	e6ef1071 	uxtb	r1, r1
   8:	e351000f 	cmp	r1, #15
   c:	959f3008 	ldrls	r3, [pc, #8]	; 1c <vex::triport::_externalType(_V5_AdiPortConfiguration)+0x1c>
  10:	919300d1 	ldrsbls	r0, [r3, r1]
  14:	83a00000 	movhi	r0, #0
  18:	e12fff1e 	bx	lr
  1c:	00000000 	andeq	r0, r0, r0

Disassembly of section .text._ZN3vex7triport4port14_convertAnalogENS_11analogUnitsE:

00000000 <vex::triport::port::_convertAnalog(vex::analogUnits)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vex::triport::port::_convertAnalog(vex::analogUnits)>
   c:	e3540004 	cmp	r4, #4
  10:	979ff104 	ldrls	pc, [pc, r4, lsl #2]
  14:	ea00000e 	b	54 <vex::triport::port::_convertAnalog(vex::analogUnits)+0x54>
  18:	0000002c 	andeq	r0, r0, ip, lsr #32
  1c:	00000034 	andeq	r0, r0, r4, lsr r0
  20:	0000003c 	andeq	r0, r0, ip, lsr r0
  24:	00000054 	andeq	r0, r0, r4, asr r0
  28:	00000044 	andeq	r0, r0, r4, asr #32
  2c:	e3a03064 	mov	r3, #100	; 0x64
  30:	ea000004 	b	48 <vex::triport::port::_convertAnalog(vex::analogUnits)+0x48>
  34:	e1a00240 	asr	r0, r0, #4
  38:	e8bd8010 	pop	{r4, pc}
  3c:	e1a00140 	asr	r0, r0, #2
  40:	e8bd8010 	pop	{r4, pc}
  44:	e3013388 	movw	r3, #5000	; 0x1388
  48:	e0000093 	mul	r0, r3, r0
  4c:	e3001fff 	movw	r1, #4095	; 0xfff
  50:	ebfffffe 	bl	0 <__aeabi_idiv>
  54:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex7triport4port14_virtual_valueEl:

00000000 <vex::triport::port::_virtual_value(long)>:
   0:	e5902004 	ldr	r2, [r0, #4]
   4:	e5903000 	ldr	r3, [r0]
   8:	e5920008 	ldr	r0, [r2, #8]
   c:	e1831181 	orr	r1, r3, r1, lsl #3
  10:	eafffffe 	b	0 <vexAdiValueGet>

Disassembly of section .text._ZN3vex11__trideviceC2ERNS_7triport4portENS_11triportTypeE:

00000000 <vex::__tridevice::__tridevice(vex::triport::port&, vex::triportType)>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e2813008 	add	r3, r1, #8
   c:	e5843004 	str	r3, [r4, #4]
  10:	e2813010 	add	r3, r1, #16
  14:	e5843008 	str	r3, [r4, #8]
  18:	e2813018 	add	r3, r1, #24
  1c:	e584300c 	str	r3, [r4, #12]
  20:	e5913020 	ldr	r3, [r1, #32]
  24:	e1a00001 	mov	r0, r1
  28:	e5841000 	str	r1, [r4]
  2c:	e1a05002 	mov	r5, r2
  30:	e5843010 	str	r3, [r4, #16]
  34:	e5913024 	ldr	r3, [r1, #36]	; 0x24
  38:	e5843014 	str	r3, [r4, #20]
  3c:	ebfffffe 	bl	0 <vex::__tridevice::__tridevice(vex::triport::port&, vex::triportType)>
  40:	e1500005 	cmp	r0, r5
  44:	0a000002 	beq	54 <vex::__tridevice::__tridevice(vex::triport::port&, vex::triportType)+0x54>
  48:	e5940000 	ldr	r0, [r4]
  4c:	e1a01005 	mov	r1, r5
  50:	ebfffffe 	bl	0 <vex::__tridevice::__tridevice(vex::triport::port&, vex::triportType)>
  54:	e1a00004 	mov	r0, r4
  58:	e8bd8038 	pop	{r3, r4, r5, pc}

Disassembly of section .text._ZN3vex11__trideviceD2Ev:

00000000 <vex::__tridevice::~__tridevice()>:
   0:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex11__tridevice14_convertAnalogENS_11analogUnitsE:

00000000 <vex::__tridevice::_convertAnalog(vex::analogUnits)>:
   0:	e5900000 	ldr	r0, [r0]
   4:	eafffffe 	b	0 <vex::__tridevice::_convertAnalog(vex::analogUnits)>

Disassembly of section .text._ZN3vex4gyro13isCalibratingEv:

00000000 <vex::gyro::isCalibrating()>:
   0:	e92d4010 	push	{r4, lr}
   4:	e3a01003 	mov	r1, #3
   8:	e1a04000 	mov	r4, r0
   c:	e2800004 	add	r0, r0, #4
  10:	ebfffffe 	bl	0 <vex::gyro::isCalibrating()>
  14:	e3700902 	cmn	r0, #32768	; 0x8000
  18:	0a000005 	beq	34 <vex::gyro::isCalibrating()+0x34>
  1c:	ebfffffe 	bl	0 <vexSystemTimeGet>
  20:	e5943024 	ldr	r3, [r4, #36]	; 0x24
  24:	e1500003 	cmp	r0, r3
  28:	23a00000 	movcs	r0, #0
  2c:	33a00001 	movcc	r0, #1
  30:	e8bd8010 	pop	{r4, pc}
  34:	e3a00001 	mov	r0, #1
  38:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex11__tridevice14_virtual_valueEl:

00000000 <vex::__tridevice::_virtual_value(long)>:
   0:	e5900000 	ldr	r0, [r0]
   4:	eafffffe 	b	0 <vex::__tridevice::_virtual_value(long)>

Disassembly of section .text._ZN3vex4gyro5angleENS_13rotationUnitsE:

00000000 <vex::gyro::angle(vex::rotationUnits)>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	e2800004 	add	r0, r0, #4
  10:	e3a01001 	mov	r1, #1
  14:	ebfffffe 	bl	0 <vex::gyro::angle(vex::rotationUnits)>
  18:	e595301c 	ldr	r3, [r5, #28]
  1c:	e3a01ee1 	mov	r1, #3600	; 0xe10
  20:	e0630000 	rsb	r0, r3, r0
  24:	ebfffffe 	bl	0 <__aeabi_idivmod>
  28:	e3510000 	cmp	r1, #0
  2c:	b2811ee1 	addlt	r1, r1, #3600	; 0xe10
  30:	e3540000 	cmp	r4, #0
  34:	ee071a90 	vmov	s15, r1
  38:	eef80be7 	vcvt.f64.s32	d16, s15
  3c:	0a000003 	beq	50 <vex::gyro::angle(vex::rotationUnits)+0x50>
  40:	e3540001 	cmp	r4, #1
  44:	1a000003 	bne	58 <vex::gyro::angle(vex::rotationUnits)+0x58>
  48:	eddf1b04 	vldr	d17, [pc, #16]	; 60 <vex::gyro::angle(vex::rotationUnits)+0x60>
  4c:	ea000000 	b	54 <vex::gyro::angle(vex::rotationUnits)+0x54>
  50:	eef21b04 	vmov.f64	d17, #36	; 0x41200000  10.0
  54:	eec00ba1 	vdiv.f64	d16, d16, d17
  58:	ec510b30 	vmov	r0, r1, d16
  5c:	e8bd8038 	pop	{r3, r4, r5, pc}
  60:	00000000 	andeq	r0, r0, r0
  64:	40ac2000 	adcmi	r2, ip, r0

Disassembly of section .text._ZN3vex4gyro8rotationENS_13rotationUnitsE:

00000000 <vex::gyro::rotation(vex::rotationUnits)>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	e2800004 	add	r0, r0, #4
  10:	e3a01001 	mov	r1, #1
  14:	ebfffffe 	bl	0 <vex::gyro::rotation(vex::rotationUnits)>
  18:	e5953020 	ldr	r3, [r5, #32]
  1c:	e3540000 	cmp	r4, #0
  20:	e0630000 	rsb	r0, r3, r0
  24:	ee070a90 	vmov	s15, r0
  28:	eef80be7 	vcvt.f64.s32	d16, s15
  2c:	0a000003 	beq	40 <vex::gyro::rotation(vex::rotationUnits)+0x40>
  30:	e3540001 	cmp	r4, #1
  34:	1a000003 	bne	48 <vex::gyro::rotation(vex::rotationUnits)+0x48>
  38:	eddf1b04 	vldr	d17, [pc, #16]	; 50 <vex::gyro::rotation(vex::rotationUnits)+0x50>
  3c:	ea000000 	b	44 <vex::gyro::rotation(vex::rotationUnits)+0x44>
  40:	eef21b04 	vmov.f64	d17, #36	; 0x41200000  10.0
  44:	eec00ba1 	vdiv.f64	d16, d16, d17
  48:	ec510b30 	vmov	r0, r1, d16
  4c:	e8bd8038 	pop	{r3, r4, r5, pc}
  50:	00000000 	andeq	r0, r0, r0
  54:	40ac2000 	adcmi	r2, ip, r0

Disassembly of section .text._ZN3vex4gyro11setRotationEdNS_13rotationUnitsE:

00000000 <vex::gyro::setRotation(double, vex::rotationUnits)>:
   0:	e92d4010 	push	{r4, lr}
   4:	ec432b30 	vmov	d16, r2, r3
   8:	e1a04000 	mov	r4, r0
   c:	ed2d8b02 	vpush	{d8}
  10:	e59d3010 	ldr	r3, [sp, #16]
  14:	e3530000 	cmp	r3, #0
  18:	0a000003 	beq	2c <vex::gyro::setRotation(double, vex::rotationUnits)+0x2c>
  1c:	e3530001 	cmp	r3, #1
  20:	1a000003 	bne	34 <vex::gyro::setRotation(double, vex::rotationUnits)+0x34>
  24:	eddf1b0b 	vldr	d17, [pc, #44]	; 58 <vex::gyro::setRotation(double, vex::rotationUnits)+0x58>
  28:	ea000000 	b	30 <vex::gyro::setRotation(double, vex::rotationUnits)+0x30>
  2c:	eef21b04 	vmov.f64	d17, #36	; 0x41200000  10.0
  30:	ee600ba1 	vmul.f64	d16, d16, d17
  34:	e2840004 	add	r0, r4, #4
  38:	e3a01001 	mov	r1, #1
  3c:	eebd8be0 	vcvt.s32.f64	s16, d16
  40:	ebfffffe 	bl	0 <vex::gyro::setRotation(double, vex::rotationUnits)>
  44:	ee183a10 	vmov	r3, s16
  48:	ecbd8b02 	vpop	{d8}
  4c:	e0630000 	rsb	r0, r3, r0
  50:	e5840020 	str	r0, [r4, #32]
  54:	e8bd8010 	pop	{r4, pc}
  58:	00000000 	andeq	r0, r0, r0
  5c:	40ac2000 	adcmi	r2, ip, r0

Disassembly of section .text._ZN3vex11__tridevice6_indexEv:

00000000 <vex::__tridevice::_index()>:
   0:	e5900000 	ldr	r0, [r0]
   4:	eafffffe 	b	0 <vex::__tridevice::_index()>

Disassembly of section .text._ZN3vex11__tridevice3_idEv:

00000000 <vex::__tridevice::_id()>:
   0:	e5903000 	ldr	r3, [r0]
   4:	e5930000 	ldr	r0, [r3]
   8:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex5limitC2ERNS_7triport4portE:

00000000 <vex::limit::limit(vex::triport::port&)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e3a02004 	mov	r2, #4
   8:	e1a04000 	mov	r4, r0
   c:	ebfffffe 	bl	0 <vex::limit::limit(vex::triport::port&)>
  10:	e5943004 	ldr	r3, [r4, #4]
  14:	e1a00004 	mov	r0, r4
  18:	e5843018 	str	r3, [r4, #24]
  1c:	e5943008 	ldr	r3, [r4, #8]
  20:	e584301c 	str	r3, [r4, #28]
  24:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex5limitD2Ev:

00000000 <vex::limit::~limit()>:
   0:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex5limit5valueEv:

00000000 <vex::limit::value()>:
   0:	e5900000 	ldr	r0, [r0]
   4:	eafffffe 	b	0 <vex::limit::value()>

Disassembly of section .text._ZN3vex5limitcviEv:

00000000 <vex::limit::operator int()>:
   0:	e5900000 	ldr	r0, [r0]
   4:	eafffffe 	b	0 <vex::limit::operator int()>

Disassembly of section .text._ZN3vex5limitcvbEv:

00000000 <vex::limit::operator bool()>:
   0:	e92d4008 	push	{r3, lr}
   4:	e5900000 	ldr	r0, [r0]
   8:	ebfffffe 	bl	0 <vex::limit::operator bool()>
   c:	e3500000 	cmp	r0, #0
  10:	d3a00000 	movle	r0, #0
  14:	c3a00001 	movgt	r0, #1
  18:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text._ZN3vex5limit7pressedEPFvvE:

00000000 <vex::limit::pressed(void (*)())>:
   0:	e5900000 	ldr	r0, [r0]
   4:	eafffffe 	b	0 <vex::limit::pressed(void (*)())>

Disassembly of section .text._ZN3vex5limit8releasedEPFvvE:

00000000 <vex::limit::released(void (*)())>:
   0:	e5900000 	ldr	r0, [r0]
   4:	eafffffe 	b	0 <vex::limit::released(void (*)())>

Disassembly of section .text._ZN3vex6bumperC2ERNS_7triport4portE:

00000000 <vex::bumper::bumper(vex::triport::port&)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e3a02004 	mov	r2, #4
   8:	e1a04000 	mov	r4, r0
   c:	ebfffffe 	bl	0 <vex::bumper::bumper(vex::triport::port&)>
  10:	e5943004 	ldr	r3, [r4, #4]
  14:	e1a00004 	mov	r0, r4
  18:	e5843018 	str	r3, [r4, #24]
  1c:	e5943008 	ldr	r3, [r4, #8]
  20:	e584301c 	str	r3, [r4, #28]
  24:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex6bumperD2Ev:

00000000 <vex::bumper::~bumper()>:
   0:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex6bumper5valueEv:

00000000 <vex::bumper::value()>:
   0:	e5900000 	ldr	r0, [r0]
   4:	eafffffe 	b	0 <vex::bumper::value()>

Disassembly of section .text._ZN3vex6bumpercviEv:

00000000 <vex::bumper::operator int()>:
   0:	e5900000 	ldr	r0, [r0]
   4:	eafffffe 	b	0 <vex::bumper::operator int()>

Disassembly of section .text._ZN3vex6bumpercvbEv:

00000000 <vex::bumper::operator bool()>:
   0:	e92d4008 	push	{r3, lr}
   4:	e5900000 	ldr	r0, [r0]
   8:	ebfffffe 	bl	0 <vex::bumper::operator bool()>
   c:	e3500000 	cmp	r0, #0
  10:	d3a00000 	movle	r0, #0
  14:	c3a00001 	movgt	r0, #1
  18:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text._ZN3vex6bumper7pressedEPFvvE:

00000000 <vex::bumper::pressed(void (*)())>:
   0:	e5900000 	ldr	r0, [r0]
   4:	eafffffe 	b	0 <vex::bumper::pressed(void (*)())>

Disassembly of section .text._ZN3vex6bumper8releasedEPFvvE:

00000000 <vex::bumper::released(void (*)())>:
   0:	e5900000 	ldr	r0, [r0]
   4:	eafffffe 	b	0 <vex::bumper::released(void (*)())>

Disassembly of section .text._ZN3vex10digital_inC2ERNS_7triport4portE:

00000000 <vex::digital_in::digital_in(vex::triport::port&)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e3a02002 	mov	r2, #2
   8:	e1a04000 	mov	r4, r0
   c:	ebfffffe 	bl	0 <vex::digital_in::digital_in(vex::triport::port&)>
  10:	e5943014 	ldr	r3, [r4, #20]
  14:	e1a00004 	mov	r0, r4
  18:	e5843018 	str	r3, [r4, #24]
  1c:	e5943010 	ldr	r3, [r4, #16]
  20:	e584301c 	str	r3, [r4, #28]
  24:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex10digital_inD2Ev:

00000000 <vex::digital_in::~digital_in()>:
   0:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex10digital_in5valueEv:

00000000 <vex::digital_in::value()>:
   0:	e92d4008 	push	{r3, lr}
   4:	e5900000 	ldr	r0, [r0]
   8:	ebfffffe 	bl	0 <vex::digital_in::value()>
   c:	e16f0f10 	clz	r0, r0
  10:	e1a002a0 	lsr	r0, r0, #5
  14:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text._ZN3vex10digital_incviEv:

00000000 <vex::digital_in::operator int()>:
   0:	e92d4008 	push	{r3, lr}
   4:	e5900000 	ldr	r0, [r0]
   8:	ebfffffe 	bl	0 <vex::digital_in::operator int()>
   c:	e16f0f10 	clz	r0, r0
  10:	e1a002a0 	lsr	r0, r0, #5
  14:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text._ZN3vex10digital_incvbEv:

00000000 <vex::digital_in::operator bool()>:
   0:	e92d4008 	push	{r3, lr}
   4:	e5900000 	ldr	r0, [r0]
   8:	ebfffffe 	bl	0 <vex::digital_in::operator bool()>
   c:	e3500000 	cmp	r0, #0
  10:	c3a00000 	movgt	r0, #0
  14:	d3a00001 	movle	r0, #1
  18:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text._ZN3vex10digital_in4highEPFvvE:

00000000 <vex::digital_in::high(void (*)())>:
   0:	e5900000 	ldr	r0, [r0]
   4:	eafffffe 	b	0 <vex::digital_in::high(void (*)())>

Disassembly of section .text._ZN3vex10digital_in3lowEPFvvE:

00000000 <vex::digital_in::low(void (*)())>:
   0:	e5900000 	ldr	r0, [r0]
   4:	eafffffe 	b	0 <vex::digital_in::low(void (*)())>

Disassembly of section .text._ZN3vex11digital_outC2ERNS_7triport4portE:

00000000 <vex::digital_out::digital_out(vex::triport::port&)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e3a02003 	mov	r2, #3
   8:	e1a04000 	mov	r4, r0
   c:	ebfffffe 	bl	0 <vex::digital_out::digital_out(vex::triport::port&)>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex11digital_outD2Ev:

00000000 <vex::digital_out::~digital_out()>:
   0:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex11digital_out5valueEv:

00000000 <vex::digital_out::value()>:
   0:	e5900000 	ldr	r0, [r0]
   4:	eafffffe 	b	0 <vex::digital_out::value()>

Disassembly of section .text._ZN3vex11digital_out3setEb:

00000000 <vex::digital_out::set(bool)>:
   0:	e5900000 	ldr	r0, [r0]
   4:	eafffffe 	b	0 <vex::digital_out::set(bool)>

Disassembly of section .text._ZN3vex11digital_outcviEv:

00000000 <vex::digital_out::operator int()>:
   0:	e5900000 	ldr	r0, [r0]
   4:	eafffffe 	b	0 <vex::digital_out::operator int()>

Disassembly of section .text._ZN3vex11digital_outcvbEv:

00000000 <vex::digital_out::operator bool()>:
   0:	e92d4008 	push	{r3, lr}
   4:	e5900000 	ldr	r0, [r0]
   8:	ebfffffe 	bl	0 <vex::digital_out::operator bool()>
   c:	e3500000 	cmp	r0, #0
  10:	d3a00000 	movle	r0, #0
  14:	c3a00001 	movgt	r0, #1
  18:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text._ZN3vex11digital_outaSEl:

00000000 <vex::digital_out::operator=(long)>:
   0:	e2911000 	adds	r1, r1, #0
   4:	13a01001 	movne	r1, #1
   8:	eafffffe 	b	0 <vex::digital_out::operator=(long)>

Disassembly of section .text._ZN3vex3ledC2ERNS_7triport4portE:

00000000 <vex::led::led(vex::triport::port&)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <vex::led::led(vex::triport::port&)>
   c:	e1a00004 	mov	r0, r4
  10:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex3ledD2Ev:

00000000 <vex::led::~led()>:
   0:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex3led2onEv:

00000000 <vex::led::on()>:
   0:	e3a01000 	mov	r1, #0
   4:	eafffffe 	b	0 <vex::led::on()>

Disassembly of section .text._ZN3vex3led3offEv:

00000000 <vex::led::off()>:
   0:	e3a01001 	mov	r1, #1
   4:	eafffffe 	b	0 <vex::led::off()>

Disassembly of section .text._ZN3vex10pneumaticsC2ERNS_7triport4portE:

00000000 <vex::pneumatics::pneumatics(vex::triport::port&)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <vex::pneumatics::pneumatics(vex::triport::port&)>
   c:	e1a00004 	mov	r0, r4
  10:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex10pneumaticsD2Ev:

00000000 <vex::pneumatics::~pneumatics()>:
   0:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex10pneumatics4openEv:

00000000 <vex::pneumatics::open()>:
   0:	e3a01001 	mov	r1, #1
   4:	eafffffe 	b	0 <vex::pneumatics::open()>

Disassembly of section .text._ZN3vex10pneumatics5closeEv:

00000000 <vex::pneumatics::close()>:
   0:	e3a01000 	mov	r1, #0
   4:	eafffffe 	b	0 <vex::pneumatics::close()>

Disassembly of section .text._ZN3vex3potC2ERNS_7triport4portE:

00000000 <vex::pot::pot(vex::triport::port&)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e3a02005 	mov	r2, #5
   8:	e1a04000 	mov	r4, r0
   c:	ebfffffe 	bl	0 <vex::pot::pot(vex::triport::port&)>
  10:	e594300c 	ldr	r3, [r4, #12]
  14:	e1a00004 	mov	r0, r4
  18:	e5843018 	str	r3, [r4, #24]
  1c:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex3potD2Ev:

00000000 <vex::pot::~pot()>:
   0:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex3pot5valueENS_11analogUnitsE:

00000000 <vex::pot::value(vex::analogUnits)>:
   0:	eafffffe 	b	0 <vex::pot::value(vex::analogUnits)>

Disassembly of section .text._ZN3vex3pot5valueENS_13rotationUnitsE:

00000000 <vex::pot::value(vex::rotationUnits)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	e3a01003 	mov	r1, #3
   c:	ebfffffe 	bl	0 <vex::pot::value(vex::rotationUnits)>
  10:	e3540000 	cmp	r4, #0
  14:	ee070a90 	vmov	s15, r0
  18:	eef80be7 	vcvt.f64.s32	d16, s15
  1c:	0a000003 	beq	30 <vex::pot::value(vex::rotationUnits)+0x30>
  20:	e3540001 	cmp	r4, #1
  24:	1a000005 	bne	40 <vex::pot::value(vex::rotationUnits)+0x40>
  28:	eddf1b06 	vldr	d17, [pc, #24]	; 48 <vex::pot::value(vex::rotationUnits)+0x48>
  2c:	ea000000 	b	34 <vex::pot::value(vex::rotationUnits)+0x34>
  30:	eddf1b06 	vldr	d17, [pc, #24]	; 50 <vex::pot::value(vex::rotationUnits)+0x50>
  34:	ee600ba1 	vmul.f64	d16, d16, d17
  38:	eddf1b06 	vldr	d17, [pc, #24]	; 58 <vex::pot::value(vex::rotationUnits)+0x58>
  3c:	ee600ba1 	vmul.f64	d16, d16, d17
  40:	ec510b30 	vmov	r0, r1, d16
  44:	e8bd8010 	pop	{r4, pc}
  48:	66666666 	strbtvs	r6, [r6], -r6, ror #12
  4c:	3fe66666 	svccc	0x00e66666
  50:	00000000 	andeq	r0, r0, r0
  54:	406f4000 	rsbmi	r4, pc, r0
  58:	00000000 	andeq	r0, r0, r0
  5c:	3f300000 	svccc	0x00300000

Disassembly of section .text._ZN3vex3pot7changedEPFvvE:

00000000 <vex::pot::changed(void (*)())>:
   0:	e5900000 	ldr	r0, [r0]
   4:	eafffffe 	b	0 <vex::pot::changed(void (*)())>

Disassembly of section .text._ZN3vex5potV2C2ERNS_7triport4portE:

00000000 <vex::potV2::potV2(vex::triport::port&)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e3a02005 	mov	r2, #5
   8:	e1a04000 	mov	r4, r0
   c:	ebfffffe 	bl	0 <vex::potV2::potV2(vex::triport::port&)>
  10:	e594300c 	ldr	r3, [r4, #12]
  14:	e1a00004 	mov	r0, r4
  18:	e5843018 	str	r3, [r4, #24]
  1c:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex5potV2D2Ev:

00000000 <vex::potV2::~potV2()>:
   0:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex5potV25valueENS_11analogUnitsE:

00000000 <vex::potV2::value(vex::analogUnits)>:
   0:	eafffffe 	b	0 <vex::potV2::value(vex::analogUnits)>

Disassembly of section .text._ZN3vex5potV25valueENS_13rotationUnitsE:

00000000 <vex::potV2::value(vex::rotationUnits)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	e3a01003 	mov	r1, #3
   c:	ebfffffe 	bl	0 <vex::potV2::value(vex::rotationUnits)>
  10:	e3540000 	cmp	r4, #0
  14:	ee070a90 	vmov	s15, r0
  18:	eef80be7 	vcvt.f64.s32	d16, s15
  1c:	0a000003 	beq	30 <vex::potV2::value(vex::rotationUnits)+0x30>
  20:	e3540001 	cmp	r4, #1
  24:	1a000005 	bne	40 <vex::potV2::value(vex::rotationUnits)+0x40>
  28:	eddf1b06 	vldr	d17, [pc, #24]	; 48 <vex::potV2::value(vex::rotationUnits)+0x48>
  2c:	ea000000 	b	34 <vex::potV2::value(vex::rotationUnits)+0x34>
  30:	eddf1b06 	vldr	d17, [pc, #24]	; 50 <vex::potV2::value(vex::rotationUnits)+0x50>
  34:	ee600ba1 	vmul.f64	d16, d16, d17
  38:	eddf1b06 	vldr	d17, [pc, #24]	; 58 <vex::potV2::value(vex::rotationUnits)+0x58>
  3c:	ee600ba1 	vmul.f64	d16, d16, d17
  40:	ec510b30 	vmov	r0, r1, d16
  44:	e8bd8010 	pop	{r4, pc}
  48:	3b645a1d 	blcc	19168c4 <vex::potV2::value(vex::rotationUnits)+0x19168c4>
  4c:	3fed4fdf 	svccc	0x00ed4fdf
  50:	00000000 	andeq	r0, r0, r0
  54:	4074a000 	rsbsmi	sl, r4, r0
  58:	00000000 	andeq	r0, r0, r0
  5c:	3f300000 	svccc	0x00300000

Disassembly of section .text._ZN3vex5potV27changedEPFvvE:

00000000 <vex::potV2::changed(void (*)())>:
   0:	e5900000 	ldr	r0, [r0]
   4:	eafffffe 	b	0 <vex::potV2::changed(void (*)())>

Disassembly of section .text._ZN3vex4lineC2ERNS_7triport4portE:

00000000 <vex::line::line(vex::triport::port&)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e3a02006 	mov	r2, #6
   8:	e1a04000 	mov	r4, r0
   c:	ebfffffe 	bl	0 <vex::line::line(vex::triport::port&)>
  10:	e594300c 	ldr	r3, [r4, #12]
  14:	e1a00004 	mov	r0, r4
  18:	e5843018 	str	r3, [r4, #24]
  1c:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex4lineD2Ev:

00000000 <vex::line::~line()>:
   0:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex4line5valueENS_11analogUnitsE:

00000000 <vex::line::value(vex::analogUnits)>:
   0:	eafffffe 	b	0 <vex::line::value(vex::analogUnits)>

Disassembly of section .text._ZN3vex4line12reflectivityENS_12percentUnitsE:

00000000 <vex::line::reflectivity(vex::percentUnits)>:
   0:	e92d4008 	push	{r3, lr}
   4:	e3a01003 	mov	r1, #3
   8:	ebfffffe 	bl	0 <vex::line::reflectivity(vex::percentUnits)>
   c:	e3a0101e 	mov	r1, #30
  10:	ebfffffe 	bl	0 <__aeabi_idiv>
  14:	e2700064 	rsbs	r0, r0, #100	; 0x64
  18:	4a000002 	bmi	28 <vex::line::reflectivity(vex::percentUnits)+0x28>
  1c:	e3500064 	cmp	r0, #100	; 0x64
  20:	a3a00064 	movge	r0, #100	; 0x64
  24:	e8bd8008 	pop	{r3, pc}
  28:	e3a00000 	mov	r0, #0
  2c:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text._ZN3vex4line7changedEPFvvE:

00000000 <vex::line::changed(void (*)())>:
   0:	e5900000 	ldr	r0, [r0]
   4:	eafffffe 	b	0 <vex::line::changed(void (*)())>

Disassembly of section .text._ZN3vex5lightC2ERNS_7triport4portE:

00000000 <vex::light::light(vex::triport::port&)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e3a02007 	mov	r2, #7
   8:	e1a04000 	mov	r4, r0
   c:	ebfffffe 	bl	0 <vex::light::light(vex::triport::port&)>
  10:	e594300c 	ldr	r3, [r4, #12]
  14:	e1a00004 	mov	r0, r4
  18:	e5843018 	str	r3, [r4, #24]
  1c:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex5lightD2Ev:

00000000 <vex::light::~light()>:
   0:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex5light5valueENS_11analogUnitsE:

00000000 <vex::light::value(vex::analogUnits)>:
   0:	eafffffe 	b	0 <vex::light::value(vex::analogUnits)>

Disassembly of section .text._ZN3vex5light10brightnessENS_12percentUnitsE:

00000000 <vex::light::brightness(vex::percentUnits)>:
   0:	e92d4008 	push	{r3, lr}
   4:	e3a01003 	mov	r1, #3
   8:	ebfffffe 	bl	0 <vex::light::brightness(vex::percentUnits)>
   c:	e3a01009 	mov	r1, #9
  10:	ebfffffe 	bl	0 <__aeabi_idiv>
  14:	e2700064 	rsbs	r0, r0, #100	; 0x64
  18:	4a000002 	bmi	28 <vex::light::brightness(vex::percentUnits)+0x28>
  1c:	e3500064 	cmp	r0, #100	; 0x64
  20:	a3a00064 	movge	r0, #100	; 0x64
  24:	e8bd8008 	pop	{r3, pc}
  28:	e3a00000 	mov	r0, #0
  2c:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text._ZN3vex5light7changedEPFvvE:

00000000 <vex::light::changed(void (*)())>:
   0:	e5900000 	ldr	r0, [r0]
   4:	eafffffe 	b	0 <vex::light::changed(void (*)())>

Disassembly of section .text._ZN3vex4gyroC2ERNS_7triport4portE:

00000000 <vex::gyro::gyro(vex::triport::port&)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e3a02008 	mov	r2, #8
   8:	e1a04000 	mov	r4, r0
   c:	e2800004 	add	r0, r0, #4
  10:	ebfffffe 	bl	0 <vex::gyro::gyro(vex::triport::port&)>
  14:	e59f3028 	ldr	r3, [pc, #40]	; 44 <vex::gyro::gyro(vex::triport::port&)+0x44>
  18:	e5843000 	str	r3, [r4]
  1c:	e5943010 	ldr	r3, [r4, #16]
  20:	e5843028 	str	r3, [r4, #40]	; 0x28
  24:	e3a03000 	mov	r3, #0
  28:	e584301c 	str	r3, [r4, #28]
  2c:	e5843020 	str	r3, [r4, #32]
  30:	ebfffffe 	bl	0 <vexSystemTimeGet>
  34:	e28000c8 	add	r0, r0, #200	; 0xc8
  38:	e5840024 	str	r0, [r4, #36]	; 0x24
  3c:	e1a00004 	mov	r0, r4
  40:	e8bd8010 	pop	{r4, pc}
  44:	00000008 	andeq	r0, r0, r8

Disassembly of section .text._ZN3vex4gyro5valueENS_11analogUnitsE:

00000000 <vex::gyro::value(vex::analogUnits)>:
   0:	e2800004 	add	r0, r0, #4
   4:	eafffffe 	b	0 <vex::gyro::value(vex::analogUnits)>

Disassembly of section .text._ZN3vex4gyro5valueENS_13rotationUnitsE:

00000000 <vex::gyro::value(vex::rotationUnits)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e2800004 	add	r0, r0, #4
   8:	e1a04001 	mov	r4, r1
   c:	e3a01003 	mov	r1, #3
  10:	ebfffffe 	bl	0 <vex::gyro::value(vex::rotationUnits)>
  14:	e3700902 	cmn	r0, #32768	; 0x8000
  18:	03a00000 	moveq	r0, #0
  1c:	e3540000 	cmp	r4, #0
  20:	ee070a90 	vmov	s15, r0
  24:	eef80be7 	vcvt.f64.s32	d16, s15
  28:	0a000003 	beq	3c <vex::gyro::value(vex::rotationUnits)+0x3c>
  2c:	e3540001 	cmp	r4, #1
  30:	1a000003 	bne	44 <vex::gyro::value(vex::rotationUnits)+0x44>
  34:	eddf1b05 	vldr	d17, [pc, #20]	; 50 <vex::gyro::value(vex::rotationUnits)+0x50>
  38:	ea000000 	b	40 <vex::gyro::value(vex::rotationUnits)+0x40>
  3c:	eef21b04 	vmov.f64	d17, #36	; 0x41200000  10.0
  40:	eec00ba1 	vdiv.f64	d16, d16, d17
  44:	ec510b30 	vmov	r0, r1, d16
  48:	e8bd8010 	pop	{r4, pc}
  4c:	e320f000 	nop	{0}
  50:	00000000 	andeq	r0, r0, r0
  54:	40ac2000 	adcmi	r2, ip, r0

Disassembly of section .text._ZN3vex4gyro10resetAngleEdNS_13rotationUnitsE:

00000000 <vex::gyro::resetAngle(double, vex::rotationUnits)>:
   0:	e92d4010 	push	{r4, lr}
   4:	ec432b30 	vmov	d16, r2, r3
   8:	e1a04000 	mov	r4, r0
   c:	ed2d8b02 	vpush	{d8}
  10:	e59d3010 	ldr	r3, [sp, #16]
  14:	e3530000 	cmp	r3, #0
  18:	0a000003 	beq	2c <vex::gyro::resetAngle(double, vex::rotationUnits)+0x2c>
  1c:	e3530001 	cmp	r3, #1
  20:	1a000003 	bne	34 <vex::gyro::resetAngle(double, vex::rotationUnits)+0x34>
  24:	eddf1b0b 	vldr	d17, [pc, #44]	; 58 <vex::gyro::resetAngle(double, vex::rotationUnits)+0x58>
  28:	ea000000 	b	30 <vex::gyro::resetAngle(double, vex::rotationUnits)+0x30>
  2c:	eef21b04 	vmov.f64	d17, #36	; 0x41200000  10.0
  30:	ee600ba1 	vmul.f64	d16, d16, d17
  34:	e2840004 	add	r0, r4, #4
  38:	e3a01003 	mov	r1, #3
  3c:	eebd8be0 	vcvt.s32.f64	s16, d16
  40:	ebfffffe 	bl	0 <vex::gyro::resetAngle(double, vex::rotationUnits)>
  44:	ee183a10 	vmov	r3, s16
  48:	ecbd8b02 	vpop	{d8}
  4c:	e0630000 	rsb	r0, r3, r0
  50:	e584001c 	str	r0, [r4, #28]
  54:	e8bd8010 	pop	{r4, pc}
  58:	00000000 	andeq	r0, r0, r0
  5c:	40ac2000 	adcmi	r2, ip, r0

Disassembly of section .text._ZN3vex4gyro10resetAngleEv:

00000000 <vex::gyro::resetAngle()>:
   0:	e92d4007 	push	{r0, r1, r2, lr}
   4:	e3a03000 	mov	r3, #0
   8:	e3a02000 	mov	r2, #0
   c:	e58d3000 	str	r3, [sp]
  10:	e3a03000 	mov	r3, #0
  14:	ebfffffe 	bl	0 <vex::gyro::resetAngle()>
  18:	e28dd00c 	add	sp, sp, #12
  1c:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

Disassembly of section .text._ZN3vex4gyro10setHeadingEdNS_13rotationUnitsE:

00000000 <vex::gyro::setHeading(double, vex::rotationUnits)>:
   0:	eafffffe 	b	0 <vex::gyro::setHeading(double, vex::rotationUnits)>

Disassembly of section .text._ZN3vex4gyro12resetHeadingEv:

00000000 <vex::gyro::resetHeading()>:
   0:	e92d4007 	push	{r0, r1, r2, lr}
   4:	e3a03000 	mov	r3, #0
   8:	e3a02000 	mov	r2, #0
   c:	e58d3000 	str	r3, [sp]
  10:	e3a03000 	mov	r3, #0
  14:	ebfffffe 	bl	0 <vex::gyro::resetHeading()>
  18:	e28dd00c 	add	sp, sp, #12
  1c:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

Disassembly of section .text._ZN3vex4gyro13resetRotationEv:

00000000 <vex::gyro::resetRotation()>:
   0:	e5903000 	ldr	r3, [r0]
   4:	e92d4007 	push	{r0, r1, r2, lr}
   8:	e3a02000 	mov	r2, #0
   c:	e58d2000 	str	r2, [sp]
  10:	e3a02000 	mov	r2, #0
  14:	e5931020 	ldr	r1, [r3, #32]
  18:	e3a03000 	mov	r3, #0
  1c:	e12fff31 	blx	r1
  20:	e28dd00c 	add	sp, sp, #12
  24:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

Disassembly of section .text._ZN3vex4gyro16startCalibrationEl:

00000000 <vex::gyro::startCalibration(long)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e5900004 	ldr	r0, [r0, #4]
   c:	ebfffffe 	bl	0 <vex::gyro::startCalibration(long)>
  10:	ebfffffe 	bl	0 <vexSystemTimeGet>
  14:	e28000c8 	add	r0, r0, #200	; 0xc8
  18:	e5840024 	str	r0, [r4, #36]	; 0x24
  1c:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex4gyro9calibrateEl:

00000000 <vex::gyro::calibrate(long)>:
   0:	eafffffe 	b	0 <vex::gyro::calibrate(long)>

Disassembly of section .text._ZN3vex4gyro7changedEPFvvE:

00000000 <vex::gyro::changed(void (*)())>:
   0:	e5900004 	ldr	r0, [r0, #4]
   4:	eafffffe 	b	0 <vex::gyro::changed(void (*)())>

Disassembly of section .text._ZN3vex13accelerometerC2ERNS_7triport4portEb:

00000000 <vex::accelerometer::accelerometer(vex::triport::port&, bool)>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e1a05002 	mov	r5, r2
   c:	e3a02009 	mov	r2, #9
  10:	ebfffffe 	bl	0 <vex::accelerometer::accelerometer(vex::triport::port&, bool)>
  14:	e594300c 	ldr	r3, [r4, #12]
  18:	e5c4501c 	strb	r5, [r4, #28]
  1c:	e1a00004 	mov	r0, r4
  20:	e5843018 	str	r3, [r4, #24]
  24:	e8bd8038 	pop	{r3, r4, r5, pc}

Disassembly of section .text._ZN3vex13accelerometerD2Ev:

00000000 <vex::accelerometer::~accelerometer()>:
   0:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex13accelerometer5valueENS_11analogUnitsE:

00000000 <vex::accelerometer::value(vex::analogUnits)>:
   0:	eafffffe 	b	0 <vex::accelerometer::value(vex::analogUnits)>

Disassembly of section .text._ZN3vex13accelerometer12accelerationEv:

00000000 <vex::accelerometer::acceleration()>:
   0:	e92d4010 	push	{r4, lr}
   4:	e3a01003 	mov	r1, #3
   8:	e1a04000 	mov	r4, r0
   c:	ebfffffe 	bl	0 <vex::accelerometer::acceleration()>
  10:	eddf1b0a 	vldr	d17, [pc, #40]	; 40 <vex::accelerometer::acceleration()+0x40>
  14:	e5d4301c 	ldrb	r3, [r4, #28]
  18:	e3530000 	cmp	r3, #0
  1c:	ee070a90 	vmov	s15, r0
  20:	eef80be7 	vcvt.f64.s32	d16, s15
  24:	ee700be1 	vsub.f64	d16, d16, d17
  28:	1ddf1b06 	vldrne	d17, [pc, #24]	; 48 <vex::accelerometer::acceleration()+0x48>
  2c:	0ddf1b07 	vldreq	d17, [pc, #28]	; 50 <vex::accelerometer::acceleration()+0x50>
  30:	eec00ba1 	vdiv.f64	d16, d16, d17
  34:	ec510b30 	vmov	r0, r1, d16
  38:	e8bd8010 	pop	{r4, pc}
  3c:	e320f000 	nop	{0}
  40:	00000000 	andeq	r0, r0, r0
  44:	40a00000 	adcmi	r0, r0, r0
  48:	00000000 	andeq	r0, r0, r0
  4c:	4089c800 	addmi	ip, r9, r0, lsl #16
  50:	00000000 	andeq	r0, r0, r0
  54:	40713000 	rsbsmi	r3, r1, r0

Disassembly of section .text._ZN3vex13accelerometer7changedEPFvvE:

00000000 <vex::accelerometer::changed(void (*)())>:
   0:	e5900000 	ldr	r0, [r0]
   4:	eafffffe 	b	0 <vex::accelerometer::changed(void (*)())>

Disassembly of section .text._ZN3vex9analog_inC2ERNS_7triport4portE:

00000000 <vex::analog_in::analog_in(vex::triport::port&)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e3a02000 	mov	r2, #0
   8:	e1a04000 	mov	r4, r0
   c:	ebfffffe 	bl	0 <vex::analog_in::analog_in(vex::triport::port&)>
  10:	e594300c 	ldr	r3, [r4, #12]
  14:	e1a00004 	mov	r0, r4
  18:	e5843018 	str	r3, [r4, #24]
  1c:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex9analog_inD2Ev:

00000000 <vex::analog_in::~analog_in()>:
   0:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex9analog_in5valueENS_11analogUnitsE:

00000000 <vex::analog_in::value(vex::analogUnits)>:
   0:	eafffffe 	b	0 <vex::analog_in::value(vex::analogUnits)>

Disassembly of section .text._ZN3vex9analog_in7changedEPFvvE:

00000000 <vex::analog_in::changed(void (*)())>:
   0:	e5900000 	ldr	r0, [r0]
   4:	eafffffe 	b	0 <vex::analog_in::changed(void (*)())>

Disassembly of section .text._ZN3vex7encoderC2ERNS_7triport4portE:

00000000 <vex::encoder::encoder(vex::triport::port&)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e3a0200c 	mov	r2, #12
   8:	e1a04000 	mov	r4, r0
   c:	ebfffffe 	bl	0 <vex::encoder::encoder(vex::triport::port&)>
  10:	e594300c 	ldr	r3, [r4, #12]
  14:	e1a00004 	mov	r0, r4
  18:	e5843018 	str	r3, [r4, #24]
  1c:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex7encoderD2Ev:

00000000 <vex::encoder::~encoder()>:
   0:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex7encoder5valueEv:

00000000 <vex::encoder::value()>:
   0:	e5900000 	ldr	r0, [r0]
   4:	eafffffe 	b	0 <vex::encoder::value()>

Disassembly of section .text._ZN3vex7encodercviEv:

00000000 <vex::encoder::operator int()>:
   0:	e5900000 	ldr	r0, [r0]
   4:	eafffffe 	b	0 <vex::encoder::operator int()>

Disassembly of section .text._ZN3vex7encoder13resetRotationEv:

00000000 <vex::encoder::resetRotation()>:
   0:	e5900000 	ldr	r0, [r0]
   4:	eafffffe 	b	0 <vex::encoder::resetRotation()>

Disassembly of section .text._ZN3vex7encoder11setRotationEdNS_13rotationUnitsE:

00000000 <vex::encoder::setRotation(double, vex::rotationUnits)>:
   0:	e5900000 	ldr	r0, [r0]
   4:	eafffffe 	b	0 <vex::encoder::setRotation(double, vex::rotationUnits)>

Disassembly of section .text._ZN3vex7encoder11setPositionEdNS_13rotationUnitsE:

00000000 <vex::encoder::setPosition(double, vex::rotationUnits)>:
   0:	e5900000 	ldr	r0, [r0]
   4:	eafffffe 	b	0 <vex::encoder::setPosition(double, vex::rotationUnits)>

Disassembly of section .text._ZN3vex7encoder8rotationENS_13rotationUnitsE:

00000000 <vex::encoder::rotation(vex::rotationUnits)>:
   0:	e5900000 	ldr	r0, [r0]
   4:	eafffffe 	b	0 <vex::encoder::rotation(vex::rotationUnits)>

Disassembly of section .text._ZN3vex7encoder8positionENS_13rotationUnitsE:

00000000 <vex::encoder::position(vex::rotationUnits)>:
   0:	e5900000 	ldr	r0, [r0]
   4:	eafffffe 	b	0 <vex::encoder::position(vex::rotationUnits)>

Disassembly of section .text._ZN3vex7encoder8velocityENS_13velocityUnitsE:

00000000 <vex::encoder::velocity(vex::velocityUnits)>:
   0:	e5900000 	ldr	r0, [r0]
   4:	eafffffe 	b	0 <vex::encoder::velocity(vex::velocityUnits)>

Disassembly of section .text._ZN3vex7encoder7changedEPFvvE:

00000000 <vex::encoder::changed(void (*)())>:
   0:	e5900000 	ldr	r0, [r0]
   4:	eafffffe 	b	0 <vex::encoder::changed(void (*)())>

Disassembly of section .text._ZN3vex5sonarC2ERNS_7triport4portE:

00000000 <vex::sonar::sonar(vex::triport::port&)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e3a0200d 	mov	r2, #13
   8:	e1a04000 	mov	r4, r0
   c:	ebfffffe 	bl	0 <vex::sonar::sonar(vex::triport::port&)>
  10:	e594300c 	ldr	r3, [r4, #12]
  14:	e1a00004 	mov	r0, r4
  18:	e5843018 	str	r3, [r4, #24]
  1c:	e3a03ffa 	mov	r3, #1000	; 0x3e8
  20:	e584301c 	str	r3, [r4, #28]
  24:	e3a03000 	mov	r3, #0
  28:	e5843020 	str	r3, [r4, #32]
  2c:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex5sonarD2Ev:

00000000 <vex::sonar::~sonar()>:
   0:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex5sonar5valueEv:

00000000 <vex::sonar::value()>:
   0:	e5900000 	ldr	r0, [r0]
   4:	eafffffe 	b	0 <vex::sonar::value()>

Disassembly of section .text._ZN3vex5sonarcviEv:

00000000 <vex::sonar::operator int()>:
   0:	e5900000 	ldr	r0, [r0]
   4:	eafffffe 	b	0 <vex::sonar::operator int()>

Disassembly of section .text._ZN3vex5sonar8distanceENS_13distanceUnitsE:

00000000 <vex::sonar::distance(vex::distanceUnits)>:
   0:	e5900000 	ldr	r0, [r0]
   4:	eafffffe 	b	0 <vex::sonar::distance(vex::distanceUnits)>

Disassembly of section .text._ZN3vex5sonar7changedEPFvvE:

00000000 <vex::sonar::changed(void (*)())>:
   0:	e5900000 	ldr	r0, [r0]
   4:	eafffffe 	b	0 <vex::sonar::changed(void (*)())>

Disassembly of section .text._ZN3vex5sonar11foundObjectEv:

00000000 <vex::sonar::foundObject()>:
   0:	e92d4010 	push	{r4, lr}
   4:	e3a01000 	mov	r1, #0
   8:	e1a04000 	mov	r4, r0
   c:	e5900000 	ldr	r0, [r0]
  10:	ebfffffe 	bl	0 <vex::sonar::foundObject()>
  14:	e5943020 	ldr	r3, [r4, #32]
  18:	ec410b17 	vmov	d7, r0, r1
  1c:	eefc7bc7 	vcvt.u32.f64	s15, d7
  20:	ee170a90 	vmov	r0, s15
  24:	e1500003 	cmp	r0, r3
  28:	9a000004 	bls	40 <vex::sonar::foundObject()+0x40>
  2c:	e594301c 	ldr	r3, [r4, #28]
  30:	e1500003 	cmp	r0, r3
  34:	23a00000 	movcs	r0, #0
  38:	33a00001 	movcc	r0, #1
  3c:	e8bd8010 	pop	{r4, pc}
  40:	e3a00000 	mov	r0, #0
  44:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex5sonar10setMaximumEdNS_13distanceUnitsE:

00000000 <vex::sonar::setMaximum(double, vex::distanceUnits)>:
   0:	ec432b17 	vmov	d7, r2, r3
   4:	e59d3000 	ldr	r3, [sp]
   8:	e3530001 	cmp	r3, #1
   c:	0ddf0b07 	vldreq	d16, [pc, #28]	; 30 <vex::sonar::setMaximum(double, vex::distanceUnits)+0x30>
  10:	0a000002 	beq	20 <vex::sonar::setMaximum(double, vex::distanceUnits)+0x20>
  14:	e3530002 	cmp	r3, #2
  18:	1a000001 	bne	24 <vex::sonar::setMaximum(double, vex::distanceUnits)+0x24>
  1c:	eef20b04 	vmov.f64	d16, #36	; 0x41200000  10.0
  20:	ee277b20 	vmul.f64	d7, d7, d16
  24:	eebc7bc7 	vcvt.u32.f64	s14, d7
  28:	ed807a07 	vstr	s14, [r0, #28]
  2c:	e12fff1e 	bx	lr
  30:	66666666 	strbtvs	r6, [r6], -r6, ror #12
  34:	40396666 	eorsmi	r6, r9, r6, ror #12

Disassembly of section .text._ZN3vex5sonar10setMinimumEdNS_13distanceUnitsE:

00000000 <vex::sonar::setMinimum(double, vex::distanceUnits)>:
   0:	ec432b17 	vmov	d7, r2, r3
   4:	e59d3000 	ldr	r3, [sp]
   8:	e3530001 	cmp	r3, #1
   c:	0ddf0b07 	vldreq	d16, [pc, #28]	; 30 <vex::sonar::setMinimum(double, vex::distanceUnits)+0x30>
  10:	0a000002 	beq	20 <vex::sonar::setMinimum(double, vex::distanceUnits)+0x20>
  14:	e3530002 	cmp	r3, #2
  18:	1a000001 	bne	24 <vex::sonar::setMinimum(double, vex::distanceUnits)+0x24>
  1c:	eef20b04 	vmov.f64	d16, #36	; 0x41200000  10.0
  20:	ee277b20 	vmul.f64	d7, d7, d16
  24:	eebc7bc7 	vcvt.u32.f64	s14, d7
  28:	ed807a08 	vstr	s14, [r0, #32]
  2c:	e12fff1e 	bx	lr
  30:	66666666 	strbtvs	r6, [r6], -r6, ror #12
  34:	40396666 	eorsmi	r6, r9, r6, ror #12

Disassembly of section .text._ZN3vex7pwm_outC2ERNS_7triport4portE:

00000000 <vex::pwm_out::pwm_out(vex::triport::port&)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e3a0200a 	mov	r2, #10
   8:	e1a04000 	mov	r4, r0
   c:	ebfffffe 	bl	0 <vex::pwm_out::pwm_out(vex::triport::port&)>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex7pwm_outD2Ev:

00000000 <vex::pwm_out::~pwm_out()>:
   0:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex7pwm_out5stateElNS_12percentUnitsE:

00000000 <vex::pwm_out::state(long, vex::percentUnits)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e0610381 	rsb	r0, r1, r1, lsl #7
   c:	e3a01064 	mov	r1, #100	; 0x64
  10:	ebfffffe 	bl	0 <__aeabi_idiv>
  14:	e1a01000 	mov	r1, r0
  18:	e5940000 	ldr	r0, [r4]
  1c:	e8bd4010 	pop	{r4, lr}
  20:	eafffffe 	b	0 <vex::pwm_out::state(long, vex::percentUnits)>

Disassembly of section .text._ZN3vex5servoC2ERNS_7triport4portE:

00000000 <vex::servo::servo(vex::triport::port&)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e3a0200b 	mov	r2, #11
   8:	e1a04000 	mov	r4, r0
   c:	ebfffffe 	bl	0 <vex::servo::servo(vex::triport::port&)>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex5servoD2Ev:

00000000 <vex::servo::~servo()>:
   0:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex5servo11setPositionElNS_12percentUnitsE:

00000000 <vex::servo::setPosition(long, vex::percentUnits)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e0610381 	rsb	r0, r1, r1, lsl #7
   c:	e3a01064 	mov	r1, #100	; 0x64
  10:	ebfffffe 	bl	0 <__aeabi_idiv>
  14:	e1a01000 	mov	r1, r0
  18:	e5940000 	ldr	r0, [r4]
  1c:	e8bd4010 	pop	{r4, lr}
  20:	eafffffe 	b	0 <vex::servo::setPosition(long, vex::percentUnits)>

Disassembly of section .text._ZN3vex5servo11setPositionEdNS_13rotationUnitsE:

00000000 <vex::servo::setPosition(double, vex::rotationUnits)>:
   0:	ec432b30 	vmov	d16, r2, r3
   4:	e59d3000 	ldr	r3, [sp]
   8:	e3530000 	cmp	r3, #0
   c:	0a000005 	beq	28 <vex::servo::setPosition(double, vex::rotationUnits)+0x28>
  10:	e3530001 	cmp	r3, #1
  14:	112fff1e 	bxne	lr
  18:	eddf1b0a 	vldr	d17, [pc, #40]	; 48 <vex::servo::setPosition(double, vex::rotationUnits)+0x48>
  1c:	ee600ba1 	vmul.f64	d16, d16, d17
  20:	eddf1b0a 	vldr	d17, [pc, #40]	; 50 <vex::servo::setPosition(double, vex::rotationUnits)+0x50>
  24:	ea000002 	b	34 <vex::servo::setPosition(double, vex::rotationUnits)+0x34>
  28:	eddf1b06 	vldr	d17, [pc, #24]	; 48 <vex::servo::setPosition(double, vex::rotationUnits)+0x48>
  2c:	ee600ba1 	vmul.f64	d16, d16, d17
  30:	eddf1b08 	vldr	d17, [pc, #32]	; 58 <vex::servo::setPosition(double, vex::rotationUnits)+0x58>
  34:	e5900000 	ldr	r0, [r0]
  38:	eec00ba1 	vdiv.f64	d16, d16, d17
  3c:	eefd7be0 	vcvt.s32.f64	s15, d16
  40:	ee171a90 	vmov	r1, s15
  44:	eafffffe 	b	0 <vex::servo::setPosition(double, vex::rotationUnits)>
  48:	00000000 	andeq	r0, r0, r0
  4c:	405fc000 	subsmi	ip, pc, r0
  50:	71c71c72 	bicvc	r1, r7, r2, ror ip
  54:	3fc1c71c 	svccc	0x00c1c71c
  58:	00000000 	andeq	r0, r0, r0
  5c:	40490000 	submi	r0, r9, r0

Disassembly of section .text._ZN3vex7motor29C2ERNS_7triport4portE:

00000000 <vex::motor29::motor29(vex::triport::port&)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e3a0200e 	mov	r2, #14
   8:	e1a04000 	mov	r4, r0
   c:	ebfffffe 	bl	0 <vex::motor29::motor29(vex::triport::port&)>
  10:	e3a03032 	mov	r3, #50	; 0x32
  14:	e1a00004 	mov	r0, r4
  18:	e584301c 	str	r3, [r4, #28]
  1c:	e3a03000 	mov	r3, #0
  20:	e5c43018 	strb	r3, [r4, #24]
  24:	e5c43020 	strb	r3, [r4, #32]
  28:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex7motor29C2ERNS_7triport4portEb:

00000000 <vex::motor29::motor29(vex::triport::port&, bool)>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e1a05002 	mov	r5, r2
   c:	e3a0200e 	mov	r2, #14
  10:	ebfffffe 	bl	0 <vex::motor29::motor29(vex::triport::port&, bool)>
  14:	e3a03032 	mov	r3, #50	; 0x32
  18:	e5c45018 	strb	r5, [r4, #24]
  1c:	e1a00004 	mov	r0, r4
  20:	e584301c 	str	r3, [r4, #28]
  24:	e3a03000 	mov	r3, #0
  28:	e5c43020 	strb	r3, [r4, #32]
  2c:	e8bd8038 	pop	{r3, r4, r5, pc}

Disassembly of section .text._ZN3vex7motor29D2Ev:

00000000 <vex::motor29::~motor29()>:
   0:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex7motor2911setReversedEb:

00000000 <vex::motor29::setReversed(bool)>:
   0:	e5c01018 	strb	r1, [r0, #24]
   4:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex7motor294spinENS_13directionTypeEdNS_13velocityUnitsE:

00000000 <vex::motor29::spin(vex::directionType, double, vex::velocityUnits)>:
   0:	ec432b30 	vmov	d16, r2, r3
   4:	e3510000 	cmp	r1, #0
   8:	e92d4010 	push	{r4, lr}
   c:	eefd7be0 	vcvt.s32.f64	s15, d16
  10:	e1a04000 	mov	r4, r0
  14:	e3a01064 	mov	r1, #100	; 0x64
  18:	e5d43018 	ldrb	r3, [r4, #24]
  1c:	ee170a90 	vmov	r0, s15
  20:	12600000 	rsbne	r0, r0, #0
  24:	e3530000 	cmp	r3, #0
  28:	12600000 	rsbne	r0, r0, #0
  2c:	e3a03001 	mov	r3, #1
  30:	e5c43020 	strb	r3, [r4, #32]
  34:	e0600380 	rsb	r0, r0, r0, lsl #7
  38:	ebfffffe 	bl	0 <__aeabi_idiv>
  3c:	e1a01000 	mov	r1, r0
  40:	e5940000 	ldr	r0, [r4]
  44:	e8bd4010 	pop	{r4, lr}
  48:	eafffffe 	b	0 <vex::motor29::spin(vex::directionType, double, vex::velocityUnits)>

Disassembly of section .text._ZN3vex7motor2911setVelocityEdNS_12percentUnitsE:

00000000 <vex::motor29::setVelocity(double, vex::percentUnits)>:
   0:	ec432b30 	vmov	d16, r2, r3
   4:	e1a01000 	mov	r1, r0
   8:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
   c:	eefd7be0 	vcvt.s32.f64	s15, d16
  10:	edc17a07 	vstr	s15, [r1, #28]
  14:	e5d01020 	ldrb	r1, [r0, #32]
  18:	e3510000 	cmp	r1, #0
  1c:	ee17ea90 	vmov	lr, s15
  20:	049df004 	popeq	{pc}		; (ldreq pc, [sp], #4)
  24:	e3a01000 	mov	r1, #0
  28:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
  2c:	eafffffe 	b	0 <vex::motor29::setVelocity(double, vex::percentUnits)>

Disassembly of section .text._ZN3vex7motor294spinENS_13directionTypeE:

00000000 <vex::motor29::spin(vex::directionType)>:
   0:	e92d4007 	push	{r0, r1, r2, lr}
   4:	e3a03001 	mov	r3, #1
   8:	e590201c 	ldr	r2, [r0, #28]
   c:	e58d3000 	str	r3, [sp]
  10:	ee072a90 	vmov	s15, r2
  14:	eef80be7 	vcvt.f64.s32	d16, s15
  18:	ec532b30 	vmov	r2, r3, d16
  1c:	ebfffffe 	bl	0 <vex::motor29::spin(vex::directionType)>
  20:	e28dd00c 	add	sp, sp, #12
  24:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

Disassembly of section .text._ZN3vex7motor294stopEv:

00000000 <vex::motor29::stop()>:
   0:	e3a01000 	mov	r1, #0
   4:	e5c01020 	strb	r1, [r0, #32]
   8:	e5900000 	ldr	r0, [r0]
   c:	eafffffe 	b	0 <vex::motor29::stop()>

Disassembly of section .text._ZN3vex12motor_victorC2ERNS_7triport4portE:

00000000 <vex::motor_victor::motor_victor(vex::triport::port&)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e3a0200a 	mov	r2, #10
   8:	e1a04000 	mov	r4, r0
   c:	ebfffffe 	bl	0 <vex::motor_victor::motor_victor(vex::triport::port&)>
  10:	e3a03032 	mov	r3, #50	; 0x32
  14:	e1a00004 	mov	r0, r4
  18:	e584301c 	str	r3, [r4, #28]
  1c:	e3a03000 	mov	r3, #0
  20:	e5c43018 	strb	r3, [r4, #24]
  24:	e5c43020 	strb	r3, [r4, #32]
  28:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex12motor_victorC2ERNS_7triport4portEb:

00000000 <vex::motor_victor::motor_victor(vex::triport::port&, bool)>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e1a05002 	mov	r5, r2
   c:	e3a0200a 	mov	r2, #10
  10:	ebfffffe 	bl	0 <vex::motor_victor::motor_victor(vex::triport::port&, bool)>
  14:	e3a03032 	mov	r3, #50	; 0x32
  18:	e5c45018 	strb	r5, [r4, #24]
  1c:	e1a00004 	mov	r0, r4
  20:	e584301c 	str	r3, [r4, #28]
  24:	e3a03000 	mov	r3, #0
  28:	e5c43020 	strb	r3, [r4, #32]
  2c:	e8bd8038 	pop	{r3, r4, r5, pc}

Disassembly of section .text._ZN3vex12motor_victorD2Ev:

00000000 <vex::motor_victor::~motor_victor()>:
   0:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex12motor_victor11setReversedEb:

00000000 <vex::motor_victor::setReversed(bool)>:
   0:	e5c01018 	strb	r1, [r0, #24]
   4:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex12motor_victor4spinENS_13directionTypeEdNS_13velocityUnitsE:

00000000 <vex::motor_victor::spin(vex::directionType, double, vex::velocityUnits)>:
   0:	ec432b30 	vmov	d16, r2, r3
   4:	e3510000 	cmp	r1, #0
   8:	e92d4010 	push	{r4, lr}
   c:	eefd7be0 	vcvt.s32.f64	s15, d16
  10:	e1a04000 	mov	r4, r0
  14:	e3a01064 	mov	r1, #100	; 0x64
  18:	e5d43018 	ldrb	r3, [r4, #24]
  1c:	ee170a90 	vmov	r0, s15
  20:	12600000 	rsbne	r0, r0, #0
  24:	e3530000 	cmp	r3, #0
  28:	12600000 	rsbne	r0, r0, #0
  2c:	e3a03001 	mov	r3, #1
  30:	e5c43020 	strb	r3, [r4, #32]
  34:	e0600380 	rsb	r0, r0, r0, lsl #7
  38:	ebfffffe 	bl	0 <__aeabi_idiv>
  3c:	e1a01000 	mov	r1, r0
  40:	e5940000 	ldr	r0, [r4]
  44:	e8bd4010 	pop	{r4, lr}
  48:	eafffffe 	b	0 <vex::motor_victor::spin(vex::directionType, double, vex::velocityUnits)>

Disassembly of section .text._ZN3vex12motor_victor11setVelocityEdNS_12percentUnitsE:

00000000 <vex::motor_victor::setVelocity(double, vex::percentUnits)>:
   0:	ec432b30 	vmov	d16, r2, r3
   4:	e1a01000 	mov	r1, r0
   8:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
   c:	eefd7be0 	vcvt.s32.f64	s15, d16
  10:	edc17a07 	vstr	s15, [r1, #28]
  14:	e5d01020 	ldrb	r1, [r0, #32]
  18:	e3510000 	cmp	r1, #0
  1c:	ee17ea90 	vmov	lr, s15
  20:	049df004 	popeq	{pc}		; (ldreq pc, [sp], #4)
  24:	e3a01000 	mov	r1, #0
  28:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
  2c:	eafffffe 	b	0 <vex::motor_victor::setVelocity(double, vex::percentUnits)>

Disassembly of section .text._ZN3vex12motor_victor4spinENS_13directionTypeE:

00000000 <vex::motor_victor::spin(vex::directionType)>:
   0:	e92d4007 	push	{r0, r1, r2, lr}
   4:	e3a03001 	mov	r3, #1
   8:	e590201c 	ldr	r2, [r0, #28]
   c:	e58d3000 	str	r3, [sp]
  10:	ee072a90 	vmov	s15, r2
  14:	eef80be7 	vcvt.f64.s32	d16, s15
  18:	ec532b30 	vmov	r2, r3, d16
  1c:	ebfffffe 	bl	0 <vex::motor_victor::spin(vex::directionType)>
  20:	e28dd00c 	add	sp, sp, #12
  24:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

Disassembly of section .text._ZN3vex12motor_victor4stopEv:

00000000 <vex::motor_victor::stop()>:
   0:	e3a01000 	mov	r1, #0
   4:	e5c01020 	strb	r1, [r0, #32]
   8:	e5900000 	ldr	r0, [r0]
   c:	eafffffe 	b	0 <vex::motor_victor::stop()>

Disassembly of section .rodata._ZTVN3vex7triportE:

00000000 <vtable for vex::triport>:
	...

Disassembly of section .rodata._ZTVN3vex4gyroE:

00000000 <vtable for vex::gyro>:
	...

Disassembly of section .rodata.CSWTCH.38:

00000000 <.rodata.CSWTCH.38>:
   0:	00030201 	andeq	r0, r3, r1, lsl #4
   4:	06050400 	streq	r0, [r5], -r0, lsl #8
   8:	0b090807 	bleq	24202c <vex::triport::triport(long)+0x24202c>
   c:	0e0d0c0a 	cdpeq	12, 0, cr0, cr13, cr10, {0}

Disassembly of section .rodata.CSWTCH.33:

00000000 <.rodata.CSWTCH.33>:
   0:	06030201 	streq	r0, [r3], -r1, lsl #4
   4:	0a090807 	beq	242028 <vex::triport::triport(long)+0x242028>
   8:	0e0c0d0b 	cdpeq	13, 0, cr0, cr12, cr11, {0}
   c:	Address 0x000000000000000c is out of bounds.


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
  44:	5b202965 	blpl	80a5e0 <vex::triport::triport(long)+0x80a5e0>
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

