
vex_gps.cpp.obj:     file format elf32-littlearm


Disassembly of section .group:

00000000 <.group>:
   0:	00000001 	andeq	r0, r0, r1
   4:	00000065 	andeq	r0, r0, r5, rrx

Disassembly of section .text._ZN3vex3gps11getTurnTypeEv:

00000000 <vex::gps::getTurnType()>:
   0:	e590002c 	ldr	r0, [r0, #44]	; 0x2c
   4:	e12fff1e 	bx	lr

Disassembly of section .text._ZThn16_N3vex3gps11getTurnTypeEv:

00000000 <non-virtual thunk to vex::gps::getTurnType()>:
   0:	e2400010 	sub	r0, r0, #16
   4:	eafffffe 	b	0 <non-virtual thunk to vex::gps::getTurnType()>

Disassembly of section .text._ZN3vex3gps10setHeadingEdNS_13rotationUnitsE:

00000000 <vex::gps::setHeading(double, vex::rotationUnits)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e3a01000 	mov	r1, #0
   8:	ed2d8b02 	vpush	{d8}
   c:	e1a04000 	mov	r4, r0
  10:	ec432b18 	vmov	d8, r2, r3
  14:	e3a02000 	mov	r2, #0
  18:	e3a03000 	mov	r3, #0
  1c:	e1c021f8 	strd	r2, [r0, #24]
  20:	e59d3010 	ldr	r3, [sp, #16]
  24:	e3530001 	cmp	r3, #1
  28:	e5903000 	ldr	r3, [r0]
  2c:	0ddf0b07 	vldreq	d16, [pc, #28]	; 50 <vex::gps::setHeading(double, vex::rotationUnits)+0x50>
  30:	e5933024 	ldr	r3, [r3, #36]	; 0x24
  34:	0e288b20 	vmuleq.f64	d8, d8, d16
  38:	e12fff33 	blx	r3
  3c:	ec410b30 	vmov	d16, r0, r1
  40:	ee308bc8 	vsub.f64	d8, d16, d8
  44:	ed848b06 	vstr	d8, [r4, #24]
  48:	ecbd8b02 	vpop	{d8}
  4c:	e8bd8010 	pop	{r4, pc}
  50:	00000000 	andeq	r0, r0, r0
  54:	40768000 	rsbsmi	r8, r6, r0

Disassembly of section .text._ZThn16_N3vex3gps10setHeadingEdNS_13rotationUnitsE:

00000000 <non-virtual thunk to vex::gps::setHeading(double, vex::rotationUnits)>:
   0:	e2400010 	sub	r0, r0, #16
   4:	eafffffe 	b	0 <non-virtual thunk to vex::gps::setHeading(double, vex::rotationUnits)>

Disassembly of section .text._ZN3vex3gps11setRotationEdNS_13rotationUnitsE:

00000000 <vex::gps::setRotation(double, vex::rotationUnits)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e3a01000 	mov	r1, #0
   8:	ed2d8b02 	vpush	{d8}
   c:	e1a04000 	mov	r4, r0
  10:	ec432b18 	vmov	d8, r2, r3
  14:	e3a02000 	mov	r2, #0
  18:	e3a03000 	mov	r3, #0
  1c:	e1c022f0 	strd	r2, [r0, #32]
  20:	e59d3010 	ldr	r3, [sp, #16]
  24:	e3530001 	cmp	r3, #1
  28:	e5903000 	ldr	r3, [r0]
  2c:	0ddf0b07 	vldreq	d16, [pc, #28]	; 50 <vex::gps::setRotation(double, vex::rotationUnits)+0x50>
  30:	e5933028 	ldr	r3, [r3, #40]	; 0x28
  34:	0e288b20 	vmuleq.f64	d8, d8, d16
  38:	e12fff33 	blx	r3
  3c:	ec410b30 	vmov	d16, r0, r1
  40:	ee308bc8 	vsub.f64	d8, d16, d8
  44:	ed848b08 	vstr	d8, [r4, #32]
  48:	ecbd8b02 	vpop	{d8}
  4c:	e8bd8010 	pop	{r4, pc}
  50:	00000000 	andeq	r0, r0, r0
  54:	40768000 	rsbsmi	r8, r6, r0

Disassembly of section .text._ZThn16_N3vex3gps11setRotationEdNS_13rotationUnitsE:

00000000 <non-virtual thunk to vex::gps::setRotation(double, vex::rotationUnits)>:
   0:	e2400010 	sub	r0, r0, #16
   4:	eafffffe 	b	0 <non-virtual thunk to vex::gps::setRotation(double, vex::rotationUnits)>

Disassembly of section .text._ZN3vex3gpsD2Ev:

00000000 <vex::gps::~gps()>:
   0:	e59f3014 	ldr	r3, [pc, #20]	; 1c <vex::gps::~gps()+0x1c>
   4:	e92d4010 	push	{r4, lr}
   8:	e1a04000 	mov	r4, r0
   c:	e5803000 	str	r3, [r0]
  10:	ebfffffe 	bl	0 <vex::device::~device()>
  14:	e1a00004 	mov	r0, r4
  18:	e8bd8010 	pop	{r4, pc}
  1c:	00000008 	andeq	r0, r0, r8

Disassembly of section .text._ZThn16_N3vex3gpsD1Ev:

00000000 <non-virtual thunk to vex::gps::~gps()>:
   0:	e2400010 	sub	r0, r0, #16
   4:	eafffffe 	b	0 <non-virtual thunk to vex::gps::~gps()>

Disassembly of section .text._ZN3vex3gpsD0Ev:

00000000 <vex::gps::~gps()>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <vex::gps::~gps()>
   c:	e1a00004 	mov	r0, r4
  10:	ebfffffe 	bl	0 <operator delete(void*)>
  14:	e1a00004 	mov	r0, r4
  18:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZThn16_N3vex3gpsD0Ev:

00000000 <non-virtual thunk to vex::gps::~gps()>:
   0:	e2400010 	sub	r0, r0, #16
   4:	eafffffe 	b	0 <non-virtual thunk to vex::gps::~gps()>

Disassembly of section .text._ZN3vex3gps9installedEv:

00000000 <vex::gps::installed()>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vex::device::type()>
   8:	e2400014 	sub	r0, r0, #20
   c:	e16f0f10 	clz	r0, r0
  10:	e1a002a0 	lsr	r0, r0, #5
  14:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text._ZN3vex3gps5angleENS_13rotationUnitsE:

00000000 <vex::gps::angle(vex::rotationUnits)>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ed2d8b02 	vpush	{d8}
   c:	e1a06001 	mov	r6, r1
  10:	e5900008 	ldr	r0, [r0, #8]
  14:	ebfffffe 	bl	0 <vexGpsDegreesGet>
  18:	e594302c 	ldr	r3, [r4, #44]	; 0x2c
  1c:	ed948b06 	vldr	d8, [r4, #24]
  20:	e3530000 	cmp	r3, #0
  24:	e59f5054 	ldr	r5, [pc, #84]	; 80 <vex::gps::angle(vex::rotationUnits)+0x80>
  28:	ec410b30 	vmov	d16, r0, r1
  2c:	e5940008 	ldr	r0, [r4, #8]
  30:	e3a04000 	mov	r4, #0
  34:	0ef10b60 	vnegeq.f64	d16, d16
  38:	ee308bc8 	vsub.f64	d8, d16, d8
  3c:	ebfffffe 	bl	0 <vexGpsRotationGet>
  40:	e1a02004 	mov	r2, r4
  44:	e1a03005 	mov	r3, r5
  48:	ec410b30 	vmov	d16, r0, r1
  4c:	ee780b60 	vsub.f64	d16, d8, d16
  50:	ec510b30 	vmov	r0, r1, d16
  54:	ebfffffe 	bl	0 <fmod>
  58:	ecbd8b02 	vpop	{d8}
  5c:	ec454b31 	vmov	d17, r4, r5
  60:	ec410b30 	vmov	d16, r0, r1
  64:	eef50bc0 	vcmpe.f64	d16, #0.0
  68:	eef1fa10 	vmrs	APSR_nzcv, fpscr
  6c:	4e700ba1 	vaddmi.f64	d16, d16, d17
  70:	e3560001 	cmp	r6, #1
  74:	0ec00ba1 	vdiveq.f64	d16, d16, d17
  78:	ec510b30 	vmov	r0, r1, d16
  7c:	e8bd8070 	pop	{r4, r5, r6, pc}
  80:	40768000 	rsbsmi	r8, r6, r0

Disassembly of section .text._ZThn16_N3vex3gps5angleENS_13rotationUnitsE:

00000000 <non-virtual thunk to vex::gps::angle(vex::rotationUnits)>:
   0:	e2400010 	sub	r0, r0, #16
   4:	eafffffe 	b	0 <non-virtual thunk to vex::gps::angle(vex::rotationUnits)>

Disassembly of section .text._ZN3vex3gps7headingENS_13rotationUnitsE:

00000000 <vex::gps::heading(vex::rotationUnits)>:
   0:	eafffffe 	b	0 <vex::gps::heading(vex::rotationUnits)>

Disassembly of section .text._ZThn16_N3vex3gps7headingENS_13rotationUnitsE:

00000000 <non-virtual thunk to vex::gps::heading(vex::rotationUnits)>:
   0:	e2400010 	sub	r0, r0, #16
   4:	eafffffe 	b	0 <non-virtual thunk to vex::gps::heading(vex::rotationUnits)>

Disassembly of section .text._ZN3vex3gps5valueEv:

00000000 <vex::gps::value()>:
   0:	e92d4008 	push	{r3, lr}
   4:	e3a01000 	mov	r1, #0
   8:	ebfffffe 	bl	0 <vex::gps::value()>
   c:	ec410b30 	vmov	d16, r0, r1
  10:	eefd7be0 	vcvt.s32.f64	s15, d16
  14:	ee170a90 	vmov	r0, s15
  18:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text._ZN3vex3gps8rotationENS_13rotationUnitsE:

00000000 <vex::gps::rotation(vex::rotationUnits)>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ed2d8b02 	vpush	{d8}
   c:	e1a05001 	mov	r5, r1
  10:	e5900008 	ldr	r0, [r0, #8]
  14:	ebfffffe 	bl	0 <vexGpsHeadingGet>
  18:	e594302c 	ldr	r3, [r4, #44]	; 0x2c
  1c:	ed948b08 	vldr	d8, [r4, #32]
  20:	e3530000 	cmp	r3, #0
  24:	ec410b30 	vmov	d16, r0, r1
  28:	e5940008 	ldr	r0, [r4, #8]
  2c:	0ef10b60 	vnegeq.f64	d16, d16
  30:	ee308bc8 	vsub.f64	d8, d16, d8
  34:	ebfffffe 	bl	0 <vexGpsRotationGet>
  38:	e3550001 	cmp	r5, #1
  3c:	0ddf1b05 	vldreq	d17, [pc, #20]	; 58 <vex::gps::rotation(vex::rotationUnits)+0x58>
  40:	ec410b30 	vmov	d16, r0, r1
  44:	ee780b60 	vsub.f64	d16, d8, d16
  48:	ecbd8b02 	vpop	{d8}
  4c:	0ec00ba1 	vdiveq.f64	d16, d16, d17
  50:	ec510b30 	vmov	r0, r1, d16
  54:	e8bd8038 	pop	{r3, r4, r5, pc}
  58:	00000000 	andeq	r0, r0, r0
  5c:	40768000 	rsbsmi	r8, r6, r0

Disassembly of section .text._ZThn16_N3vex3gps8rotationENS_13rotationUnitsE:

00000000 <non-virtual thunk to vex::gps::rotation(vex::rotationUnits)>:
   0:	e2400010 	sub	r0, r0, #16
   4:	eafffffe 	b	0 <non-virtual thunk to vex::gps::rotation(vex::rotationUnits)>

Disassembly of section .text._ZN3vex3gps13isCalibratingEv:

00000000 <vex::gps::isCalibrating()>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e5900008 	ldr	r0, [r0, #8]
   c:	ebfffffe 	bl	0 <vexGpsStatusGet>
  10:	e3100001 	tst	r0, #1
  14:	1a000005 	bne	30 <vex::gps::isCalibrating()+0x30>
  18:	ebfffffe 	bl	0 <vexSystemTimeGet>
  1c:	e5943028 	ldr	r3, [r4, #40]	; 0x28
  20:	e1500003 	cmp	r0, r3
  24:	23a00000 	movcs	r0, #0
  28:	33a00001 	movcc	r0, #1
  2c:	e8bd8010 	pop	{r4, pc}
  30:	e3a00001 	mov	r0, #1
  34:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZThn16_N3vex3gps13isCalibratingEv:

00000000 <non-virtual thunk to vex::gps::isCalibrating()>:
   0:	e2400010 	sub	r0, r0, #16
   4:	eafffffe 	b	0 <non-virtual thunk to vex::gps::isCalibrating()>

Disassembly of section .text._ZN3vex3gps4gyroC2Ev:

00000000 <vex::gps::gyro::gyro()>:
   0:	e1a03000 	mov	r3, r0
   4:	e2802008 	add	r2, r0, #8
   8:	e92d4030 	push	{r4, r5, lr}
   c:	e3a04000 	mov	r4, #0
  10:	e3a05000 	mov	r5, #0
  14:	e1c040f0 	strd	r4, [r0]
  18:	e1c040f8 	strd	r4, [r0, #8]
  1c:	e1c041f0 	strd	r4, [r0, #16]
  20:	e5830018 	str	r0, [r3, #24]
  24:	e580201c 	str	r2, [r0, #28]
  28:	e2802010 	add	r2, r0, #16
  2c:	e5802020 	str	r2, [r0, #32]
  30:	e8bd8030 	pop	{r4, r5, pc}

Disassembly of section .text._ZN3vex3gps4gyroD2Ev:

00000000 <vex::gps::gyro::~gyro()>:
   0:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex3gps4gyroaSES1_:

00000000 <vex::gps::gyro::operator=(vex::gps::gyro)>:
   0:	e92d4030 	push	{r4, r5, lr}
   4:	e1c140d0 	ldrd	r4, [r1]
   8:	e1c040f0 	strd	r4, [r0]
   c:	e1c140d0 	ldrd	r4, [r1]
  10:	e1c040f0 	strd	r4, [r0]
  14:	e1c140d0 	ldrd	r4, [r1]
  18:	e1c040f0 	strd	r4, [r0]
  1c:	e8bd8030 	pop	{r4, r5, pc}

Disassembly of section .text._ZN3vex3gps5accelC2Ev:

00000000 <vex::gps::accel::accel()>:
   0:	e92d4030 	push	{r4, r5, lr}
   4:	e3a04000 	mov	r4, #0
   8:	e3a05000 	mov	r5, #0
   c:	e1c040f0 	strd	r4, [r0]
  10:	e1c040f8 	strd	r4, [r0, #8]
  14:	e1a03000 	mov	r3, r0
  18:	e59f501c 	ldr	r5, [pc, #28]	; 3c <vex::gps::accel::accel()+0x3c>
  1c:	e2802008 	add	r2, r0, #8
  20:	e3a04000 	mov	r4, #0
  24:	e1c041f0 	strd	r4, [r0, #16]
  28:	e5830018 	str	r0, [r3, #24]
  2c:	e580201c 	str	r2, [r0, #28]
  30:	e2802010 	add	r2, r0, #16
  34:	e5802020 	str	r2, [r0, #32]
  38:	e8bd8030 	pop	{r4, r5, pc}
  3c:	bff00000 	svclt	0x00f00000	; IMB

Disassembly of section .text._ZN3vex3gps5accelD2Ev:

00000000 <vex::gps::accel::~accel()>:
   0:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex3gps5accelaSES1_:

00000000 <vex::gps::accel::operator=(vex::gps::accel)>:
   0:	e92d4030 	push	{r4, r5, lr}
   4:	e1c140d0 	ldrd	r4, [r1]
   8:	e1c040f0 	strd	r4, [r0]
   c:	e1c140d8 	ldrd	r4, [r1, #8]
  10:	e1c040f8 	strd	r4, [r0, #8]
  14:	e1c141d0 	ldrd	r4, [r1, #16]
  18:	e1c041f0 	strd	r4, [r0, #16]
  1c:	e8bd8030 	pop	{r4, r5, pc}

Disassembly of section .text._ZN3vex3gps8attitudeC2Ev:

00000000 <vex::gps::attitude::attitude()>:
   0:	e1a03000 	mov	r3, r0
   4:	e2802008 	add	r2, r0, #8
   8:	e92d4030 	push	{r4, r5, lr}
   c:	e3a04000 	mov	r4, #0
  10:	e3a05000 	mov	r5, #0
  14:	e1c040f0 	strd	r4, [r0]
  18:	e1c040f8 	strd	r4, [r0, #8]
  1c:	e1c041f0 	strd	r4, [r0, #16]
  20:	e5830018 	str	r0, [r3, #24]
  24:	e580201c 	str	r2, [r0, #28]
  28:	e2802010 	add	r2, r0, #16
  2c:	e5802020 	str	r2, [r0, #32]
  30:	e8bd8030 	pop	{r4, r5, pc}

Disassembly of section .text._ZN3vex3gps8attitudeC2Eddd:

00000000 <vex::gps::attitude::attitude(double, double, double)>:
   0:	e1c020f0 	strd	r2, [r0]
   4:	e1a01000 	mov	r1, r0
   8:	e1cd20d0 	ldrd	r2, [sp]
   c:	e1c020f8 	strd	r2, [r0, #8]
  10:	e1cd20d8 	ldrd	r2, [sp, #8]
  14:	e1c021f0 	strd	r2, [r0, #16]
  18:	e2803008 	add	r3, r0, #8
  1c:	e5810018 	str	r0, [r1, #24]
  20:	e580301c 	str	r3, [r0, #28]
  24:	e2803010 	add	r3, r0, #16
  28:	e5803020 	str	r3, [r0, #32]
  2c:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex3gps8attitudeD2Ev:

00000000 <vex::gps::attitude::~attitude()>:
   0:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex3gps8attitude9transformERdS2_S2_:

00000000 <vex::gps::attitude::transform(double&, double&, double&)>:
   0:	edd11b00 	vldr	d17, [r1]
   4:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
   8:	e1a04001 	mov	r4, r1
   c:	ed2d8b08 	vpush	{d8-d11}
  10:	e1a07000 	mov	r7, r0
  14:	e1a05002 	mov	r5, r2
  18:	e1a06003 	mov	r6, r3
  1c:	ed93ab00 	vldr	d10, [r3]
  20:	eddf0b36 	vldr	d16, [pc, #216]	; 100 <vex::gps::attitude::transform(double&, double&, double&)+0x100>
  24:	eef02b61 	vmov.f64	d18, d17
  28:	ed9f9b36 	vldr	d9, [pc, #216]	; 108 <vex::gps::attitude::transform(double&, double&, double&)+0x108>
  2c:	ee5a2b20 	vnmls.f64	d18, d10, d16
  30:	ee11abe0 	vnmla.f64	d10, d17, d16
  34:	edc12b00 	vstr	d18, [r1]
  38:	ed83ab00 	vstr	d10, [r3]
  3c:	ed90bb00 	vldr	d11, [r0]
  40:	ee2bbb09 	vmul.f64	d11, d11, d9
  44:	ec510b1b 	vmov	r0, r1, d11
  48:	ebfffffe 	bl	0 <sin>
  4c:	ec410b18 	vmov	d8, r0, r1
  50:	ec510b1b 	vmov	r0, r1, d11
  54:	ebfffffe 	bl	0 <cos>
  58:	edd50b00 	vldr	d16, [r5]
  5c:	ee6a1b08 	vmul.f64	d17, d10, d8
  60:	ee208b88 	vmul.f64	d8, d16, d8
  64:	ec410b32 	vmov	d18, r0, r1
  68:	ee1a8b22 	vnmls.f64	d8, d10, d18
  6c:	ee401ba2 	vmla.f64	d17, d16, d18
  70:	edc51b00 	vstr	d17, [r5]
  74:	ed868b00 	vstr	d8, [r6]
  78:	ed97ab02 	vldr	d10, [r7, #8]
  7c:	ee2aab09 	vmul.f64	d10, d10, d9
  80:	ec510b1a 	vmov	r0, r1, d10
  84:	ebfffffe 	bl	0 <sin>
  88:	ec410b1b 	vmov	d11, r0, r1
  8c:	ec510b1a 	vmov	r0, r1, d10
  90:	ebfffffe 	bl	0 <cos>
  94:	ee681b0b 	vmul.f64	d17, d8, d11
  98:	edd40b00 	vldr	d16, [r4]
  9c:	ec410b32 	vmov	d18, r0, r1
  a0:	ee401ba2 	vmla.f64	d17, d16, d18
  a4:	ee600b8b 	vmul.f64	d16, d16, d11
  a8:	edc41b00 	vstr	d17, [r4]
  ac:	ee580b22 	vnmls.f64	d16, d8, d18
  b0:	edc60b00 	vstr	d16, [r6]
  b4:	edd70b04 	vldr	d16, [r7, #16]
  b8:	ee209b89 	vmul.f64	d9, d16, d9
  bc:	ec510b19 	vmov	r0, r1, d9
  c0:	ebfffffe 	bl	0 <sin>
  c4:	ec410b18 	vmov	d8, r0, r1
  c8:	ec510b19 	vmov	r0, r1, d9
  cc:	ebfffffe 	bl	0 <cos>
  d0:	edd53b00 	vldr	d19, [r5]
  d4:	edd40b00 	vldr	d16, [r4]
  d8:	ee631b88 	vmul.f64	d17, d19, d8
  dc:	ec410b32 	vmov	d18, r0, r1
  e0:	ee401ba2 	vmla.f64	d17, d16, d18
  e4:	ee600b88 	vmul.f64	d16, d16, d8
  e8:	ecbd8b08 	vpop	{d8-d11}
  ec:	edc41b00 	vstr	d17, [r4]
  f0:	ee530ba2 	vnmls.f64	d16, d19, d18
  f4:	edc50b00 	vstr	d16, [r5]
  f8:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
  fc:	e320f000 	nop	{0}
 100:	33145c07 	tstcc	r4, #1792	; 0x700
 104:	3ca1a626 	stccc	6, cr10, [r1], #152	; 0x98
 108:	a2529d39 	subsge	r9, r2, #3648	; 0xe40
 10c:	3f91df46 	svccc	0x0091df46

Disassembly of section .text._ZN3vex3gps6statusEv:

00000000 <vex::gps::status()>:
   0:	e5900008 	ldr	r0, [r0, #8]
   4:	eafffffe 	b	0 <vexGpsStatusGet>

Disassembly of section .text._ZN3vex3gps11temperatureEv:

00000000 <vex::gps::temperature()>:
   0:	e5900008 	ldr	r0, [r0, #8]
   4:	eafffffe 	b	0 <vexGpsTemperatureGet>

Disassembly of section .text._ZN3vex3gps8datarateEm:

00000000 <vex::gps::datarate(unsigned long)>:
   0:	e5900008 	ldr	r0, [r0, #8]
   4:	eafffffe 	b	0 <vexGpsDataRateSet>

Disassembly of section .text._ZN3vex3gps11setTurnTypeENS_8turnTypeE:

00000000 <vex::gps::setTurnType(vex::turnType)>:
   0:	e580102c 	str	r1, [r0, #44]	; 0x2c
   4:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex3gps6bypassEb:

00000000 <vex::gps::bypass(bool)>:
   0:	e3510000 	cmp	r1, #0
   4:	e5900008 	ldr	r0, [r0, #8]
   8:	e59f1004 	ldr	r1, [pc, #4]	; 14 <vex::gps::bypass(bool)+0x14>
   c:	03a01401 	moveq	r1, #16777216	; 0x1000000
  10:	eafffffe 	b	0 <vexGpsModeSet>
  14:	01000001 	tsteq	r0, r1

Disassembly of section .text._ZN3vex3gps17setSensorRotationEd:

00000000 <vex::gps::setSensorRotation(double)>:
   0:	e5900008 	ldr	r0, [r0, #8]
   4:	eafffffe 	b	0 <vexGpsRotationSet>

Disassembly of section .text._ZN3vex3gpsC2EldNS_8turnTypeE:

00000000 <vex::gps::gps(long, double, vex::turnType)>:
   0:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e1a05001 	mov	r5, r1
   c:	e1a06002 	mov	r6, r2
  10:	e1a07003 	mov	r7, r3
  14:	ebfffffe 	bl	0 <vex::device::device(long)>
  18:	e59f3050 	ldr	r3, [pc, #80]	; 70 <vex::gps::gps(long, double, vex::turnType)+0x70>
  1c:	e3a02000 	mov	r2, #0
  20:	e5843000 	str	r3, [r4]
  24:	e2833038 	add	r3, r3, #56	; 0x38
  28:	e5843010 	str	r3, [r4, #16]
  2c:	e3a03000 	mov	r3, #0
  30:	e1c421f8 	strd	r2, [r4, #24]
  34:	e1c422f0 	strd	r2, [r4, #32]
  38:	ebfffffe 	bl	0 <vexSystemTimeGet>
  3c:	e59d3018 	ldr	r3, [sp, #24]
  40:	e3a013c1 	mov	r1, #67108867	; 0x4000003
  44:	e584302c 	str	r3, [r4, #44]	; 0x2c
  48:	e28000c8 	add	r0, r0, #200	; 0xc8
  4c:	e5840028 	str	r0, [r4, #40]	; 0x28
  50:	e1a00005 	mov	r0, r5
  54:	ebfffffe 	bl	0 <vexGpsModeSet>
  58:	e1a00004 	mov	r0, r4
  5c:	e1a02006 	mov	r2, r6
  60:	e1a03007 	mov	r3, r7
  64:	ebfffffe 	bl	0 <vex::gps::gps(long, double, vex::turnType)>
  68:	e1a00004 	mov	r0, r4
  6c:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
  70:	00000008 	andeq	r0, r0, r8

Disassembly of section .text._ZN3vex3gps9setOriginEddNS_13distanceUnitsE:

00000000 <vex::gps::setOrigin(double, double, vex::distanceUnits)>:
   0:	ec432b30 	vmov	d16, r2, r3
   4:	e59d3008 	ldr	r3, [sp, #8]
   8:	e3530000 	cmp	r3, #0
   c:	eddd1b00 	vldr	d17, [sp]
  10:	0ddf2b0e 	vldreq	d18, [pc, #56]	; 50 <vex::gps::setOrigin(double, double, vex::distanceUnits)+0x50>
  14:	0a000007 	beq	38 <vex::gps::setOrigin(double, double, vex::distanceUnits)+0x38>
  18:	e3530001 	cmp	r3, #1
  1c:	0ddf2b0d 	vldreq	d18, [pc, #52]	; 58 <vex::gps::setOrigin(double, double, vex::distanceUnits)+0x58>
  20:	0e600ba2 	vmuleq.f64	d16, d16, d18
  24:	0e611ba2 	vmuleq.f64	d17, d17, d18
  28:	0a000004 	beq	40 <vex::gps::setOrigin(double, double, vex::distanceUnits)+0x40>
  2c:	e3530002 	cmp	r3, #2
  30:	1a000002 	bne	40 <vex::gps::setOrigin(double, double, vex::distanceUnits)+0x40>
  34:	eddf2b09 	vldr	d18, [pc, #36]	; 60 <vex::gps::setOrigin(double, double, vex::distanceUnits)+0x60>
  38:	eec00ba2 	vdiv.f64	d16, d16, d18
  3c:	eec11ba2 	vdiv.f64	d17, d17, d18
  40:	edcd1b00 	vstr	d17, [sp]
  44:	ec532b30 	vmov	r2, r3, d16
  48:	e5900008 	ldr	r0, [r0, #8]
  4c:	eafffffe 	b	0 <vexGpsOriginSet>
  50:	00000000 	andeq	r0, r0, r0
  54:	408f4000 	addmi	r4, pc, r0
  58:	25460aa6 	strbcs	r0, [r6, #-2726]	; 0xfffff55a
  5c:	3f9a0275 	svccc	0x009a0275
  60:	00000000 	andeq	r0, r0, r0
  64:	40590000 	subsmi	r0, r9, r0

Disassembly of section .text._ZN3vex3gpsC2ElddNS_13distanceUnitsEdNS_8turnTypeE:

00000000 <vex::gps::gps(long, double, double, vex::distanceUnits, double, vex::turnType)>:
   0:	e92d40df 	push	{r0, r1, r2, r3, r4, r6, r7, lr}
   4:	e1a07003 	mov	r7, r3
   8:	e59d3038 	ldr	r3, [sp, #56]	; 0x38
   c:	e1a06002 	mov	r6, r2
  10:	e1a04000 	mov	r4, r0
  14:	e58d3000 	str	r3, [sp]
  18:	e1cd23d0 	ldrd	r2, [sp, #48]	; 0x30
  1c:	ebfffffe 	bl	0 <vex::gps::gps(long, double, double, vex::distanceUnits, double, vex::turnType)>
  20:	e1cd22d0 	ldrd	r2, [sp, #32]
  24:	e1a00004 	mov	r0, r4
  28:	e1cd20f0 	strd	r2, [sp]
  2c:	e1a02006 	mov	r2, r6
  30:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
  34:	e58d3008 	str	r3, [sp, #8]
  38:	e1a03007 	mov	r3, r7
  3c:	ebfffffe 	bl	0 <vex::gps::gps(long, double, double, vex::distanceUnits, double, vex::turnType)>
  40:	e1a00004 	mov	r0, r4
  44:	e28dd010 	add	sp, sp, #16
  48:	e8bd80d0 	pop	{r4, r6, r7, pc}

Disassembly of section .text._ZN3vex3gps11setLocationEddNS_13distanceUnitsEdNS_13rotationUnitsE:

00000000 <vex::gps::setLocation(double, double, vex::distanceUnits, double, vex::rotationUnits)>:
   0:	ec432b30 	vmov	d16, r2, r3
   4:	e59d3008 	ldr	r3, [sp, #8]
   8:	e59d2018 	ldr	r2, [sp, #24]
   c:	e3530000 	cmp	r3, #0
  10:	eddd1b00 	vldr	d17, [sp]
  14:	eddd2b04 	vldr	d18, [sp, #16]
  18:	0ddf3b12 	vldreq	d19, [pc, #72]	; 68 <vex::gps::setLocation(double, double, vex::distanceUnits, double, vex::rotationUnits)+0x68>
  1c:	0a000007 	beq	40 <vex::gps::setLocation(double, double, vex::distanceUnits, double, vex::rotationUnits)+0x40>
  20:	e3530001 	cmp	r3, #1
  24:	0ddf3b11 	vldreq	d19, [pc, #68]	; 70 <vex::gps::setLocation(double, double, vex::distanceUnits, double, vex::rotationUnits)+0x70>
  28:	0e600ba3 	vmuleq.f64	d16, d16, d19
  2c:	0e611ba3 	vmuleq.f64	d17, d17, d19
  30:	0a000004 	beq	48 <vex::gps::setLocation(double, double, vex::distanceUnits, double, vex::rotationUnits)+0x48>
  34:	e3530002 	cmp	r3, #2
  38:	1a000002 	bne	48 <vex::gps::setLocation(double, double, vex::distanceUnits, double, vex::rotationUnits)+0x48>
  3c:	eddf3b0d 	vldr	d19, [pc, #52]	; 78 <vex::gps::setLocation(double, double, vex::distanceUnits, double, vex::rotationUnits)+0x78>
  40:	eec00ba3 	vdiv.f64	d16, d16, d19
  44:	eec11ba3 	vdiv.f64	d17, d17, d19
  48:	e3520001 	cmp	r2, #1
  4c:	edcd1b00 	vstr	d17, [sp]
  50:	0ddf3b0a 	vldreq	d19, [pc, #40]	; 80 <vex::gps::setLocation(double, double, vex::distanceUnits, double, vex::rotationUnits)+0x80>
  54:	ec532b30 	vmov	r2, r3, d16
  58:	0e622ba3 	vmuleq.f64	d18, d18, d19
  5c:	edcd2b02 	vstr	d18, [sp, #8]
  60:	e5900008 	ldr	r0, [r0, #8]
  64:	eafffffe 	b	0 <vexGpsInitialPositionSet>
  68:	00000000 	andeq	r0, r0, r0
  6c:	408f4000 	addmi	r4, pc, r0
  70:	25460aa6 	strbcs	r0, [r6, #-2726]	; 0xfffff55a
  74:	3f9a0275 	svccc	0x009a0275
  78:	00000000 	andeq	r0, r0, r0
  7c:	40590000 	subsmi	r0, r9, r0
  80:	00000000 	andeq	r0, r0, r0
  84:	40768000 	rsbsmi	r8, r6, r0

Disassembly of section .text._ZN3vex3gps11setLocationEddd:

00000000 <vex::gps::setLocation(double, double, double)>:
   0:	e92d4030 	push	{r4, r5, lr}
   4:	e24dd024 	sub	sp, sp, #36	; 0x24
   8:	e3a01000 	mov	r1, #0
   c:	e1cd43d0 	ldrd	r4, [sp, #48]	; 0x30
  10:	e58d1008 	str	r1, [sp, #8]
  14:	e58d1018 	str	r1, [sp, #24]
  18:	e1cd40f0 	strd	r4, [sp]
  1c:	e1cd43d8 	ldrd	r4, [sp, #56]	; 0x38
  20:	e1cd41f0 	strd	r4, [sp, #16]
  24:	ebfffffe 	bl	0 <vex::gps::setLocation(double, double, double)>
  28:	e28dd024 	add	sp, sp, #36	; 0x24
  2c:	e8bd8030 	pop	{r4, r5, pc}

Disassembly of section .text._ZN3vex3gps4rollENS_13rotationUnitsE:

00000000 <vex::gps::roll(vex::rotationUnits)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e24dd048 	sub	sp, sp, #72	; 0x48
   8:	e1a04001 	mov	r4, r1
   c:	e5900008 	ldr	r0, [r0, #8]
  10:	e1a0100d 	mov	r1, sp
  14:	e3a02001 	mov	r2, #1
  18:	ebfffffe 	bl	0 <vexGpsAttitudeGet>
  1c:	e3540001 	cmp	r4, #1
  20:	eddd0b02 	vldr	d16, [sp, #8]
  24:	0ddf1b03 	vldreq	d17, [pc, #12]	; 38 <vex::gps::roll(vex::rotationUnits)+0x38>
  28:	0ec00ba1 	vdiveq.f64	d16, d16, d17
  2c:	ec510b30 	vmov	r0, r1, d16
  30:	e28dd048 	add	sp, sp, #72	; 0x48
  34:	e8bd8010 	pop	{r4, pc}
  38:	00000000 	andeq	r0, r0, r0
  3c:	40768000 	rsbsmi	r8, r6, r0

Disassembly of section .text._ZN3vex3gps5pitchENS_13rotationUnitsE:

00000000 <vex::gps::pitch(vex::rotationUnits)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e24dd048 	sub	sp, sp, #72	; 0x48
   8:	e1a04001 	mov	r4, r1
   c:	e5900008 	ldr	r0, [r0, #8]
  10:	e1a0100d 	mov	r1, sp
  14:	e3a02001 	mov	r2, #1
  18:	ebfffffe 	bl	0 <vexGpsAttitudeGet>
  1c:	e3540001 	cmp	r4, #1
  20:	eddd0b00 	vldr	d16, [sp]
  24:	0ddf1b03 	vldreq	d17, [pc, #12]	; 38 <vex::gps::pitch(vex::rotationUnits)+0x38>
  28:	0ec00ba1 	vdiveq.f64	d16, d16, d17
  2c:	ec510b30 	vmov	r0, r1, d16
  30:	e28dd048 	add	sp, sp, #72	; 0x48
  34:	e8bd8010 	pop	{r4, pc}
  38:	00000000 	andeq	r0, r0, r0
  3c:	40768000 	rsbsmi	r8, r6, r0

Disassembly of section .text._ZN3vex3gps3yawENS_13rotationUnitsE:

00000000 <vex::gps::yaw(vex::rotationUnits)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e24dd048 	sub	sp, sp, #72	; 0x48
   8:	e1a04001 	mov	r4, r1
   c:	e5900008 	ldr	r0, [r0, #8]
  10:	e1a0100d 	mov	r1, sp
  14:	e3a02001 	mov	r2, #1
  18:	ebfffffe 	bl	0 <vexGpsAttitudeGet>
  1c:	e3540001 	cmp	r4, #1
  20:	eddd0b04 	vldr	d16, [sp, #16]
  24:	0ddf1b03 	vldreq	d17, [pc, #12]	; 38 <vex::gps::yaw(vex::rotationUnits)+0x38>
  28:	0ec00ba1 	vdiveq.f64	d16, d16, d17
  2c:	ec510b30 	vmov	r0, r1, d16
  30:	e28dd048 	add	sp, sp, #72	; 0x48
  34:	e8bd8010 	pop	{r4, pc}
  38:	00000000 	andeq	r0, r0, r0
  3c:	40768000 	rsbsmi	r8, r6, r0

Disassembly of section .text._ZN3vex3gps11orientationENS_15orientationTypeENS_13rotationUnitsE:

00000000 <vex::gps::orientation(vex::orientationType, vex::rotationUnits)>:
   0:	e1a03001 	mov	r3, r1
   4:	e3530001 	cmp	r3, #1
   8:	e1a01002 	mov	r1, r2
   c:	0a000002 	beq	1c <vex::gps::orientation(vex::orientationType, vex::rotationUnits)+0x1c>
  10:	e3530002 	cmp	r3, #2
  14:	0a000001 	beq	20 <vex::gps::orientation(vex::orientationType, vex::rotationUnits)+0x20>
  18:	eafffffe 	b	0 <vex::gps::orientation(vex::orientationType, vex::rotationUnits)>
  1c:	eafffffe 	b	0 <vex::gps::orientation(vex::orientationType, vex::rotationUnits)>
  20:	eafffffe 	b	0 <vex::gps::orientation(vex::orientationType, vex::rotationUnits)>

Disassembly of section .text._ZN3vex3gps9xPositionENS_13distanceUnitsE:

00000000 <vex::gps::xPosition(vex::distanceUnits)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e24dd048 	sub	sp, sp, #72	; 0x48
   8:	e1a04001 	mov	r4, r1
   c:	e5900008 	ldr	r0, [r0, #8]
  10:	e1a0100d 	mov	r1, sp
  14:	e3a02000 	mov	r2, #0
  18:	ebfffffe 	bl	0 <vexGpsAttitudeGet>
  1c:	e3540000 	cmp	r4, #0
  20:	eddd0b06 	vldr	d16, [sp, #24]
  24:	0ddf1b0b 	vldreq	d17, [pc, #44]	; 58 <vex::gps::xPosition(vex::distanceUnits)+0x58>
  28:	0a000005 	beq	44 <vex::gps::xPosition(vex::distanceUnits)+0x44>
  2c:	e3540001 	cmp	r4, #1
  30:	0ddf1b0a 	vldreq	d17, [pc, #40]	; 60 <vex::gps::xPosition(vex::distanceUnits)+0x60>
  34:	0a000002 	beq	44 <vex::gps::xPosition(vex::distanceUnits)+0x44>
  38:	e3540002 	cmp	r4, #2
  3c:	1a000001 	bne	48 <vex::gps::xPosition(vex::distanceUnits)+0x48>
  40:	eddf1b08 	vldr	d17, [pc, #32]	; 68 <vex::gps::xPosition(vex::distanceUnits)+0x68>
  44:	ee600ba1 	vmul.f64	d16, d16, d17
  48:	ec510b30 	vmov	r0, r1, d16
  4c:	e28dd048 	add	sp, sp, #72	; 0x48
  50:	e8bd8010 	pop	{r4, pc}
  54:	e320f000 	nop	{0}
  58:	00000000 	andeq	r0, r0, r0
  5c:	408f4000 	addmi	r4, pc, r0
  60:	bd7a9f58 	ldcllt	15, cr9, [sl, #-352]!	; 0xfffffea0
  64:	4043af5e 	submi	sl, r3, lr, asr pc
  68:	00000000 	andeq	r0, r0, r0
  6c:	40590000 	subsmi	r0, r9, r0

Disassembly of section .text._ZN3vex3gps9yPositionENS_13distanceUnitsE:

00000000 <vex::gps::yPosition(vex::distanceUnits)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e24dd048 	sub	sp, sp, #72	; 0x48
   8:	e1a04001 	mov	r4, r1
   c:	e5900008 	ldr	r0, [r0, #8]
  10:	e1a0100d 	mov	r1, sp
  14:	e3a02000 	mov	r2, #0
  18:	ebfffffe 	bl	0 <vexGpsAttitudeGet>
  1c:	e3540000 	cmp	r4, #0
  20:	eddd0b08 	vldr	d16, [sp, #32]
  24:	0ddf1b0b 	vldreq	d17, [pc, #44]	; 58 <vex::gps::yPosition(vex::distanceUnits)+0x58>
  28:	0a000005 	beq	44 <vex::gps::yPosition(vex::distanceUnits)+0x44>
  2c:	e3540001 	cmp	r4, #1
  30:	0ddf1b0a 	vldreq	d17, [pc, #40]	; 60 <vex::gps::yPosition(vex::distanceUnits)+0x60>
  34:	0a000002 	beq	44 <vex::gps::yPosition(vex::distanceUnits)+0x44>
  38:	e3540002 	cmp	r4, #2
  3c:	1a000001 	bne	48 <vex::gps::yPosition(vex::distanceUnits)+0x48>
  40:	eddf1b08 	vldr	d17, [pc, #32]	; 68 <vex::gps::yPosition(vex::distanceUnits)+0x68>
  44:	ee600ba1 	vmul.f64	d16, d16, d17
  48:	ec510b30 	vmov	r0, r1, d16
  4c:	e28dd048 	add	sp, sp, #72	; 0x48
  50:	e8bd8010 	pop	{r4, pc}
  54:	e320f000 	nop	{0}
  58:	00000000 	andeq	r0, r0, r0
  5c:	408f4000 	addmi	r4, pc, r0
  60:	bd7a9f58 	ldcllt	15, cr9, [sl, #-352]!	; 0xfffffea0
  64:	4043af5e 	submi	sl, r3, lr, asr pc
  68:	00000000 	andeq	r0, r0, r0
  6c:	40590000 	subsmi	r0, r9, r0

Disassembly of section .text._ZN3vex3gps9setOriginEv:

00000000 <vex::gps::setOrigin()>:
   0:	e92d40df 	push	{r0, r1, r2, r3, r4, r6, r7, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e3a02000 	mov	r2, #0
   c:	e3a03000 	mov	r3, #0
  10:	e1cd20f0 	strd	r2, [sp]
  14:	e5900008 	ldr	r0, [r0, #8]
  18:	ebfffffe 	bl	0 <vexGpsOriginSet>
  1c:	e1a00004 	mov	r0, r4
  20:	e3a01000 	mov	r1, #0
  24:	ebfffffe 	bl	0 <vex::gps::setOrigin()>
  28:	e1a06000 	mov	r6, r0
  2c:	e1a07001 	mov	r7, r1
  30:	e1a00004 	mov	r0, r4
  34:	e3a01000 	mov	r1, #0
  38:	ebfffffe 	bl	0 <vex::gps::setOrigin()>
  3c:	e3a03000 	mov	r3, #0
  40:	e1a02006 	mov	r2, r6
  44:	e58d3008 	str	r3, [sp, #8]
  48:	e1a03007 	mov	r3, r7
  4c:	e1cd00f0 	strd	r0, [sp]
  50:	e1a00004 	mov	r0, r4
  54:	ebfffffe 	bl	0 <vex::gps::setOrigin()>
  58:	e28dd010 	add	sp, sp, #16
  5c:	e8bd80d0 	pop	{r4, r6, r7, pc}

Disassembly of section .text._ZN3vex3gps19_scaleRotationValueEdNS_13rotationUnitsE:

00000000 <vex::gps::_scaleRotationValue(double, vex::rotationUnits)>:
   0:	ec432b30 	vmov	d16, r2, r3
   4:	e59d3000 	ldr	r3, [sp]
   8:	e3530001 	cmp	r3, #1
   c:	0ddf1b03 	vldreq	d17, [pc, #12]	; 20 <vex::gps::_scaleRotationValue(double, vex::rotationUnits)+0x20>
  10:	0ec00ba1 	vdiveq.f64	d16, d16, d17
  14:	ec510b30 	vmov	r0, r1, d16
  18:	e12fff1e 	bx	lr
  1c:	e320f000 	nop	{0}
  20:	00000000 	andeq	r0, r0, r0
  24:	40768000 	rsbsmi	r8, r6, r0

Disassembly of section .text._ZN3vex3gps11orientationERNS_8inertial10quaternionE:

00000000 <vex::gps::orientation(vex::inertial::quaternion&)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e24dd020 	sub	sp, sp, #32
   8:	e1a04001 	mov	r4, r1
   c:	e5900008 	ldr	r0, [r0, #8]
  10:	e1a0100d 	mov	r1, sp
  14:	ebfffffe 	bl	0 <vexGpsQuaternionGet>
  18:	e1cd20d0 	ldrd	r2, [sp]
  1c:	e1c420f0 	strd	r2, [r4]
  20:	e1cd20d8 	ldrd	r2, [sp, #8]
  24:	e1c420f8 	strd	r2, [r4, #8]
  28:	e1cd21d0 	ldrd	r2, [sp, #16]
  2c:	e1c421f0 	strd	r2, [r4, #16]
  30:	e1cd21d8 	ldrd	r2, [sp, #24]
  34:	e1c421f8 	strd	r2, [r4, #24]
  38:	e28dd020 	add	sp, sp, #32
  3c:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex3gps11orientationEv:

00000000 <vex::gps::orientation()>:
   0:	e92d4030 	push	{r4, r5, lr}
   4:	e24dd024 	sub	sp, sp, #36	; 0x24
   8:	e1a05001 	mov	r5, r1
   c:	e1a04000 	mov	r4, r0
  10:	ebfffffe 	bl	0 <vex::inertial::quaternion::quaternion()>
  14:	e5950008 	ldr	r0, [r5, #8]
  18:	e1a0100d 	mov	r1, sp
  1c:	ebfffffe 	bl	0 <vexGpsQuaternionGet>
  20:	e1cd20d0 	ldrd	r2, [sp]
  24:	e1a00004 	mov	r0, r4
  28:	e1c420f0 	strd	r2, [r4]
  2c:	e1cd20d8 	ldrd	r2, [sp, #8]
  30:	e1c420f8 	strd	r2, [r4, #8]
  34:	e1cd21d0 	ldrd	r2, [sp, #16]
  38:	e1c421f0 	strd	r2, [r4, #16]
  3c:	e1cd21d8 	ldrd	r2, [sp, #24]
  40:	e1c421f8 	strd	r2, [r4, #24]
  44:	e28dd024 	add	sp, sp, #36	; 0x24
  48:	e8bd8030 	pop	{r4, r5, pc}

Disassembly of section .text._ZN3vex3gps11orientationERNS0_8attitudeE:

00000000 <vex::gps::orientation(vex::gps::attitude&)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e24dd048 	sub	sp, sp, #72	; 0x48
   8:	e1a04001 	mov	r4, r1
   c:	e5900008 	ldr	r0, [r0, #8]
  10:	e1a0100d 	mov	r1, sp
  14:	e3a02001 	mov	r2, #1
  18:	ebfffffe 	bl	0 <vexGpsAttitudeGet>
  1c:	e1cd20d8 	ldrd	r2, [sp, #8]
  20:	e1c420f0 	strd	r2, [r4]
  24:	e1cd20d0 	ldrd	r2, [sp]
  28:	e1c420f8 	strd	r2, [r4, #8]
  2c:	e1cd21d0 	ldrd	r2, [sp, #16]
  30:	e1c421f0 	strd	r2, [r4, #16]
  34:	e28dd048 	add	sp, sp, #72	; 0x48
  38:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex3gps12resetHeadingEv:

00000000 <vex::gps::resetHeading()>:
   0:	e92d4007 	push	{r0, r1, r2, lr}
   4:	e3a03000 	mov	r3, #0
   8:	e3a02000 	mov	r2, #0
   c:	e58d3000 	str	r3, [sp]
  10:	e3a03000 	mov	r3, #0
  14:	ebfffffe 	bl	0 <vex::gps::resetHeading()>
  18:	e28dd00c 	add	sp, sp, #12
  1c:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

Disassembly of section .text._ZN3vex3gps13resetRotationEv:

00000000 <vex::gps::resetRotation()>:
   0:	e92d4007 	push	{r0, r1, r2, lr}
   4:	e3a03000 	mov	r3, #0
   8:	e3a02000 	mov	r2, #0
   c:	e58d3000 	str	r3, [sp]
  10:	e3a03000 	mov	r3, #0
  14:	ebfffffe 	bl	0 <vex::gps::resetRotation()>
  18:	e28dd00c 	add	sp, sp, #12
  1c:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

Disassembly of section .text._ZN3vex3gps16startCalibrationEl:

00000000 <vex::gps::startCalibration(long)>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e1a05001 	mov	r5, r1
   c:	ebfffffe 	bl	0 <vexSystemTimeGet>
  10:	e28000c8 	add	r0, r0, #200	; 0xc8
  14:	e5840028 	str	r0, [r4, #40]	; 0x28
  18:	e5940008 	ldr	r0, [r4, #8]
  1c:	ebfffffe 	bl	0 <vexGpsStatusGet>
  20:	e3100802 	tst	r0, #131072	; 0x20000
  24:	0a000002 	beq	34 <vex::gps::startCalibration(long)+0x34>
  28:	e5940008 	ldr	r0, [r4, #8]
  2c:	e8bd4038 	pop	{r3, r4, r5, lr}
  30:	eafffffe 	b	0 <vexGpsReset>
  34:	e59f3008 	ldr	r3, [pc, #8]	; 44 <vex::gps::startCalibration(long)+0x44>
  38:	e1550003 	cmp	r5, r3
  3c:	0afffff9 	beq	28 <vex::gps::startCalibration(long)+0x28>
  40:	e8bd8038 	pop	{r3, r4, r5, pc}
  44:	00c0ffee 	sbceq	pc, r0, lr, ror #31

Disassembly of section .text._ZN3vex3gps9calibrateEl:

00000000 <vex::gps::calibrate(long)>:
   0:	eafffffe 	b	0 <vex::gps::calibrate(long)>

00000004 <non-virtual thunk to vex::gps::calibrate(long)>:
   4:	e2400010 	sub	r0, r0, #16
   8:	eafffffc 	b	0 <vex::gps::calibrate(long)>

Disassembly of section .text._ZN3vex3gps8gyroRateEv:

00000000 <vex::gps::gyroRate()>:
   0:	e92d4010 	push	{r4, lr}
   4:	e24dd020 	sub	sp, sp, #32
   8:	e1a04000 	mov	r4, r0
   c:	e5910008 	ldr	r0, [r1, #8]
  10:	e1a0100d 	mov	r1, sp
  14:	ebfffffe 	bl	0 <vexGpsRawGyroGet>
  18:	e1a00004 	mov	r0, r4
  1c:	ebfffffe 	bl	0 <vex::gps::gyroRate()>
  20:	e1cd20d0 	ldrd	r2, [sp]
  24:	e1a00004 	mov	r0, r4
  28:	e1c420f0 	strd	r2, [r4]
  2c:	e1cd20d8 	ldrd	r2, [sp, #8]
  30:	e1c420f8 	strd	r2, [r4, #8]
  34:	e1cd21d0 	ldrd	r2, [sp, #16]
  38:	e1c421f0 	strd	r2, [r4, #16]
  3c:	e28dd020 	add	sp, sp, #32
  40:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex3gps8gyroRateENS_8axisTypeENS_13velocityUnitsE:

00000000 <vex::gps::gyroRate(vex::axisType, vex::velocityUnits)>:
   0:	e92d4030 	push	{r4, r5, lr}
   4:	e24dd024 	sub	sp, sp, #36	; 0x24
   8:	e1a04001 	mov	r4, r1
   c:	e5900008 	ldr	r0, [r0, #8]
  10:	e1a0100d 	mov	r1, sp
  14:	e1a05002 	mov	r5, r2
  18:	ebfffffe 	bl	0 <vexGpsRawGyroGet>
  1c:	e3540001 	cmp	r4, #1
  20:	0ddd0b02 	vldreq	d16, [sp, #8]
  24:	0a000002 	beq	34 <vex::gps::gyroRate(vex::axisType, vex::velocityUnits)+0x34>
  28:	e3540002 	cmp	r4, #2
  2c:	1ddd0b00 	vldrne	d16, [sp]
  30:	0ddd0b04 	vldreq	d16, [sp, #16]
  34:	e3550001 	cmp	r5, #1
  38:	0ef11b08 	vmoveq.f64	d17, #24	; 0x40c00000  6.0
  3c:	0ec00ba1 	vdiveq.f64	d16, d16, d17
  40:	ec510b30 	vmov	r0, r1, d16
  44:	e28dd024 	add	sp, sp, #36	; 0x24
  48:	e8bd8030 	pop	{r4, r5, pc}

Disassembly of section .text._ZN3vex3gps12accelerationEv:

00000000 <vex::gps::acceleration()>:
   0:	e92d4010 	push	{r4, lr}
   4:	e24dd020 	sub	sp, sp, #32
   8:	e1a04000 	mov	r4, r0
   c:	e5910008 	ldr	r0, [r1, #8]
  10:	e1a0100d 	mov	r1, sp
  14:	ebfffffe 	bl	0 <vexGpsRawAccelGet>
  18:	e1a00004 	mov	r0, r4
  1c:	ebfffffe 	bl	0 <vex::gps::acceleration()>
  20:	e1cd20d0 	ldrd	r2, [sp]
  24:	e1a00004 	mov	r0, r4
  28:	e1c420f0 	strd	r2, [r4]
  2c:	e1cd20d8 	ldrd	r2, [sp, #8]
  30:	e1c420f8 	strd	r2, [r4, #8]
  34:	e1cd21d0 	ldrd	r2, [sp, #16]
  38:	e1c421f0 	strd	r2, [r4, #16]
  3c:	e28dd020 	add	sp, sp, #32
  40:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex3gps12accelerationENS_8axisTypeE:

00000000 <vex::gps::acceleration(vex::axisType)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e24dd020 	sub	sp, sp, #32
   8:	e1a04001 	mov	r4, r1
   c:	e5900008 	ldr	r0, [r0, #8]
  10:	e1a0100d 	mov	r1, sp
  14:	ebfffffe 	bl	0 <vexGpsRawAccelGet>
  18:	e3540001 	cmp	r4, #1
  1c:	01cd00d8 	ldrdeq	r0, [sp, #8]
  20:	0a000002 	beq	30 <vex::gps::acceleration(vex::axisType)+0x30>
  24:	e3540002 	cmp	r4, #2
  28:	11cd00d0 	ldrdne	r0, [sp]
  2c:	01cd01d0 	ldrdeq	r0, [sp, #16]
  30:	e28dd020 	add	sp, sp, #32
  34:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex3gps7qualityEv:

00000000 <vex::gps::quality()>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e5900008 	ldr	r0, [r0, #8]
   c:	ebfffffe 	bl	0 <vexGpsStatusGet>
  10:	e1a00420 	lsr	r0, r0, #8
  14:	e31000ff 	tst	r0, #255	; 0xff
  18:	0a00000c 	beq	50 <vex::gps::quality()+0x50>
  1c:	e20000f0 	and	r0, r0, #240	; 0xf0
  20:	e35000f0 	cmp	r0, #240	; 0xf0
  24:	0a00000b 	beq	58 <vex::gps::quality()+0x58>
  28:	e5940008 	ldr	r0, [r4, #8]
  2c:	ebfffffe 	bl	0 <vexGpsErrorGet>
  30:	eef31b04 	vmov.f64	d17, #52	; 0x41a00000  20.0
  34:	eddf0b09 	vldr	d16, [pc, #36]	; 60 <vex::gps::quality()+0x60>
  38:	ec410b32 	vmov	d18, r0, r1
  3c:	ee420be1 	vmls.f64	d16, d18, d17
  40:	eefd7be0 	vcvt.s32.f64	s15, d16
  44:	ee170a90 	vmov	r0, s15
  48:	e1c00fc0 	bic	r0, r0, r0, asr #31
  4c:	e8bd8010 	pop	{r4, pc}
  50:	e3a00064 	mov	r0, #100	; 0x64
  54:	e8bd8010 	pop	{r4, pc}
  58:	e3a00000 	mov	r0, #0
  5c:	e8bd8010 	pop	{r4, pc}
  60:	00000000 	andeq	r0, r0, r0
  64:	40590000 	subsmi	r0, r9, r0

Disassembly of section .text._ZN3vex3gps7changedEPFvvE:

00000000 <vex::gps::changed(void (*)())>:
   0:	e1a02001 	mov	r2, r1
   4:	e5900008 	ldr	r0, [r0, #8]
   8:	e3a01001 	mov	r1, #1
   c:	eafffffe 	b	0 <vex::event::init(unsigned long, unsigned long, void (*)())>

Disassembly of section .rodata._ZTVN3vex3gpsE:

00000000 <vtable for vex::gps>:
	...
  38:	fffffff0 			; <UNDEFINED> instruction: 0xfffffff0
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
  44:	5b202965 	blpl	80a5e0 <non-virtual thunk to vex::gps::calibrate(long)+0x80a5dc>
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

