
vex_brain.cpp.obj:     file format elf32-littlearm


Disassembly of section .text._ZL9_hexDigitc:

00000000 <_hexDigit(char)>:
   0:	e2403030 	sub	r3, r0, #48	; 0x30
   4:	e6ef3073 	uxtb	r3, r3
   8:	e3530009 	cmp	r3, #9
   c:	9a000009 	bls	38 <_hexDigit(char)+0x38>
  10:	e2403041 	sub	r3, r0, #65	; 0x41
  14:	e3530005 	cmp	r3, #5
  18:	92400037 	subls	r0, r0, #55	; 0x37
  1c:	9a000003 	bls	30 <_hexDigit(char)+0x30>
  20:	e2403061 	sub	r3, r0, #97	; 0x61
  24:	e3530005 	cmp	r3, #5
  28:	8a000004 	bhi	40 <_hexDigit(char)+0x40>
  2c:	e2400057 	sub	r0, r0, #87	; 0x57
  30:	e6ef0070 	uxtb	r0, r0
  34:	e12fff1e 	bx	lr
  38:	e1a00003 	mov	r0, r3
  3c:	e12fff1e 	bx	lr
  40:	e3a00000 	mov	r0, #0
  44:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex5brain9_getIndexEv:

00000000 <vex::brain::_getIndex()>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vex::event::userindex()>
   8:	e2400001 	sub	r0, r0, #1
   c:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text._ZN3vex5brain5timerENS_9timeUnitsE:

00000000 <vex::brain::timer(vex::timeUnits)>:
   0:	e2800f4f 	add	r0, r0, #316	; 0x13c
   4:	eafffffe 	b	0 <vex::timer::time(vex::timeUnits) const>

Disassembly of section .text._ZN3vex5brain10resetTimerEv:

00000000 <vex::brain::resetTimer()>:
   0:	e2800f4f 	add	r0, r0, #316	; 0x13c
   4:	eafffffe 	b	0 <vex::timer::clear()>

Disassembly of section .text._ZN3vex5brain8setTimerEdNS_9timeUnitsE:

