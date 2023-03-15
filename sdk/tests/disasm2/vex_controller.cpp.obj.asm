
vex_controller.cpp.obj:     file format elf32-littlearm


Disassembly of section .group:

00000000 <vex::controller::button::button(vex::controller::tButtonType, vex::controller*)>:
   0:	00000001 	andeq	r0, r0, r1
   4:	00000018 	andeq	r0, r0, r8, lsl r0

Disassembly of section .group:

00000000 <vex::controller::axis::axis(vex::controller::tAxisType, vex::controller*)>:
   0:	00000001 	andeq	r0, r0, r1
   4:	00000022 	andeq	r0, r0, r2, lsr #32

Disassembly of section .text._ZN3vex10controller9_getIndexEv:

00000000 <vex::controller::_getIndex()>:
   0:	e5900004 	ldr	r0, [r0, #4]
   4:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex10controllerD2Ev:

00000000 <vex::controller::~controller()>:
   0:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex10controller9installedEv:

00000000 <vex::controller::installed()>:
   0:	e92d4008 	push	{r3, lr}
   4:	e5d00000 	ldrb	r0, [r0]
   8:	ebfffffe 	bl	0 <vexControllerConnectionStatusGet>
   c:	e2900000 	adds	r0, r0, #0
  10:	13a00001 	movne	r0, #1
  14:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text._ZN3vex10controller5valueE19_V5_ControllerIndex:

00000000 <vex::controller::value(_V5_ControllerIndex)>:
   0:	e5d00000 	ldrb	r0, [r0]
   4:	eafffffe 	b	0 <vexControllerGet>

Disassembly of section .text._ZN3vex10controller6rumbleEPKc:

00000000 <vex::controller::rumble(char const*)>:
   0:	e92d401f 	push	{r0, r1, r2, r3, r4, lr}
   4:	e3a03000 	mov	r3, #0
   8:	e7d12003 	ldrb	r2, [r1, r3]
   c:	e3520000 	cmp	r2, #0
  10:	0a000003 	beq	24 <vex::controller::rumble(char const*)+0x24>
  14:	e7cd2003 	strb	r2, [sp, r3]
  18:	e2833001 	add	r3, r3, #1
  1c:	e3530010 	cmp	r3, #16
  20:	1afffff8 	bne	8 <vex::controller::rumble(char const*)+0x8>
  24:	e28d2010 	add	r2, sp, #16
  28:	e3a01004 	mov	r1, #4
  2c:	e0823003 	add	r3, r2, r3
  30:	e5d00000 	ldrb	r0, [r0]
  34:	e3a02000 	mov	r2, #0
  38:	e5432010 	strb	r2, [r3, #-16]
  3c:	e1a0300d 	mov	r3, sp
  40:	ebfffffe 	bl	0 <vexControllerTextSet>
  44:	e28dd014 	add	sp, sp, #20
  48:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

Disassembly of section .text._ZNK3vex10controller6button8pressingEv:

00000000 <vex::controller::button::pressing() const>:
   0:	e92d4008 	push	{r3, lr}
   4:	e1a03000 	mov	r3, r0
   8:	e5900004 	ldr	r0, [r0, #4]
   c:	e3500000 	cmp	r0, #0
  10:	08bd8008 	popeq	{r3, pc}
  14:	e5933000 	ldr	r3, [r3]
  18:	e353000b 	cmp	r3, #11
  1c:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
  20:	ea000026 	b	c0 <vex::controller::button::pressing() const+0xc0>
  24:	00000054 	andeq	r0, r0, r4, asr r0
  28:	0000005c 	andeq	r0, r0, ip, asr r0
  2c:	00000064 	andeq	r0, r0, r4, rrx
  30:	0000006c 	andeq	r0, r0, ip, rrx
  34:	00000074 	andeq	r0, r0, r4, ror r0
  38:	0000007c 	andeq	r0, r0, ip, ror r0
  3c:	00000084 	andeq	r0, r0, r4, lsl #1
  40:	0000008c 	andeq	r0, r0, ip, lsl #1
  44:	00000094 	muleq	r0, r4, r0
  48:	0000009c 	muleq	r0, ip, r0
  4c:	000000a4 	andeq	r0, r0, r4, lsr #1
  50:	000000ac 	andeq	r0, r0, ip, lsr #1
  54:	e3a01006 	mov	r1, #6
  58:	ea000014 	b	b0 <vex::controller::button::pressing() const+0xb0>
  5c:	e3a01007 	mov	r1, #7
  60:	ea000012 	b	b0 <vex::controller::button::pressing() const+0xb0>
  64:	e3a01008 	mov	r1, #8
  68:	ea000010 	b	b0 <vex::controller::button::pressing() const+0xb0>
  6c:	e3a01009 	mov	r1, #9
  70:	ea00000e 	b	b0 <vex::controller::button::pressing() const+0xb0>
  74:	e3a0100a 	mov	r1, #10
  78:	ea00000c 	b	b0 <vex::controller::button::pressing() const+0xb0>
  7c:	e3a0100b 	mov	r1, #11
  80:	ea00000a 	b	b0 <vex::controller::button::pressing() const+0xb0>
  84:	e3a0100c 	mov	r1, #12
  88:	ea000008 	b	b0 <vex::controller::button::pressing() const+0xb0>
  8c:	e3a0100d 	mov	r1, #13
  90:	ea000006 	b	b0 <vex::controller::button::pressing() const+0xb0>
  94:	e3a0100e 	mov	r1, #14
  98:	ea000004 	b	b0 <vex::controller::button::pressing() const+0xb0>
  9c:	e3a0100f 	mov	r1, #15
  a0:	ea000002 	b	b0 <vex::controller::button::pressing() const+0xb0>
  a4:	e3a01010 	mov	r1, #16
  a8:	ea000000 	b	b0 <vex::controller::button::pressing() const+0xb0>
  ac:	e3a01011 	mov	r1, #17
  b0:	ebfffffe 	bl	0 <vex::controller::button::pressing() const>
  b4:	e2900000 	adds	r0, r0, #0
  b8:	13a00001 	movne	r0, #1
  bc:	e8bd8008 	pop	{r3, pc}
  c0:	e3a00000 	mov	r0, #0
  c4:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text._ZNK3vex10controller6button7pressedEPFvvE:

00000000 <vex::controller::button::pressed(void (*)()) const>:
   0:	e5903000 	ldr	r3, [r0]
   4:	e1a02001 	mov	r2, r1
   8:	e353000b 	cmp	r3, #11
   c:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
  10:	ea00003b 	b	104 <vex::controller::button::pressed(void (*)()) const+0x104>
  14:	00000044 	andeq	r0, r0, r4, asr #32
  18:	00000054 	andeq	r0, r0, r4, asr r0
  1c:	00000064 	andeq	r0, r0, r4, rrx
  20:	00000074 	andeq	r0, r0, r4, ror r0
  24:	00000084 	andeq	r0, r0, r4, lsl #1
  28:	00000094 	muleq	r0, r4, r0
  2c:	000000a4 	andeq	r0, r0, r4, lsr #1
  30:	000000b4 	strheq	r0, [r0], -r4
  34:	000000c4 	andeq	r0, r0, r4, asr #1
  38:	000000d4 	ldrdeq	r0, [r0], -r4
  3c:	000000e4 	andeq	r0, r0, r4, ror #1
  40:	000000f4 	strdeq	r0, [r0], -r4
  44:	e5903004 	ldr	r3, [r0, #4]
  48:	e3a01001 	mov	r1, #1
  4c:	e5930004 	ldr	r0, [r3, #4]
  50:	ea00002a 	b	100 <vex::controller::button::pressed(void (*)()) const+0x100>
  54:	e5903004 	ldr	r3, [r0, #4]
  58:	e3a01004 	mov	r1, #4
  5c:	e5930004 	ldr	r0, [r3, #4]
  60:	ea000026 	b	100 <vex::controller::button::pressed(void (*)()) const+0x100>
  64:	e5903004 	ldr	r3, [r0, #4]
  68:	e3a01010 	mov	r1, #16
  6c:	e5930004 	ldr	r0, [r3, #4]
  70:	ea000022 	b	100 <vex::controller::button::pressed(void (*)()) const+0x100>
  74:	e5903004 	ldr	r3, [r0, #4]
  78:	e3a01040 	mov	r1, #64	; 0x40
  7c:	e5930004 	ldr	r0, [r3, #4]
  80:	ea00001e 	b	100 <vex::controller::button::pressed(void (*)()) const+0x100>
  84:	e5903004 	ldr	r3, [r0, #4]
  88:	e3a01c01 	mov	r1, #256	; 0x100
  8c:	e5930004 	ldr	r0, [r3, #4]
  90:	ea00001a 	b	100 <vex::controller::button::pressed(void (*)()) const+0x100>
  94:	e5903004 	ldr	r3, [r0, #4]
  98:	e3a01b01 	mov	r1, #1024	; 0x400
  9c:	e5930004 	ldr	r0, [r3, #4]
  a0:	ea000016 	b	100 <vex::controller::button::pressed(void (*)()) const+0x100>
  a4:	e5903004 	ldr	r3, [r0, #4]
  a8:	e3a01a01 	mov	r1, #4096	; 0x1000
  ac:	e5930004 	ldr	r0, [r3, #4]
  b0:	ea000012 	b	100 <vex::controller::button::pressed(void (*)()) const+0x100>
  b4:	e5903004 	ldr	r3, [r0, #4]
  b8:	e3a01901 	mov	r1, #16384	; 0x4000
  bc:	e5930004 	ldr	r0, [r3, #4]
  c0:	ea00000e 	b	100 <vex::controller::button::pressed(void (*)()) const+0x100>
  c4:	e5903004 	ldr	r3, [r0, #4]
  c8:	e3a01801 	mov	r1, #65536	; 0x10000
  cc:	e5930004 	ldr	r0, [r3, #4]
  d0:	ea00000a 	b	100 <vex::controller::button::pressed(void (*)()) const+0x100>
  d4:	e5903004 	ldr	r3, [r0, #4]
  d8:	e3a01701 	mov	r1, #262144	; 0x40000
  dc:	e5930004 	ldr	r0, [r3, #4]
  e0:	ea000006 	b	100 <vex::controller::button::pressed(void (*)()) const+0x100>
  e4:	e5903004 	ldr	r3, [r0, #4]
  e8:	e3a01601 	mov	r1, #1048576	; 0x100000
  ec:	e5930004 	ldr	r0, [r3, #4]
  f0:	ea000002 	b	100 <vex::controller::button::pressed(void (*)()) const+0x100>
  f4:	e5903004 	ldr	r3, [r0, #4]
  f8:	e3a01501 	mov	r1, #4194304	; 0x400000
  fc:	e5930004 	ldr	r0, [r3, #4]
 100:	eafffffe 	b	0 <vex::event::init(unsigned long, unsigned long, void (*)())>
 104:	e12fff1e 	bx	lr

Disassembly of section .text._ZNK3vex10controller6button8releasedEPFvvE:

00000000 <vex::controller::button::released(void (*)()) const>:
   0:	e5903000 	ldr	r3, [r0]
   4:	e1a02001 	mov	r2, r1
   8:	e353000b 	cmp	r3, #11
   c:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
  10:	ea00003b 	b	104 <vex::controller::button::released(void (*)()) const+0x104>
  14:	00000044 	andeq	r0, r0, r4, asr #32
  18:	00000054 	andeq	r0, r0, r4, asr r0
  1c:	00000064 	andeq	r0, r0, r4, rrx
  20:	00000074 	andeq	r0, r0, r4, ror r0
  24:	00000084 	andeq	r0, r0, r4, lsl #1
  28:	00000094 	muleq	r0, r4, r0
  2c:	000000a4 	andeq	r0, r0, r4, lsr #1
  30:	000000b4 	strheq	r0, [r0], -r4
  34:	000000c4 	andeq	r0, r0, r4, asr #1
  38:	000000d4 	ldrdeq	r0, [r0], -r4
  3c:	000000e4 	andeq	r0, r0, r4, ror #1
  40:	000000f4 	strdeq	r0, [r0], -r4
  44:	e5903004 	ldr	r3, [r0, #4]
  48:	e3a01002 	mov	r1, #2
  4c:	e5930004 	ldr	r0, [r3, #4]
  50:	ea00002a 	b	100 <vex::controller::button::released(void (*)()) const+0x100>
  54:	e5903004 	ldr	r3, [r0, #4]
  58:	e3a01008 	mov	r1, #8
  5c:	e5930004 	ldr	r0, [r3, #4]
  60:	ea000026 	b	100 <vex::controller::button::released(void (*)()) const+0x100>
  64:	e5903004 	ldr	r3, [r0, #4]
  68:	e3a01020 	mov	r1, #32
  6c:	e5930004 	ldr	r0, [r3, #4]
  70:	ea000022 	b	100 <vex::controller::button::released(void (*)()) const+0x100>
  74:	e5903004 	ldr	r3, [r0, #4]
  78:	e3a01080 	mov	r1, #128	; 0x80
  7c:	e5930004 	ldr	r0, [r3, #4]
  80:	ea00001e 	b	100 <vex::controller::button::released(void (*)()) const+0x100>
  84:	e5903004 	ldr	r3, [r0, #4]
  88:	e3a01c02 	mov	r1, #512	; 0x200
  8c:	e5930004 	ldr	r0, [r3, #4]
  90:	ea00001a 	b	100 <vex::controller::button::released(void (*)()) const+0x100>
  94:	e5903004 	ldr	r3, [r0, #4]
  98:	e3a01b02 	mov	r1, #2048	; 0x800
  9c:	e5930004 	ldr	r0, [r3, #4]
  a0:	ea000016 	b	100 <vex::controller::button::released(void (*)()) const+0x100>
  a4:	e5903004 	ldr	r3, [r0, #4]
  a8:	e3a01a02 	mov	r1, #8192	; 0x2000
  ac:	e5930004 	ldr	r0, [r3, #4]
  b0:	ea000012 	b	100 <vex::controller::button::released(void (*)()) const+0x100>
  b4:	e5903004 	ldr	r3, [r0, #4]
  b8:	e3a01902 	mov	r1, #32768	; 0x8000
  bc:	e5930004 	ldr	r0, [r3, #4]
  c0:	ea00000e 	b	100 <vex::controller::button::released(void (*)()) const+0x100>
  c4:	e5903004 	ldr	r3, [r0, #4]
  c8:	e3a01802 	mov	r1, #131072	; 0x20000
  cc:	e5930004 	ldr	r0, [r3, #4]
  d0:	ea00000a 	b	100 <vex::controller::button::released(void (*)()) const+0x100>
  d4:	e5903004 	ldr	r3, [r0, #4]
  d8:	e3a01702 	mov	r1, #524288	; 0x80000
  dc:	e5930004 	ldr	r0, [r3, #4]
  e0:	ea000006 	b	100 <vex::controller::button::released(void (*)()) const+0x100>
  e4:	e5903004 	ldr	r3, [r0, #4]
  e8:	e3a01602 	mov	r1, #2097152	; 0x200000
  ec:	e5930004 	ldr	r0, [r3, #4]
  f0:	ea000002 	b	100 <vex::controller::button::released(void (*)()) const+0x100>
  f4:	e5903004 	ldr	r3, [r0, #4]
  f8:	e3a01502 	mov	r1, #8388608	; 0x800000
  fc:	e5930004 	ldr	r0, [r3, #4]
 100:	eafffffe 	b	0 <vex::event::init(unsigned long, unsigned long, void (*)())>
 104:	e12fff1e 	bx	lr

Disassembly of section .text._ZNK3vex10controller6button21_buttonToPressedEventEv:

00000000 <vex::controller::button::_buttonToPressedEvent() const>:
   0:	e5903000 	ldr	r3, [r0]
   4:	e2433001 	sub	r3, r3, #1
   8:	e353000a 	cmp	r3, #10
   c:	959f2008 	ldrls	r2, [pc, #8]	; 1c <vex::controller::button::_buttonToPressedEvent() const+0x1c>
  10:	919200d3 	ldrsbls	r0, [r2, r3]
  14:	83a00000 	movhi	r0, #0
  18:	e12fff1e 	bx	lr
  1c:	00000000 	andeq	r0, r0, r0

Disassembly of section .text._ZNK3vex10controller6button22_buttonToReleasedEventEv:

00000000 <vex::controller::button::_buttonToReleasedEvent() const>:
   0:	e5903000 	ldr	r3, [r0]
   4:	e2433001 	sub	r3, r3, #1
   8:	e353000a 	cmp	r3, #10
   c:	959f2008 	ldrls	r2, [pc, #8]	; 1c <vex::controller::button::_buttonToReleasedEvent() const+0x1c>
  10:	919200d3 	ldrsbls	r0, [r2, r3]
  14:	83a00001 	movhi	r0, #1
  18:	e12fff1e 	bx	lr
  1c:	00000000 	andeq	r0, r0, r0

Disassembly of section .text._ZN3vex10controller6buttonC2ENS0_11tButtonTypeEPS0_:

00000000 <vex::controller::button::button(vex::controller::tButtonType, vex::controller*)>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a05002 	mov	r5, r2
   8:	e8800022 	stm	r0, {r1, r5}
   c:	e1a04000 	mov	r4, r0
  10:	ebfffffe 	bl	0 <vex::controller::button::button(vex::controller::tButtonType, vex::controller*)>
  14:	e5951004 	ldr	r1, [r5, #4]
  18:	e1a02000 	mov	r2, r0
  1c:	e2840008 	add	r0, r4, #8
  20:	ebfffffe 	bl	0 <vex::mevent::mevent(unsigned long, unsigned long)>
  24:	e1a00004 	mov	r0, r4
  28:	ebfffffe 	bl	0 <vex::controller::button::button(vex::controller::tButtonType, vex::controller*)>
  2c:	e5943004 	ldr	r3, [r4, #4]
  30:	e5931004 	ldr	r1, [r3, #4]
  34:	e1a02000 	mov	r2, r0
  38:	e2840010 	add	r0, r4, #16
  3c:	ebfffffe 	bl	0 <vex::mevent::mevent(unsigned long, unsigned long)>
  40:	e1a00004 	mov	r0, r4
  44:	e8bd8038 	pop	{r3, r4, r5, pc}

Disassembly of section .text._ZNK3vex10controller4axis5valueEv:

00000000 <vex::controller::axis::value() const>:
   0:	e1a03000 	mov	r3, r0
   4:	e5900004 	ldr	r0, [r0, #4]
   8:	e3500000 	cmp	r0, #0
   c:	0a00000f 	beq	50 <vex::controller::axis::value() const+0x50>
  10:	e5933000 	ldr	r3, [r3]
  14:	e3530003 	cmp	r3, #3
  18:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
  1c:	ea00000b 	b	50 <vex::controller::axis::value() const+0x50>
  20:	00000030 	andeq	r0, r0, r0, lsr r0
  24:	00000038 	andeq	r0, r0, r8, lsr r0
  28:	00000040 	andeq	r0, r0, r0, asr #32
  2c:	00000048 	andeq	r0, r0, r8, asr #32
  30:	e3a01001 	mov	r1, #1
  34:	ea000004 	b	4c <vex::controller::axis::value() const+0x4c>
  38:	e3a01000 	mov	r1, #0
  3c:	ea000002 	b	4c <vex::controller::axis::value() const+0x4c>
  40:	e3a01002 	mov	r1, #2
  44:	ea000000 	b	4c <vex::controller::axis::value() const+0x4c>
  48:	e3a01003 	mov	r1, #3
  4c:	eafffffe 	b	0 <vex::controller::axis::value() const>
  50:	e3a00000 	mov	r0, #0
  54:	e12fff1e 	bx	lr

Disassembly of section .text._ZNK3vex10controller4axis8positionENS_12percentUnitsE:

00000000 <vex::controller::axis::position(vex::percentUnits) const>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vex::controller::axis::position(vex::percentUnits) const>
   8:	e3a03064 	mov	r3, #100	; 0x64
   c:	e3a0107f 	mov	r1, #127	; 0x7f
  10:	e0000093 	mul	r0, r3, r0
  14:	ebfffffe 	bl	0 <__aeabi_idiv>
  18:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text._ZNK3vex10controller4axis7changedEPFvvE:

00000000 <vex::controller::axis::changed(void (*)()) const>:
   0:	e5903000 	ldr	r3, [r0]
   4:	e1a02001 	mov	r2, r1
   8:	e3530003 	cmp	r3, #3
   c:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
  10:	ea000013 	b	64 <vex::controller::axis::changed(void (*)()) const+0x64>
  14:	00000024 	andeq	r0, r0, r4, lsr #32
  18:	00000034 	andeq	r0, r0, r4, lsr r0
  1c:	00000044 	andeq	r0, r0, r4, asr #32
  20:	00000054 	andeq	r0, r0, r4, asr r0
  24:	e5903004 	ldr	r3, [r0, #4]
  28:	e3a01401 	mov	r1, #16777216	; 0x1000000
  2c:	e5930004 	ldr	r0, [r3, #4]
  30:	ea00000a 	b	60 <vex::controller::axis::changed(void (*)()) const+0x60>
  34:	e5903004 	ldr	r3, [r0, #4]
  38:	e3a01402 	mov	r1, #33554432	; 0x2000000
  3c:	e5930004 	ldr	r0, [r3, #4]
  40:	ea000006 	b	60 <vex::controller::axis::changed(void (*)()) const+0x60>
  44:	e5903004 	ldr	r3, [r0, #4]
  48:	e3a01301 	mov	r1, #67108864	; 0x4000000
  4c:	e5930004 	ldr	r0, [r3, #4]
  50:	ea000002 	b	60 <vex::controller::axis::changed(void (*)()) const+0x60>
  54:	e5903004 	ldr	r3, [r0, #4]
  58:	e3a01302 	mov	r1, #134217728	; 0x8000000
  5c:	e5930004 	ldr	r0, [r3, #4]
  60:	eafffffe 	b	0 <vex::event::init(unsigned long, unsigned long, void (*)())>
  64:	e12fff1e 	bx	lr

Disassembly of section .text._ZNK3vex10controller4axis23_joystickToChangedEventEv:

00000000 <vex::controller::axis::_joystickToChangedEvent() const>:
   0:	e5903000 	ldr	r3, [r0]
   4:	e2433001 	sub	r3, r3, #1
   8:	e3530002 	cmp	r3, #2
   c:	959f2008 	ldrls	r2, [pc, #8]	; 1c <vex::controller::axis::_joystickToChangedEvent() const+0x1c>
  10:	919200d3 	ldrsbls	r0, [r2, r3]
  14:	83a00018 	movhi	r0, #24
  18:	e12fff1e 	bx	lr
  1c:	00000000 	andeq	r0, r0, r0

Disassembly of section .text._ZN3vex10controller4axisC2ENS0_9tAxisTypeEPS0_:

00000000 <vex::controller::axis::axis(vex::controller::tAxisType, vex::controller*)>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a05002 	mov	r5, r2
   8:	e8800022 	stm	r0, {r1, r5}
   c:	e1a04000 	mov	r4, r0
  10:	ebfffffe 	bl	0 <vex::controller::axis::axis(vex::controller::tAxisType, vex::controller*)>
  14:	e5951004 	ldr	r1, [r5, #4]
  18:	e1a02000 	mov	r2, r0
  1c:	e2840008 	add	r0, r4, #8
  20:	ebfffffe 	bl	0 <vex::mevent::mevent(unsigned long, unsigned long)>
  24:	e1a00004 	mov	r0, r4
  28:	e8bd8038 	pop	{r3, r4, r5, pc}

Disassembly of section .text._ZN3vex10controllerC2ENS_14controllerTypeE:

00000000 <vex::controller::controller(vex::controllerType)>:
   0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e5841000 	str	r1, [r4]
   c:	e1a05001 	mov	r5, r1
  10:	ebfffffe 	bl	0 <vex::event::userindex()>
  14:	e6ef5075 	uxtb	r5, r5
  18:	e1a02004 	mov	r2, r4
  1c:	e3a01000 	mov	r1, #0
  20:	e2846f4a 	add	r6, r4, #296	; 0x128
  24:	e2848f52 	add	r8, r4, #328	; 0x148
  28:	e2847f56 	add	r7, r4, #344	; 0x158
  2c:	e2400002 	sub	r0, r0, #2
  30:	e0655000 	rsb	r5, r5, r0
  34:	e2840008 	add	r0, r4, #8
  38:	e5845004 	str	r5, [r4, #4]
  3c:	e2845f4e 	add	r5, r4, #312	; 0x138
  40:	ebfffffe 	bl	0 <vex::controller::controller(vex::controllerType)>
  44:	e1a02004 	mov	r2, r4
  48:	e2840020 	add	r0, r4, #32
  4c:	e3a01001 	mov	r1, #1
  50:	ebfffffe 	bl	0 <vex::controller::controller(vex::controllerType)>
  54:	e1a02004 	mov	r2, r4
  58:	e2840038 	add	r0, r4, #56	; 0x38
  5c:	e3a01002 	mov	r1, #2
  60:	ebfffffe 	bl	0 <vex::controller::controller(vex::controllerType)>
  64:	e1a02004 	mov	r2, r4
  68:	e2840050 	add	r0, r4, #80	; 0x50
  6c:	e3a01003 	mov	r1, #3
  70:	ebfffffe 	bl	0 <vex::controller::controller(vex::controllerType)>
  74:	e1a02004 	mov	r2, r4
  78:	e2840068 	add	r0, r4, #104	; 0x68
  7c:	e3a01004 	mov	r1, #4
  80:	ebfffffe 	bl	0 <vex::controller::controller(vex::controllerType)>
  84:	e1a02004 	mov	r2, r4
  88:	e2840080 	add	r0, r4, #128	; 0x80
  8c:	e3a01005 	mov	r1, #5
  90:	ebfffffe 	bl	0 <vex::controller::controller(vex::controllerType)>
  94:	e1a02004 	mov	r2, r4
  98:	e2840098 	add	r0, r4, #152	; 0x98
  9c:	e3a01006 	mov	r1, #6
  a0:	ebfffffe 	bl	0 <vex::controller::controller(vex::controllerType)>
  a4:	e1a02004 	mov	r2, r4
  a8:	e28400b0 	add	r0, r4, #176	; 0xb0
  ac:	e3a01007 	mov	r1, #7
  b0:	ebfffffe 	bl	0 <vex::controller::controller(vex::controllerType)>
  b4:	e1a02004 	mov	r2, r4
  b8:	e28400c8 	add	r0, r4, #200	; 0xc8
  bc:	e3a01008 	mov	r1, #8
  c0:	ebfffffe 	bl	0 <vex::controller::controller(vex::controllerType)>
  c4:	e1a02004 	mov	r2, r4
  c8:	e28400e0 	add	r0, r4, #224	; 0xe0
  cc:	e3a01009 	mov	r1, #9
  d0:	ebfffffe 	bl	0 <vex::controller::controller(vex::controllerType)>
  d4:	e1a02004 	mov	r2, r4
  d8:	e28400f8 	add	r0, r4, #248	; 0xf8
  dc:	e3a0100a 	mov	r1, #10
  e0:	ebfffffe 	bl	0 <vex::controller::controller(vex::controllerType)>
  e4:	e1a02004 	mov	r2, r4
  e8:	e2840e11 	add	r0, r4, #272	; 0x110
  ec:	e3a0100b 	mov	r1, #11
  f0:	ebfffffe 	bl	0 <vex::controller::controller(vex::controllerType)>
  f4:	e1a02004 	mov	r2, r4
  f8:	e1a00006 	mov	r0, r6
  fc:	e3a01000 	mov	r1, #0
 100:	ebfffffe 	bl	0 <vex::controller::controller(vex::controllerType)>
 104:	e1a02004 	mov	r2, r4
 108:	e1a00005 	mov	r0, r5
 10c:	e3a01001 	mov	r1, #1
 110:	ebfffffe 	bl	0 <vex::controller::controller(vex::controllerType)>
 114:	e1a02004 	mov	r2, r4
 118:	e1a00008 	mov	r0, r8
 11c:	e3a01002 	mov	r1, #2
 120:	ebfffffe 	bl	0 <vex::controller::controller(vex::controllerType)>
 124:	e1a00007 	mov	r0, r7
 128:	e3a01003 	mov	r1, #3
 12c:	e1a02004 	mov	r2, r4
 130:	ebfffffe 	bl	0 <vex::controller::controller(vex::controllerType)>
 134:	e3a03003 	mov	r3, #3
 138:	e5848168 	str	r8, [r4, #360]	; 0x168
 13c:	e1a00004 	mov	r0, r4
 140:	e584317c 	str	r3, [r4, #380]	; 0x17c
 144:	e5843180 	str	r3, [r4, #384]	; 0x180
 148:	e3a03001 	mov	r3, #1
 14c:	e584716c 	str	r7, [r4, #364]	; 0x16c
 150:	e5843184 	str	r3, [r4, #388]	; 0x184
 154:	e3a03028 	mov	r3, #40	; 0x28
 158:	e5846170 	str	r6, [r4, #368]	; 0x170
 15c:	e5845174 	str	r5, [r4, #372]	; 0x174
 160:	e5844178 	str	r4, [r4, #376]	; 0x178
 164:	e5843188 	str	r3, [r4, #392]	; 0x188
 168:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

Disassembly of section .text._ZN3vex10controllerC2Ev:

00000000 <vex::controller::controller()>:
   0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   4:	e3a05000 	mov	r5, #0
   8:	e5805000 	str	r5, [r0]
   c:	e1a04000 	mov	r4, r0
  10:	ebfffffe 	bl	0 <vex::event::userindex()>
  14:	e1a01005 	mov	r1, r5
  18:	e1a02004 	mov	r2, r4
  1c:	e2846f4a 	add	r6, r4, #296	; 0x128
  20:	e2848f52 	add	r8, r4, #328	; 0x148
  24:	e2847f56 	add	r7, r4, #344	; 0x158
  28:	e2400002 	sub	r0, r0, #2
  2c:	e5840004 	str	r0, [r4, #4]
  30:	e2840008 	add	r0, r4, #8
  34:	ebfffffe 	bl	0 <vex::controller::controller()>
  38:	e1a02004 	mov	r2, r4
  3c:	e2840020 	add	r0, r4, #32
  40:	e3a01001 	mov	r1, #1
  44:	ebfffffe 	bl	0 <vex::controller::controller()>
  48:	e1a02004 	mov	r2, r4
  4c:	e2840038 	add	r0, r4, #56	; 0x38
  50:	e3a01002 	mov	r1, #2
  54:	ebfffffe 	bl	0 <vex::controller::controller()>
  58:	e1a02004 	mov	r2, r4
  5c:	e2840050 	add	r0, r4, #80	; 0x50
  60:	e3a01003 	mov	r1, #3
  64:	ebfffffe 	bl	0 <vex::controller::controller()>
  68:	e1a02004 	mov	r2, r4
  6c:	e2840068 	add	r0, r4, #104	; 0x68
  70:	e3a01004 	mov	r1, #4
  74:	ebfffffe 	bl	0 <vex::controller::controller()>
  78:	e1a02004 	mov	r2, r4
  7c:	e2840080 	add	r0, r4, #128	; 0x80
  80:	e3a01005 	mov	r1, #5
  84:	ebfffffe 	bl	0 <vex::controller::controller()>
  88:	e1a02004 	mov	r2, r4
  8c:	e2840098 	add	r0, r4, #152	; 0x98
  90:	e3a01006 	mov	r1, #6
  94:	ebfffffe 	bl	0 <vex::controller::controller()>
  98:	e1a02004 	mov	r2, r4
  9c:	e28400b0 	add	r0, r4, #176	; 0xb0
  a0:	e3a01007 	mov	r1, #7
  a4:	ebfffffe 	bl	0 <vex::controller::controller()>
  a8:	e1a02004 	mov	r2, r4
  ac:	e28400c8 	add	r0, r4, #200	; 0xc8
  b0:	e3a01008 	mov	r1, #8
  b4:	ebfffffe 	bl	0 <vex::controller::controller()>
  b8:	e1a02004 	mov	r2, r4
  bc:	e28400e0 	add	r0, r4, #224	; 0xe0
  c0:	e3a01009 	mov	r1, #9
  c4:	ebfffffe 	bl	0 <vex::controller::controller()>
  c8:	e1a02004 	mov	r2, r4
  cc:	e28400f8 	add	r0, r4, #248	; 0xf8
  d0:	e3a0100a 	mov	r1, #10
  d4:	ebfffffe 	bl	0 <vex::controller::controller()>
  d8:	e1a02004 	mov	r2, r4
  dc:	e2840e11 	add	r0, r4, #272	; 0x110
  e0:	e3a0100b 	mov	r1, #11
  e4:	ebfffffe 	bl	0 <vex::controller::controller()>
  e8:	e1a01005 	mov	r1, r5
  ec:	e2845f4e 	add	r5, r4, #312	; 0x138
  f0:	e1a02004 	mov	r2, r4
  f4:	e1a00006 	mov	r0, r6
  f8:	ebfffffe 	bl	0 <vex::controller::controller()>
  fc:	e1a02004 	mov	r2, r4
 100:	e1a00005 	mov	r0, r5
 104:	e3a01001 	mov	r1, #1
 108:	ebfffffe 	bl	0 <vex::controller::controller()>
 10c:	e1a02004 	mov	r2, r4
 110:	e1a00008 	mov	r0, r8
 114:	e3a01002 	mov	r1, #2
 118:	ebfffffe 	bl	0 <vex::controller::controller()>
 11c:	e1a00007 	mov	r0, r7
 120:	e3a01003 	mov	r1, #3
 124:	e1a02004 	mov	r2, r4
 128:	ebfffffe 	bl	0 <vex::controller::controller()>
 12c:	e3a03003 	mov	r3, #3
 130:	e5848168 	str	r8, [r4, #360]	; 0x168
 134:	e1a00004 	mov	r0, r4
 138:	e584317c 	str	r3, [r4, #380]	; 0x17c
 13c:	e5843180 	str	r3, [r4, #384]	; 0x180
 140:	e3a03001 	mov	r3, #1
 144:	e584716c 	str	r7, [r4, #364]	; 0x16c
 148:	e5843184 	str	r3, [r4, #388]	; 0x184
 14c:	e3a03028 	mov	r3, #40	; 0x28
 150:	e5846170 	str	r6, [r4, #368]	; 0x170
 154:	e5845174 	str	r5, [r4, #372]	; 0x174
 158:	e5844178 	str	r4, [r4, #376]	; 0x178
 15c:	e5843188 	str	r3, [r4, #392]	; 0x188
 160:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

Disassembly of section .text._ZN3vex10controller3lcdC2Ev:

00000000 <vex::controller::lcd::lcd()>:
   0:	e3a02000 	mov	r2, #0
   4:	e5802000 	str	r2, [r0]
   8:	e3a02003 	mov	r2, #3
   c:	e5802004 	str	r2, [r0, #4]
  10:	e5802008 	str	r2, [r0, #8]
  14:	e3a02001 	mov	r2, #1
  18:	e580200c 	str	r2, [r0, #12]
  1c:	e3a02028 	mov	r2, #40	; 0x28
  20:	e5802010 	str	r2, [r0, #16]
  24:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex10controller3lcdC2EPS0_:

00000000 <vex::controller::lcd::lcd(vex::controller*)>:
   0:	e3a02003 	mov	r2, #3
   4:	e5801000 	str	r1, [r0]
   8:	e5802004 	str	r2, [r0, #4]
   c:	e5802008 	str	r2, [r0, #8]
  10:	e3a02001 	mov	r2, #1
  14:	e580200c 	str	r2, [r0, #12]
  18:	e3a02028 	mov	r2, #40	; 0x28
  1c:	e5802010 	str	r2, [r0, #16]
  20:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex10controller3lcd15getControllerIdEv:

00000000 <vex::controller::lcd::getControllerId()>:
   0:	e5900000 	ldr	r0, [r0]
   4:	e3500000 	cmp	r0, #0
   8:	15900000 	ldrne	r0, [r0]
   c:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex10controller3lcd9setCursorEll:

00000000 <vex::controller::lcd::setCursor(long, long)>:
   0:	e3510000 	cmp	r1, #0
   4:	e5801004 	str	r1, [r0, #4]
   8:	e580200c 	str	r2, [r0, #12]
   c:	d3a03001 	movle	r3, #1
  10:	d5803004 	strle	r3, [r0, #4]
  14:	e3520000 	cmp	r2, #0
  18:	d3a03001 	movle	r3, #1
  1c:	d580300c 	strle	r3, [r0, #12]
  20:	e990000c 	ldmib	r0, {r2, r3}
  24:	e1520003 	cmp	r2, r3
  28:	e590200c 	ldr	r2, [r0, #12]
  2c:	c5803004 	strgt	r3, [r0, #4]
  30:	e5903010 	ldr	r3, [r0, #16]
  34:	e1520003 	cmp	r2, r3
  38:	c580300c 	strgt	r3, [r0, #12]
  3c:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex10controller3lcd6columnEv:

00000000 <vex::controller::lcd::column()>:
   0:	e590000c 	ldr	r0, [r0, #12]
   4:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex10controller3lcd3rowEv:

00000000 <vex::controller::lcd::row()>:
   0:	e5900004 	ldr	r0, [r0, #4]
   4:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex10controller3lcd5printEPKcz:

00000000 <vex::controller::lcd::print(char const*, ...)>:
   0:	e92d000e 	push	{r1, r2, r3}
   4:	e92d4033 	push	{r0, r1, r4, r5, lr}
   8:	e2805014 	add	r5, r0, #20
   c:	e1a04000 	mov	r4, r0
  10:	e28d3018 	add	r3, sp, #24
  14:	e59d2014 	ldr	r2, [sp, #20]
  18:	e3a01020 	mov	r1, #32
  1c:	e1a00005 	mov	r0, r5
  20:	e58d3004 	str	r3, [sp, #4]
  24:	ebfffffe 	bl	0 <vex_vsnprintf>
  28:	e3a03000 	mov	r3, #0
  2c:	e1a00004 	mov	r0, r4
  30:	e5c43033 	strb	r3, [r4, #51]	; 0x33
  34:	ebfffffe 	bl	0 <vex::controller::lcd::print(char const*, ...)>
  38:	e594200c 	ldr	r2, [r4, #12]
  3c:	e1a03005 	mov	r3, r5
  40:	e5941004 	ldr	r1, [r4, #4]
  44:	e2422001 	sub	r2, r2, #1
  48:	e6ef0070 	uxtb	r0, r0
  4c:	ebfffffe 	bl	0 <vexControllerTextSet>
  50:	e1a00005 	mov	r0, r5
  54:	ebfffffe 	bl	0 <strlen>
  58:	e594300c 	ldr	r3, [r4, #12]
  5c:	e0800003 	add	r0, r0, r3
  60:	e5943010 	ldr	r3, [r4, #16]
  64:	e584000c 	str	r0, [r4, #12]
  68:	e1500003 	cmp	r0, r3
  6c:	c584300c 	strgt	r3, [r4, #12]
  70:	e28dd008 	add	sp, sp, #8
  74:	e8bd4030 	pop	{r4, r5, lr}
  78:	e28dd00c 	add	sp, sp, #12
  7c:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex10controller3lcd5printEPcz:

00000000 <vex::controller::lcd::print(char*, ...)>:
   0:	e92d000e 	push	{r1, r2, r3}
   4:	e92d4033 	push	{r0, r1, r4, r5, lr}
   8:	e2805014 	add	r5, r0, #20
   c:	e1a04000 	mov	r4, r0
  10:	e28d3018 	add	r3, sp, #24
  14:	e59d2014 	ldr	r2, [sp, #20]
  18:	e3a01020 	mov	r1, #32
  1c:	e1a00005 	mov	r0, r5
  20:	e58d3004 	str	r3, [sp, #4]
  24:	ebfffffe 	bl	0 <vex_vsnprintf>
  28:	e3a03000 	mov	r3, #0
  2c:	e1a00004 	mov	r0, r4
  30:	e5c43033 	strb	r3, [r4, #51]	; 0x33
  34:	ebfffffe 	bl	0 <vex::controller::lcd::print(char*, ...)>
  38:	e594200c 	ldr	r2, [r4, #12]
  3c:	e1a03005 	mov	r3, r5
  40:	e5941004 	ldr	r1, [r4, #4]
  44:	e2422001 	sub	r2, r2, #1
  48:	e6ef0070 	uxtb	r0, r0
  4c:	ebfffffe 	bl	0 <vexControllerTextSet>
  50:	e1a00005 	mov	r0, r5
  54:	ebfffffe 	bl	0 <strlen>
  58:	e594300c 	ldr	r3, [r4, #12]
  5c:	e0800003 	add	r0, r0, r3
  60:	e5943010 	ldr	r3, [r4, #16]
  64:	e584000c 	str	r0, [r4, #12]
  68:	e1500003 	cmp	r0, r3
  6c:	c584300c 	strgt	r3, [r4, #12]
  70:	e28dd008 	add	sp, sp, #8
  74:	e8bd4030 	pop	{r4, r5, lr}
  78:	e28dd00c 	add	sp, sp, #12
  7c:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex10controller3lcd9clearLineEi:

00000000 <vex::controller::lcd::clearLine(int)>:
   0:	e3510000 	cmp	r1, #0
   4:	d12fff1e 	bxle	lr
   8:	e5903008 	ldr	r3, [r0, #8]
   c:	e1510003 	cmp	r1, r3
  10:	c12fff1e 	bxgt	lr
  14:	e92d4070 	push	{r4, r5, r6, lr}
  18:	e3a03001 	mov	r3, #1
  1c:	e580300c 	str	r3, [r0, #12]
  20:	e1a04000 	mov	r4, r0
  24:	e1a05001 	mov	r5, r1
  28:	ebfffffe 	bl	0 <vexSystemVersion>
  2c:	e59f3040 	ldr	r3, [pc, #64]	; 74 <vex::controller::lcd::clearLine(int)+0x74>
  30:	e1500003 	cmp	r0, r3
  34:	e1a00004 	mov	r0, r4
  38:	9a000005 	bls	54 <vex::controller::lcd::clearLine(int)+0x54>
  3c:	ebfffffe 	bl	0 <vex::controller::lcd::clearLine(int)>
  40:	e1a01005 	mov	r1, r5
  44:	e3a02000 	mov	r2, #0
  48:	e59f3028 	ldr	r3, [pc, #40]	; 78 <vex::controller::lcd::clearLine(int)+0x78>
  4c:	e6ef0070 	uxtb	r0, r0
  50:	ea000005 	b	6c <vex::controller::lcd::clearLine(int)+0x6c>
  54:	ebfffffe 	bl	0 <vex::controller::lcd::clearLine(int)>
  58:	e594200c 	ldr	r2, [r4, #12]
  5c:	e59f3018 	ldr	r3, [pc, #24]	; 7c <vex::controller::lcd::clearLine(int)+0x7c>
  60:	e1a01005 	mov	r1, r5
  64:	e2422001 	sub	r2, r2, #1
  68:	e6ef0070 	uxtb	r0, r0
  6c:	e8bd4070 	pop	{r4, r5, r6, lr}
  70:	eafffffe 	b	0 <vexControllerTextSet>
  74:	01000c1b 	tsteq	r0, fp, lsl ip
  78:	00000000 	andeq	r0, r0, r0
  7c:	00000001 	andeq	r0, r0, r1

Disassembly of section .text._ZN3vex10controller3lcd11clearScreenEv:

00000000 <vex::controller::lcd::clearScreen()>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <vexSystemVersion>
   c:	e3500401 	cmp	r0, #16777216	; 0x1000000
  10:	e1a00004 	mov	r0, r4
  14:	9a000006 	bls	34 <vex::controller::lcd::clearScreen()+0x34>
  18:	ebfffffe 	bl	0 <vex::controller::lcd::clearScreen()>
  1c:	e3a01000 	mov	r1, #0
  20:	e1a02001 	mov	r2, r1
  24:	e59f302c 	ldr	r3, [pc, #44]	; 58 <vex::controller::lcd::clearScreen()+0x58>
  28:	e8bd4010 	pop	{r4, lr}
  2c:	e6ef0070 	uxtb	r0, r0
  30:	eafffffe 	b	0 <vexControllerTextSet>
  34:	e3a01001 	mov	r1, #1
  38:	ebfffffe 	bl	0 <vex::controller::lcd::clearScreen()>
  3c:	e1a00004 	mov	r0, r4
  40:	e3a01002 	mov	r1, #2
  44:	ebfffffe 	bl	0 <vex::controller::lcd::clearScreen()>
  48:	e1a00004 	mov	r0, r4
  4c:	e3a01003 	mov	r1, #3
  50:	e8bd4010 	pop	{r4, lr}
  54:	eafffffe 	b	0 <vex::controller::lcd::clearScreen()>
  58:	00000000 	andeq	r0, r0, r0

Disassembly of section .text._ZN3vex10controller3lcd9clearLineEv:

00000000 <vex::controller::lcd::clearLine()>:
   0:	e3a01001 	mov	r1, #1
   4:	eafffffe 	b	0 <vex::controller::lcd::clearLine()>

Disassembly of section .text._ZN3vex10controller3lcd7newLineEv:

00000000 <vex::controller::lcd::newLine()>:
   0:	e5903004 	ldr	r3, [r0, #4]
   4:	e5902008 	ldr	r2, [r0, #8]
   8:	e1530002 	cmp	r3, r2
   c:	b2833001 	addlt	r3, r3, #1
  10:	b5803004 	strlt	r3, [r0, #4]
  14:	e3a03001 	mov	r3, #1
  18:	e580300c 	str	r3, [r0, #12]
  1c:	e12fff1e 	bx	lr

Disassembly of section .rodata.str1.1:

00000000 <.rodata.str1.1>:
   0:	20202000 	eorcs	r2, r0, r0
   4:	20202020 	eorcs	r2, r0, r0, lsr #32
   8:	20202020 	eorcs	r2, r0, r0, lsr #32
   c:	20202020 	eorcs	r2, r0, r0, lsr #32
  10:	20202020 	eorcs	r2, r0, r0, lsr #32
  14:	20202020 	eorcs	r2, r0, r0, lsr #32
  18:	20202020 	eorcs	r2, r0, r0, lsr #32
  1c:	00202020 	eoreq	r2, r0, r0, lsr #32

Disassembly of section .rodata.CSWTCH.16:

00000000 <.rodata.CSWTCH.16>:
   0:	08060402 	stmdaeq	r6, {r1, sl}
   4:	100e0c0a 	andne	r0, lr, sl, lsl #24
   8:	Address 0x0000000000000008 is out of bounds.


Disassembly of section .rodata.CSWTCH.18:

00000000 <.rodata.CSWTCH.18>:
   0:	09070503 	stmdbeq	r7, {r0, r1, r8, sl}
   4:	110f0d0b 	tstne	pc, fp, lsl #26
   8:	Address 0x0000000000000008 is out of bounds.


Disassembly of section .rodata.CSWTCH.24:

00000000 <.rodata.CSWTCH.24>:
   0:	Address 0x0000000000000000 is out of bounds.


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
  44:	5b202965 	blpl	80a5e0 <vex::controller::controller(vex::controllerType)+0x80a5e0>
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