00000000 <vex::brain::setTimer(double, vex::timeUnits)>:
   0:	ec432b30 	vmov	d16, r2, r3
   4:	e59d3000 	ldr	r3, [sp]
   8:	e2800f4f 	add	r0, r0, #316	; 0x13c
   c:	e3530000 	cmp	r3, #0
  10:	0ddf1b04 	vldreq	d17, [pc, #16]	; 28 <vex::brain::setTimer(double, vex::timeUnits)+0x28>
  14:	0e600ba1 	vmuleq.f64	d16, d16, d17
  18:	eefd7be0 	vcvt.s32.f64	s15, d16
  1c:	ee171a90 	vmov	r1, s15
  20:	eafffffe 	b	0 <vex::timer::operator=(unsigned long)>
  24:	e320f000 	nop	{0}
  28:	00000000 	andeq	r0, r0, r0
  2c:	408f4000 	addmi	r4, pc, r0

Disassembly of section .text._ZN3vex5brain3lcd9setCursorEll:

00000000 <vex::brain::lcd::setCursor(long, long)>:
   0:	e590c004 	ldr	ip, [r0, #4]
   4:	e5801000 	str	r1, [r0]
   8:	e26c3000 	rsb	r3, ip, #0
   c:	e580200c 	str	r2, [r0, #12]
  10:	e1510003 	cmp	r1, r3
  14:	b5803000 	strlt	r3, [r0]
  18:	e5903010 	ldr	r3, [r0, #16]
  1c:	e2631000 	rsb	r1, r3, #0
  20:	e1520001 	cmp	r2, r1
  24:	e5902000 	ldr	r2, [r0]
  28:	b580100c 	strlt	r1, [r0, #12]
  2c:	e152000c 	cmp	r2, ip
  30:	e590200c 	ldr	r2, [r0, #12]
  34:	c580c000 	strgt	ip, [r0]
  38:	e1520003 	cmp	r2, r3
  3c:	c580300c 	strgt	r3, [r0, #12]
  40:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex5brain3lcd6columnEv:

00000000 <vex::brain::lcd::column()>:
   0:	e590000c 	ldr	r0, [r0, #12]
   4:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex5brain3lcd3rowEv:

00000000 <vex::brain::lcd::row()>:
   0:	e5900000 	ldr	r0, [r0]
   4:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex5brain3lcd9setOriginEll:

00000000 <vex::brain::lcd::setOrigin(long, long)>:
   0:	e2411001 	sub	r1, r1, #1
   4:	e5801124 	str	r1, [r0, #292]	; 0x124
   8:	e3a01001 	mov	r1, #1
   c:	e2422001 	sub	r2, r2, #1
  10:	e5802128 	str	r2, [r0, #296]	; 0x128
  14:	e1a02001 	mov	r2, r1
  18:	eafffffe 	b	0 <vex::brain::lcd::setOrigin(long, long)>

Disassembly of section .text._ZN3vex5brain3lcd7setFontENS_8fontTypeE:

00000000 <vex::brain::lcd::setFont(vex::fontType)>:
   0:	e351000a 	cmp	r1, #10
   4:	e92d4070 	push	{r4, r5, r6, lr}
   8:	e1a04000 	mov	r4, r0
   c:	e1a05001 	mov	r5, r1
  10:	8a000017 	bhi	74 <vex::brain::lcd::setFont(vex::fontType)+0x74>
  14:	e3a06001 	mov	r6, #1
  18:	e300230f 	movw	r2, #783	; 0x30f
  1c:	e1a03116 	lsl	r3, r6, r1
  20:	e0022003 	and	r2, r2, r3
  24:	e3520000 	cmp	r2, #0
  28:	1a000005 	bne	44 <vex::brain::lcd::setFont(vex::fontType)+0x44>
  2c:	e3130b01 	tst	r3, #1024	; 0x400
  30:	1a000005 	bne	4c <vex::brain::lcd::setFont(vex::fontType)+0x4c>
  34:	e31300f0 	tst	r3, #240	; 0xf0
  38:	0a00000d 	beq	74 <vex::brain::lcd::setFont(vex::fontType)+0x74>
  3c:	e59f01e8 	ldr	r0, [pc, #488]	; 22c <vex::brain::lcd::setFont(vex::fontType)+0x22c>
  40:	ea000002 	b	50 <vex::brain::lcd::setFont(vex::fontType)+0x50>
  44:	e59f01e4 	ldr	r0, [pc, #484]	; 230 <vex::brain::lcd::setFont(vex::fontType)+0x230>
  48:	ea000000 	b	50 <vex::brain::lcd::setFont(vex::fontType)+0x50>
  4c:	e59f01e0 	ldr	r0, [pc, #480]	; 234 <vex::brain::lcd::setFont(vex::fontType)+0x234>
  50:	ebfffffe 	bl	0 <vexDisplayFontNamedSet>
  54:	e1a00006 	mov	r0, r6
  58:	ebfffffe 	bl	0 <vexDisplayTextReference>
  5c:	e3a03014 	mov	r3, #20
  60:	e5843008 	str	r3, [r4, #8]
  64:	e3a0300a 	mov	r3, #10
  68:	e5843014 	str	r3, [r4, #20]
  6c:	e3a03004 	mov	r3, #4
  70:	e584301c 	str	r3, [r4, #28]
  74:	e3550009 	cmp	r5, #9
  78:	979ff105 	ldrls	pc, [pc, r5, lsl #2]
  7c:	ea00005d 	b	1f8 <vex::brain::lcd::setFont(vex::fontType)+0x1f8>
  80:	000000a8 	andeq	r0, r0, r8, lsr #1
  84:	000000b8 	strheq	r0, [r0], -r8
  88:	000000fc 	strdeq	r0, [r0], -ip
  8c:	0000012c 	andeq	r0, r0, ip, lsr #2
  90:	000000a8 	andeq	r0, r0, r8, lsr #1
  94:	000000b8 	strheq	r0, [r0], -r8
  98:	000000fc 	strdeq	r0, [r0], -ip
  9c:	0000012c 	andeq	r0, r0, ip, lsr #2
  a0:	0000015c 	andeq	r0, r0, ip, asr r1
  a4:	000001ac 	andeq	r0, r0, ip, lsr #3
  a8:	e3a00001 	mov	r0, #1
  ac:	e3a01003 	mov	r1, #3
  b0:	ebfffffe 	bl	0 <vexDisplayTextSize>
  b4:	ea00004f 	b	1f8 <vex::brain::lcd::setFont(vex::fontType)+0x1f8>
  b8:	e3a00001 	mov	r0, #1
  bc:	e3a01002 	mov	r1, #2
  c0:	ebfffffe 	bl	0 <vexDisplayTextSize>
  c4:	e5943008 	ldr	r3, [r4, #8]
  c8:	e0833083 	add	r3, r3, r3, lsl #1
  cc:	e0833fa3 	add	r3, r3, r3, lsr #31
  d0:	e1a030c3 	asr	r3, r3, #1
  d4:	e5843008 	str	r3, [r4, #8]
  d8:	e5943014 	ldr	r3, [r4, #20]
  dc:	e0833083 	add	r3, r3, r3, lsl #1
  e0:	e0833fa3 	add	r3, r3, r3, lsr #31
  e4:	e1a030c3 	asr	r3, r3, #1
  e8:	e5843014 	str	r3, [r4, #20]
  ec:	e594301c 	ldr	r3, [r4, #28]
  f0:	e0833083 	add	r3, r3, r3, lsl #1
  f4:	e1a030a3 	lsr	r3, r3, #1
  f8:	ea00003d 	b	1f4 <vex::brain::lcd::setFont(vex::fontType)+0x1f4>
  fc:	e3a00002 	mov	r0, #2
 100:	e3a01003 	mov	r1, #3
 104:	ebfffffe 	bl	0 <vexDisplayTextSize>
 108:	e5943008 	ldr	r3, [r4, #8]
 10c:	e1a03083 	lsl	r3, r3, #1
 110:	e5843008 	str	r3, [r4, #8]
 114:	e5943014 	ldr	r3, [r4, #20]
 118:	e1a03083 	lsl	r3, r3, #1
 11c:	e5843014 	str	r3, [r4, #20]
 120:	e594301c 	ldr	r3, [r4, #28]
 124:	e1a03083 	lsl	r3, r3, #1
 128:	ea000031 	b	1f4 <vex::brain::lcd::setFont(vex::fontType)+0x1f4>
 12c:	e3a00001 	mov	r0, #1
 130:	e1a01000 	mov	r1, r0
 134:	ebfffffe 	bl	0 <vexDisplayTextSize>
 138:	e5943008 	ldr	r3, [r4, #8]
 13c:	e0833083 	add	r3, r3, r3, lsl #1
 140:	e5843008 	str	r3, [r4, #8]
 144:	e5943014 	ldr	r3, [r4, #20]
 148:	e0833083 	add	r3, r3, r3, lsl #1
 14c:	e5843014 	str	r3, [r4, #20]
 150:	e594301c 	ldr	r3, [r4, #28]
 154:	e0833083 	add	r3, r3, r3, lsl #1
 158:	ea000025 	b	1f4 <vex::brain::lcd::setFont(vex::fontType)+0x1f4>
 15c:	e3a00001 	mov	r0, #1
 160:	e3a01004 	mov	r1, #4
 164:	ebfffffe 	bl	0 <vexDisplayTextSize>
 168:	e5943008 	ldr	r3, [r4, #8]
 16c:	e0833083 	add	r3, r3, r3, lsl #1
 170:	e2832003 	add	r2, r3, #3
 174:	e3530000 	cmp	r3, #0
 178:	b1a03002 	movlt	r3, r2
 17c:	e1a03143 	asr	r3, r3, #2
 180:	e5843008 	str	r3, [r4, #8]
 184:	e5943014 	ldr	r3, [r4, #20]
 188:	e0833083 	add	r3, r3, r3, lsl #1
 18c:	e2832003 	add	r2, r3, #3
 190:	e3530000 	cmp	r3, #0
 194:	b1a03002 	movlt	r3, r2
 198:	e1a03143 	asr	r3, r3, #2
 19c:	e5843014 	str	r3, [r4, #20]
 1a0:	e594301c 	ldr	r3, [r4, #28]
 1a4:	e0833083 	add	r3, r3, r3, lsl #1
 1a8:	ea000010 	b	1f0 <vex::brain::lcd::setFont(vex::fontType)+0x1f0>
 1ac:	e3a00001 	mov	r0, #1
 1b0:	e3a01005 	mov	r1, #5
 1b4:	ebfffffe 	bl	0 <vexDisplayTextSize>
 1b8:	e5940008 	ldr	r0, [r4, #8]
 1bc:	e3a01005 	mov	r1, #5
 1c0:	e0800080 	add	r0, r0, r0, lsl #1
 1c4:	ebfffffe 	bl	0 <__aeabi_idiv>
 1c8:	e3a01005 	mov	r1, #5
 1cc:	e5840008 	str	r0, [r4, #8]
 1d0:	e5940014 	ldr	r0, [r4, #20]
 1d4:	e0800080 	add	r0, r0, r0, lsl #1
 1d8:	ebfffffe 	bl	0 <__aeabi_idiv>
 1dc:	e594201c 	ldr	r2, [r4, #28]
 1e0:	e59f3050 	ldr	r3, [pc, #80]	; 238 <vex::brain::lcd::setFont(vex::fontType)+0x238>
 1e4:	e0822082 	add	r2, r2, r2, lsl #1
 1e8:	e0832392 	umull	r2, r3, r2, r3
 1ec:	e5840014 	str	r0, [r4, #20]
 1f0:	e1a03123 	lsr	r3, r3, #2
 1f4:	e584301c 	str	r3, [r4, #28]
 1f8:	e5941008 	ldr	r1, [r4, #8]
 1fc:	e3a000f0 	mov	r0, #240	; 0xf0
 200:	ebfffffe 	bl	0 <__aeabi_idiv>
 204:	e5941014 	ldr	r1, [r4, #20]
 208:	e5840004 	str	r0, [r4, #4]
 20c:	e3a00e1e 	mov	r0, #480	; 0x1e0
 210:	ebfffffe 	bl	0 <__aeabi_idiv>
 214:	e5941000 	ldr	r1, [r4]
 218:	e594200c 	ldr	r2, [r4, #12]
 21c:	e5840010 	str	r0, [r4, #16]
 220:	e1a00004 	mov	r0, r4
 224:	e8bd4070 	pop	{r4, r5, r6, lr}
 228:	eafffffe 	b	0 <vex::brain::lcd::setFont(vex::fontType)>
 22c:	0000000a 	andeq	r0, r0, sl
 230:	00000000 	andeq	r0, r0, r0
 234:	00000017 	andeq	r0, r0, r7, lsl r0
 238:	cccccccd 	stclgt	12, cr12, [ip], {205}	; 0xcd

Disassembly of section .text._ZN3vex5brain3lcdC2Ev:

00000000 <vex::brain::lcd::lcd()>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <vex::brain::lcd::lcd()>
   c:	e3a02000 	mov	r2, #0
  10:	e1a01000 	mov	r1, r0
  14:	e2840f4b 	add	r0, r4, #300	; 0x12c
  18:	ebfffffe 	bl	0 <vex::mevent::mevent(unsigned long, unsigned long)>
  1c:	ebfffffe 	bl	0 <vex::brain::lcd::lcd()>
  20:	e3a02001 	mov	r2, #1
  24:	e1a01000 	mov	r1, r0
  28:	e2840f4d 	add	r0, r4, #308	; 0x134
  2c:	ebfffffe 	bl	0 <vex::mevent::mevent(unsigned long, unsigned long)>
  30:	e3a03001 	mov	r3, #1
  34:	e5843000 	str	r3, [r4]
  38:	e584300c 	str	r3, [r4, #12]
  3c:	ebfffffe 	bl	0 <vexDisplayThemeIdGet>
  40:	e2505000 	subs	r5, r0, #0
  44:	1a000003 	bne	58 <vex::brain::lcd::lcd()+0x58>
  48:	e3e004ff 	mvn	r0, #-16777216	; 0xff000000
  4c:	ebfffffe 	bl	0 <vexDisplayForegroundColor>
  50:	e1a00005 	mov	r0, r5
  54:	ea000002 	b	64 <vex::brain::lcd::lcd()+0x64>
  58:	e3a00000 	mov	r0, #0
  5c:	ebfffffe 	bl	0 <vexDisplayForegroundColor>
  60:	e3e004ff 	mvn	r0, #-16777216	; 0xff000000
  64:	ebfffffe 	bl	0 <vexDisplayBackgroundColor>
  68:	e1a00004 	mov	r0, r4
  6c:	e3a01000 	mov	r1, #0
  70:	ebfffffe 	bl	0 <vex::brain::lcd::lcd()>
  74:	e3a03001 	mov	r3, #1
  78:	e1a00004 	mov	r0, r4
  7c:	e5843018 	str	r3, [r4, #24]
  80:	e3a03000 	mov	r3, #0
  84:	e5c43120 	strb	r3, [r4, #288]	; 0x120
  88:	e5843124 	str	r3, [r4, #292]	; 0x124
  8c:	e5843128 	str	r3, [r4, #296]	; 0x128
  90:	e8bd8038 	pop	{r3, r4, r5, pc}

Disassembly of section .text._ZN3vex5brainC2Ev:

00000000 <vex::brain::brain()>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <vex::brain::brain()>
   c:	e2845f4f 	add	r5, r4, #316	; 0x13c
  10:	e1a00005 	mov	r0, r5
  14:	ebfffffe 	bl	0 <vex::timer::timer()>
  18:	e59f3018 	ldr	r3, [pc, #24]	; 38 <vex::brain::brain()+0x38>
  1c:	e2840f51 	add	r0, r4, #324	; 0x144
  20:	e5931000 	ldr	r1, [r3]
  24:	ebfffffe 	bl	0 <vex::triport::triport(long)>
  28:	e1a00005 	mov	r0, r5
  2c:	ebfffffe 	bl	0 <vex::timer::clear()>
  30:	e1a00004 	mov	r0, r4
  34:	e8bd8038 	pop	{r3, r4, r5, pc}
  38:	00000000 	andeq	r0, r0, r0

Disassembly of section .text._ZN3vex5brain3lcd11setPenWidthEm:

00000000 <vex::brain::lcd::setPenWidth(unsigned long)>:
   0:	e3510020 	cmp	r1, #32
   4:	e92d4038 	push	{r3, r4, r5, lr}
   8:	31a04001 	movcc	r4, r1
   c:	23a04020 	movcs	r4, #32
  10:	e1a05000 	mov	r5, r0
  14:	e1a00004 	mov	r0, r4
  18:	ebfffffe 	bl	0 <vexDisplayPenSizeSet>
  1c:	e5854018 	str	r4, [r5, #24]
  20:	e8bd8038 	pop	{r3, r4, r5, pc}

Disassembly of section .text._ZN3vex5brain3lcd11setPenColorERKNS_5colorE:

00000000 <vex::brain::lcd::setPenColor(vex::color const&)>:
   0:	e92d4008 	push	{r3, lr}
   4:	e1a00001 	mov	r0, r1
   8:	ebfffffe 	bl	0 <vex::color::operator unsigned long() const>
   c:	e8bd4008 	pop	{r3, lr}
  10:	eafffffe 	b	0 <vexDisplayForegroundColor>

Disassembly of section .text._ZN3vex5brain3lcd12_setPenColorEm:

00000000 <vex::brain::lcd::_setPenColor(unsigned long)>:
   0:	e1a00001 	mov	r0, r1
   4:	eafffffe 	b	0 <vexDisplayForegroundColor>

Disassembly of section .text._ZN3vex5brain3lcd12setFillColorERKNS_5colorE:

00000000 <vex::brain::lcd::setFillColor(vex::color const&)>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e3a03000 	mov	r3, #0
   8:	e1a05000 	mov	r5, r0
   c:	e5c03120 	strb	r3, [r0, #288]	; 0x120
  10:	e1a00001 	mov	r0, r1
  14:	e1a04001 	mov	r4, r1
  18:	ebfffffe 	bl	0 <vex::color::isTransparent() const>
  1c:	e3500000 	cmp	r0, #0
  20:	e1a00004 	mov	r0, r4
  24:	13a03001 	movne	r3, #1
  28:	15c53120 	strbne	r3, [r5, #288]	; 0x120
  2c:	ebfffffe 	bl	0 <vex::color::operator unsigned long() const>
  30:	e8bd4038 	pop	{r3, r4, r5, lr}
  34:	eafffffe 	b	0 <vexDisplayBackgroundColor>

Disassembly of section .text._ZN3vex5brain3lcd13_setFillColorEm:

00000000 <vex::brain::lcd::_setFillColor(unsigned long)>:
   0:	e3a03000 	mov	r3, #0
   4:	e5c03120 	strb	r3, [r0, #288]	; 0x120
   8:	e1a00001 	mov	r0, r1
   c:	eafffffe 	b	0 <vexDisplayBackgroundColor>

Disassembly of section .text._ZN3vex5brain3lcd14getStringWidthEPKc:

00000000 <vex::brain::lcd::getStringWidth(char const*)>:
   0:	e1a00001 	mov	r0, r1
   4:	eafffffe 	b	0 <vexDisplayStringWidthGet>

Disassembly of section .text._ZN3vex5brain3lcd15getStringHeightEPKc:

00000000 <vex::brain::lcd::getStringHeight(char const*)>:
   0:	e1a00001 	mov	r0, r1
   4:	eafffffe 	b	0 <vexDisplayStringHeightGet>

Disassembly of section .text._ZN3vex5brain3lcd7printAtEllPKcz:

00000000 <vex::brain::lcd::printAt(long, long, char const*, ...)>:
   0:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
   4:	e92d403f 	push	{r0, r1, r2, r3, r4, r5, lr}
   8:	e28d3020 	add	r3, sp, #32
   c:	e5905124 	ldr	r5, [r0, #292]	; 0x124
  10:	e5904128 	ldr	r4, [r0, #296]	; 0x128
  14:	e3a00001 	mov	r0, #1
  18:	e0815005 	add	r5, r1, r5
  1c:	e58d300c 	str	r3, [sp, #12]
  20:	e0824004 	add	r4, r2, r4
  24:	ebfffffe 	bl	0 <vexDisplayTextReference>
  28:	e59d300c 	ldr	r3, [sp, #12]
  2c:	e1a00005 	mov	r0, r5
  30:	e1a01004 	mov	r1, r4
  34:	e3a02001 	mov	r2, #1
  38:	e58d3000 	str	r3, [sp]
  3c:	e59d301c 	ldr	r3, [sp, #28]
  40:	ebfffffe 	bl	0 <vexDisplayVPrintf>
  44:	e28dd010 	add	sp, sp, #16
  48:	e8bd4030 	pop	{r4, r5, lr}
  4c:	e28dd004 	add	sp, sp, #4
  50:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex5brain3lcd7printAtEllbPKcz:

00000000 <vex::brain::lcd::printAt(long, long, bool, char const*, ...)>:
   0:	e92d407f 	push	{r0, r1, r2, r3, r4, r5, r6, lr}
   4:	e1a06003 	mov	r6, r3
   8:	e5905124 	ldr	r5, [r0, #292]	; 0x124
   c:	e28d3024 	add	r3, sp, #36	; 0x24
  10:	e5904128 	ldr	r4, [r0, #296]	; 0x128
  14:	e3a00001 	mov	r0, #1
  18:	e0815005 	add	r5, r1, r5
  1c:	e58d300c 	str	r3, [sp, #12]
  20:	e0824004 	add	r4, r2, r4
  24:	ebfffffe 	bl	0 <vexDisplayTextReference>
  28:	e59d300c 	ldr	r3, [sp, #12]
  2c:	e1a00005 	mov	r0, r5
  30:	e1a01004 	mov	r1, r4
  34:	e1a02006 	mov	r2, r6
  38:	e58d3000 	str	r3, [sp]
  3c:	e59d3020 	ldr	r3, [sp, #32]
  40:	ebfffffe 	bl	0 <vexDisplayVPrintf>
  44:	e28dd010 	add	sp, sp, #16
  48:	e8bd8070 	pop	{r4, r5, r6, pc}

Disassembly of section .text._ZN3vex5brain3lcd12_clearScreenEm:

00000000 <vex::brain::lcd::_clearScreen(unsigned long)>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a05001 	mov	r5, r1
   8:	ebfffffe 	bl	0 <vexDisplayBackgroundColorGet>
   c:	e1a04000 	mov	r4, r0
  10:	e1a00005 	mov	r0, r5
  14:	ebfffffe 	bl	0 <vexDisplayBackgroundColor>
  18:	e3a00000 	mov	r0, #0
  1c:	e1a01000 	mov	r1, r0
  20:	e300310f 	movw	r3, #271	; 0x10f
  24:	e30021df 	movw	r2, #479	; 0x1df
  28:	ebfffffe 	bl	0 <vexDisplayRectClear>
  2c:	e1a00004 	mov	r0, r4
  30:	e8bd4038 	pop	{r3, r4, r5, lr}
  34:	eafffffe 	b	0 <vexDisplayBackgroundColor>

Disassembly of section .text._ZN3vex5brain3lcd11clearScreenERKNS_5colorE:

00000000 <vex::brain::lcd::clearScreen(vex::color const&)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e1a00001 	mov	r0, r1
   c:	ebfffffe 	bl	0 <vex::color::operator unsigned long() const>
  10:	e1a01000 	mov	r1, r0
  14:	e1a00004 	mov	r0, r4
  18:	e8bd4010 	pop	{r4, lr}
  1c:	eafffffe 	b	0 <vex::brain::lcd::clearScreen(vex::color const&)>

Disassembly of section .text._ZN3vex5brain3lcd11clearScreenEv:

00000000 <vex::brain::lcd::clearScreen()>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <vexDisplayThemeIdGet>
   c:	e3500000 	cmp	r0, #0
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	159f1004 	ldrne	r1, [pc, #4]	; 24 <vex::brain::lcd::clearScreen()+0x24>
  1c:	059f1004 	ldreq	r1, [pc, #4]	; 28 <vex::brain::lcd::clearScreen()+0x28>
  20:	eafffffe 	b	0 <vex::brain::lcd::clearScreen()>
	...

Disassembly of section .text._ZN3vex5brain3lcd9drawPixelEii:

00000000 <vex::brain::lcd::drawPixel(int, int)>:
   0:	e5903128 	ldr	r3, [r0, #296]	; 0x128
   4:	e590c124 	ldr	ip, [r0, #292]	; 0x124
   8:	e081000c 	add	r0, r1, ip
   c:	e0821003 	add	r1, r2, r3
  10:	eafffffe 	b	0 <vexDisplayPixelSet>

Disassembly of section .text._ZN3vex5brain3lcd8drawLineEiiii:

00000000 <vex::brain::lcd::drawLine(int, int, int, int)>:
   0:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
   4:	e24dd024 	sub	sp, sp, #36	; 0x24
   8:	e59d8048 	ldr	r8, [sp, #72]	; 0x48
   c:	e1510003 	cmp	r1, r3
  10:	01520008 	cmpeq	r2, r8
  14:	1a000002 	bne	24 <vex::brain::lcd::drawLine(int, int, int, int)+0x24>
  18:	e28dd024 	add	sp, sp, #36	; 0x24
  1c:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
  20:	eafffffe 	b	0 <vex::brain::lcd::drawLine(int, int, int, int)>
  24:	e1a05000 	mov	r5, r0
  28:	e1a06003 	mov	r6, r3
  2c:	e1a07002 	mov	r7, r2
  30:	e1a09001 	mov	r9, r1
  34:	ebfffffe 	bl	0 <vexDisplayPenSizeGet>
  38:	e5953124 	ldr	r3, [r5, #292]	; 0x124
  3c:	e0892003 	add	r2, r9, r3
  40:	e58d2004 	str	r2, [sp, #4]
  44:	e5952128 	ldr	r2, [r5, #296]	; 0x128
  48:	e0863003 	add	r3, r6, r3
  4c:	e58d300c 	str	r3, [sp, #12]
  50:	e0871002 	add	r1, r7, r2
  54:	e0883002 	add	r3, r8, r2
  58:	e58d1008 	str	r1, [sp, #8]
  5c:	e58d3010 	str	r3, [sp, #16]
  60:	e3500001 	cmp	r0, #1
  64:	e1a04000 	mov	r4, r0
  68:	e5850018 	str	r0, [r5, #24]
  6c:	1a000004 	bne	84 <vex::brain::lcd::drawLine(int, int, int, int)+0x84>
  70:	e59d0004 	ldr	r0, [sp, #4]
  74:	e59d200c 	ldr	r2, [sp, #12]
  78:	e28dd024 	add	sp, sp, #36	; 0x24
  7c:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
  80:	eafffffe 	b	0 <vexDisplayLineDraw>
  84:	e59d300c 	ldr	r3, [sp, #12]
  88:	e59d2004 	ldr	r2, [sp, #4]
  8c:	e0627003 	rsb	r7, r2, r3
  90:	e59d3010 	ldr	r3, [sp, #16]
  94:	e59d2008 	ldr	r2, [sp, #8]
  98:	e0626003 	rsb	r6, r2, r3
  9c:	e0000696 	mul	r0, r6, r6
  a0:	e0200797 	mla	r0, r7, r7, r0
  a4:	ee070a90 	vmov	s15, r0
  a8:	eef80be7 	vcvt.f64.s32	d16, s15
  ac:	ec510b30 	vmov	r0, r1, d16
  b0:	ebfffffe 	bl	0 <sqrt>
  b4:	ec410b30 	vmov	d16, r0, r1
  b8:	eefd7be0 	vcvt.s32.f64	s15, d16
  bc:	ee173a90 	vmov	r3, s15
  c0:	edcd7a06 	vstr	s15, [sp, #24]
  c4:	e3530000 	cmp	r3, #0
  c8:	0a00007b 	beq	2bc <vex::brain::lcd::drawLine(int, int, int, int)+0x2bc>
  cc:	e0844fa4 	add	r4, r4, r4, lsr #31
  d0:	e3560000 	cmp	r6, #0
  d4:	e1a030c4 	asr	r3, r4, #1
  d8:	e58d3014 	str	r3, [sp, #20]
  dc:	e2634000 	rsb	r4, r3, #0
  e0:	1a00000a 	bne	110 <vex::brain::lcd::drawLine(int, int, int, int)+0x110>
  e4:	e59d3014 	ldr	r3, [sp, #20]
  e8:	e1540003 	cmp	r4, r3
  ec:	aa000072 	bge	2bc <vex::brain::lcd::drawLine(int, int, int, int)+0x2bc>
  f0:	e99d0009 	ldmib	sp, {r0, r3}
  f4:	e59d200c 	ldr	r2, [sp, #12]
  f8:	e0841003 	add	r1, r4, r3
  fc:	e59d3010 	ldr	r3, [sp, #16]
 100:	e0843003 	add	r3, r4, r3
 104:	e2844001 	add	r4, r4, #1
 108:	ebfffffe 	bl	0 <vexDisplayLineDraw>
 10c:	eafffff4 	b	e4 <vex::brain::lcd::drawLine(int, int, int, int)+0xe4>
 110:	e3570000 	cmp	r7, #0
 114:	1a00000b 	bne	148 <vex::brain::lcd::drawLine(int, int, int, int)+0x148>
 118:	e59d3014 	ldr	r3, [sp, #20]
 11c:	e1540003 	cmp	r4, r3
 120:	aa000065 	bge	2bc <vex::brain::lcd::drawLine(int, int, int, int)+0x2bc>
 124:	e59d3004 	ldr	r3, [sp, #4]
 128:	e59d1008 	ldr	r1, [sp, #8]
 12c:	e0840003 	add	r0, r4, r3
 130:	e59d300c 	ldr	r3, [sp, #12]
 134:	e0842003 	add	r2, r4, r3
 138:	e59d3010 	ldr	r3, [sp, #16]
 13c:	ebfffffe 	bl	0 <vexDisplayLineDraw>
 140:	e2844001 	add	r4, r4, #1
 144:	eafffff3 	b	118 <vex::brain::lcd::drawLine(int, int, int, int)+0x118>
 148:	e1a05fa7 	lsr	r5, r7, #31
 14c:	e0272fc7 	eor	r2, r7, r7, asr #31
 150:	e0263fc6 	eor	r3, r6, r6, asr #31
 154:	e0855007 	add	r5, r5, r7
 158:	e0868fa6 	add	r8, r6, r6, lsr #31
 15c:	e0422fc7 	sub	r2, r2, r7, asr #31
 160:	e0433fc6 	sub	r3, r3, r6, asr #31
 164:	e1a050c5 	asr	r5, r5, #1
 168:	e1a080c8 	asr	r8, r8, #1
 16c:	e1520003 	cmp	r2, r3
 170:	e0255497 	mla	r5, r7, r4, r5
 174:	e0288496 	mla	r8, r6, r4, r8
 178:	ba000027 	blt	21c <vex::brain::lcd::drawLine(int, int, int, int)+0x21c>
 17c:	e59d3014 	ldr	r3, [sp, #20]
 180:	e1540003 	cmp	r4, r3
 184:	aa00004c 	bge	2bc <vex::brain::lcd::drawLine(int, int, int, int)+0x2bc>
 188:	e59d1018 	ldr	r1, [sp, #24]
 18c:	e1a00005 	mov	r0, r5
 190:	ebfffffe 	bl	0 <__aeabi_idiv>
 194:	e59d1018 	ldr	r1, [sp, #24]
 198:	e2844001 	add	r4, r4, #1
 19c:	e0855007 	add	r5, r5, r7
 1a0:	e1a09000 	mov	r9, r0
 1a4:	e1a00008 	mov	r0, r8
 1a8:	ebfffffe 	bl	0 <__aeabi_idiv>
 1ac:	e59d3004 	ldr	r3, [sp, #4]
 1b0:	e0888006 	add	r8, r8, r6
 1b4:	e060c003 	rsb	ip, r0, r3
 1b8:	e59d3008 	ldr	r3, [sp, #8]
 1bc:	e58dc01c 	str	ip, [sp, #28]
 1c0:	e083b009 	add	fp, r3, r9
 1c4:	e59d300c 	ldr	r3, [sp, #12]
 1c8:	e060a003 	rsb	sl, r0, r3
 1cc:	e59d3010 	ldr	r3, [sp, #16]
 1d0:	e1a0000c 	mov	r0, ip
 1d4:	e1a0100b 	mov	r1, fp
 1d8:	e0839009 	add	r9, r3, r9
 1dc:	e1a0200a 	mov	r2, sl
 1e0:	e1a03009 	mov	r3, r9
 1e4:	ebfffffe 	bl	0 <vexDisplayLineDraw>
 1e8:	e59dc01c 	ldr	ip, [sp, #28]
 1ec:	e1a0100b 	mov	r1, fp
 1f0:	e28a2001 	add	r2, sl, #1
 1f4:	e28c0001 	add	r0, ip, #1
 1f8:	e1a03009 	mov	r3, r9
 1fc:	ebfffffe 	bl	0 <vexDisplayLineDraw>
 200:	e59dc01c 	ldr	ip, [sp, #28]
 204:	e1a0100b 	mov	r1, fp
 208:	e24a2001 	sub	r2, sl, #1
 20c:	e24c0001 	sub	r0, ip, #1
 210:	e1a03009 	mov	r3, r9
 214:	ebfffffe 	bl	0 <vexDisplayLineDraw>
 218:	eaffffd7 	b	17c <vex::brain::lcd::drawLine(int, int, int, int)+0x17c>
 21c:	e59d3014 	ldr	r3, [sp, #20]
 220:	e1540003 	cmp	r4, r3
 224:	aa000024 	bge	2bc <vex::brain::lcd::drawLine(int, int, int, int)+0x2bc>
 228:	e59d1018 	ldr	r1, [sp, #24]
 22c:	e1a00005 	mov	r0, r5
 230:	ebfffffe 	bl	0 <__aeabi_idiv>
 234:	e59d1018 	ldr	r1, [sp, #24]
 238:	e2844001 	add	r4, r4, #1
 23c:	e0855007 	add	r5, r5, r7
 240:	e1a09000 	mov	r9, r0
 244:	e1a00008 	mov	r0, r8
 248:	ebfffffe 	bl	0 <__aeabi_idiv>
 24c:	e59d3004 	ldr	r3, [sp, #4]
 250:	e0888006 	add	r8, r8, r6
 254:	e060c003 	rsb	ip, r0, r3
 258:	e59d3008 	ldr	r3, [sp, #8]
 25c:	e58dc01c 	str	ip, [sp, #28]
 260:	e083b009 	add	fp, r3, r9
 264:	e59d300c 	ldr	r3, [sp, #12]
 268:	e060a003 	rsb	sl, r0, r3
 26c:	e59d3010 	ldr	r3, [sp, #16]
 270:	e1a0000c 	mov	r0, ip
 274:	e1a0100b 	mov	r1, fp
 278:	e0839009 	add	r9, r3, r9
 27c:	e1a0200a 	mov	r2, sl
 280:	e1a03009 	mov	r3, r9
 284:	ebfffffe 	bl	0 <vexDisplayLineDraw>
 288:	e59dc01c 	ldr	ip, [sp, #28]
 28c:	e28b1001 	add	r1, fp, #1
 290:	e1a0200a 	mov	r2, sl
 294:	e2893001 	add	r3, r9, #1
 298:	e1a0000c 	mov	r0, ip
 29c:	ebfffffe 	bl	0 <vexDisplayLineDraw>
 2a0:	e59dc01c 	ldr	ip, [sp, #28]
 2a4:	e24b1001 	sub	r1, fp, #1
 2a8:	e1a0200a 	mov	r2, sl
 2ac:	e2493001 	sub	r3, r9, #1
 2b0:	e1a0000c 	mov	r0, ip
 2b4:	ebfffffe 	bl	0 <vexDisplayLineDraw>
 2b8:	eaffffd7 	b	21c <vex::brain::lcd::drawLine(int, int, int, int)+0x21c>
 2bc:	e28dd024 	add	sp, sp, #36	; 0x24
 2c0:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}

Disassembly of section .text._ZN3vex5brain3lcd13drawRectangleEiiii:

00000000 <vex::brain::lcd::drawRectangle(int, int, int, int)>:
   0:	e92d4ff1 	push	{r0, r4, r5, r6, r7, r8, r9, sl, fp, lr}
   4:	e1a08000 	mov	r8, r0
   8:	e1a0b003 	mov	fp, r3
   c:	e5d83120 	ldrb	r3, [r8, #288]	; 0x120
  10:	e5905124 	ldr	r5, [r0, #292]	; 0x124
  14:	e3530000 	cmp	r3, #0
  18:	e5900128 	ldr	r0, [r0, #296]	; 0x128
  1c:	e59da028 	ldr	sl, [sp, #40]	; 0x28
  20:	e0815005 	add	r5, r1, r5
  24:	e0826000 	add	r6, r2, r0
  28:	1a000006 	bne	48 <vex::brain::lcd::drawRectangle(int, int, int, int)+0x48>
  2c:	e085200b 	add	r2, r5, fp
  30:	e086300a 	add	r3, r6, sl
  34:	e1a00005 	mov	r0, r5
  38:	e1a01006 	mov	r1, r6
  3c:	e2422001 	sub	r2, r2, #1
  40:	e2433001 	sub	r3, r3, #1
  44:	ebfffffe 	bl	0 <vexDisplayRectClear>
  48:	ebfffffe 	bl	0 <vexDisplayPenSizeGet>
  4c:	e3500001 	cmp	r0, #1
  50:	e5880018 	str	r0, [r8, #24]
  54:	1a000008 	bne	7c <vex::brain::lcd::drawRectangle(int, int, int, int)+0x7c>
  58:	e085200b 	add	r2, r5, fp
  5c:	e086300a 	add	r3, r6, sl
  60:	e1a00005 	mov	r0, r5
  64:	e1a01006 	mov	r1, r6
  68:	e2422001 	sub	r2, r2, #1
  6c:	e2433001 	sub	r3, r3, #1
  70:	e28dd004 	add	sp, sp, #4
  74:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
  78:	eafffffe 	b	0 <vexDisplayRectDraw>
  7c:	e0807fa0 	add	r7, r0, r0, lsr #31
  80:	e1a070c7 	asr	r7, r7, #1
  84:	e0679005 	rsb	r9, r7, r5
  88:	e0855000 	add	r5, r5, r0
  8c:	e085500b 	add	r5, r5, fp
  90:	e0860000 	add	r0, r6, r0
  94:	e245b001 	sub	fp, r5, #1
  98:	e080400a 	add	r4, r0, sl
  9c:	e0677006 	rsb	r7, r7, r6
  a0:	e3a06000 	mov	r6, #0
  a4:	e5982018 	ldr	r2, [r8, #24]
  a8:	e0653004 	rsb	r3, r5, r4
  ac:	e083300b 	add	r3, r3, fp
  b0:	e0861007 	add	r1, r6, r7
  b4:	e1560002 	cmp	r6, r2
  b8:	e0860009 	add	r0, r6, r9
  bc:	aa000004 	bge	d4 <vex::brain::lcd::drawRectangle(int, int, int, int)+0xd4>
  c0:	e1a0200b 	mov	r2, fp
  c4:	e2866001 	add	r6, r6, #1
  c8:	ebfffffe 	bl	0 <vexDisplayRectDraw>
  cc:	e24bb001 	sub	fp, fp, #1
  d0:	eafffff3 	b	a4 <vex::brain::lcd::drawRectangle(int, int, int, int)+0xa4>
  d4:	e28dd004 	add	sp, sp, #4
  d8:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}

Disassembly of section .text._ZN3vex5brain3lcd14_drawRectangleEiiiim:

00000000 <vex::brain::lcd::_drawRectangle(int, int, int, int, unsigned long)>:
   0:	e92d47f3 	push	{r0, r1, r4, r5, r6, r7, r8, r9, sl, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e1a06003 	mov	r6, r3
   c:	e1a08001 	mov	r8, r1
  10:	e1a07002 	mov	r7, r2
  14:	e59d9028 	ldr	r9, [sp, #40]	; 0x28
  18:	e59da02c 	ldr	sl, [sp, #44]	; 0x2c
  1c:	ebfffffe 	bl	0 <vexDisplayBackgroundColorGet>
  20:	e5d43120 	ldrb	r3, [r4, #288]	; 0x120
  24:	e3530000 	cmp	r3, #0
  28:	e1a05000 	mov	r5, r0
  2c:	1a000001 	bne	38 <vex::brain::lcd::_drawRectangle(int, int, int, int, unsigned long)+0x38>
  30:	e1a0000a 	mov	r0, sl
  34:	ebfffffe 	bl	0 <vexDisplayBackgroundColor>
  38:	e1a03006 	mov	r3, r6
  3c:	e58d9000 	str	r9, [sp]
  40:	e1a00004 	mov	r0, r4
  44:	e1a01008 	mov	r1, r8
  48:	e1a02007 	mov	r2, r7
  4c:	ebfffffe 	bl	0 <vex::brain::lcd::_drawRectangle(int, int, int, int, unsigned long)>
  50:	e5d43120 	ldrb	r3, [r4, #288]	; 0x120
  54:	e3530000 	cmp	r3, #0
  58:	1a000003 	bne	6c <vex::brain::lcd::_drawRectangle(int, int, int, int, unsigned long)+0x6c>
  5c:	e1a00005 	mov	r0, r5
  60:	e28dd008 	add	sp, sp, #8
  64:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
  68:	eafffffe 	b	0 <vexDisplayBackgroundColor>
  6c:	e28dd008 	add	sp, sp, #8
  70:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}

Disassembly of section .text._ZN3vex5brain3lcd13drawRectangleEiiiiRKNS_5colorE:

00000000 <vex::brain::lcd::drawRectangle(int, int, int, int, vex::color const&)>:
   0:	e92d41f3 	push	{r0, r1, r4, r5, r6, r7, r8, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e5d05120 	ldrb	r5, [r0, #288]	; 0x120
   c:	e1a06003 	mov	r6, r3
  10:	e3a03000 	mov	r3, #0
  14:	e5c03120 	strb	r3, [r0, #288]	; 0x120
  18:	e59d0024 	ldr	r0, [sp, #36]	; 0x24
  1c:	e1a08001 	mov	r8, r1
  20:	e1a07002 	mov	r7, r2
  24:	ebfffffe 	bl	0 <vex::color::isTransparent() const>
  28:	e3500000 	cmp	r0, #0
  2c:	e59d0024 	ldr	r0, [sp, #36]	; 0x24
  30:	13a03001 	movne	r3, #1
  34:	15c43120 	strbne	r3, [r4, #288]	; 0x120
  38:	ebfffffe 	bl	0 <vex::color::operator unsigned long() const>
  3c:	e59d3020 	ldr	r3, [sp, #32]
  40:	e1a01008 	mov	r1, r8
  44:	e1a02007 	mov	r2, r7
  48:	e58d3000 	str	r3, [sp]
  4c:	e1a03006 	mov	r3, r6
  50:	e58d0004 	str	r0, [sp, #4]
  54:	e1a00004 	mov	r0, r4
  58:	ebfffffe 	bl	0 <vex::brain::lcd::drawRectangle(int, int, int, int, vex::color const&)>
  5c:	e5c45120 	strb	r5, [r4, #288]	; 0x120
  60:	e28dd008 	add	sp, sp, #8
  64:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

Disassembly of section .text._ZN3vex5brain3lcd10drawCircleEiii:

00000000 <vex::brain::lcd::drawCircle(int, int, int)>:
   0:	e92d43f8 	push	{r3, r4, r5, r6, r7, r8, r9, lr}
   4:	e1a07003 	mov	r7, r3
   8:	e5d03120 	ldrb	r3, [r0, #288]	; 0x120
   c:	e1a06000 	mov	r6, r0
  10:	e5904124 	ldr	r4, [r0, #292]	; 0x124
  14:	e5905128 	ldr	r5, [r0, #296]	; 0x128
  18:	e3530000 	cmp	r3, #0
  1c:	e0814004 	add	r4, r1, r4
  20:	e0825005 	add	r5, r2, r5
  24:	1a000003 	bne	38 <vex::brain::lcd::drawCircle(int, int, int)+0x38>
  28:	e1a00004 	mov	r0, r4
  2c:	e1a01005 	mov	r1, r5
  30:	e1a02007 	mov	r2, r7
  34:	ebfffffe 	bl	0 <vexDisplayCircleClear>
  38:	ebfffffe 	bl	0 <vexDisplayPenSizeGet>
  3c:	e3500001 	cmp	r0, #1
  40:	e5860018 	str	r0, [r6, #24]
  44:	10800fa0 	addne	r0, r0, r0, lsr #31
  48:	13a08000 	movne	r8, #0
  4c:	104770c0 	subne	r7, r7, r0, asr #1
  50:	1a000004 	bne	68 <vex::brain::lcd::drawCircle(int, int, int)+0x68>
  54:	e1a00004 	mov	r0, r4
  58:	e1a01005 	mov	r1, r5
  5c:	e1a02007 	mov	r2, r7
  60:	e8bd43f8 	pop	{r3, r4, r5, r6, r7, r8, r9, lr}
  64:	eafffffe 	b	0 <vexDisplayCircleDraw>
  68:	e5963018 	ldr	r3, [r6, #24]
  6c:	e0889007 	add	r9, r8, r7
  70:	e1580003 	cmp	r8, r3
  74:	aa000009 	bge	a0 <vex::brain::lcd::drawCircle(int, int, int)+0xa0>
  78:	e1a00004 	mov	r0, r4
  7c:	e1a01005 	mov	r1, r5
  80:	e1a02009 	mov	r2, r9
  84:	e2888001 	add	r8, r8, #1
  88:	ebfffffe 	bl	0 <vexDisplayCircleDraw>
  8c:	e1a00004 	mov	r0, r4
  90:	e2851001 	add	r1, r5, #1
  94:	e1a02009 	mov	r2, r9
  98:	ebfffffe 	bl	0 <vexDisplayCircleDraw>
  9c:	eafffff1 	b	68 <vex::brain::lcd::drawCircle(int, int, int)+0x68>
  a0:	e8bd83f8 	pop	{r3, r4, r5, r6, r7, r8, r9, pc}

Disassembly of section .text._ZN3vex5brain3lcd11_drawCircleEiiim:

00000000 <vex::brain::lcd::_drawCircle(int, int, int, unsigned long)>:
   0:	e92d43f8 	push	{r3, r4, r5, r6, r7, r8, r9, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e1a06003 	mov	r6, r3
   c:	e1a08001 	mov	r8, r1
  10:	e1a07002 	mov	r7, r2
  14:	e59d9020 	ldr	r9, [sp, #32]
  18:	ebfffffe 	bl	0 <vexDisplayBackgroundColorGet>
  1c:	e5d43120 	ldrb	r3, [r4, #288]	; 0x120
  20:	e3530000 	cmp	r3, #0
  24:	e1a05000 	mov	r5, r0
  28:	1a000001 	bne	34 <vex::brain::lcd::_drawCircle(int, int, int, unsigned long)+0x34>
  2c:	e1a00009 	mov	r0, r9
  30:	ebfffffe 	bl	0 <vexDisplayBackgroundColor>
  34:	e1a03006 	mov	r3, r6
  38:	e1a00004 	mov	r0, r4
  3c:	e1a01008 	mov	r1, r8
  40:	e1a02007 	mov	r2, r7
  44:	ebfffffe 	bl	0 <vex::brain::lcd::_drawCircle(int, int, int, unsigned long)>
  48:	e5d43120 	ldrb	r3, [r4, #288]	; 0x120
  4c:	e3530000 	cmp	r3, #0
  50:	18bd83f8 	popne	{r3, r4, r5, r6, r7, r8, r9, pc}
  54:	e1a00005 	mov	r0, r5
  58:	e8bd43f8 	pop	{r3, r4, r5, r6, r7, r8, r9, lr}
  5c:	eafffffe 	b	0 <vexDisplayBackgroundColor>

Disassembly of section .text._ZN3vex5brain3lcd10drawCircleEiiiRKNS_5colorE:

00000000 <vex::brain::lcd::drawCircle(int, int, int, vex::color const&)>:
   0:	e92d41f3 	push	{r0, r1, r4, r5, r6, r7, r8, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e5d05120 	ldrb	r5, [r0, #288]	; 0x120
   c:	e1a06003 	mov	r6, r3
  10:	e3a03000 	mov	r3, #0
  14:	e5c03120 	strb	r3, [r0, #288]	; 0x120
  18:	e59d0020 	ldr	r0, [sp, #32]
  1c:	e1a08001 	mov	r8, r1
  20:	e1a07002 	mov	r7, r2
  24:	ebfffffe 	bl	0 <vex::color::isTransparent() const>
  28:	e3500000 	cmp	r0, #0
  2c:	e59d0020 	ldr	r0, [sp, #32]
  30:	13a03001 	movne	r3, #1
  34:	15c43120 	strbne	r3, [r4, #288]	; 0x120
  38:	ebfffffe 	bl	0 <vex::color::operator unsigned long() const>
  3c:	e1a01008 	mov	r1, r8
  40:	e1a02007 	mov	r2, r7
  44:	e1a03006 	mov	r3, r6
  48:	e58d0000 	str	r0, [sp]
  4c:	e1a00004 	mov	r0, r4
  50:	ebfffffe 	bl	0 <vex::brain::lcd::drawCircle(int, int, int, vex::color const&)>
  54:	e5c45120 	strb	r5, [r4, #288]	; 0x120
  58:	e28dd008 	add	sp, sp, #8
  5c:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

Disassembly of section .text._ZN3vex5brain3lcd7newLineEv:

00000000 <vex::brain::lcd::newLine()>:
   0:	e5903000 	ldr	r3, [r0]
   4:	e5902004 	ldr	r2, [r0, #4]
   8:	e1530002 	cmp	r3, r2
   c:	b2833001 	addlt	r3, r3, #1
  10:	b5803000 	strlt	r3, [r0]
  14:	e3a03001 	mov	r3, #1
  18:	e580300c 	str	r3, [r0, #12]
  1c:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex5brain3lcd9xPositionEv:

00000000 <vex::brain::lcd::xPosition()>:
   0:	e92d401f 	push	{r0, r1, r2, r3, r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e1a0000d 	mov	r0, sp
   c:	ebfffffe 	bl	0 <vexTouchDataGet>
  10:	e1dd00f2 	ldrsh	r0, [sp, #2]
  14:	e5943124 	ldr	r3, [r4, #292]	; 0x124
  18:	e0630000 	rsb	r0, r3, r0
  1c:	e28dd010 	add	sp, sp, #16
  20:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex5brain3lcd9yPositionEv:

00000000 <vex::brain::lcd::yPosition()>:
   0:	e92d401f 	push	{r0, r1, r2, r3, r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e1a0000d 	mov	r0, sp
   c:	ebfffffe 	bl	0 <vexTouchDataGet>
  10:	e1dd00f4 	ldrsh	r0, [sp, #4]
  14:	e5943128 	ldr	r3, [r4, #296]	; 0x128
  18:	e0630000 	rsb	r0, r3, r0
  1c:	e28dd010 	add	sp, sp, #16
  20:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex5brain3lcd8pressingEv:

00000000 <vex::brain::lcd::pressing()>:
   0:	e92d401f 	push	{r0, r1, r2, r3, r4, lr}
   4:	e1a0000d 	mov	r0, sp
   8:	ebfffffe 	bl	0 <vexTouchDataGet>
   c:	e5dd0000 	ldrb	r0, [sp]
  10:	e2900000 	adds	r0, r0, #0
  14:	13a00001 	movne	r0, #1
  18:	e28dd014 	add	sp, sp, #20
  1c:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

Disassembly of section .text._ZN3vex5brain3lcd7pressedEPFvvE:

00000000 <vex::brain::lcd::pressed(void (*)())>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vex::brain::lcd::pressed(void (*)())>
   c:	e1a02004 	mov	r2, r4
  10:	e3a01001 	mov	r1, #1
  14:	e8bd4010 	pop	{r4, lr}
  18:	eafffffe 	b	0 <vex::event::init(unsigned long, unsigned long, void (*)())>

Disassembly of section .text._ZN3vex5brain3lcd7pressedEPFvPvES2_:

00000000 <vex::brain::lcd::pressed(void (*)(void*), void*)>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05001 	mov	r5, r1
   8:	e1a04002 	mov	r4, r2
   c:	ebfffffe 	bl	0 <vex::brain::lcd::pressed(void (*)(void*), void*)>
  10:	e1a02005 	mov	r2, r5
  14:	e1a03004 	mov	r3, r4
  18:	e3a01001 	mov	r1, #1
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	eafffffe 	b	0 <vex::event::init(unsigned long, unsigned long, void (*)(void*), void*)>

Disassembly of section .text._ZN3vex5brain3lcd8releasedEPFvvE:

00000000 <vex::brain::lcd::released(void (*)())>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vex::brain::lcd::released(void (*)())>
   c:	e1a02004 	mov	r2, r4
  10:	e3a01002 	mov	r1, #2
  14:	e8bd4010 	pop	{r4, lr}
  18:	eafffffe 	b	0 <vex::event::init(unsigned long, unsigned long, void (*)())>

Disassembly of section .text._ZN3vex5brain3lcd8releasedEPFvPvES2_:

00000000 <vex::brain::lcd::released(void (*)(void*), void*)>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05001 	mov	r5, r1
   8:	e1a04002 	mov	r4, r2
   c:	ebfffffe 	bl	0 <vex::brain::lcd::released(void (*)(void*), void*)>
  10:	e1a02005 	mov	r2, r5
  14:	e1a03004 	mov	r3, r4
  18:	e3a01002 	mov	r1, #2
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	eafffffe 	b	0 <vex::event::init(unsigned long, unsigned long, void (*)(void*), void*)>

Disassembly of section .text._ZN3vex5brain3lcd6renderEv:

00000000 <vex::brain::lcd::render()>:
   0:	e3a00001 	mov	r0, #1
   4:	e1a01000 	mov	r1, r0
   8:	eafffffe 	b	0 <vexDisplayRender>

Disassembly of section .text._ZN3vex5brain3lcd6renderEbb:

00000000 <vex::brain::lcd::render(bool, bool)>:
   0:	e1a00001 	mov	r0, r1
   4:	e1a01002 	mov	r1, r2
   8:	eafffffe 	b	0 <vexDisplayRender>

Disassembly of section .text._ZN3vex5brain3lcd13renderDisableEv:

00000000 <vex::brain::lcd::renderDisable()>:
   0:	eafffffe 	b	0 <vexDisplayDoubleBufferDisable>

Disassembly of section .text._ZN3vex5brain3lcd14waitForRefreshEv:

00000000 <vex::brain::lcd::waitForRefresh()>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDisplayClearVsyncState>
   8:	ebfffffe 	bl	0 <vexDisplayGetVsyncState>
   c:	e3500000 	cmp	r0, #0
  10:	1a000001 	bne	1c <vex::brain::lcd::waitForRefresh()+0x1c>
  14:	ebfffffe 	bl	0 <vexTaskYield>
  18:	eafffffa 	b	8 <vex::brain::lcd::waitForRefresh()+0x8>
  1c:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text._ZN3vex5brain3lcd13setClipRegionEiiii:

00000000 <vex::brain::lcd::setClipRegion(int, int, int, int)>:
   0:	e590c124 	ldr	ip, [r0, #292]	; 0x124
   4:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
   8:	e1a0e000 	mov	lr, r0
   c:	e081000c 	add	r0, r1, ip
  10:	e59e1128 	ldr	r1, [lr, #296]	; 0x128
  14:	e0821001 	add	r1, r2, r1
  18:	e0802003 	add	r2, r0, r3
  1c:	e59d3004 	ldr	r3, [sp, #4]
  20:	e2422001 	sub	r2, r2, #1
  24:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
  28:	e0813003 	add	r3, r1, r3
  2c:	e2433001 	sub	r3, r3, #1
  30:	eafffffe 	b	0 <vexDisplayClipRegionSet>

Disassembly of section .text._ZN3vex5brain3lcd20_validateImageBufferEPh:

00000000 <vex::brain::lcd::_validateImageBuffer(unsigned char*)>:
   0:	e5912000 	ldr	r2, [r1]
   4:	e59f3044 	ldr	r3, [pc, #68]	; 50 <vex::brain::lcd::_validateImageBuffer(unsigned char*)+0x50>
   8:	e1520003 	cmp	r2, r3
   c:	1a000003 	bne	20 <vex::brain::lcd::_validateImageBuffer(unsigned char*)+0x20>
  10:	e5912004 	ldr	r2, [r1, #4]
  14:	e59f3038 	ldr	r3, [pc, #56]	; 54 <vex::brain::lcd::_validateImageBuffer(unsigned char*)+0x54>
  18:	e1520003 	cmp	r2, r3
  1c:	0a000007 	beq	40 <vex::brain::lcd::_validateImageBuffer(unsigned char*)+0x40>
  20:	e5d13000 	ldrb	r3, [r1]
  24:	e3530042 	cmp	r3, #66	; 0x42
  28:	1a000006 	bne	48 <vex::brain::lcd::_validateImageBuffer(unsigned char*)+0x48>
  2c:	e5d10001 	ldrb	r0, [r1, #1]
  30:	e240004d 	sub	r0, r0, #77	; 0x4d
  34:	e16f0f10 	clz	r0, r0
  38:	e1a002a0 	lsr	r0, r0, #5
  3c:	e12fff1e 	bx	lr
  40:	e3a00002 	mov	r0, #2
  44:	e12fff1e 	bx	lr
  48:	e3a00000 	mov	r0, #0
  4c:	e12fff1e 	bx	lr
  50:	474e5089 	strbmi	r5, [lr, -r9, lsl #1]
  54:	0a1a0a0d 	beq	682890 <vex::brain::lcd::_validateImageBuffer(unsigned char*)+0x682890>

Disassembly of section .text._ZN3vex5brain3lcd19drawImageFromBufferEPhiii:

00000000 <vex::brain::lcd::drawImageFromBuffer(unsigned char*, int, int, int)>:
   0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   4:	e2517000 	subs	r7, r1, #0
   8:	e24dd018 	sub	sp, sp, #24
   c:	1a000001 	bne	18 <vex::brain::lcd::drawImageFromBuffer(unsigned char*, int, int, int)+0x18>
  10:	e3a04000 	mov	r4, #0
  14:	ea000038 	b	fc <vex::brain::lcd::drawImageFromBuffer(unsigned char*, int, int, int)+0xfc>
  18:	e1a06000 	mov	r6, r0
  1c:	e1a04003 	mov	r4, r3
  20:	e1a05002 	mov	r5, r2
  24:	ebfffffe 	bl	0 <vex::brain::lcd::drawImageFromBuffer(unsigned char*, int, int, int)>
  28:	e2508000 	subs	r8, r0, #0
  2c:	0afffff7 	beq	10 <vex::brain::lcd::drawImageFromBuffer(unsigned char*, int, int, int)+0x10>
  30:	e28d0008 	add	r0, sp, #8
  34:	ebfffffe 	bl	0 <vexScratchMemoryPtr>
  38:	e59f30c8 	ldr	r3, [pc, #200]	; 108 <vex::brain::lcd::drawImageFromBuffer(unsigned char*, int, int, int)+0x108>
  3c:	e1500003 	cmp	r0, r3
  40:	9afffff2 	bls	10 <vex::brain::lcd::drawImageFromBuffer(unsigned char*, int, int, int)+0x10>
  44:	e59d3008 	ldr	r3, [sp, #8]
  48:	e3530000 	cmp	r3, #0
  4c:	0affffef 	beq	10 <vex::brain::lcd::drawImageFromBuffer(unsigned char*, int, int, int)+0x10>
  50:	e3580001 	cmp	r8, #1
  54:	e58d3010 	str	r3, [sp, #16]
  58:	1a00001d 	bne	d4 <vex::brain::lcd::drawImageFromBuffer(unsigned char*, int, int, int)+0xd4>
  5c:	e1a00007 	mov	r0, r7
  60:	e28d100c 	add	r1, sp, #12
  64:	e3a02e1e 	mov	r2, #480	; 0x1e0
  68:	e3a03e11 	mov	r3, #272	; 0x110
  6c:	ebfffffe 	bl	0 <vexImageBmpRead>
  70:	e3500000 	cmp	r0, #0
  74:	0affffe5 	beq	10 <vex::brain::lcd::drawImageFromBuffer(unsigned char*, int, int, int)+0x10>
  78:	e5960124 	ldr	r0, [r6, #292]	; 0x124
  7c:	e300310e 	movw	r3, #270	; 0x10e
  80:	e5961128 	ldr	r1, [r6, #296]	; 0x128
  84:	e0850000 	add	r0, r5, r0
  88:	e0841001 	add	r1, r4, r1
  8c:	e30041de 	movw	r4, #478	; 0x1de
  90:	e1500004 	cmp	r0, r4
  94:	d1510003 	cmple	r1, r3
  98:	c3a04000 	movgt	r4, #0
  9c:	d3a04001 	movle	r4, #1
  a0:	c3a04001 	movgt	r4, #1
  a4:	ca000014 	bgt	fc <vex::brain::lcd::drawImageFromBuffer(unsigned char*, int, int, int)+0xfc>
  a8:	e1ddc0bc 	ldrh	ip, [sp, #12]
  ac:	e1dd30be 	ldrh	r3, [sp, #14]
  b0:	e59de010 	ldr	lr, [sp, #16]
  b4:	e080200c 	add	r2, r0, ip
  b8:	e0813003 	add	r3, r1, r3
  bc:	e58dc004 	str	ip, [sp, #4]
  c0:	e2422001 	sub	r2, r2, #1
  c4:	e2433001 	sub	r3, r3, #1
  c8:	e58de000 	str	lr, [sp]
  cc:	ebfffffe 	bl	0 <vexDisplayCopyRect>
  d0:	ea000009 	b	fc <vex::brain::lcd::drawImageFromBuffer(unsigned char*, int, int, int)+0xfc>
  d4:	e3580002 	cmp	r8, #2
  d8:	1affffcc 	bne	10 <vex::brain::lcd::drawImageFromBuffer(unsigned char*, int, int, int)+0x10>
  dc:	e59d3030 	ldr	r3, [sp, #48]	; 0x30
  e0:	e1a00007 	mov	r0, r7
  e4:	e28d100c 	add	r1, sp, #12
  e8:	e3a02e1e 	mov	r2, #480	; 0x1e0
  ec:	e58d3000 	str	r3, [sp]
  f0:	e3a03e11 	mov	r3, #272	; 0x110
  f4:	ebfffffe 	bl	0 <vexImagePngRead>
  f8:	eaffffdc 	b	70 <vex::brain::lcd::drawImageFromBuffer(unsigned char*, int, int, int)+0x70>
  fc:	e1a00004 	mov	r0, r4
 100:	e28dd018 	add	sp, sp, #24
 104:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 108:	0007f800 	andeq	pc, r7, r0, lsl #16

Disassembly of section .text._ZN3vex5brain3lcd19drawImageFromBufferEPmiiii:

00000000 <vex::brain::lcd::drawImageFromBuffer(unsigned long*, int, int, int, int)>:
   0:	e92d4073 	push	{r0, r1, r4, r5, r6, lr}
   4:	e251e000 	subs	lr, r1, #0
   8:	e59d6018 	ldr	r6, [sp, #24]
   c:	e59d501c 	ldr	r5, [sp, #28]
  10:	01a0400e 	moveq	r4, lr
  14:	0a000017 	beq	78 <vex::brain::lcd::drawImageFromBuffer(unsigned long*, int, int, int, int)+0x78>
  18:	e3550000 	cmp	r5, #0
  1c:	c3560000 	cmpgt	r6, #0
  20:	d3a04000 	movle	r4, #0
  24:	da000013 	ble	78 <vex::brain::lcd::drawImageFromBuffer(unsigned long*, int, int, int, int)+0x78>
  28:	e1a0c000 	mov	ip, r0
  2c:	e5900124 	ldr	r0, [r0, #292]	; 0x124
  30:	e59c1128 	ldr	r1, [ip, #296]	; 0x128
  34:	e300410e 	movw	r4, #270	; 0x10e
  38:	e0820000 	add	r0, r2, r0
  3c:	e300c1de 	movw	ip, #478	; 0x1de
  40:	e0831001 	add	r1, r3, r1
  44:	e150000c 	cmp	r0, ip
  48:	d1510004 	cmple	r1, r4
  4c:	c3a04000 	movgt	r4, #0
  50:	d3a04001 	movle	r4, #1
  54:	c3a04001 	movgt	r4, #1
  58:	ca000006 	bgt	78 <vex::brain::lcd::drawImageFromBuffer(unsigned long*, int, int, int, int)+0x78>
  5c:	e0802006 	add	r2, r0, r6
  60:	e0813005 	add	r3, r1, r5
  64:	e58de000 	str	lr, [sp]
  68:	e2422001 	sub	r2, r2, #1
  6c:	e58d6004 	str	r6, [sp, #4]
  70:	e2433001 	sub	r3, r3, #1
  74:	ebfffffe 	bl	0 <vexDisplayCopyRect>
  78:	e1a00004 	mov	r0, r4
  7c:	e28dd008 	add	sp, sp, #8
  80:	e8bd8070 	pop	{r4, r5, r6, pc}

Disassembly of section .text._ZN3vex5brain3lcd17drawImageFromFileEPKcii:

00000000 <vex::brain::lcd::drawImageFromFile(char const*, int, int)>:
   0:	e3510000 	cmp	r1, #0
   4:	0a000092 	beq	254 <vex::brain::lcd::drawImageFromFile(char const*, int, int)+0x254>
   8:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
   c:	e1a05000 	mov	r5, r0
  10:	e24dd01c 	sub	sp, sp, #28
  14:	e1a00001 	mov	r0, r1
  18:	e1a06001 	mov	r6, r1
  1c:	e1a08003 	mov	r8, r3
  20:	e1a07002 	mov	r7, r2
  24:	ebfffffe 	bl	0 <strlen>
  28:	e3500004 	cmp	r0, #4
  2c:	da00007b 	ble	220 <vex::brain::lcd::drawImageFromFile(char const*, int, int)+0x220>
  30:	e0864000 	add	r4, r6, r0
  34:	e5540003 	ldrb	r0, [r4, #-3]
  38:	ebfffffe 	bl	0 <tolower>
  3c:	e3500062 	cmp	r0, #98	; 0x62
  40:	e1a09000 	mov	r9, r0
  44:	0a000009 	beq	70 <vex::brain::lcd::drawImageFromFile(char const*, int, int)+0x70>
  48:	e5540002 	ldrb	r0, [r4, #-2]
  4c:	ebfffffe 	bl	0 <tolower>
  50:	e350006d 	cmp	r0, #109	; 0x6d
  54:	0a000003 	beq	68 <vex::brain::lcd::drawImageFromFile(char const*, int, int)+0x68>
  58:	e5540001 	ldrb	r0, [r4, #-1]
  5c:	ebfffffe 	bl	0 <tolower>
  60:	e3500070 	cmp	r0, #112	; 0x70
  64:	1a000074 	bne	23c <vex::brain::lcd::drawImageFromFile(char const*, int, int)+0x23c>
  68:	e3590070 	cmp	r9, #112	; 0x70
  6c:	0a00006b 	beq	220 <vex::brain::lcd::drawImageFromFile(char const*, int, int)+0x220>
  70:	e3a09000 	mov	r9, #0
  74:	e5540002 	ldrb	r0, [r4, #-2]
  78:	ebfffffe 	bl	0 <tolower>
  7c:	e350006e 	cmp	r0, #110	; 0x6e
  80:	0a000003 	beq	94 <vex::brain::lcd::drawImageFromFile(char const*, int, int)+0x94>
  84:	e5540001 	ldrb	r0, [r4, #-1]
  88:	ebfffffe 	bl	0 <tolower>
  8c:	e3500067 	cmp	r0, #103	; 0x67
  90:	1a000001 	bne	9c <vex::brain::lcd::drawImageFromFile(char const*, int, int)+0x9c>
  94:	e3590000 	cmp	r9, #0
  98:	0a000060 	beq	220 <vex::brain::lcd::drawImageFromFile(char const*, int, int)+0x220>
  9c:	e1a00006 	mov	r0, r6
  a0:	e59f11b4 	ldr	r1, [pc, #436]	; 25c <vex::brain::lcd::drawImageFromFile(char const*, int, int)+0x25c>
  a4:	ebfffffe 	bl	0 <vexFileOpen>
  a8:	e2509000 	subs	r9, r0, #0
  ac:	0a00005b 	beq	220 <vex::brain::lcd::drawImageFromFile(char const*, int, int)+0x220>
  b0:	ebfffffe 	bl	0 <vexFileSize>
  b4:	e3500702 	cmp	r0, #524288	; 0x80000
  b8:	e1a04000 	mov	r4, r0
  bc:	8a000059 	bhi	228 <vex::brain::lcd::drawImageFromFile(char const*, int, int)+0x228>
  c0:	e28d0008 	add	r0, sp, #8
  c4:	ebfffffe 	bl	0 <vexScratchMemoryPtr>
  c8:	e59f3190 	ldr	r3, [pc, #400]	; 260 <vex::brain::lcd::drawImageFromFile(char const*, int, int)+0x260>
  cc:	e1500003 	cmp	r0, r3
  d0:	da000010 	ble	118 <vex::brain::lcd::drawImageFromFile(char const*, int, int)+0x118>
  d4:	e59d6008 	ldr	r6, [sp, #8]
  d8:	e3560000 	cmp	r6, #0
  dc:	0a00000d 	beq	118 <vex::brain::lcd::drawImageFromFile(char const*, int, int)+0x118>
  e0:	e1a00006 	mov	r0, r6
  e4:	e3a01001 	mov	r1, #1
  e8:	e1a02004 	mov	r2, r4
  ec:	e1a03009 	mov	r3, r9
  f0:	ebfffffe 	bl	0 <vexFileRead>
  f4:	e1500004 	cmp	r0, r4
  f8:	e1a0b000 	mov	fp, r0
  fc:	1a000049 	bne	228 <vex::brain::lcd::drawImageFromFile(char const*, int, int)+0x228>
 100:	e59da008 	ldr	sl, [sp, #8]
 104:	e1a00005 	mov	r0, r5
 108:	e1a0100a 	mov	r1, sl
 10c:	ebfffffe 	bl	0 <vex::brain::lcd::drawImageFromFile(char const*, int, int)>
 110:	e2504000 	subs	r4, r0, #0
 114:	1a000002 	bne	124 <vex::brain::lcd::drawImageFromFile(char const*, int, int)+0x124>
 118:	e1a00009 	mov	r0, r9
 11c:	ebfffffe 	bl	0 <vexFileClose>
 120:	ea00003e 	b	220 <vex::brain::lcd::drawImageFromFile(char const*, int, int)+0x220>
 124:	e3540001 	cmp	r4, #1
 128:	e2866702 	add	r6, r6, #524288	; 0x80000
 12c:	1a00001b 	bne	1a0 <vex::brain::lcd::drawImageFromFile(char const*, int, int)+0x1a0>
 130:	e1a0000a 	mov	r0, sl
 134:	e28d100c 	add	r1, sp, #12
 138:	e3a02e1e 	mov	r2, #480	; 0x1e0
 13c:	e3a03e11 	mov	r3, #272	; 0x110
 140:	e58d6010 	str	r6, [sp, #16]
 144:	ebfffffe 	bl	0 <vexImageBmpRead>
 148:	e3500000 	cmp	r0, #0
 14c:	0a000035 	beq	228 <vex::brain::lcd::drawImageFromFile(char const*, int, int)+0x228>
 150:	e5950124 	ldr	r0, [r5, #292]	; 0x124
 154:	e300310e 	movw	r3, #270	; 0x10e
 158:	e5951128 	ldr	r1, [r5, #296]	; 0x128
 15c:	e30021de 	movw	r2, #478	; 0x1de
 160:	e0870000 	add	r0, r7, r0
 164:	e0881001 	add	r1, r8, r1
 168:	e1500002 	cmp	r0, r2
 16c:	d1510003 	cmple	r1, r3
 170:	ca00002d 	bgt	22c <vex::brain::lcd::drawImageFromFile(char const*, int, int)+0x22c>
 174:	e1ddc0bc 	ldrh	ip, [sp, #12]
 178:	e1dd30be 	ldrh	r3, [sp, #14]
 17c:	e59de010 	ldr	lr, [sp, #16]
 180:	e080200c 	add	r2, r0, ip
 184:	e0813003 	add	r3, r1, r3
 188:	e58dc004 	str	ip, [sp, #4]
 18c:	e2422001 	sub	r2, r2, #1
 190:	e2433001 	sub	r3, r3, #1
 194:	e58de000 	str	lr, [sp]
 198:	ebfffffe 	bl	0 <vexDisplayCopyRect>
 19c:	ea000022 	b	22c <vex::brain::lcd::drawImageFromFile(char const*, int, int)+0x22c>
 1a0:	e3540002 	cmp	r4, #2
 1a4:	1a00001f 	bne	228 <vex::brain::lcd::drawImageFromFile(char const*, int, int)+0x228>
 1a8:	e58db000 	str	fp, [sp]
 1ac:	e1a0000a 	mov	r0, sl
 1b0:	e28d100c 	add	r1, sp, #12
 1b4:	e3a02e1e 	mov	r2, #480	; 0x1e0
 1b8:	e3a03e11 	mov	r3, #272	; 0x110
 1bc:	e58d6010 	str	r6, [sp, #16]
 1c0:	ebfffffe 	bl	0 <vexImagePngRead>
 1c4:	e3500000 	cmp	r0, #0
 1c8:	0a000016 	beq	228 <vex::brain::lcd::drawImageFromFile(char const*, int, int)+0x228>
 1cc:	e5950124 	ldr	r0, [r5, #292]	; 0x124
 1d0:	e300310e 	movw	r3, #270	; 0x10e
 1d4:	e5951128 	ldr	r1, [r5, #296]	; 0x128
 1d8:	e30021de 	movw	r2, #478	; 0x1de
 1dc:	e0870000 	add	r0, r7, r0
 1e0:	e0881001 	add	r1, r8, r1
 1e4:	e1500002 	cmp	r0, r2
 1e8:	d1510003 	cmple	r1, r3
 1ec:	ca000009 	bgt	218 <vex::brain::lcd::drawImageFromFile(char const*, int, int)+0x218>
 1f0:	e1ddc0bc 	ldrh	ip, [sp, #12]
 1f4:	e1dd30be 	ldrh	r3, [sp, #14]
 1f8:	e59de010 	ldr	lr, [sp, #16]
 1fc:	e080200c 	add	r2, r0, ip
 200:	e0813003 	add	r3, r1, r3
 204:	e58dc004 	str	ip, [sp, #4]
 208:	e2422001 	sub	r2, r2, #1
 20c:	e2433001 	sub	r3, r3, #1
 210:	e58de000 	str	lr, [sp]
 214:	ebfffffe 	bl	0 <vexDisplayCopyRect>
 218:	e3a04001 	mov	r4, #1
 21c:	ea000002 	b	22c <vex::brain::lcd::drawImageFromFile(char const*, int, int)+0x22c>
 220:	e3a00000 	mov	r0, #0
 224:	ea000008 	b	24c <vex::brain::lcd::drawImageFromFile(char const*, int, int)+0x24c>
 228:	e3a04000 	mov	r4, #0
 22c:	e1a00009 	mov	r0, r9
 230:	ebfffffe 	bl	0 <vexFileClose>
 234:	e1a00004 	mov	r0, r4
 238:	ea000003 	b	24c <vex::brain::lcd::drawImageFromFile(char const*, int, int)+0x24c>
 23c:	e3590070 	cmp	r9, #112	; 0x70
 240:	13a09001 	movne	r9, #1
 244:	1affff8a 	bne	74 <vex::brain::lcd::drawImageFromFile(char const*, int, int)+0x74>
 248:	eaffff93 	b	9c <vex::brain::lcd::drawImageFromFile(char const*, int, int)+0x9c>
 24c:	e28dd01c 	add	sp, sp, #28
 250:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
 254:	e3a00000 	mov	r0, #0
 258:	e12fff1e 	bx	lr
 25c:	00000028 	andeq	r0, r0, r8, lsr #32
 260:	000ff7ff 	strdeq	pc, [pc], -pc	; <UNPREDICTABLE>

Disassembly of section .text._ZN3vex5brain3lcd10rowToPixelEl:

00000000 <vex::brain::lcd::rowToPixel(long)>:
   0:	e5903004 	ldr	r3, [r0, #4]
   4:	e2632000 	rsb	r2, r3, #0
   8:	e1510002 	cmp	r1, r2
   c:	b1a01002 	movlt	r1, r2
  10:	e1510003 	cmp	r1, r3
  14:	a1a01003 	movge	r1, r3
  18:	e5903008 	ldr	r3, [r0, #8]
  1c:	e0010193 	mul	r1, r3, r1
  20:	e590301c 	ldr	r3, [r0, #28]
  24:	e5900128 	ldr	r0, [r0, #296]	; 0x128
  28:	e0631001 	rsb	r1, r3, r1
  2c:	e0810000 	add	r0, r1, r0
  30:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex5brain3lcd10_clearLineEim:

00000000 <vex::brain::lcd::_clearLine(int, unsigned long)>:
   0:	e5903004 	ldr	r3, [r0, #4]
   4:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   8:	e1510003 	cmp	r1, r3
   c:	e2634000 	rsb	r4, r3, #0
  10:	d3a03000 	movle	r3, #0
  14:	c3a03001 	movgt	r3, #1
  18:	e1510004 	cmp	r1, r4
  1c:	a1a04003 	movge	r4, r3
  20:	b3834001 	orrlt	r4, r3, #1
  24:	e3540000 	cmp	r4, #0
  28:	18bd81f0 	popne	{r4, r5, r6, r7, r8, pc}
  2c:	e1a07002 	mov	r7, r2
  30:	e1a05000 	mov	r5, r0
  34:	e1a06001 	mov	r6, r1
  38:	ebfffffe 	bl	0 <vexDisplayBackgroundColorGet>
  3c:	e1a08000 	mov	r8, r0
  40:	e1a00007 	mov	r0, r7
  44:	ebfffffe 	bl	0 <vexDisplayBackgroundColor>
  48:	e1a01006 	mov	r1, r6
  4c:	e1a00005 	mov	r0, r5
  50:	ebfffffe 	bl	0 <vex::brain::lcd::_clearLine(int, unsigned long)>
  54:	e595101c 	ldr	r1, [r5, #28]
  58:	e5953008 	ldr	r3, [r5, #8]
  5c:	e30021df 	movw	r2, #479	; 0x1df
  60:	e0801001 	add	r1, r0, r1
  64:	e1a00004 	mov	r0, r4
  68:	e0633001 	rsb	r3, r3, r1
  6c:	ebfffffe 	bl	0 <vexDisplayRectClear>
  70:	e1a00008 	mov	r0, r8
  74:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
  78:	eafffffe 	b	0 <vexDisplayBackgroundColor>

Disassembly of section .text._ZN3vex5brain3lcd9clearLineEiRKNS_5colorE:

00000000 <vex::brain::lcd::clearLine(int, vex::color const&)>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a00002 	mov	r0, r2
   c:	e1a04001 	mov	r4, r1
  10:	ebfffffe 	bl	0 <vex::color::operator unsigned long() const>
  14:	e1a01004 	mov	r1, r4
  18:	e1a02000 	mov	r2, r0
  1c:	e1a00005 	mov	r0, r5
  20:	e8bd4038 	pop	{r3, r4, r5, lr}
  24:	eafffffe 	b	0 <vex::brain::lcd::clearLine(int, vex::color const&)>

Disassembly of section .text._ZN3vex5brain3lcd9clearLineEi:

00000000 <vex::brain::lcd::clearLine(int)>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e5903004 	ldr	r3, [r0, #4]
   c:	e1510003 	cmp	r1, r3
  10:	e2634000 	rsb	r4, r3, #0
  14:	d3a03000 	movle	r3, #0
  18:	c3a03001 	movgt	r3, #1
  1c:	e1510004 	cmp	r1, r4
  20:	a1a04003 	movge	r4, r3
  24:	b3834001 	orrlt	r4, r3, #1
  28:	e3540000 	cmp	r4, #0
  2c:	18bd8038 	popne	{r3, r4, r5, pc}
  30:	ebfffffe 	bl	0 <vex::brain::lcd::clearLine(int)>
  34:	e595101c 	ldr	r1, [r5, #28]
  38:	e5953008 	ldr	r3, [r5, #8]
  3c:	e30021df 	movw	r2, #479	; 0x1df
  40:	e0801001 	add	r1, r0, r1
  44:	e1a00004 	mov	r0, r4
  48:	e0633001 	rsb	r3, r3, r1
  4c:	ebfffffe 	bl	0 <vexDisplayRectClear>
  50:	e3a03001 	mov	r3, #1
  54:	e585300c 	str	r3, [r5, #12]
  58:	e8bd8038 	pop	{r3, r4, r5, pc}

Disassembly of section .text._ZN3vex5brain3lcd9clearLineEv:

00000000 <vex::brain::lcd::clearLine()>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e5901000 	ldr	r1, [r0]
   c:	ebfffffe 	bl	0 <vex::brain::lcd::clearLine()>
  10:	e594101c 	ldr	r1, [r4, #28]
  14:	e5943008 	ldr	r3, [r4, #8]
  18:	e30021df 	movw	r2, #479	; 0x1df
  1c:	e0801001 	add	r1, r0, r1
  20:	e3a00000 	mov	r0, #0
  24:	e0633001 	rsb	r3, r3, r1
  28:	ebfffffe 	bl	0 <vexDisplayRectClear>
  2c:	e3a03001 	mov	r3, #1
  30:	e584300c 	str	r3, [r4, #12]
  34:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex5brain3lcd5printEPKcz:

00000000 <vex::brain::lcd::print(char const*, ...)>:
   0:	e92d000e 	push	{r1, r2, r3}
   4:	e3a01c01 	mov	r1, #256	; 0x100
   8:	e92d4070 	push	{r4, r5, r6, lr}
   c:	e24dd014 	sub	sp, sp, #20
  10:	e28d5028 	add	r5, sp, #40	; 0x28
  14:	e2806020 	add	r6, r0, #32
  18:	e1a04000 	mov	r4, r0
  1c:	e59d2024 	ldr	r2, [sp, #36]	; 0x24
  20:	e1a03005 	mov	r3, r5
  24:	e1a00006 	mov	r0, r6
  28:	e58d500c 	str	r5, [sp, #12]
  2c:	ebfffffe 	bl	0 <vex_vsnprintf>
  30:	e3a00001 	mov	r0, #1
  34:	e58d500c 	str	r5, [sp, #12]
  38:	ebfffffe 	bl	0 <vexDisplayTextReference>
  3c:	e594500c 	ldr	r5, [r4, #12]
  40:	e5942124 	ldr	r2, [r4, #292]	; 0x124
  44:	e1a00004 	mov	r0, r4
  48:	e2453001 	sub	r3, r5, #1
  4c:	e5945014 	ldr	r5, [r4, #20]
  50:	e5941000 	ldr	r1, [r4]
  54:	e0252395 	mla	r5, r5, r3, r2
  58:	ebfffffe 	bl	0 <vex::brain::lcd::print(char const*, ...)>
  5c:	e59d300c 	ldr	r3, [sp, #12]
  60:	e3a02001 	mov	r2, #1
  64:	e58d3000 	str	r3, [sp]
  68:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
  6c:	e1a01000 	mov	r1, r0
  70:	e1a00005 	mov	r0, r5
  74:	ebfffffe 	bl	0 <vexDisplayVPrintf>
  78:	e1a00006 	mov	r0, r6
  7c:	ebfffffe 	bl	0 <vexDisplayStringWidthGet>
  80:	e5941014 	ldr	r1, [r4, #20]
  84:	e2413001 	sub	r3, r1, #1
  88:	e0800003 	add	r0, r0, r3
  8c:	ebfffffe 	bl	0 <__aeabi_idiv>
  90:	e594300c 	ldr	r3, [r4, #12]
  94:	e0800003 	add	r0, r0, r3
  98:	e5943010 	ldr	r3, [r4, #16]
  9c:	e584000c 	str	r0, [r4, #12]
  a0:	e1500003 	cmp	r0, r3
  a4:	c584300c 	strgt	r3, [r4, #12]
  a8:	e28dd014 	add	sp, sp, #20
  ac:	e8bd4070 	pop	{r4, r5, r6, lr}
  b0:	e28dd00c 	add	sp, sp, #12
  b4:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex5brain3lcd5printEPcz:

00000000 <vex::brain::lcd::print(char*, ...)>:
   0:	e92d000e 	push	{r1, r2, r3}
   4:	e3a01c01 	mov	r1, #256	; 0x100
   8:	e92d4070 	push	{r4, r5, r6, lr}
   c:	e24dd014 	sub	sp, sp, #20
  10:	e28d5028 	add	r5, sp, #40	; 0x28
  14:	e2806020 	add	r6, r0, #32
  18:	e1a04000 	mov	r4, r0
  1c:	e59d2024 	ldr	r2, [sp, #36]	; 0x24
  20:	e1a03005 	mov	r3, r5
  24:	e1a00006 	mov	r0, r6
  28:	e58d500c 	str	r5, [sp, #12]
  2c:	ebfffffe 	bl	0 <vex_vsnprintf>
  30:	e3a00001 	mov	r0, #1
  34:	e58d500c 	str	r5, [sp, #12]
  38:	ebfffffe 	bl	0 <vexDisplayTextReference>
  3c:	e594500c 	ldr	r5, [r4, #12]
  40:	e5942124 	ldr	r2, [r4, #292]	; 0x124
  44:	e1a00004 	mov	r0, r4
  48:	e2453001 	sub	r3, r5, #1
  4c:	e5945014 	ldr	r5, [r4, #20]
  50:	e5941000 	ldr	r1, [r4]
  54:	e0252395 	mla	r5, r5, r3, r2
  58:	ebfffffe 	bl	0 <vex::brain::lcd::print(char*, ...)>
  5c:	e59d300c 	ldr	r3, [sp, #12]
  60:	e3a02001 	mov	r2, #1
  64:	e58d3000 	str	r3, [sp]
  68:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
  6c:	e1a01000 	mov	r1, r0
  70:	e1a00005 	mov	r0, r5
  74:	ebfffffe 	bl	0 <vexDisplayVPrintf>
  78:	e1a00006 	mov	r0, r6
  7c:	ebfffffe 	bl	0 <vexDisplayStringWidthGet>
  80:	e5941014 	ldr	r1, [r4, #20]
  84:	e2413001 	sub	r3, r1, #1
  88:	e0800003 	add	r0, r0, r3
  8c:	ebfffffe 	bl	0 <__aeabi_idiv>
  90:	e594300c 	ldr	r3, [r4, #12]
  94:	e0800003 	add	r0, r0, r3
  98:	e5943010 	ldr	r3, [r4, #16]
  9c:	e584000c 	str	r0, [r4, #12]
  a0:	e1500003 	cmp	r0, r3
  a4:	c584300c 	strgt	r3, [r4, #12]
  a8:	e28dd014 	add	sp, sp, #20
  ac:	e8bd4070 	pop	{r4, r5, r6, lr}
  b0:	e28dd00c 	add	sp, sp, #12
  b4:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex5brain3lcd10colToPixelEl:

00000000 <vex::brain::lcd::colToPixel(long)>:
   0:	e5902014 	ldr	r2, [r0, #20]
   4:	e2411001 	sub	r1, r1, #1
   8:	e5900124 	ldr	r0, [r0, #292]	; 0x124
   c:	e0200192 	mla	r0, r2, r1, r0
  10:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex5brain3lcd13webColorToRgbEPKc:

00000000 <vex::brain::lcd::webColorToRgb(char const*)>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05001 	mov	r5, r1
   8:	e5d13000 	ldrb	r3, [r1]
   c:	e3530023 	cmp	r3, #35	; 0x23
  10:	1a000009 	bne	3c <vex::brain::lcd::webColorToRgb(char const*)+0x3c>
  14:	e1a00001 	mov	r0, r1
  18:	ebfffffe 	bl	0 <strlen>
  1c:	e3500007 	cmp	r0, #7
  20:	1a000005 	bne	3c <vex::brain::lcd::webColorToRgb(char const*)+0x3c>
  24:	e2850001 	add	r0, r5, #1
  28:	e3a01000 	mov	r1, #0
  2c:	e3a02010 	mov	r2, #16
  30:	ebfffffe 	bl	0 <strtol>
  34:	e1a04000 	mov	r4, r0
  38:	ea000000 	b	40 <vex::brain::lcd::webColorToRgb(char const*)+0x40>
  3c:	e3a04000 	mov	r4, #0
  40:	e5d53000 	ldrb	r3, [r5]
  44:	e3530023 	cmp	r3, #35	; 0x23
  48:	1a000011 	bne	94 <vex::brain::lcd::webColorToRgb(char const*)+0x94>
  4c:	e1a00005 	mov	r0, r5
  50:	ebfffffe 	bl	0 <strlen>
  54:	e3500004 	cmp	r0, #4
  58:	1a00000d 	bne	94 <vex::brain::lcd::webColorToRgb(char const*)+0x94>
  5c:	e5d50001 	ldrb	r0, [r5, #1]
  60:	ebfffffe 	bl	0 <vex::brain::lcd::webColorToRgb(char const*)>
  64:	e1a04000 	mov	r4, r0
  68:	e5d50002 	ldrb	r0, [r5, #2]
  6c:	ebfffffe 	bl	0 <vex::brain::lcd::webColorToRgb(char const*)>
  70:	e1a06000 	mov	r6, r0
  74:	e5d50003 	ldrb	r0, [r5, #3]
  78:	ebfffffe 	bl	0 <vex::brain::lcd::webColorToRgb(char const*)>
  7c:	e1a03804 	lsl	r3, r4, #16
  80:	e0834a04 	add	r4, r3, r4, lsl #20
  84:	e0844606 	add	r4, r4, r6, lsl #12
  88:	e0844406 	add	r4, r4, r6, lsl #8
  8c:	e0844200 	add	r4, r4, r0, lsl #4
  90:	e0844000 	add	r4, r4, r0
  94:	e1a00004 	mov	r0, r4
  98:	e8bd8070 	pop	{r4, r5, r6, pc}

Disassembly of section .text._ZN3vex5brain3lcd11setPenColorEPKc:

00000000 <vex::brain::lcd::setPenColor(char const*)>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vex::brain::lcd::setPenColor(char const*)>
   8:	e8bd4008 	pop	{r3, lr}
   c:	eafffffe 	b	0 <vexDisplayForegroundColor>

Disassembly of section .text._ZN3vex5brain3lcd12setFillColorEPKc:

00000000 <vex::brain::lcd::setFillColor(char const*)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <vex::brain::lcd::setFillColor(char const*)>
   c:	e3a03000 	mov	r3, #0
  10:	e5c43120 	strb	r3, [r4, #288]	; 0x120
  14:	e8bd4010 	pop	{r4, lr}
  18:	eafffffe 	b	0 <vexDisplayBackgroundColor>

Disassembly of section .text._ZN3vex5brain3lcd11clearScreenEPKc:

00000000 <vex::brain::lcd::clearScreen(char const*)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <vex::brain::lcd::clearScreen(char const*)>
   c:	e1a01000 	mov	r1, r0
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	eafffffe 	b	0 <vex::brain::lcd::clearScreen(char const*)>

Disassembly of section .text._ZN3vex5brain3lcd9clearLineEiPKc:

00000000 <vex::brain::lcd::clearLine(int, char const*)>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a04001 	mov	r4, r1
   8:	e1a01002 	mov	r1, r2
   c:	e1a05000 	mov	r5, r0
  10:	ebfffffe 	bl	0 <vex::brain::lcd::clearLine(int, char const*)>
  14:	e1a01004 	mov	r1, r4
  18:	e1a02000 	mov	r2, r0
  1c:	e1a00005 	mov	r0, r5
  20:	e8bd4038 	pop	{r3, r4, r5, lr}
  24:	eafffffe 	b	0 <vex::brain::lcd::clearLine(int, char const*)>

Disassembly of section .text._ZN3vex5brain3lcd13drawRectangleEiiiiPKc:

00000000 <vex::brain::lcd::drawRectangle(int, int, int, int, char const*)>:
   0:	e92d41f3 	push	{r0, r1, r4, r5, r6, r7, r8, lr}
   4:	e1a08001 	mov	r8, r1
   8:	e5d05120 	ldrb	r5, [r0, #288]	; 0x120
   c:	e1a06003 	mov	r6, r3
  10:	e59d1024 	ldr	r1, [sp, #36]	; 0x24
  14:	e3a03000 	mov	r3, #0
  18:	e5c03120 	strb	r3, [r0, #288]	; 0x120
  1c:	e1a04000 	mov	r4, r0
  20:	e1a07002 	mov	r7, r2
  24:	ebfffffe 	bl	0 <vex::brain::lcd::drawRectangle(int, int, int, int, char const*)>
  28:	e59d3020 	ldr	r3, [sp, #32]
  2c:	e1a01008 	mov	r1, r8
  30:	e1a02007 	mov	r2, r7
  34:	e58d3000 	str	r3, [sp]
  38:	e1a03006 	mov	r3, r6
  3c:	e58d0004 	str	r0, [sp, #4]
  40:	e1a00004 	mov	r0, r4
  44:	ebfffffe 	bl	0 <vex::brain::lcd::drawRectangle(int, int, int, int, char const*)>
  48:	e5c45120 	strb	r5, [r4, #288]	; 0x120
  4c:	e28dd008 	add	sp, sp, #8
  50:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

Disassembly of section .text._ZN3vex5brain3lcd10drawCircleEiiiPKc:

00000000 <vex::brain::lcd::drawCircle(int, int, int, char const*)>:
   0:	e92d41f3 	push	{r0, r1, r4, r5, r6, r7, r8, lr}
   4:	e1a08001 	mov	r8, r1
   8:	e5d05120 	ldrb	r5, [r0, #288]	; 0x120
   c:	e1a06003 	mov	r6, r3
  10:	e59d1020 	ldr	r1, [sp, #32]
  14:	e3a03000 	mov	r3, #0
  18:	e5c03120 	strb	r3, [r0, #288]	; 0x120
  1c:	e1a04000 	mov	r4, r0
  20:	e1a07002 	mov	r7, r2
  24:	ebfffffe 	bl	0 <vex::brain::lcd::drawCircle(int, int, int, char const*)>
  28:	e1a01008 	mov	r1, r8
  2c:	e1a02007 	mov	r2, r7
  30:	e1a03006 	mov	r3, r6
  34:	e58d0000 	str	r0, [sp]
  38:	e1a00004 	mov	r0, r4
  3c:	ebfffffe 	bl	0 <vex::brain::lcd::drawCircle(int, int, int, char const*)>
  40:	e5c45120 	strb	r5, [r4, #288]	; 0x120
  44:	e28dd008 	add	sp, sp, #8
  48:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

Disassembly of section .text._ZN3vex5brain3lcd8hueToRgbEm:

00000000 <vex::brain::lcd::hueToRgb(unsigned long)>:
   0:	ee071a90 	vmov	s15, r1
   4:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
   8:	eef87a67 	vcvt.f32.u32	s15, s15
   c:	ed2d8b02 	vpush	{d8}
  10:	ed9f8a30 	vldr	s16, [pc, #192]	; d8 <vex::brain::lcd::hueToRgb(unsigned long)+0xd8>
  14:	e24dd00c 	sub	sp, sp, #12
  18:	ee878a88 	vdiv.f32	s16, s15, s16
  1c:	eef70ac8 	vcvt.f64.f32	d16, s16
  20:	ec510b30 	vmov	r0, r1, d16
  24:	ebfffffe 	bl	0 <floor>
  28:	ec410b30 	vmov	d16, r0, r1
  2c:	eefd6be0 	vcvt.s32.f64	s13, d16
  30:	eef87ae6 	vcvt.f32.s32	s15, s13
  34:	ee162a90 	vmov	r2, s13
  38:	ee388a67 	vsub.f32	s16, s16, s15
  3c:	eef70b00 	vmov.f64	d16, #112	; 0x3f800000  1.0
  40:	eeb77ac8 	vcvt.f64.f32	d7, s16
  44:	ee700bc7 	vsub.f64	d16, d16, d7
  48:	ed9f7b20 	vldr	d7, [pc, #128]	; d0 <vex::brain::lcd::hueToRgb(unsigned long)+0xd0>
  4c:	ee207b87 	vmul.f64	d7, d16, d7
  50:	eebc7bc7 	vcvt.u32.f64	s14, d7
  54:	eddf7a20 	vldr	s15, [pc, #128]	; dc <vex::brain::lcd::hueToRgb(unsigned long)+0xdc>
  58:	ee288a27 	vmul.f32	s16, s16, s15
  5c:	ed8d7a01 	vstr	s14, [sp, #4]
  60:	e5dd3004 	ldrb	r3, [sp, #4]
  64:	eebc8ac8 	vcvt.u32.f32	s16, s16
  68:	ed8d8a01 	vstr	s16, [sp, #4]
  6c:	e5dd0004 	ldrb	r0, [sp, #4]
  70:	e3520004 	cmp	r2, #4
  74:	979ff102 	ldrls	pc, [pc, r2, lsl #2]
  78:	ea00000f 	b	bc <vex::brain::lcd::hueToRgb(unsigned long)+0xbc>
  7c:	00000090 	muleq	r0, r0, r0
  80:	0000009c 	muleq	r0, ip, r0
  84:	000000a0 	andeq	r0, r0, r0, lsr #1
  88:	000000a8 	andeq	r0, r0, r8, lsr #1
  8c:	000000b0 	strheq	r0, [r0], -r0	; <UNPREDICTABLE>
  90:	e1a00400 	lsl	r0, r0, #8
  94:	e28008ff 	add	r0, r0, #16711680	; 0xff0000
  98:	ea000008 	b	c0 <vex::brain::lcd::hueToRgb(unsigned long)+0xc0>
  9c:	e1a00803 	lsl	r0, r3, #16
  a0:	e2800cff 	add	r0, r0, #65280	; 0xff00
  a4:	ea000005 	b	c0 <vex::brain::lcd::hueToRgb(unsigned long)+0xc0>
  a8:	e1a00403 	lsl	r0, r3, #8
  ac:	ea000000 	b	b4 <vex::brain::lcd::hueToRgb(unsigned long)+0xb4>
  b0:	e1a00800 	lsl	r0, r0, #16
  b4:	e28000ff 	add	r0, r0, #255	; 0xff
  b8:	ea000000 	b	c0 <vex::brain::lcd::hueToRgb(unsigned long)+0xc0>
  bc:	e28308ff 	add	r0, r3, #16711680	; 0xff0000
  c0:	e28dd00c 	add	sp, sp, #12
  c4:	ecbd8b02 	vpop	{d8}
  c8:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)
  cc:	e320f000 	nop	{0}
  d0:	00000000 	andeq	r0, r0, r0
  d4:	406fe000 	rsbmi	lr, pc, r0
  d8:	42700000 	rsbsmi	r0, r0, #0
  dc:	437f0000 	cmnmi	pc, #0

Disassembly of section .text._ZN3vex5brain3lcd11setPenColorEi:

00000000 <vex::brain::lcd::setPenColor(int)>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vex::brain::lcd::setPenColor(int)>
   8:	e8bd4008 	pop	{r3, lr}
   c:	eafffffe 	b	0 <vexDisplayForegroundColor>

Disassembly of section .text._ZN3vex5brain3lcd12setFillColorEi:

00000000 <vex::brain::lcd::setFillColor(int)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <vex::brain::lcd::setFillColor(int)>
   c:	e3a03000 	mov	r3, #0
  10:	e5c43120 	strb	r3, [r4, #288]	; 0x120
  14:	e8bd4010 	pop	{r4, lr}
  18:	eafffffe 	b	0 <vexDisplayBackgroundColor>

Disassembly of section .text._ZN3vex5brain3lcd11clearScreenEi:

00000000 <vex::brain::lcd::clearScreen(int)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <vex::brain::lcd::clearScreen(int)>
   c:	e1a01000 	mov	r1, r0
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	eafffffe 	b	0 <vex::brain::lcd::clearScreen(int)>

Disassembly of section .text._ZN3vex5brain3lcd9clearLineEii:

00000000 <vex::brain::lcd::clearLine(int, int)>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a04001 	mov	r4, r1
   8:	e1a01002 	mov	r1, r2
   c:	e1a05000 	mov	r5, r0
  10:	ebfffffe 	bl	0 <vex::brain::lcd::clearLine(int, int)>
  14:	e1a01004 	mov	r1, r4
  18:	e1a02000 	mov	r2, r0
  1c:	e1a00005 	mov	r0, r5
  20:	e8bd4038 	pop	{r3, r4, r5, lr}
  24:	eafffffe 	b	0 <vex::brain::lcd::clearLine(int, int)>

Disassembly of section .text._ZN3vex5brain3lcd13drawRectangleEiiiii:

00000000 <vex::brain::lcd::drawRectangle(int, int, int, int, int)>:
   0:	e92d41f3 	push	{r0, r1, r4, r5, r6, r7, r8, lr}
   4:	e1a08001 	mov	r8, r1
   8:	e5d05120 	ldrb	r5, [r0, #288]	; 0x120
   c:	e1a06003 	mov	r6, r3
  10:	e59d1024 	ldr	r1, [sp, #36]	; 0x24
  14:	e3a03000 	mov	r3, #0
  18:	e5c03120 	strb	r3, [r0, #288]	; 0x120
  1c:	e1a04000 	mov	r4, r0
  20:	e1a07002 	mov	r7, r2
  24:	ebfffffe 	bl	0 <vex::brain::lcd::drawRectangle(int, int, int, int, int)>
  28:	e59d3020 	ldr	r3, [sp, #32]
  2c:	e1a01008 	mov	r1, r8
  30:	e1a02007 	mov	r2, r7
  34:	e58d3000 	str	r3, [sp]
  38:	e1a03006 	mov	r3, r6
  3c:	e58d0004 	str	r0, [sp, #4]
  40:	e1a00004 	mov	r0, r4
  44:	ebfffffe 	bl	0 <vex::brain::lcd::drawRectangle(int, int, int, int, int)>
  48:	e5c45120 	strb	r5, [r4, #288]	; 0x120
  4c:	e28dd008 	add	sp, sp, #8
  50:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

Disassembly of section .text._ZN3vex5brain3lcd10drawCircleEiiii:

00000000 <vex::brain::lcd::drawCircle(int, int, int, int)>:
   0:	e92d41f3 	push	{r0, r1, r4, r5, r6, r7, r8, lr}
   4:	e1a08001 	mov	r8, r1
   8:	e5d05120 	ldrb	r5, [r0, #288]	; 0x120
   c:	e1a06003 	mov	r6, r3
  10:	e59d1020 	ldr	r1, [sp, #32]
  14:	e3a03000 	mov	r3, #0
  18:	e5c03120 	strb	r3, [r0, #288]	; 0x120
  1c:	e1a04000 	mov	r4, r0
  20:	e1a07002 	mov	r7, r2
  24:	ebfffffe 	bl	0 <vex::brain::lcd::drawCircle(int, int, int, int)>
  28:	e1a01008 	mov	r1, r8
  2c:	e1a02007 	mov	r2, r7
  30:	e1a03006 	mov	r3, r6
  34:	e58d0000 	str	r0, [sp]
  38:	e1a00004 	mov	r0, r4
  3c:	ebfffffe 	bl	0 <vex::brain::lcd::drawCircle(int, int, int, int)>
  40:	e5c45120 	strb	r5, [r4, #288]	; 0x120
  44:	e28dd008 	add	sp, sp, #8
  48:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

Disassembly of section .text._ZN3vex5brain6sdcardC2Ev:

00000000 <vex::brain::sdcard::sdcard()>:
   0:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex5brain6sdcardD2Ev:

00000000 <vex::brain::sdcard::~sdcard()>:
   0:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex5brain6sdcard10isInsertedEv:

00000000 <vex::brain::sdcard::isInserted()>:
   0:	e3a00000 	mov	r0, #0
   4:	eafffffe 	b	0 <vexFileDriveStatus>

Disassembly of section .text._ZN3vex5brain6sdcard8loadfileEPKcPhl:

00000000 <vex::brain::sdcard::loadfile(char const*, unsigned char*, long)>:
   0:	e92d40f0 	push	{r4, r5, r6, r7, lr}
   4:	e3a00000 	mov	r0, #0
   8:	e24ddf49 	sub	sp, sp, #292	; 0x124
   c:	e1a05001 	mov	r5, r1
  10:	e1a06002 	mov	r6, r2
  14:	e1a04003 	mov	r4, r3
  18:	ebfffffe 	bl	0 <vexFileDriveStatus>
  1c:	e3500000 	cmp	r0, #0
  20:	03e05000 	mvneq	r5, #0
  24:	0a000037 	beq	108 <vex::brain::sdcard::loadfile(char const*, unsigned char*, long)+0x108>
  28:	e1a01005 	mov	r1, r5
  2c:	e3a02004 	mov	r2, #4
  30:	e28d001c 	add	r0, sp, #28
  34:	ebfffffe 	bl	0 <std::basic_ifstream<char, std::char_traits<char> >::basic_ifstream(char const*, std::_Ios_Openmode)>
  38:	e28d0048 	add	r0, sp, #72	; 0x48
  3c:	ebfffffe 	bl	0 <std::__basic_file<char>::is_open() const>
  40:	e3500000 	cmp	r0, #0
  44:	03e05000 	mvneq	r5, #0
  48:	0a00002c 	beq	100 <vex::brain::sdcard::loadfile(char const*, unsigned char*, long)+0x100>
  4c:	e3a02000 	mov	r2, #0
  50:	e3a03002 	mov	r3, #2
  54:	e28d001c 	add	r0, sp, #28
  58:	e58d3000 	str	r3, [sp]
  5c:	e3a03000 	mov	r3, #0
  60:	e3a05000 	mov	r5, #0
  64:	ebfffffe 	bl	0 <std::istream::seekg(long long, std::_Ios_Seekdir)>
  68:	e28d101c 	add	r1, sp, #28
  6c:	e28d0008 	add	r0, sp, #8
  70:	ebfffffe 	bl	0 <std::istream::tellg()>
  74:	e59d7008 	ldr	r7, [sp, #8]
  78:	e3a02000 	mov	r2, #0
  7c:	e3a03000 	mov	r3, #0
  80:	e58d5000 	str	r5, [sp]
  84:	e28d001c 	add	r0, sp, #28
  88:	ebfffffe 	bl	0 <std::istream::seekg(long long, std::_Ios_Seekdir)>
  8c:	e1a02004 	mov	r2, r4
  90:	e1a00006 	mov	r0, r6
  94:	e1a01005 	mov	r1, r5
  98:	ebfffffe 	bl	0 <memset>
  9c:	e1540007 	cmp	r4, r7
  a0:	a1a04007 	movge	r4, r7
  a4:	e3540000 	cmp	r4, #0
  a8:	da000012 	ble	f8 <vex::brain::sdcard::loadfile(char const*, unsigned char*, long)+0xf8>
  ac:	e3540901 	cmp	r4, #16384	; 0x4000
  b0:	e28d001c 	add	r0, sp, #28
  b4:	e1a01006 	mov	r1, r6
  b8:	b1a07004 	movlt	r7, r4
  bc:	a3a07901 	movge	r7, #16384	; 0x4000
  c0:	e1a02007 	mov	r2, r7
  c4:	ebfffffe 	bl	0 <std::istream::read(char*, int)>
  c8:	e59d20ac 	ldr	r2, [sp, #172]	; 0xac
  cc:	e3520000 	cmp	r2, #0
  d0:	13a04000 	movne	r4, #0
  d4:	1a000005 	bne	f0 <vex::brain::sdcard::loadfile(char const*, unsigned char*, long)+0xf0>
  d8:	e59d3020 	ldr	r3, [sp, #32]
  dc:	e1530007 	cmp	r3, r7
  e0:	11a04002 	movne	r4, r2
  e4:	00855003 	addeq	r5, r5, r3
  e8:	00634004 	rsbeq	r4, r3, r4
  ec:	00866003 	addeq	r6, r6, r3
  f0:	ebfffffe 	bl	0 <vexTaskYield>
  f4:	eaffffea 	b	a4 <vex::brain::sdcard::loadfile(char const*, unsigned char*, long)+0xa4>
  f8:	e28d001c 	add	r0, sp, #28
  fc:	ebfffffe 	bl	0 <std::basic_ifstream<char, std::char_traits<char> >::close()>
 100:	e28d001c 	add	r0, sp, #28
 104:	ebfffffe 	bl	0 <std::basic_ifstream<char, std::char_traits<char> >::~basic_ifstream()>
 108:	e1a00005 	mov	r0, r5
 10c:	e28ddf49 	add	sp, sp, #292	; 0x124
 110:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}

Disassembly of section .text._ZN3vex5brain6sdcard8savefileEPKcPhl:

00000000 <vex::brain::sdcard::savefile(char const*, unsigned char*, long)>:
   0:	e92d40f0 	push	{r4, r5, r6, r7, lr}
   4:	e3a00000 	mov	r0, #0
   8:	e24ddf41 	sub	sp, sp, #260	; 0x104
   c:	e1a04001 	mov	r4, r1
  10:	e1a07002 	mov	r7, r2
  14:	e1a05003 	mov	r5, r3
  18:	ebfffffe 	bl	0 <vexFileDriveStatus>
  1c:	e3500000 	cmp	r0, #0
  20:	03e04000 	mvneq	r4, #0
  24:	0a000021 	beq	b0 <vex::brain::sdcard::savefile(char const*, unsigned char*, long)+0xb0>
  28:	e1a01004 	mov	r1, r4
  2c:	e1a0000d 	mov	r0, sp
  30:	e3a02014 	mov	r2, #20
  34:	ebfffffe 	bl	0 <std::basic_ofstream<char, std::char_traits<char> >::basic_ofstream(char const*, std::_Ios_Openmode)>
  38:	e59d408c 	ldr	r4, [sp, #140]	; 0x8c
  3c:	e3540000 	cmp	r4, #0
  40:	1a000017 	bne	a4 <vex::brain::sdcard::savefile(char const*, unsigned char*, long)+0xa4>
  44:	e28d0028 	add	r0, sp, #40	; 0x28
  48:	ebfffffe 	bl	0 <std::__basic_file<char>::is_open() const>
  4c:	e3500000 	cmp	r0, #0
  50:	0a000013 	beq	a4 <vex::brain::sdcard::savefile(char const*, unsigned char*, long)+0xa4>
  54:	e3550000 	cmp	r5, #0
  58:	da00000e 	ble	98 <vex::brain::sdcard::savefile(char const*, unsigned char*, long)+0x98>
  5c:	e3550901 	cmp	r5, #16384	; 0x4000
  60:	e1a01007 	mov	r1, r7
  64:	e1a0000d 	mov	r0, sp
  68:	b1a06005 	movlt	r6, r5
  6c:	a3a06901 	movge	r6, #16384	; 0x4000
  70:	e1a02006 	mov	r2, r6
  74:	ebfffffe 	bl	0 <std::ostream::write(char const*, int)>
  78:	e59d308c 	ldr	r3, [sp, #140]	; 0x8c
  7c:	e3530000 	cmp	r3, #0
  80:	00844006 	addeq	r4, r4, r6
  84:	00665005 	rsbeq	r5, r6, r5
  88:	00877006 	addeq	r7, r7, r6
  8c:	13a05000 	movne	r5, #0
  90:	ebfffffe 	bl	0 <vexTaskYield>
  94:	eaffffee 	b	54 <vex::brain::sdcard::savefile(char const*, unsigned char*, long)+0x54>
  98:	e1a0000d 	mov	r0, sp
  9c:	ebfffffe 	bl	0 <std::basic_ofstream<char, std::char_traits<char> >::close()>
  a0:	ea000000 	b	a8 <vex::brain::sdcard::savefile(char const*, unsigned char*, long)+0xa8>
  a4:	e3e04000 	mvn	r4, #0
  a8:	e1a0000d 	mov	r0, sp
  ac:	ebfffffe 	bl	0 <std::basic_ofstream<char, std::char_traits<char> >::~basic_ofstream()>
  b0:	e1a00004 	mov	r0, r4
  b4:	e28ddf41 	add	sp, sp, #260	; 0x104
  b8:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}

Disassembly of section .text._ZN3vex5brain6sdcard10appendfileEPKcPhl:

00000000 <vex::brain::sdcard::appendfile(char const*, unsigned char*, long)>:
   0:	e92d40f0 	push	{r4, r5, r6, r7, lr}
   4:	e3a00000 	mov	r0, #0
   8:	e24ddf41 	sub	sp, sp, #260	; 0x104
   c:	e1a04001 	mov	r4, r1
  10:	e1a07002 	mov	r7, r2
  14:	e1a05003 	mov	r5, r3
  18:	ebfffffe 	bl	0 <vexFileDriveStatus>
  1c:	e3500000 	cmp	r0, #0
  20:	03e04000 	mvneq	r4, #0
  24:	0a000021 	beq	b0 <vex::brain::sdcard::appendfile(char const*, unsigned char*, long)+0xb0>
  28:	e1a01004 	mov	r1, r4
  2c:	e1a0000d 	mov	r0, sp
  30:	e3a02005 	mov	r2, #5
  34:	ebfffffe 	bl	0 <std::basic_ofstream<char, std::char_traits<char> >::basic_ofstream(char const*, std::_Ios_Openmode)>
  38:	e59d408c 	ldr	r4, [sp, #140]	; 0x8c
  3c:	e3540000 	cmp	r4, #0
  40:	1a000017 	bne	a4 <vex::brain::sdcard::appendfile(char const*, unsigned char*, long)+0xa4>
  44:	e28d0028 	add	r0, sp, #40	; 0x28
  48:	ebfffffe 	bl	0 <std::__basic_file<char>::is_open() const>
  4c:	e3500000 	cmp	r0, #0
  50:	0a000013 	beq	a4 <vex::brain::sdcard::appendfile(char const*, unsigned char*, long)+0xa4>
  54:	e3550000 	cmp	r5, #0
  58:	da00000e 	ble	98 <vex::brain::sdcard::appendfile(char const*, unsigned char*, long)+0x98>
  5c:	e3550901 	cmp	r5, #16384	; 0x4000
  60:	e1a01007 	mov	r1, r7
  64:	e1a0000d 	mov	r0, sp
  68:	b1a06005 	movlt	r6, r5
  6c:	a3a06901 	movge	r6, #16384	; 0x4000
  70:	e1a02006 	mov	r2, r6
  74:	ebfffffe 	bl	0 <std::ostream::write(char const*, int)>
  78:	e59d308c 	ldr	r3, [sp, #140]	; 0x8c
  7c:	e3530000 	cmp	r3, #0
  80:	00844006 	addeq	r4, r4, r6
  84:	00665005 	rsbeq	r5, r6, r5
  88:	00877006 	addeq	r7, r7, r6
  8c:	13a05000 	movne	r5, #0
  90:	ebfffffe 	bl	0 <vexTaskYield>
  94:	eaffffee 	b	54 <vex::brain::sdcard::appendfile(char const*, unsigned char*, long)+0x54>
  98:	e1a0000d 	mov	r0, sp
  9c:	ebfffffe 	bl	0 <std::basic_ofstream<char, std::char_traits<char> >::close()>
  a0:	ea000000 	b	a8 <vex::brain::sdcard::appendfile(char const*, unsigned char*, long)+0xa8>
  a4:	e3e04000 	mvn	r4, #0
  a8:	e1a0000d 	mov	r0, sp
  ac:	ebfffffe 	bl	0 <std::basic_ofstream<char, std::char_traits<char> >::~basic_ofstream()>
  b0:	e1a00004 	mov	r0, r4
  b4:	e28ddf41 	add	sp, sp, #260	; 0x104
  b8:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}

Disassembly of section .text._ZN3vex5brain6sdcard4sizeEPKc:

00000000 <vex::brain::sdcard::size(char const*)>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e3a00000 	mov	r0, #0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <vexFileDriveStatus>
  10:	e3500000 	cmp	r0, #0
  14:	0a00000a 	beq	44 <vex::brain::sdcard::size(char const*)+0x44>
  18:	e1a00004 	mov	r0, r4
  1c:	e59f1030 	ldr	r1, [pc, #48]	; 54 <vex::brain::sdcard::size(char const*)+0x54>
  20:	ebfffffe 	bl	0 <vexFileOpen>
  24:	e2504000 	subs	r4, r0, #0
  28:	0a000007 	beq	4c <vex::brain::sdcard::size(char const*)+0x4c>
  2c:	ebfffffe 	bl	0 <vexFileSize>
  30:	e1a05000 	mov	r5, r0
  34:	e1a00004 	mov	r0, r4
  38:	ebfffffe 	bl	0 <vexFileClose>
  3c:	e1a00005 	mov	r0, r5
  40:	e8bd8038 	pop	{r3, r4, r5, pc}
  44:	e3e00000 	mvn	r0, #0
  48:	e8bd8038 	pop	{r3, r4, r5, pc}
  4c:	e1a00004 	mov	r0, r4
  50:	e8bd8038 	pop	{r3, r4, r5, pc}
  54:	0000002b 	andeq	r0, r0, fp, lsr #32

Disassembly of section .text._ZN3vex5brain6sdcard6existsEPKc:

00000000 <vex::brain::sdcard::exists(char const*)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e3a00000 	mov	r0, #0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <vexFileDriveStatus>
  10:	e3500000 	cmp	r0, #0
  14:	1a000001 	bne	20 <vex::brain::sdcard::exists(char const*)+0x20>
  18:	e3a00000 	mov	r0, #0
  1c:	e8bd8010 	pop	{r4, pc}
  20:	e1a00004 	mov	r0, r4
  24:	e59f1014 	ldr	r1, [pc, #20]	; 40 <vex::brain::sdcard::exists(char const*)+0x40>
  28:	ebfffffe 	bl	0 <vexFileOpen>
  2c:	e3500000 	cmp	r0, #0
  30:	0afffff8 	beq	18 <vex::brain::sdcard::exists(char const*)+0x18>
  34:	ebfffffe 	bl	0 <vexFileClose>
  38:	e3a00001 	mov	r0, #1
  3c:	e8bd8010 	pop	{r4, pc}
  40:	0000002b 	andeq	r0, r0, fp, lsr #32

Disassembly of section .text._ZN3vex5brain7battery8capacityENS_12percentUnitsE:

00000000 <vex::brain::battery::capacity(vex::percentUnits)>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexBatteryCapacityGet>
   8:	ec410b30 	vmov	d16, r0, r1
   c:	eefd7be0 	vcvt.s32.f64	s15, d16
  10:	ee170a90 	vmov	r0, s15
  14:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text._ZN3vex5brain7battery11temperatureENS_12percentUnitsE:

00000000 <vex::brain::battery::temperature(vex::percentUnits)>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexBatteryTemperatureGet>
   8:	eef30b04 	vmov.f64	d16, #52	; 0x41a00000  20.0
   c:	ec410b31 	vmov	d17, r0, r1
  10:	ee710be0 	vsub.f64	d16, d17, d16
  14:	eddf1b0b 	vldr	d17, [pc, #44]	; 48 <vex::brain::battery::temperature(vex::percentUnits)+0x48>
  18:	eec00ba1 	vdiv.f64	d16, d16, d17
  1c:	eddf1b0b 	vldr	d17, [pc, #44]	; 50 <vex::brain::battery::temperature(vex::percentUnits)+0x50>
  20:	ee600ba1 	vmul.f64	d16, d16, d17
  24:	eef50bc0 	vcmpe.f64	d16, #0.0
  28:	eef1fa10 	vmrs	APSR_nzcv, fpscr
  2c:	4ddf0b09 	vldrmi	d16, [pc, #36]	; 58 <vex::brain::battery::temperature(vex::percentUnits)+0x58>
  30:	4a000002 	bmi	40 <vex::brain::battery::temperature(vex::percentUnits)+0x40>
  34:	eef40b61 	vcmp.f64	d16, d17
  38:	eef1fa10 	vmrs	APSR_nzcv, fpscr
  3c:	cef00b61 	vmovgt.f64	d16, d17
  40:	ec510b30 	vmov	r0, r1, d16
  44:	e8bd8008 	pop	{r3, pc}
  48:	00000000 	andeq	r0, r0, r0
  4c:	40490000 	submi	r0, r9, r0
  50:	00000000 	andeq	r0, r0, r0
  54:	40590000 	subsmi	r0, r9, r0
	...

Disassembly of section .text._ZN3vex5brain7battery11temperatureENS_16temperatureUnitsE:

00000000 <vex::brain::battery::temperature(vex::temperatureUnits)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexBatteryTemperatureGet>
   c:	e3540001 	cmp	r4, #1
  10:	0ddf1b06 	vldreq	d17, [pc, #24]	; 30 <vex::brain::battery::temperature(vex::temperatureUnits)+0x30>
  14:	0ddf2b07 	vldreq	d18, [pc, #28]	; 38 <vex::brain::battery::temperature(vex::temperatureUnits)+0x38>
  18:	ec410b30 	vmov	d16, r0, r1
  1c:	0e401ba2 	vmlaeq.f64	d17, d16, d18
  20:	0ef00b61 	vmoveq.f64	d16, d17
  24:	ec510b30 	vmov	r0, r1, d16
  28:	e8bd8010 	pop	{r4, pc}
  2c:	e320f000 	nop	{0}
  30:	00000000 	andeq	r0, r0, r0
  34:	40400000 	submi	r0, r0, r0
  38:	cccccccd 	stclgt	12, cr12, [ip], {205}	; 0xcd
  3c:	3ffccccc 	svccc	0x00fccccc

Disassembly of section .text._ZN3vex5brain7battery7voltageENS_12voltageUnitsE:

00000000 <vex::brain::battery::voltage(vex::voltageUnits)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexBatteryVoltageGet>
   c:	e3540000 	cmp	r4, #0
  10:	0ddf1b04 	vldreq	d17, [pc, #16]	; 28 <vex::brain::battery::voltage(vex::voltageUnits)+0x28>
  14:	ee070a90 	vmov	s15, r0
  18:	eef80be7 	vcvt.f64.s32	d16, s15
  1c:	0ec00ba1 	vdiveq.f64	d16, d16, d17
  20:	ec510b30 	vmov	r0, r1, d16
  24:	e8bd8010 	pop	{r4, pc}
  28:	00000000 	andeq	r0, r0, r0
  2c:	408f4000 	addmi	r4, pc, r0

Disassembly of section .text._ZN3vex5brain7battery7currentENS_12currentUnitsE:

00000000 <vex::brain::battery::current(vex::currentUnits)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexBatteryCurrentGet>
   c:	e3540000 	cmp	r4, #0
  10:	0ddf1b04 	vldreq	d17, [pc, #16]	; 28 <vex::brain::battery::current(vex::currentUnits)+0x28>
  14:	ee070a90 	vmov	s15, r0
  18:	eef80be7 	vcvt.f64.s32	d16, s15
  1c:	0ec00ba1 	vdiveq.f64	d16, d16, d17
  20:	ec510b30 	vmov	r0, r1, d16
  24:	e8bd8010 	pop	{r4, pc}
  28:	00000000 	andeq	r0, r0, r0
  2c:	408f4000 	addmi	r4, pc, r0

Disassembly of section .text._ZN3vex5brainD2Ev:

00000000 <vex::brain::~brain()>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e2800f51 	add	r0, r0, #324	; 0x144
   c:	ebfffffe 	bl	0 <vex::triport::~triport()>
  10:	e2840f4f 	add	r0, r4, #316	; 0x13c
  14:	ebfffffe 	bl	0 <vex::timer::~timer()>
  18:	e1a00004 	mov	r0, r4
  1c:	e8bd8010 	pop	{r4, pc}

Disassembly of section .rodata.str1.1:

00000000 <.rodata.str1.1>:
   0:	6f6e6f6d 	svcvs	0x006e6f6d
   4:	63617073 	cmnvs	r1, #115	; 0x73
   8:	72700065 	rsbsvc	r0, r0, #101	; 0x65
   c:	726f706f 	rsbvc	r7, pc, #111	; 0x6f
  10:	6e6f6974 			; <UNDEFINED> instruction: 0x6e6f6974
  14:	4e006c61 	cdpmi	12, 0, cr6, cr0, cr1, {3}
  18:	536f746f 	cmnpl	pc, #1862270976	; 0x6f000000
  1c:	43736e61 	cmnmi	r3, #1552	; 0x610
  20:	315f4b4a 	cmpcc	pc, sl, asr #22
  24:	00747036 	rsbseq	r7, r4, r6, lsr r0
  28:	72006272 	andvc	r6, r0, #536870919	; 0x20000007
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
  44:	5b202965 	blpl	80a5e0 <vex::brain::lcd::drawLine(int, int, int, int)+0x80a5e0>
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

