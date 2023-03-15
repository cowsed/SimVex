
vex_imu.cpp.obj:     file format elf32-littlearm


Disassembly of section .group:

00000000 <.group>:
   0:	00000001 	andeq	r0, r0, r1
   4:	00000072 	andeq	r0, r0, r2, ror r0

Disassembly of section .text._ZN3vex8inertial11getTurnTypeEv:

00000000 <vex::inertial::getTurnType()>:
   0:	e590002c 	ldr	r0, [r0, #44]	; 0x2c
   4:	e12fff1e 	bx	lr

Disassembly of section .text._ZThn16_N3vex8inertial11getTurnTypeEv:

00000000 <non-virtual thunk to vex::inertial::getTurnType()>:
   0:	e2400010 	sub	r0, r0, #16
   4:	eafffffe 	b	0 <non-virtual thunk to vex::inertial::getTurnType()>

Disassembly of section .text._ZN3vex8inertial10setHeadingEdNS_13rotationUnitsE:

00000000 <vex::inertial::setHeading(double, vex::rotationUnits)>:
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
  2c:	0ddf0b07 	vldreq	d16, [pc, #28]	; 50 <vex::inertial::setHeading(double, vex::rotationUnits)+0x50>
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

Disassembly of section .text._ZThn16_N3vex8inertial10setHeadingEdNS_13rotationUnitsE:

00000000 <non-virtual thunk to vex::inertial::setHeading(double, vex::rotationUnits)>:
   0:	e2400010 	sub	r0, r0, #16
   4:	eafffffe 	b	0 <non-virtual thunk to vex::inertial::setHeading(double, vex::rotationUnits)>

Disassembly of section .text._ZN3vex8inertial11setRotationEdNS_13rotationUnitsE:

00000000 <vex::inertial::setRotation(double, vex::rotationUnits)>:
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
  2c:	0ddf0b07 	vldreq	d16, [pc, #28]	; 50 <vex::inertial::setRotation(double, vex::rotationUnits)+0x50>
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

Disassembly of section .text._ZThn16_N3vex8inertial11setRotationEdNS_13rotationUnitsE:

00000000 <non-virtual thunk to vex::inertial::setRotation(double, vex::rotationUnits)>:
   0:	e2400010 	sub	r0, r0, #16
   4:	eafffffe 	b	0 <non-virtual thunk to vex::inertial::setRotation(double, vex::rotationUnits)>

Disassembly of section .text._ZN3vex8inertialD2Ev:

00000000 <vex::inertial::~inertial()>:
   0:	e59f3014 	ldr	r3, [pc, #20]	; 1c <vex::inertial::~inertial()+0x1c>
   4:	e92d4010 	push	{r4, lr}
   8:	e1a04000 	mov	r4, r0
   c:	e5803000 	str	r3, [r0]
  10:	ebfffffe 	bl	0 <vex::device::~device()>
  14:	e1a00004 	mov	r0, r4
  18:	e8bd8010 	pop	{r4, pc}
  1c:	00000008 	andeq	r0, r0, r8

Disassembly of section .text._ZThn16_N3vex8inertialD1Ev:

00000000 <non-virtual thunk to vex::inertial::~inertial()>:
   0:	e2400010 	sub	r0, r0, #16
   4:	eafffffe 	b	0 <non-virtual thunk to vex::inertial::~inertial()>

Disassembly of section .text._ZN3vex8inertialD0Ev:

00000000 <vex::inertial::~inertial()>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <vex::inertial::~inertial()>
   c:	e1a00004 	mov	r0, r4
  10:	ebfffffe 	bl	0 <operator delete(void*)>
  14:	e1a00004 	mov	r0, r4
  18:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZThn16_N3vex8inertialD0Ev:

00000000 <non-virtual thunk to vex::inertial::~inertial()>:
   0:	e2400010 	sub	r0, r0, #16
   4:	eafffffe 	b	0 <non-virtual thunk to vex::inertial::~inertial()>

Disassembly of section .text._ZN3vex8inertial9installedEv:

00000000 <vex::inertial::installed()>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vex::device::type()>
   8:	e2400006 	sub	r0, r0, #6
   c:	e16f0f10 	clz	r0, r0
  10:	e1a002a0 	lsr	r0, r0, #5
  14:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text._ZN3vex8inertial5angleENS_13rotationUnitsE:

00000000 <vex::inertial::angle(vex::rotationUnits)>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e5900008 	ldr	r0, [r0, #8]
   c:	e1a06001 	mov	r6, r1
  10:	ebfffffe 	bl	0 <vexImuDegreesGet>
  14:	e594302c 	ldr	r3, [r4, #44]	; 0x2c
  18:	edd41b06 	vldr	d17, [r4, #24]
  1c:	e3a04000 	mov	r4, #0
  20:	e3530000 	cmp	r3, #0
  24:	e59f503c 	ldr	r5, [pc, #60]	; 68 <vex::inertial::angle(vex::rotationUnits)+0x68>
  28:	e1a02004 	mov	r2, r4
  2c:	e1a03005 	mov	r3, r5
  30:	ec410b30 	vmov	d16, r0, r1
  34:	0ef10b60 	vnegeq.f64	d16, d16
  38:	ee700be1 	vsub.f64	d16, d16, d17
  3c:	ec510b30 	vmov	r0, r1, d16
  40:	ebfffffe 	bl	0 <fmod>
  44:	ec454b31 	vmov	d17, r4, r5
  48:	ec410b30 	vmov	d16, r0, r1
  4c:	eef50bc0 	vcmpe.f64	d16, #0.0
  50:	eef1fa10 	vmrs	APSR_nzcv, fpscr
  54:	4e700ba1 	vaddmi.f64	d16, d16, d17
  58:	e3560001 	cmp	r6, #1
  5c:	0ec00ba1 	vdiveq.f64	d16, d16, d17
  60:	ec510b30 	vmov	r0, r1, d16
  64:	e8bd8070 	pop	{r4, r5, r6, pc}
  68:	40768000 	rsbsmi	r8, r6, r0

Disassembly of section .text._ZThn16_N3vex8inertial5angleENS_13rotationUnitsE:

00000000 <non-virtual thunk to vex::inertial::angle(vex::rotationUnits)>:
   0:	e2400010 	sub	r0, r0, #16
   4:	eafffffe 	b	0 <non-virtual thunk to vex::inertial::angle(vex::rotationUnits)>

Disassembly of section .text._ZN3vex8inertial7headingENS_13rotationUnitsE:

00000000 <vex::inertial::heading(vex::rotationUnits)>:
   0:	eafffffe 	b	0 <vex::inertial::heading(vex::rotationUnits)>

Disassembly of section .text._ZThn16_N3vex8inertial7headingENS_13rotationUnitsE:

00000000 <non-virtual thunk to vex::inertial::heading(vex::rotationUnits)>:
   0:	e2400010 	sub	r0, r0, #16
   4:	eafffffe 	b	0 <non-virtual thunk to vex::inertial::heading(vex::rotationUnits)>

Disassembly of section .text._ZN3vex8inertial5valueEv:

00000000 <vex::inertial::value()>:
   0:	e92d4008 	push	{r3, lr}
   4:	e3a01000 	mov	r1, #0
   8:	ebfffffe 	bl	0 <vex::inertial::value()>
   c:	ec410b30 	vmov	d16, r0, r1
  10:	eefd7be0 	vcvt.s32.f64	s15, d16
  14:	ee170a90 	vmov	r0, s15
  18:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text._ZN3vex8inertial8rotationENS_13rotationUnitsE:

00000000 <vex::inertial::rotation(vex::rotationUnits)>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e5900008 	ldr	r0, [r0, #8]
   c:	e1a05001 	mov	r5, r1
  10:	ebfffffe 	bl	0 <vexImuHeadingGet>
  14:	e594302c 	ldr	r3, [r4, #44]	; 0x2c
  18:	edd41b08 	vldr	d17, [r4, #32]
  1c:	e3530000 	cmp	r3, #0
  20:	ec410b30 	vmov	d16, r0, r1
  24:	0ef10b60 	vnegeq.f64	d16, d16
  28:	e3550001 	cmp	r5, #1
  2c:	ee700be1 	vsub.f64	d16, d16, d17
  30:	0ddf1b02 	vldreq	d17, [pc, #8]	; 40 <vex::inertial::rotation(vex::rotationUnits)+0x40>
  34:	0ec00ba1 	vdiveq.f64	d16, d16, d17
  38:	ec510b30 	vmov	r0, r1, d16
  3c:	e8bd8038 	pop	{r3, r4, r5, pc}
  40:	00000000 	andeq	r0, r0, r0
  44:	40768000 	rsbsmi	r8, r6, r0

Disassembly of section .text._ZThn16_N3vex8inertial8rotationENS_13rotationUnitsE:

00000000 <non-virtual thunk to vex::inertial::rotation(vex::rotationUnits)>:
   0:	e2400010 	sub	r0, r0, #16
   4:	eafffffe 	b	0 <non-virtual thunk to vex::inertial::rotation(vex::rotationUnits)>

Disassembly of section .text._ZN3vex8inertial13isCalibratingEv:

00000000 <vex::inertial::isCalibrating()>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e5900008 	ldr	r0, [r0, #8]
   c:	ebfffffe 	bl	0 <vexImuStatusGet>
  10:	e3100001 	tst	r0, #1
  14:	1a000005 	bne	30 <vex::inertial::isCalibrating()+0x30>
  18:	ebfffffe 	bl	0 <vexSystemTimeGet>
  1c:	e5943028 	ldr	r3, [r4, #40]	; 0x28
  20:	e1500003 	cmp	r0, r3
  24:	23a00000 	movcs	r0, #0
  28:	33a00001 	movcc	r0, #1
  2c:	e8bd8010 	pop	{r4, pc}
  30:	e3a00001 	mov	r0, #1
  34:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZThn16_N3vex8inertial13isCalibratingEv:

00000000 <non-virtual thunk to vex::inertial::isCalibrating()>:
   0:	e2400010 	sub	r0, r0, #16
   4:	eafffffe 	b	0 <non-virtual thunk to vex::inertial::isCalibrating()>

Disassembly of section .text._ZN3vex8inertial22_collisionEventHandlerEPv:

00000000 <vex::inertial::_collisionEventHandler(void*)>:
   0:	e3500000 	cmp	r0, #0
   4:	012fff1e 	bxeq	lr
   8:	e92d4030 	push	{r4, r5, lr}
   c:	e1a04000 	mov	r4, r0
  10:	e24dd034 	sub	sp, sp, #52	; 0x34
  14:	e5900008 	ldr	r0, [r0, #8]
  18:	ebfffffe 	bl	0 <vexEventDataGet>
  1c:	e3100c01 	tst	r0, #256	; 0x100
  20:	13a05000 	movne	r5, #0
  24:	1a000002 	bne	34 <vex::inertial::_collisionEventHandler(void*)+0x34>
  28:	e3100c02 	tst	r0, #512	; 0x200
  2c:	03a05002 	moveq	r5, #2
  30:	13a05001 	movne	r5, #1
  34:	e5940008 	ldr	r0, [r4, #8]
  38:	e28d1010 	add	r1, sp, #16
  3c:	ebfffffe 	bl	0 <vexImuCollisionDataGet>
  40:	e1cd21d8 	ldrd	r2, [sp, #24]
  44:	e1a00005 	mov	r0, r5
  48:	e1cd20f0 	strd	r2, [sp]
  4c:	e1cd22d0 	ldrd	r2, [sp, #32]
  50:	e1cd20f8 	strd	r2, [sp, #8]
  54:	e1cd21d0 	ldrd	r2, [sp, #16]
  58:	e5941030 	ldr	r1, [r4, #48]	; 0x30
  5c:	e12fff31 	blx	r1
  60:	e28dd034 	add	sp, sp, #52	; 0x34
  64:	e8bd8030 	pop	{r4, r5, pc}

Disassembly of section .text._ZN3vex8inertialC2ElNS_8turnTypeE:

00000000 <vex::inertial::inertial(long, vex::turnType)>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e1a05002 	mov	r5, r2
   c:	ebfffffe 	bl	0 <vex::device::device(long)>
  10:	e59f3030 	ldr	r3, [pc, #48]	; 48 <vex::inertial::inertial(long, vex::turnType)+0x48>
  14:	e3a01000 	mov	r1, #0
  18:	e3a00000 	mov	r0, #0
  1c:	e1c401f8 	strd	r0, [r4, #24]
  20:	e1c402f0 	strd	r0, [r4, #32]
  24:	e5843000 	str	r3, [r4]
  28:	e2833038 	add	r3, r3, #56	; 0x38
  2c:	e5843010 	str	r3, [r4, #16]
  30:	ebfffffe 	bl	0 <vexSystemTimeGet>
  34:	e584502c 	str	r5, [r4, #44]	; 0x2c
  38:	e28000c8 	add	r0, r0, #200	; 0xc8
  3c:	e5840028 	str	r0, [r4, #40]	; 0x28
  40:	e1a00004 	mov	r0, r4
  44:	e8bd8038 	pop	{r3, r4, r5, pc}
  48:	00000008 	andeq	r0, r0, r8

Disassembly of section .text._ZN3vex8inertial4gyroC2Ev:

00000000 <vex::inertial::gyro::gyro()>:
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

Disassembly of section .text._ZN3vex8inertial4gyroD2Ev:

00000000 <vex::inertial::gyro::~gyro()>:
   0:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex8inertial4gyroaSES1_:

00000000 <vex::inertial::gyro::operator=(vex::inertial::gyro)>:
   0:	e92d4030 	push	{r4, r5, lr}
   4:	e1c140d0 	ldrd	r4, [r1]
   8:	e1c040f0 	strd	r4, [r0]
   c:	e1c140d0 	ldrd	r4, [r1]
  10:	e1c040f0 	strd	r4, [r0]
  14:	e1c140d0 	ldrd	r4, [r1]
  18:	e1c040f0 	strd	r4, [r0]
  1c:	e8bd8030 	pop	{r4, r5, pc}

Disassembly of section .text._ZN3vex8inertial5accelC2Ev:

00000000 <vex::inertial::accel::accel()>:
   0:	e92d4030 	push	{r4, r5, lr}
   4:	e3a04000 	mov	r4, #0
   8:	e3a05000 	mov	r5, #0
   c:	e1c040f0 	strd	r4, [r0]
  10:	e1c040f8 	strd	r4, [r0, #8]
  14:	e1a03000 	mov	r3, r0
  18:	e59f501c 	ldr	r5, [pc, #28]	; 3c <vex::inertial::accel::accel()+0x3c>
  1c:	e2802008 	add	r2, r0, #8
  20:	e3a04000 	mov	r4, #0
  24:	e1c041f0 	strd	r4, [r0, #16]
  28:	e5830018 	str	r0, [r3, #24]
  2c:	e580201c 	str	r2, [r0, #28]
  30:	e2802010 	add	r2, r0, #16
  34:	e5802020 	str	r2, [r0, #32]
  38:	e8bd8030 	pop	{r4, r5, pc}
  3c:	bff00000 	svclt	0x00f00000	; IMB

Disassembly of section .text._ZN3vex8inertial5accelD2Ev:

00000000 <vex::inertial::accel::~accel()>:
   0:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex8inertial5accelaSES1_:

00000000 <vex::inertial::accel::operator=(vex::inertial::accel)>:
   0:	e92d4030 	push	{r4, r5, lr}
   4:	e1c140d0 	ldrd	r4, [r1]
   8:	e1c040f0 	strd	r4, [r0]
   c:	e1c140d8 	ldrd	r4, [r1, #8]
  10:	e1c040f8 	strd	r4, [r0, #8]
  14:	e1c141d0 	ldrd	r4, [r1, #16]
  18:	e1c041f0 	strd	r4, [r0, #16]
  1c:	e8bd8030 	pop	{r4, r5, pc}

Disassembly of section .text._ZN3vex8inertial6matrixC2Ev:

00000000 <vex::inertial::matrix::matrix()>:
   0:	e92d4008 	push	{r3, lr}
   4:	e3a02080 	mov	r2, #128	; 0x80
   8:	e59f1004 	ldr	r1, [pc, #4]	; 14 <vex::inertial::matrix::matrix()+0x14>
   c:	ebfffffe 	bl	0 <memcpy>
  10:	e8bd8008 	pop	{r3, pc}
  14:	00000000 	andeq	r0, r0, r0

Disassembly of section .text._ZN3vex8inertial6matrixD2Ev:

00000000 <vex::inertial::matrix::~matrix()>:
   0:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex8inertial6matrix9transformERdS2_S2_:

00000000 <vex::inertial::matrix::transform(double&, double&, double&)>:
   0:	edd20b00 	vldr	d16, [r2]
   4:	edd03b08 	vldr	d19, [r0, #32]
   8:	edd15b00 	vldr	d21, [r1]
   c:	ee603ba3 	vmul.f64	d19, d16, d19
  10:	edd01b00 	vldr	d17, [r0]
  14:	edd34b00 	vldr	d20, [r3]
  18:	edd02b0a 	vldr	d18, [r0, #40]	; 0x28
  1c:	edd06b04 	vldr	d22, [r0, #16]
  20:	edd07b0e 	vldr	d23, [r0, #56]	; 0x38
  24:	ee453ba1 	vmla.f64	d19, d21, d17
  28:	edd01b10 	vldr	d17, [r0, #64]	; 0x40
  2c:	ee443ba1 	vmla.f64	d19, d20, d17
  30:	edd01b18 	vldr	d17, [r0, #96]	; 0x60
  34:	ee602ba2 	vmul.f64	d18, d16, d18
  38:	ee733ba1 	vadd.f64	d19, d19, d17
  3c:	edd01b02 	vldr	d17, [r0, #8]
  40:	ee452ba1 	vmla.f64	d18, d21, d17
  44:	edd01b12 	vldr	d17, [r0, #72]	; 0x48
  48:	ee442ba1 	vmla.f64	d18, d20, d17
  4c:	edd01b1a 	vldr	d17, [r0, #104]	; 0x68
  50:	ee722ba1 	vadd.f64	d18, d18, d17
  54:	edd01b0c 	vldr	d17, [r0, #48]	; 0x30
  58:	ee601ba1 	vmul.f64	d17, d16, d17
  5c:	ee451ba6 	vmla.f64	d17, d21, d22
  60:	edd06b14 	vldr	d22, [r0, #80]	; 0x50
  64:	ee441ba6 	vmla.f64	d17, d20, d22
  68:	edd06b1c 	vldr	d22, [r0, #112]	; 0x70
  6c:	ee600ba7 	vmul.f64	d16, d16, d23
  70:	ee711ba6 	vadd.f64	d17, d17, d22
  74:	edd06b06 	vldr	d22, [r0, #24]
  78:	ee450ba6 	vmla.f64	d16, d21, d22
  7c:	edd05b16 	vldr	d21, [r0, #88]	; 0x58
  80:	ee440ba5 	vmla.f64	d16, d20, d21
  84:	edd04b1e 	vldr	d20, [r0, #120]	; 0x78
  88:	ee700ba4 	vadd.f64	d16, d16, d20
  8c:	eef74b00 	vmov.f64	d20, #112	; 0x3f800000  1.0
  90:	eef40b64 	vcmp.f64	d16, d20
  94:	eef1fa10 	vmrs	APSR_nzcv, fpscr
  98:	1ec33ba0 	vdivne.f64	d19, d19, d16
  9c:	1ec22ba0 	vdivne.f64	d18, d18, d16
  a0:	edc13b00 	vstr	d19, [r1]
  a4:	1ec11ba0 	vdivne.f64	d17, d17, d16
  a8:	edc22b00 	vstr	d18, [r2]
  ac:	edc31b00 	vstr	d17, [r3]
  b0:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex8inertial6matrix8multiplyERS1_:

00000000 <vex::inertial::matrix::multiply(vex::inertial::matrix&)>:
   0:	e92d40f0 	push	{r4, r5, r6, r7, lr}
   4:	e24dd084 	sub	sp, sp, #132	; 0x84
   8:	e1a04000 	mov	r4, r0
   c:	e1a05001 	mov	r5, r1
  10:	e1a0000d 	mov	r0, sp
  14:	ebfffffe 	bl	0 <vex::inertial::matrix::multiply(vex::inertial::matrix&)>
  18:	e1a02004 	mov	r2, r4
  1c:	e3a00000 	mov	r0, #0
  20:	edd24b00 	vldr	d20, [r2]
  24:	e08d1000 	add	r1, sp, r0
  28:	e285c020 	add	ip, r5, #32
  2c:	e1a03005 	mov	r3, r5
  30:	edd23b02 	vldr	d19, [r2, #8]
  34:	edd22b04 	vldr	d18, [r2, #16]
  38:	edd21b06 	vldr	d17, [r2, #24]
  3c:	ecf35b02 	vldmia	r3!, {d21}
  40:	edd30b06 	vldr	d16, [r3, #24]
  44:	e153000c 	cmp	r3, ip
  48:	ee630ba0 	vmul.f64	d16, d19, d16
  4c:	ee440ba5 	vmla.f64	d16, d20, d21
  50:	edd35b0e 	vldr	d21, [r3, #56]	; 0x38
  54:	ee420ba5 	vmla.f64	d16, d18, d21
  58:	edd35b16 	vldr	d21, [r3, #88]	; 0x58
  5c:	ee410ba5 	vmla.f64	d16, d17, d21
  60:	ece10b02 	vstmia	r1!, {d16}
  64:	1afffff4 	bne	3c <vex::inertial::matrix::multiply(vex::inertial::matrix&)+0x3c>
  68:	e2800020 	add	r0, r0, #32
  6c:	e2822020 	add	r2, r2, #32
  70:	e3500080 	cmp	r0, #128	; 0x80
  74:	1affffe9 	bne	20 <vex::inertial::matrix::multiply(vex::inertial::matrix&)+0x20>
  78:	e3a03000 	mov	r3, #0
  7c:	e08d1003 	add	r1, sp, r3
  80:	e0842003 	add	r2, r4, r3
  84:	e2833020 	add	r3, r3, #32
  88:	e0840003 	add	r0, r4, r3
  8c:	e0c160d8 	ldrd	r6, [r1], #8
  90:	e0c260f8 	strd	r6, [r2], #8
  94:	e1520000 	cmp	r2, r0
  98:	1afffffb 	bne	8c <vex::inertial::matrix::multiply(vex::inertial::matrix&)+0x8c>
  9c:	e3530080 	cmp	r3, #128	; 0x80
  a0:	1afffff5 	bne	7c <vex::inertial::matrix::multiply(vex::inertial::matrix&)+0x7c>
  a4:	e28dd084 	add	sp, sp, #132	; 0x84
  a8:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}

Disassembly of section .text._ZN3vex8inertial6matrix7inverseEv:

00000000 <vex::inertial::matrix::inverse()>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ed2d8b10 	vpush	{d8-d15}
   c:	e24dd0c0 	sub	sp, sp, #192	; 0xc0
  10:	e28d0040 	add	r0, sp, #64	; 0x40
  14:	ebfffffe 	bl	0 <vex::inertial::matrix::inverse()>
  18:	edd47b0c 	vldr	d23, [r4, #48]	; 0x30
  1c:	ed94bb10 	vldr	d11, [r4, #64]	; 0x40
  20:	edd41b1e 	vldr	d17, [r4, #120]	; 0x78
  24:	ee67cb8b 	vmul.f64	d28, d23, d11
  28:	edd46b08 	vldr	d22, [r4, #32]
  2c:	ed948b16 	vldr	d8, [r4, #88]	; 0x58
  30:	edd40b1c 	vldr	d16, [r4, #112]	; 0x70
  34:	ed941b1a 	vldr	d1, [r4, #104]	; 0x68
  38:	edd4bb0a 	vldr	d27, [r4, #40]	; 0x28
  3c:	edd48b0e 	vldr	d24, [r4, #56]	; 0x38
  40:	ee266b88 	vmul.f64	d6, d22, d8
  44:	ed94ab14 	vldr	d10, [r4, #80]	; 0x50
  48:	ed942b18 	vldr	d2, [r4, #96]	; 0x60
  4c:	ed949b12 	vldr	d9, [r4, #72]	; 0x48
  50:	edd4ab02 	vldr	d26, [r4, #8]
  54:	edd43b00 	vldr	d19, [r4]
  58:	edd42b04 	vldr	d18, [r4, #16]
  5c:	ee6c9ba1 	vmul.f64	d25, d28, d17
  60:	edd44b06 	vldr	d20, [r4, #24]
  64:	ee274b88 	vmul.f64	d4, d23, d8
  68:	ee469b20 	vmla.f64	d25, d6, d16
  6c:	ee283b8a 	vmul.f64	d3, d24, d10
  70:	ee6bdb8a 	vmul.f64	d29, d27, d10
  74:	ee240b01 	vmul.f64	d0, d4, d1
  78:	ee439b02 	vmla.f64	d25, d3, d2
  7c:	ee0d0ba1 	vmla.f64	d0, d29, d17
  80:	ee287b89 	vmul.f64	d7, d24, d9
  84:	ee66fb8a 	vmul.f64	d31, d22, d10
  88:	ee070b20 	vmla.f64	d0, d7, d16
  8c:	ee4f9be1 	vmls.f64	d25, d31, d17
  90:	ee6b5b88 	vmul.f64	d21, d27, d8
  94:	ee449b42 	vmls.f64	d25, d4, d2
  98:	ee050be0 	vmls.f64	d0, d21, d16
  9c:	ee264b89 	vmul.f64	d4, d22, d9
  a0:	ee655b82 	vmul.f64	d21, d21, d2
  a4:	ee445b21 	vmla.f64	d21, d4, d17
  a8:	ee285b8b 	vmul.f64	d5, d24, d11
  ac:	ee67eb89 	vmul.f64	d30, d23, d9
  b0:	ee455b01 	vmla.f64	d21, d5, d1
  b4:	ee459b60 	vmls.f64	d25, d5, d16
  b8:	ee0e0be1 	vmls.f64	d0, d30, d17
  bc:	ee465b41 	vmls.f64	d21, d6, d1
  c0:	ee030b41 	vmls.f64	d0, d3, d1
  c4:	eeb03b69 	vmov.f64	d3, d25
  c8:	ee6b9b8b 	vmul.f64	d25, d27, d11
  cc:	ee495be1 	vmls.f64	d21, d25, d17
  d0:	ee699ba0 	vmul.f64	d25, d25, d16
  d4:	ee4f9b81 	vmla.f64	d25, d31, d1
  d8:	ee4e9b82 	vmla.f64	d25, d30, d2
  dc:	ee449b60 	vmls.f64	d25, d4, d16
  e0:	ee4d9bc2 	vmls.f64	d25, d29, d2
  e4:	ee4c9bc1 	vmls.f64	d25, d28, d1
  e8:	ee6acb83 	vmul.f64	d28, d26, d3
  ec:	edcd9b00 	vstr	d25, [sp]
  f0:	ee475b42 	vmls.f64	d21, d7, d2
  f4:	ee43cb80 	vmla.f64	d28, d19, d0
  f8:	ee42cba5 	vmla.f64	d28, d18, d21
  fc:	ee44cba9 	vmla.f64	d28, d20, d25
 100:	eef5cb40 	vcmp.f64	d28, #0.0
 104:	eeb0cb65 	vmov.f64	d12, d21
 108:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 10c:	0a000095 	beq	368 <vex::inertial::matrix::inverse()+0x368>
 110:	ee625b89 	vmul.f64	d21, d18, d9
 114:	edcd5b02 	vstr	d21, [sp, #8]
 118:	ee6a5b8a 	vmul.f64	d21, d26, d10
 11c:	eddd9b02 	vldr	d25, [sp, #8]
 120:	edcd5b04 	vstr	d21, [sp, #16]
 124:	ee635b8a 	vmul.f64	d21, d19, d10
 128:	edcd5b06 	vstr	d21, [sp, #24]
 12c:	ee645b8b 	vmul.f64	d21, d20, d11
 130:	ee2afb88 	vmul.f64	d15, d26, d8
 134:	edcd5b08 	vstr	d21, [sp, #32]
 138:	ee699ba1 	vmul.f64	d25, d25, d17
 13c:	ee625b8b 	vmul.f64	d21, d18, d11
 140:	ee4f9b20 	vmla.f64	d25, d15, d16
 144:	edcd5b0a 	vstr	d21, [sp, #40]	; 0x28
 148:	ee244b8a 	vmul.f64	d4, d20, d10
 14c:	ee6a5b8b 	vmul.f64	d21, d26, d11
 150:	ee449b01 	vmla.f64	d25, d4, d1
 154:	edcd5b0c 	vstr	d21, [sp, #48]	; 0x30
 158:	ee635b89 	vmul.f64	d21, d19, d9
 15c:	ee2a6ba7 	vmul.f64	d6, d26, d23
 160:	edcd5b0e 	vstr	d21, [sp, #56]	; 0x38
 164:	ee6afba8 	vmul.f64	d31, d26, d24
 168:	ee625ba8 	vmul.f64	d21, d18, d24
 16c:	ee64eba7 	vmul.f64	d30, d20, d23
 170:	ee247bab 	vmul.f64	d7, d20, d27
 174:	ee62dbab 	vmul.f64	d29, d18, d27
 178:	ee225b88 	vmul.f64	d5, d18, d8
 17c:	ee24eb89 	vmul.f64	d14, d20, d9
 180:	ee622ba6 	vmul.f64	d18, d18, d22
 184:	ee644ba6 	vmul.f64	d20, d20, d22
 188:	ee6a6ba6 	vmul.f64	d22, d26, d22
 18c:	edddab04 	vldr	d26, [sp, #16]
 190:	ee4a9be1 	vmls.f64	d25, d26, d17
 194:	edddab06 	vldr	d26, [sp, #24]
 198:	ee459b41 	vmls.f64	d25, d5, d1
 19c:	ee4e9b60 	vmls.f64	d25, d14, d16
 1a0:	eec99bac 	vdiv.f64	d25, d25, d28
 1a4:	edc49b02 	vstr	d25, [r4, #8]
 1a8:	ee659b81 	vmul.f64	d25, d21, d1
 1ac:	ee469b21 	vmla.f64	d25, d6, d17
 1b0:	ee479b20 	vmla.f64	d25, d7, d16
 1b4:	ee4f9be0 	vmls.f64	d25, d31, d16
 1b8:	ee4d9be1 	vmls.f64	d25, d29, d17
 1bc:	ee4e9bc1 	vmls.f64	d25, d30, d1
 1c0:	eec99bac 	vdiv.f64	d25, d25, d28
 1c4:	edc49b04 	vstr	d25, [r4, #16]
 1c8:	ee6d9b88 	vmul.f64	d25, d29, d8
 1cc:	ee4f9b8a 	vmla.f64	d25, d31, d10
 1d0:	ee4e9b89 	vmla.f64	d25, d30, d9
 1d4:	ee469b48 	vmls.f64	d25, d6, d8
 1d8:	ee459bc9 	vmls.f64	d25, d21, d9
 1dc:	ee479b4a 	vmls.f64	d25, d7, d10
 1e0:	eec99bac 	vdiv.f64	d25, d25, d28
 1e4:	edc49b06 	vstr	d25, [r4, #24]
 1e8:	eec39b2c 	vdiv.f64	d25, d3, d28
 1ec:	edc49b08 	vstr	d25, [r4, #32]
 1f0:	ee659b02 	vmul.f64	d25, d5, d2
 1f4:	ee4a9ba1 	vmla.f64	d25, d26, d17
 1f8:	edddab08 	vldr	d26, [sp, #32]
 1fc:	ee4a9ba0 	vmla.f64	d25, d26, d16
 200:	edddab0a 	vldr	d26, [sp, #40]	; 0x28
 204:	ee23db88 	vmul.f64	d13, d19, d8
 208:	ee4d9b60 	vmls.f64	d25, d13, d16
 20c:	ee4a9be1 	vmls.f64	d25, d26, d17
 210:	ee449b42 	vmls.f64	d25, d4, d2
 214:	eec99bac 	vdiv.f64	d25, d25, d28
 218:	ee638ba8 	vmul.f64	d24, d19, d24
 21c:	edc49b0a 	vstr	d25, [r4, #40]	; 0x28
 220:	ee629ba1 	vmul.f64	d25, d18, d17
 224:	ee489ba0 	vmla.f64	d25, d24, d16
 228:	ee4e9b82 	vmla.f64	d25, d30, d2
 22c:	ee637ba7 	vmul.f64	d23, d19, d23
 230:	ee479be1 	vmls.f64	d25, d23, d17
 234:	ee459bc2 	vmls.f64	d25, d21, d2
 238:	ee655b8b 	vmul.f64	d21, d21, d11
 23c:	ee475b88 	vmla.f64	d21, d23, d8
 240:	ee445b8a 	vmla.f64	d21, d20, d10
 244:	ee485bca 	vmls.f64	d21, d24, d10
 248:	ee425bc8 	vmls.f64	d21, d18, d8
 24c:	ee4e5bcb 	vmls.f64	d21, d30, d11
 250:	eec55bac 	vdiv.f64	d21, d21, d28
 254:	edc45b0e 	vstr	d21, [r4, #56]	; 0x38
 258:	eecc5b2c 	vdiv.f64	d21, d12, d28
 25c:	ee449be0 	vmls.f64	d25, d20, d16
 260:	edc45b10 	vstr	d21, [r4, #64]	; 0x40
 264:	eddd5b0c 	vldr	d21, [sp, #48]	; 0x30
 268:	eec99bac 	vdiv.f64	d25, d25, d28
 26c:	ee655ba1 	vmul.f64	d21, d21, d17
 270:	edc49b0c 	vstr	d25, [r4, #48]	; 0x30
 274:	eddd9b0e 	vldr	d25, [sp, #56]	; 0x38
 278:	ee4d5b01 	vmla.f64	d21, d13, d1
 27c:	ee4e5b02 	vmla.f64	d21, d14, d2
 280:	ee495be1 	vmls.f64	d21, d25, d17
 284:	eddd9b08 	vldr	d25, [sp, #32]
 288:	ee4f5b42 	vmls.f64	d21, d15, d2
 28c:	ee495bc1 	vmls.f64	d21, d25, d1
 290:	eec55bac 	vdiv.f64	d21, d21, d28
 294:	ee633bab 	vmul.f64	d19, d19, d27
 298:	edc45b12 	vstr	d21, [r4, #72]	; 0x48
 29c:	ee6f5b82 	vmul.f64	d21, d31, d2
 2a0:	ee435ba1 	vmla.f64	d21, d19, d17
 2a4:	ee445b81 	vmla.f64	d21, d20, d1
 2a8:	ee485bc1 	vmls.f64	d21, d24, d1
 2ac:	ee465be1 	vmls.f64	d21, d22, d17
 2b0:	ee661b88 	vmul.f64	d17, d22, d8
 2b4:	ee481b89 	vmla.f64	d17, d24, d9
 2b8:	ee471b0b 	vmla.f64	d17, d7, d11
 2bc:	ee431bc8 	vmls.f64	d17, d19, d8
 2c0:	ee4f1bcb 	vmls.f64	d17, d31, d11
 2c4:	ee441bc9 	vmls.f64	d17, d20, d9
 2c8:	eddd4b0e 	vldr	d20, [sp, #56]	; 0x38
 2cc:	eec11bac 	vdiv.f64	d17, d17, d28
 2d0:	edc41b16 	vstr	d17, [r4, #88]	; 0x58
 2d4:	eddd1b00 	vldr	d17, [sp]
 2d8:	ee475b42 	vmls.f64	d21, d7, d2
 2dc:	eec19bac 	vdiv.f64	d25, d17, d28
 2e0:	eddd1b04 	vldr	d17, [sp, #16]
 2e4:	ee611b82 	vmul.f64	d17, d17, d2
 2e8:	edc49b18 	vstr	d25, [r4, #96]	; 0x60
 2ec:	ee441ba0 	vmla.f64	d17, d20, d16
 2f0:	eddd4b06 	vldr	d20, [sp, #24]
 2f4:	ee4a1b81 	vmla.f64	d17, d26, d1
 2f8:	ee800b2c 	vdiv.f64	d0, d0, d28
 2fc:	eec55bac 	vdiv.f64	d21, d21, d28
 300:	ed840b00 	vstr	d0, [r4]
 304:	ee441bc1 	vmls.f64	d17, d20, d1
 308:	eddd4b0c 	vldr	d20, [sp, #48]	; 0x30
 30c:	edc45b14 	vstr	d21, [r4, #80]	; 0x50
 310:	ee441be0 	vmls.f64	d17, d20, d16
 314:	eddd4b02 	vldr	d20, [sp, #8]
 318:	ee441bc2 	vmls.f64	d17, d20, d2
 31c:	eec11bac 	vdiv.f64	d17, d17, d28
 320:	edc41b1a 	vstr	d17, [r4, #104]	; 0x68
 324:	ee661ba0 	vmul.f64	d17, d22, d16
 328:	ee471b81 	vmla.f64	d17, d23, d1
 32c:	ee4d1b82 	vmla.f64	d17, d29, d2
 330:	ee431be0 	vmls.f64	d17, d19, d16
 334:	eef00b61 	vmov.f64	d16, d17
 338:	ee460b42 	vmls.f64	d16, d6, d2
 33c:	ee420bc1 	vmls.f64	d16, d18, d1
 340:	eec00bac 	vdiv.f64	d16, d16, d28
 344:	edc40b1c 	vstr	d16, [r4, #112]	; 0x70
 348:	ee660b0b 	vmul.f64	d16, d6, d11
 34c:	ee430b8a 	vmla.f64	d16, d19, d10
 350:	ee420b89 	vmla.f64	d16, d18, d9
 354:	ee470bc9 	vmls.f64	d16, d23, d9
 358:	ee460bca 	vmls.f64	d16, d22, d10
 35c:	ee4d0bcb 	vmls.f64	d16, d29, d11
 360:	eec00bac 	vdiv.f64	d16, d16, d28
 364:	edc40b1e 	vstr	d16, [r4, #120]	; 0x78
 368:	ec510b3c 	vmov	r0, r1, d28
 36c:	e28dd0c0 	add	sp, sp, #192	; 0xc0
 370:	ecbd8b10 	vpop	{d8-d15}
 374:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex8inertial10quaternionC2Ev:

00000000 <vex::inertial::quaternion::quaternion()>:
   0:	e92d4030 	push	{r4, r5, lr}
   4:	e3a04000 	mov	r4, #0
   8:	e59f5018 	ldr	r5, [pc, #24]	; 28 <vex::inertial::quaternion::quaternion()+0x28>
   c:	e1c040f0 	strd	r4, [r0]
  10:	e3a04000 	mov	r4, #0
  14:	e3a05000 	mov	r5, #0
  18:	e1c040f8 	strd	r4, [r0, #8]
  1c:	e1c041f0 	strd	r4, [r0, #16]
  20:	e1c041f8 	strd	r4, [r0, #24]
  24:	e8bd8030 	pop	{r4, r5, pc}
  28:	3ff00000 	svccc	0x00f00000	; IMB

Disassembly of section .text._ZN3vex8inertial10quaternionC2Edddd:

00000000 <vex::inertial::quaternion::quaternion(double, double, double, double)>:
   0:	e1c020f0 	strd	r2, [r0]
   4:	e1cd20d0 	ldrd	r2, [sp]
   8:	e1c020f8 	strd	r2, [r0, #8]
   c:	e1cd20d8 	ldrd	r2, [sp, #8]
  10:	e1c021f0 	strd	r2, [r0, #16]
  14:	e1cd21d0 	ldrd	r2, [sp, #16]
  18:	e1c021f8 	strd	r2, [r0, #24]
  1c:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex8inertial10quaternionD2Ev:

00000000 <vex::inertial::quaternion::~quaternion()>:
   0:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex8inertial10quaternionaSES1_:

00000000 <vex::inertial::quaternion::operator=(vex::inertial::quaternion)>:
   0:	e92d4030 	push	{r4, r5, lr}
   4:	e1c140d0 	ldrd	r4, [r1]
   8:	e1c040f0 	strd	r4, [r0]
   c:	e1c140d8 	ldrd	r4, [r1, #8]
  10:	e1c040f8 	strd	r4, [r0, #8]
  14:	e1c141d0 	ldrd	r4, [r1, #16]
  18:	e1c041f0 	strd	r4, [r0, #16]
  1c:	e1c141d8 	ldrd	r4, [r1, #24]
  20:	e1c041f8 	strd	r4, [r0, #24]
  24:	e8bd8030 	pop	{r4, r5, pc}

Disassembly of section .text._ZNK3vex8inertial10quaternion9conjugateEv:

00000000 <vex::inertial::quaternion::conjugate() const>:
   0:	edd10b02 	vldr	d16, [r1, #8]
   4:	e92d4030 	push	{r4, r5, lr}
   8:	e1c140d0 	ldrd	r4, [r1]
   c:	eef12b60 	vneg.f64	d18, d16
  10:	edd10b04 	vldr	d16, [r1, #16]
  14:	eef11b60 	vneg.f64	d17, d16
  18:	edd10b06 	vldr	d16, [r1, #24]
  1c:	e1c040f0 	strd	r4, [r0]
  20:	edc02b02 	vstr	d18, [r0, #8]
  24:	eef10b60 	vneg.f64	d16, d16
  28:	edc01b04 	vstr	d17, [r0, #16]
  2c:	edc00b06 	vstr	d16, [r0, #24]
  30:	e8bd8030 	pop	{r4, r5, pc}

Disassembly of section .text._ZNK3vex8inertial10quaternion10normalizedEv:

00000000 <vex::inertial::quaternion::normalized() const>:
   0:	edd10b02 	vldr	d16, [r1, #8]
   4:	e92d4038 	push	{r3, r4, r5, lr}
   8:	e1a05000 	mov	r5, r0
   c:	edd13b00 	vldr	d19, [r1]
  10:	e1a04001 	mov	r4, r1
  14:	ee600ba0 	vmul.f64	d16, d16, d16
  18:	edd12b04 	vldr	d18, [r1, #16]
  1c:	edd11b06 	vldr	d17, [r1, #24]
  20:	ee430ba3 	vmla.f64	d16, d19, d19
  24:	ee420ba2 	vmla.f64	d16, d18, d18
  28:	ee410ba1 	vmla.f64	d16, d17, d17
  2c:	ec510b30 	vmov	r0, r1, d16
  30:	ebfffffe 	bl	0 <sqrt>
  34:	edd41b02 	vldr	d17, [r4, #8]
  38:	edd44b00 	vldr	d20, [r4]
  3c:	ec410b30 	vmov	d16, r0, r1
  40:	e1a00005 	mov	r0, r5
  44:	eec13ba0 	vdiv.f64	d19, d17, d16
  48:	edd41b04 	vldr	d17, [r4, #16]
  4c:	eec12ba0 	vdiv.f64	d18, d17, d16
  50:	edd41b06 	vldr	d17, [r4, #24]
  54:	edc53b02 	vstr	d19, [r5, #8]
  58:	eec11ba0 	vdiv.f64	d17, d17, d16
  5c:	edc52b04 	vstr	d18, [r5, #16]
  60:	eec40ba0 	vdiv.f64	d16, d20, d16
  64:	edc51b06 	vstr	d17, [r5, #24]
  68:	edc50b00 	vstr	d16, [r5]
  6c:	e8bd8038 	pop	{r3, r4, r5, pc}

Disassembly of section .text._ZNK3vex8inertial10quaternionmlERKS1_:

00000000 <vex::inertial::quaternion::operator*(vex::inertial::quaternion const&) const>:
   0:	edd10b02 	vldr	d16, [r1, #8]
   4:	edd24b02 	vldr	d20, [r2, #8]
   8:	edd17b00 	vldr	d23, [r1]
   c:	ee601ba4 	vmul.f64	d17, d16, d20
  10:	edd22b00 	vldr	d18, [r2]
  14:	edd15b04 	vldr	d21, [r1, #16]
  18:	edd28b04 	vldr	d24, [r2, #16]
  1c:	edd13b06 	vldr	d19, [r1, #24]
  20:	edd26b06 	vldr	d22, [r2, #24]
  24:	ee571ba2 	vnmls.f64	d17, d23, d18
  28:	ee451be8 	vmls.f64	d17, d21, d24
  2c:	ee431be6 	vmls.f64	d17, d19, d22
  30:	edc01b00 	vstr	d17, [r0]
  34:	ee601ba2 	vmul.f64	d17, d16, d18
  38:	ee471ba4 	vmla.f64	d17, d23, d20
  3c:	ee451ba6 	vmla.f64	d17, d21, d22
  40:	ee431be8 	vmls.f64	d17, d19, d24
  44:	edc01b02 	vstr	d17, [r0, #8]
  48:	ee601ba6 	vmul.f64	d17, d16, d22
  4c:	ee600ba8 	vmul.f64	d16, d16, d24
  50:	ee571ba8 	vnmls.f64	d17, d23, d24
  54:	ee470ba6 	vmla.f64	d16, d23, d22
  58:	ee451ba2 	vmla.f64	d17, d21, d18
  5c:	ee450be4 	vmls.f64	d16, d21, d20
  60:	ee431ba4 	vmla.f64	d17, d19, d20
  64:	ee430ba2 	vmla.f64	d16, d19, d18
  68:	edc01b04 	vstr	d17, [r0, #16]
  6c:	edc00b06 	vstr	d16, [r0, #24]
  70:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex8inertial10quaternionmLERKS1_:

00000000 <vex::inertial::quaternion::operator*=(vex::inertial::quaternion const&)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e24dd020 	sub	sp, sp, #32
   8:	e1a04000 	mov	r4, r0
   c:	e1a02001 	mov	r2, r1
  10:	e1a0000d 	mov	r0, sp
  14:	e1a01004 	mov	r1, r4
  18:	ebfffffe 	bl	0 <vex::inertial::quaternion::operator*=(vex::inertial::quaternion const&)>
  1c:	e1a00004 	mov	r0, r4
  20:	e1a0100d 	mov	r1, sp
  24:	ebfffffe 	bl	0 <vex::inertial::quaternion::operator*=(vex::inertial::quaternion const&)>
  28:	e1a00004 	mov	r0, r4
  2c:	e28dd020 	add	sp, sp, #32
  30:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex8inertial10quaternion9transformERdS2_S2_:

00000000 <vex::inertial::quaternion::transform(double&, double&, double&)>:
   0:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
   4:	e1a07000 	mov	r7, r0
   8:	e1c180d0 	ldrd	r8, [r1]
   c:	e1a06001 	mov	r6, r1
  10:	e1a05002 	mov	r5, r2
  14:	e1c200d0 	ldrd	r0, [r2]
  18:	e1a04003 	mov	r4, r3
  1c:	e1c320d0 	ldrd	r2, [r3]
  20:	e24dd084 	sub	sp, sp, #132	; 0x84
  24:	e3a0a000 	mov	sl, #0
  28:	e3a0b000 	mov	fp, #0
  2c:	e1cd21f8 	strd	r2, [sp, #24]
  30:	e1a0200d 	mov	r2, sp
  34:	e1cd01f0 	strd	r0, [sp, #16]
  38:	e28d0040 	add	r0, sp, #64	; 0x40
  3c:	e1a01007 	mov	r1, r7
  40:	e1cda0f0 	strd	sl, [sp]
  44:	e1cd80f8 	strd	r8, [sp, #8]
  48:	ebfffffe 	bl	0 <vex::inertial::quaternion::transform(double&, double&, double&)>
  4c:	e28d0060 	add	r0, sp, #96	; 0x60
  50:	e1a01007 	mov	r1, r7
  54:	ebfffffe 	bl	0 <vex::inertial::quaternion::transform(double&, double&, double&)>
  58:	e28d2060 	add	r2, sp, #96	; 0x60
  5c:	e28d0020 	add	r0, sp, #32
  60:	e28d1040 	add	r1, sp, #64	; 0x40
  64:	ebfffffe 	bl	0 <vex::inertial::quaternion::transform(double&, double&, double&)>
  68:	e1cd22d8 	ldrd	r2, [sp, #40]	; 0x28
  6c:	e1c620f0 	strd	r2, [r6]
  70:	e1cd23d0 	ldrd	r2, [sp, #48]	; 0x30
  74:	e1c520f0 	strd	r2, [r5]
  78:	e1cd23d8 	ldrd	r2, [sp, #56]	; 0x38
  7c:	e1c420f0 	strd	r2, [r4]
  80:	e28dd084 	add	sp, sp, #132	; 0x84
  84:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}

Disassembly of section .text._ZN3vex8inertial10quaternion10fromAngleXEd:

00000000 <vex::inertial::quaternion::fromAngleX(double)>:
   0:	e92d40d0 	push	{r4, r6, r7, lr}
   4:	ec432b30 	vmov	d16, r2, r3
   8:	e1a04000 	mov	r4, r0
   c:	ed2d8b02 	vpush	{d8}
  10:	ed9f8b12 	vldr	d8, [pc, #72]	; 60 <vex::inertial::quaternion::fromAngleX(double)+0x60>
  14:	eec00b88 	vdiv.f64	d16, d16, d8
  18:	ed9f8b12 	vldr	d8, [pc, #72]	; 68 <vex::inertial::quaternion::fromAngleX(double)+0x68>
  1c:	ee208b88 	vmul.f64	d8, d16, d8
  20:	ec510b18 	vmov	r0, r1, d8
  24:	ebfffffe 	bl	0 <cos>
  28:	e1a06000 	mov	r6, r0
  2c:	e1a07001 	mov	r7, r1
  30:	ec510b18 	vmov	r0, r1, d8
  34:	ebfffffe 	bl	0 <sin>
  38:	ecbd8b02 	vpop	{d8}
  3c:	e3a02000 	mov	r2, #0
  40:	e3a03000 	mov	r3, #0
  44:	e1c460f0 	strd	r6, [r4]
  48:	e1c421f0 	strd	r2, [r4, #16]
  4c:	e1c421f8 	strd	r2, [r4, #24]
  50:	e1c400f8 	strd	r0, [r4, #8]
  54:	e1a00004 	mov	r0, r4
  58:	e8bd80d0 	pop	{r4, r6, r7, pc}
  5c:	e320f000 	nop	{0}
  60:	00000000 	andeq	r0, r0, r0
  64:	40768000 	rsbsmi	r8, r6, r0
  68:	54442d18 	strbpl	r2, [r4], #-3352	; 0xfffff2e8
  6c:	400921fb 	strdmi	r2, [r9], -fp

Disassembly of section .text._ZN3vex8inertial10quaternion10fromAngleYEd:

00000000 <vex::inertial::quaternion::fromAngleY(double)>:
   0:	e92d40d0 	push	{r4, r6, r7, lr}
   4:	ec432b30 	vmov	d16, r2, r3
   8:	e1a04000 	mov	r4, r0
   c:	ed2d8b02 	vpush	{d8}
  10:	ed9f8b12 	vldr	d8, [pc, #72]	; 60 <vex::inertial::quaternion::fromAngleY(double)+0x60>
  14:	eec00b88 	vdiv.f64	d16, d16, d8
  18:	ed9f8b12 	vldr	d8, [pc, #72]	; 68 <vex::inertial::quaternion::fromAngleY(double)+0x68>
  1c:	ee208b88 	vmul.f64	d8, d16, d8
  20:	ec510b18 	vmov	r0, r1, d8
  24:	ebfffffe 	bl	0 <cos>
  28:	e1a06000 	mov	r6, r0
  2c:	e1a07001 	mov	r7, r1
  30:	ec510b18 	vmov	r0, r1, d8
  34:	ebfffffe 	bl	0 <sin>
  38:	ecbd8b02 	vpop	{d8}
  3c:	e3a02000 	mov	r2, #0
  40:	e3a03000 	mov	r3, #0
  44:	e1c460f0 	strd	r6, [r4]
  48:	e1c420f8 	strd	r2, [r4, #8]
  4c:	e1c421f8 	strd	r2, [r4, #24]
  50:	e1c401f0 	strd	r0, [r4, #16]
  54:	e1a00004 	mov	r0, r4
  58:	e8bd80d0 	pop	{r4, r6, r7, pc}
  5c:	e320f000 	nop	{0}
  60:	00000000 	andeq	r0, r0, r0
  64:	40768000 	rsbsmi	r8, r6, r0
  68:	54442d18 	strbpl	r2, [r4], #-3352	; 0xfffff2e8
  6c:	400921fb 	strdmi	r2, [r9], -fp

Disassembly of section .text._ZN3vex8inertial10quaternion10fromAngleZEd:

00000000 <vex::inertial::quaternion::fromAngleZ(double)>:
   0:	e92d40d0 	push	{r4, r6, r7, lr}
   4:	ec432b30 	vmov	d16, r2, r3
   8:	e1a04000 	mov	r4, r0
   c:	ed2d8b02 	vpush	{d8}
  10:	ed9f8b12 	vldr	d8, [pc, #72]	; 60 <vex::inertial::quaternion::fromAngleZ(double)+0x60>
  14:	eec00b88 	vdiv.f64	d16, d16, d8
  18:	ed9f8b12 	vldr	d8, [pc, #72]	; 68 <vex::inertial::quaternion::fromAngleZ(double)+0x68>
  1c:	ee208b88 	vmul.f64	d8, d16, d8
  20:	ec510b18 	vmov	r0, r1, d8
  24:	ebfffffe 	bl	0 <cos>
  28:	e1a06000 	mov	r6, r0
  2c:	e1a07001 	mov	r7, r1
  30:	ec510b18 	vmov	r0, r1, d8
  34:	ebfffffe 	bl	0 <sin>
  38:	ecbd8b02 	vpop	{d8}
  3c:	e3a02000 	mov	r2, #0
  40:	e3a03000 	mov	r3, #0
  44:	e1c460f0 	strd	r6, [r4]
  48:	e1c420f8 	strd	r2, [r4, #8]
  4c:	e1c421f0 	strd	r2, [r4, #16]
  50:	e1c401f8 	strd	r0, [r4, #24]
  54:	e1a00004 	mov	r0, r4
  58:	e8bd80d0 	pop	{r4, r6, r7, pc}
  5c:	e320f000 	nop	{0}
  60:	00000000 	andeq	r0, r0, r0
  64:	40768000 	rsbsmi	r8, r6, r0
  68:	54442d18 	strbpl	r2, [r4], #-3352	; 0xfffff2e8
  6c:	400921fb 	strdmi	r2, [r9], -fp

Disassembly of section .text._ZN3vex8inertial10quaternion6matrixERNS0_6matrixE:

00000000 <vex::inertial::quaternion::matrix(vex::inertial::matrix&)>:
   0:	edd06b02 	vldr	d22, [r0, #8]
   4:	e3a02000 	mov	r2, #0
   8:	e3a03000 	mov	r3, #0
   c:	edd05b00 	vldr	d21, [r0]
  10:	ee661ba6 	vmul.f64	d17, d22, d22
  14:	edd00b04 	vldr	d16, [r0, #16]
  18:	edd07b06 	vldr	d23, [r0, #24]
  1c:	e1c121f8 	strd	r2, [r1, #24]
  20:	e1c123f8 	strd	r2, [r1, #56]	; 0x38
  24:	e1c125f8 	strd	r2, [r1, #88]	; 0x58
  28:	e1c126f0 	strd	r2, [r1, #96]	; 0x60
  2c:	e1c126f8 	strd	r2, [r1, #104]	; 0x68
  30:	e1c127f0 	strd	r2, [r1, #112]	; 0x70
  34:	e3a02000 	mov	r2, #0
  38:	e59f3090 	ldr	r3, [pc, #144]	; d0 <vex::inertial::quaternion::matrix(vex::inertial::matrix&)+0xd0>
  3c:	e1c127f8 	strd	r2, [r1, #120]	; 0x78
  40:	ee652ba5 	vmul.f64	d18, d21, d21
  44:	ee609ba0 	vmul.f64	d25, d16, d16
  48:	ee723ba1 	vadd.f64	d19, d18, d17
  4c:	ee678ba7 	vmul.f64	d24, d23, d23
  50:	ee733be9 	vsub.f64	d19, d19, d25
  54:	ee733be8 	vsub.f64	d19, d19, d24
  58:	ee755ba5 	vadd.f64	d21, d21, d21
  5c:	edc13b00 	vstr	d19, [r1]
  60:	ee763ba6 	vadd.f64	d19, d22, d22
  64:	ee65bba7 	vmul.f64	d27, d21, d23
  68:	ee634ba0 	vmul.f64	d20, d19, d16
  6c:	ee721be1 	vsub.f64	d17, d18, d17
  70:	ee74abab 	vadd.f64	d26, d20, d27
  74:	ee712ba9 	vadd.f64	d18, d17, d25
  78:	edc1ab02 	vstr	d26, [r1, #8]
  7c:	ee722be8 	vsub.f64	d18, d18, d24
  80:	ee65aba0 	vmul.f64	d26, d21, d16
  84:	edc12b0a 	vstr	d18, [r1, #40]	; 0x28
  88:	ee700ba0 	vadd.f64	d16, d16, d16
  8c:	ee633ba7 	vmul.f64	d19, d19, d23
  90:	ee600ba7 	vmul.f64	d16, d16, d23
  94:	ee652ba6 	vmul.f64	d18, d21, d22
  98:	ee744beb 	vsub.f64	d20, d20, d27
  9c:	ee711be9 	vsub.f64	d17, d17, d25
  a0:	edc14b08 	vstr	d20, [r1, #32]
  a4:	ee73cbea 	vsub.f64	d28, d19, d26
  a8:	ee704ba2 	vadd.f64	d20, d16, d18
  ac:	edc1cb04 	vstr	d28, [r1, #16]
  b0:	ee733baa 	vadd.f64	d19, d19, d26
  b4:	edc14b0c 	vstr	d20, [r1, #48]	; 0x30
  b8:	ee700be2 	vsub.f64	d16, d16, d18
  bc:	edc13b10 	vstr	d19, [r1, #64]	; 0x40
  c0:	ee711ba8 	vadd.f64	d17, d17, d24
  c4:	edc10b12 	vstr	d16, [r1, #72]	; 0x48
  c8:	edc11b14 	vstr	d17, [r1, #80]	; 0x50
  cc:	e12fff1e 	bx	lr
  d0:	3ff00000 	svccc	0x00f00000	; IMB

Disassembly of section .text._ZN3vex8inertial8attitudeC2Ev:

00000000 <vex::inertial::attitude::attitude()>:
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

Disassembly of section .text._ZN3vex8inertial8attitudeC2Eddd:

00000000 <vex::inertial::attitude::attitude(double, double, double)>:
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

Disassembly of section .text._ZN3vex8inertial8attitudeD2Ev:

00000000 <vex::inertial::attitude::~attitude()>:
   0:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex8inertial8attitude9transformERdS2_S2_:

00000000 <vex::inertial::attitude::transform(double&, double&, double&)>:
   0:	edd11b00 	vldr	d17, [r1]
   4:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
   8:	e1a04001 	mov	r4, r1
   c:	ed2d8b08 	vpush	{d8-d11}
  10:	e1a07000 	mov	r7, r0
  14:	e1a05002 	mov	r5, r2
  18:	e1a06003 	mov	r6, r3
  1c:	ed93ab00 	vldr	d10, [r3]
  20:	eddf0b36 	vldr	d16, [pc, #216]	; 100 <vex::inertial::attitude::transform(double&, double&, double&)+0x100>
  24:	eef02b61 	vmov.f64	d18, d17
  28:	ed9f9b36 	vldr	d9, [pc, #216]	; 108 <vex::inertial::attitude::transform(double&, double&, double&)+0x108>
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

Disassembly of section .text._ZN3vex8inertial6statusEv:

00000000 <vex::inertial::status()>:
   0:	e5900008 	ldr	r0, [r0, #8]
   4:	eafffffe 	b	0 <vexImuStatusGet>

Disassembly of section .text._ZN3vex8inertial11temperatureEv:

00000000 <vex::inertial::temperature()>:
   0:	e5900008 	ldr	r0, [r0, #8]
   4:	eafffffe 	b	0 <vexImuTemperatureGet>

Disassembly of section .text._ZN3vex8inertial8datarateEm:

00000000 <vex::inertial::datarate(unsigned long)>:
   0:	e5900008 	ldr	r0, [r0, #8]
   4:	eafffffe 	b	0 <vexImuDataRateSet>

Disassembly of section .text._ZN3vex8inertial11setTurnTypeENS_8turnTypeE:

00000000 <vex::inertial::setTurnType(vex::turnType)>:
   0:	e580102c 	str	r1, [r0, #44]	; 0x2c
   4:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex8inertial4rollENS_13rotationUnitsE:

00000000 <vex::inertial::roll(vex::rotationUnits)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e24dd018 	sub	sp, sp, #24
   8:	e1a04001 	mov	r4, r1
   c:	e5900008 	ldr	r0, [r0, #8]
  10:	e1a0100d 	mov	r1, sp
  14:	ebfffffe 	bl	0 <vexImuAttitudeGet>
  18:	e3540001 	cmp	r4, #1
  1c:	eddd0b02 	vldr	d16, [sp, #8]
  20:	0ddf1b04 	vldreq	d17, [pc, #16]	; 38 <vex::inertial::roll(vex::rotationUnits)+0x38>
  24:	0ec00ba1 	vdiveq.f64	d16, d16, d17
  28:	ec510b30 	vmov	r0, r1, d16
  2c:	e28dd018 	add	sp, sp, #24
  30:	e8bd8010 	pop	{r4, pc}
  34:	e320f000 	nop	{0}
  38:	00000000 	andeq	r0, r0, r0
  3c:	40768000 	rsbsmi	r8, r6, r0

Disassembly of section .text._ZN3vex8inertial5pitchENS_13rotationUnitsE:

00000000 <vex::inertial::pitch(vex::rotationUnits)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e24dd018 	sub	sp, sp, #24
   8:	e1a04001 	mov	r4, r1
   c:	e5900008 	ldr	r0, [r0, #8]
  10:	e1a0100d 	mov	r1, sp
  14:	ebfffffe 	bl	0 <vexImuAttitudeGet>
  18:	e3540001 	cmp	r4, #1
  1c:	eddd0b00 	vldr	d16, [sp]
  20:	0ddf1b04 	vldreq	d17, [pc, #16]	; 38 <vex::inertial::pitch(vex::rotationUnits)+0x38>
  24:	0ec00ba1 	vdiveq.f64	d16, d16, d17
  28:	ec510b30 	vmov	r0, r1, d16
  2c:	e28dd018 	add	sp, sp, #24
  30:	e8bd8010 	pop	{r4, pc}
  34:	e320f000 	nop	{0}
  38:	00000000 	andeq	r0, r0, r0
  3c:	40768000 	rsbsmi	r8, r6, r0

Disassembly of section .text._ZN3vex8inertial3yawENS_13rotationUnitsE:

00000000 <vex::inertial::yaw(vex::rotationUnits)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e24dd018 	sub	sp, sp, #24
   8:	e1a04001 	mov	r4, r1
   c:	e5900008 	ldr	r0, [r0, #8]
  10:	e1a0100d 	mov	r1, sp
  14:	ebfffffe 	bl	0 <vexImuAttitudeGet>
  18:	e3540001 	cmp	r4, #1
  1c:	eddd0b04 	vldr	d16, [sp, #16]
  20:	0ddf1b04 	vldreq	d17, [pc, #16]	; 38 <vex::inertial::yaw(vex::rotationUnits)+0x38>
  24:	0ec00ba1 	vdiveq.f64	d16, d16, d17
  28:	ec510b30 	vmov	r0, r1, d16
  2c:	e28dd018 	add	sp, sp, #24
  30:	e8bd8010 	pop	{r4, pc}
  34:	e320f000 	nop	{0}
  38:	00000000 	andeq	r0, r0, r0
  3c:	40768000 	rsbsmi	r8, r6, r0

Disassembly of section .text._ZN3vex8inertial11orientationENS_15orientationTypeENS_13rotationUnitsE:

00000000 <vex::inertial::orientation(vex::orientationType, vex::rotationUnits)>:
   0:	e1a03001 	mov	r3, r1
   4:	e3530001 	cmp	r3, #1
   8:	e1a01002 	mov	r1, r2
   c:	0a000002 	beq	1c <vex::inertial::orientation(vex::orientationType, vex::rotationUnits)+0x1c>
  10:	e3530002 	cmp	r3, #2
  14:	0a000001 	beq	20 <vex::inertial::orientation(vex::orientationType, vex::rotationUnits)+0x20>
  18:	eafffffe 	b	0 <vex::inertial::orientation(vex::orientationType, vex::rotationUnits)>
  1c:	eafffffe 	b	0 <vex::inertial::orientation(vex::orientationType, vex::rotationUnits)>
  20:	eafffffe 	b	0 <vex::inertial::orientation(vex::orientationType, vex::rotationUnits)>

Disassembly of section .text._ZN3vex8inertial19_scaleRotationValueEdNS_13rotationUnitsE:

00000000 <vex::inertial::_scaleRotationValue(double, vex::rotationUnits)>:
   0:	ec432b30 	vmov	d16, r2, r3
   4:	e59d3000 	ldr	r3, [sp]
   8:	e3530001 	cmp	r3, #1
   c:	0ddf1b03 	vldreq	d17, [pc, #12]	; 20 <vex::inertial::_scaleRotationValue(double, vex::rotationUnits)+0x20>
  10:	0ec00ba1 	vdiveq.f64	d16, d16, d17
  14:	ec510b30 	vmov	r0, r1, d16
  18:	e12fff1e 	bx	lr
  1c:	e320f000 	nop	{0}
  20:	00000000 	andeq	r0, r0, r0
  24:	40768000 	rsbsmi	r8, r6, r0

Disassembly of section .text._ZN3vex8inertial11orientationERNS0_10quaternionE:

00000000 <vex::inertial::orientation(vex::inertial::quaternion&)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e24dd020 	sub	sp, sp, #32
   8:	e1a04001 	mov	r4, r1
   c:	e5900008 	ldr	r0, [r0, #8]
  10:	e1a0100d 	mov	r1, sp
  14:	ebfffffe 	bl	0 <vexImuQuaternionGet>
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

Disassembly of section .text._ZN3vex8inertial11orientationEv:

00000000 <vex::inertial::orientation()>:
   0:	e92d4030 	push	{r4, r5, lr}
   4:	e24dd024 	sub	sp, sp, #36	; 0x24
   8:	e1a05001 	mov	r5, r1
   c:	e1a04000 	mov	r4, r0
  10:	ebfffffe 	bl	0 <vex::inertial::orientation()>
  14:	e5950008 	ldr	r0, [r5, #8]
  18:	e1a0100d 	mov	r1, sp
  1c:	ebfffffe 	bl	0 <vexImuQuaternionGet>
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

Disassembly of section .text._ZN3vex8inertial11orientationERNS0_8attitudeE:

00000000 <vex::inertial::orientation(vex::inertial::attitude&)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e24dd018 	sub	sp, sp, #24
   8:	e1a04001 	mov	r4, r1
   c:	e5900008 	ldr	r0, [r0, #8]
  10:	e1a0100d 	mov	r1, sp
  14:	ebfffffe 	bl	0 <vexImuAttitudeGet>
  18:	e1cd20d8 	ldrd	r2, [sp, #8]
  1c:	e1c420f0 	strd	r2, [r4]
  20:	e1cd20d0 	ldrd	r2, [sp]
  24:	e1c420f8 	strd	r2, [r4, #8]
  28:	e1cd21d0 	ldrd	r2, [sp, #16]
  2c:	e1c421f0 	strd	r2, [r4, #16]
  30:	e28dd018 	add	sp, sp, #24
  34:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex8inertial12resetHeadingEv:

00000000 <vex::inertial::resetHeading()>:
   0:	e92d4007 	push	{r0, r1, r2, lr}
   4:	e3a03000 	mov	r3, #0
   8:	e3a02000 	mov	r2, #0
   c:	e58d3000 	str	r3, [sp]
  10:	e3a03000 	mov	r3, #0
  14:	ebfffffe 	bl	0 <vex::inertial::resetHeading()>
  18:	e28dd00c 	add	sp, sp, #12
  1c:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

Disassembly of section .text._ZN3vex8inertial13resetRotationEv:

00000000 <vex::inertial::resetRotation()>:
   0:	e92d4007 	push	{r0, r1, r2, lr}
   4:	e3a03000 	mov	r3, #0
   8:	e3a02000 	mov	r2, #0
   c:	e58d3000 	str	r3, [sp]
  10:	e3a03000 	mov	r3, #0
  14:	ebfffffe 	bl	0 <vex::inertial::resetRotation()>
  18:	e28dd00c 	add	sp, sp, #12
  1c:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

Disassembly of section .text._ZN3vex8inertial16startCalibrationEl:

00000000 <vex::inertial::startCalibration(long)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <vexSystemTimeGet>
   c:	e28000c8 	add	r0, r0, #200	; 0xc8
  10:	e5840028 	str	r0, [r4, #40]	; 0x28
  14:	e5940008 	ldr	r0, [r4, #8]
  18:	e8bd4010 	pop	{r4, lr}
  1c:	eafffffe 	b	0 <vexImuReset>

Disassembly of section .text._ZN3vex8inertial14setOrientationENS0_15orientationModeE:

00000000 <vex::inertial::setOrientation(vex::inertial::orientationMode)>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e5900008 	ldr	r0, [r0, #8]
   c:	e1a05001 	mov	r5, r1
  10:	ebfffffe 	bl	0 <vexImuModeGet>
  14:	e1a01000 	mov	r1, r0
  18:	e3550006 	cmp	r5, #6
  1c:	979ff105 	ldrls	pc, [pc, r5, lsl #2]
  20:	ea000019 	b	8c <vex::inertial::setOrientation(vex::inertial::orientationMode)+0x8c>
  24:	0000004c 	andeq	r0, r0, ip, asr #32
  28:	00000054 	andeq	r0, r0, r4, asr r0
  2c:	00000060 	andeq	r0, r0, r0, rrx
  30:	0000006c 	andeq	r0, r0, ip, rrx
  34:	00000078 	andeq	r0, r0, r8, ror r0
  38:	00000084 	andeq	r0, r0, r4, lsl #1
  3c:	00000040 	andeq	r0, r0, r0, asr #32
  40:	e200100f 	and	r1, r0, #15
  44:	e3811080 	orr	r1, r1, #128	; 0x80
  48:	ea00000f 	b	8c <vex::inertial::setOrientation(vex::inertial::orientationMode)+0x8c>
  4c:	e200100f 	and	r1, r0, #15
  50:	ea00000d 	b	8c <vex::inertial::setOrientation(vex::inertial::orientationMode)+0x8c>
  54:	e200100f 	and	r1, r0, #15
  58:	e3811010 	orr	r1, r1, #16
  5c:	ea00000a 	b	8c <vex::inertial::setOrientation(vex::inertial::orientationMode)+0x8c>
  60:	e200100f 	and	r1, r0, #15
  64:	e3811020 	orr	r1, r1, #32
  68:	ea000007 	b	8c <vex::inertial::setOrientation(vex::inertial::orientationMode)+0x8c>
  6c:	e200100f 	and	r1, r0, #15
  70:	e3811030 	orr	r1, r1, #48	; 0x30
  74:	ea000004 	b	8c <vex::inertial::setOrientation(vex::inertial::orientationMode)+0x8c>
  78:	e200100f 	and	r1, r0, #15
  7c:	e3811040 	orr	r1, r1, #64	; 0x40
  80:	ea000001 	b	8c <vex::inertial::setOrientation(vex::inertial::orientationMode)+0x8c>
  84:	e200100f 	and	r1, r0, #15
  88:	e3811050 	orr	r1, r1, #80	; 0x50
  8c:	e5940008 	ldr	r0, [r4, #8]
  90:	ebfffffe 	bl	0 <vexImuModeSet>
  94:	e1a00004 	mov	r0, r4
  98:	e3a01000 	mov	r1, #0
  9c:	e8bd4038 	pop	{r3, r4, r5, lr}
  a0:	eafffffe 	b	0 <vex::inertial::setOrientation(vex::inertial::orientationMode)>

Disassembly of section .text._ZN3vex8inertial9calibrateEl:

00000000 <vex::inertial::calibrate(long)>:
   0:	eafffffe 	b	0 <vex::inertial::calibrate(long)>

00000004 <non-virtual thunk to vex::inertial::calibrate(long)>:
   4:	e2400010 	sub	r0, r0, #16
   8:	eafffffc 	b	0 <vex::inertial::calibrate(long)>

Disassembly of section .text._ZN3vex8inertial8gyroRateEv:

00000000 <vex::inertial::gyroRate()>:
   0:	e92d4010 	push	{r4, lr}
   4:	e24dd020 	sub	sp, sp, #32
   8:	e1a04000 	mov	r4, r0
   c:	e5910008 	ldr	r0, [r1, #8]
  10:	e1a0100d 	mov	r1, sp
  14:	ebfffffe 	bl	0 <vexImuRawGyroGet>
  18:	e1a00004 	mov	r0, r4
  1c:	ebfffffe 	bl	0 <vex::inertial::gyroRate()>
  20:	e1cd20d0 	ldrd	r2, [sp]
  24:	e1a00004 	mov	r0, r4
  28:	e1c420f0 	strd	r2, [r4]
  2c:	e1cd20d8 	ldrd	r2, [sp, #8]
  30:	e1c420f8 	strd	r2, [r4, #8]
  34:	e1cd21d0 	ldrd	r2, [sp, #16]
  38:	e1c421f0 	strd	r2, [r4, #16]
  3c:	e28dd020 	add	sp, sp, #32
  40:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex8inertial8gyroRateENS_8axisTypeENS_13velocityUnitsE:

00000000 <vex::inertial::gyroRate(vex::axisType, vex::velocityUnits)>:
   0:	e92d4030 	push	{r4, r5, lr}
   4:	e24dd024 	sub	sp, sp, #36	; 0x24
   8:	e1a04001 	mov	r4, r1
   c:	e5900008 	ldr	r0, [r0, #8]
  10:	e1a0100d 	mov	r1, sp
  14:	e1a05002 	mov	r5, r2
  18:	ebfffffe 	bl	0 <vexImuRawGyroGet>
  1c:	e3540001 	cmp	r4, #1
  20:	0ddd0b02 	vldreq	d16, [sp, #8]
  24:	0a000002 	beq	34 <vex::inertial::gyroRate(vex::axisType, vex::velocityUnits)+0x34>
  28:	e3540002 	cmp	r4, #2
  2c:	1ddd0b00 	vldrne	d16, [sp]
  30:	0ddd0b04 	vldreq	d16, [sp, #16]
  34:	e3550001 	cmp	r5, #1
  38:	0ef11b08 	vmoveq.f64	d17, #24	; 0x40c00000  6.0
  3c:	0ec00ba1 	vdiveq.f64	d16, d16, d17
  40:	ec510b30 	vmov	r0, r1, d16
  44:	e28dd024 	add	sp, sp, #36	; 0x24
  48:	e8bd8030 	pop	{r4, r5, pc}

Disassembly of section .text._ZN3vex8inertial12accelerationEv:

00000000 <vex::inertial::acceleration()>:
   0:	e92d4010 	push	{r4, lr}
   4:	e24dd020 	sub	sp, sp, #32
   8:	e1a04000 	mov	r4, r0
   c:	e5910008 	ldr	r0, [r1, #8]
  10:	e1a0100d 	mov	r1, sp
  14:	ebfffffe 	bl	0 <vexImuRawAccelGet>
  18:	e1a00004 	mov	r0, r4
  1c:	ebfffffe 	bl	0 <vex::inertial::acceleration()>
  20:	e1cd20d0 	ldrd	r2, [sp]
  24:	e1a00004 	mov	r0, r4
  28:	e1c420f0 	strd	r2, [r4]
  2c:	e1cd20d8 	ldrd	r2, [sp, #8]
  30:	e1c420f8 	strd	r2, [r4, #8]
  34:	e1cd21d0 	ldrd	r2, [sp, #16]
  38:	e1c421f0 	strd	r2, [r4, #16]
  3c:	e28dd020 	add	sp, sp, #32
  40:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex8inertial12accelerationENS_8axisTypeE:

00000000 <vex::inertial::acceleration(vex::axisType)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e24dd020 	sub	sp, sp, #32
   8:	e1a04001 	mov	r4, r1
   c:	e5900008 	ldr	r0, [r0, #8]
  10:	e1a0100d 	mov	r1, sp
  14:	ebfffffe 	bl	0 <vexImuRawAccelGet>
  18:	e3540001 	cmp	r4, #1
  1c:	01cd00d8 	ldrdeq	r0, [sp, #8]
  20:	0a000002 	beq	30 <vex::inertial::acceleration(vex::axisType)+0x30>
  24:	e3540002 	cmp	r4, #2
  28:	11cd00d0 	ldrdne	r0, [sp]
  2c:	01cd01d0 	ldrdeq	r0, [sp, #16]
  30:	e28dd020 	add	sp, sp, #32
  34:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex8inertial21setAccelerometerRangeEh:

00000000 <vex::inertial::setAccelerometerRange(unsigned char)>:
   0:	e2011003 	and	r1, r1, #3
   4:	e5900008 	ldr	r0, [r0, #8]
   8:	e3811a02 	orr	r1, r1, #8192	; 0x2000
   c:	eafffffe 	b	0 <vexImuModeSet>

Disassembly of section .text._ZN3vex8inertial21setCollisionThresholdEd:

00000000 <vex::inertial::setCollisionThreshold(double)>:
   0:	ed9f7b08 	vldr	d7, [pc, #32]	; 28 <vex::inertial::setCollisionThreshold(double)+0x28>
   4:	e5900008 	ldr	r0, [r0, #8]
   8:	ec432b30 	vmov	d16, r2, r3
   c:	ee207b87 	vmul.f64	d7, d16, d7
  10:	eefc7bc7 	vcvt.u32.f64	s15, d7
  14:	ee171a90 	vmov	r1, s15
  18:	e7eb1051 	ubfx	r1, r1, #0, #12
  1c:	e3811901 	orr	r1, r1, #16384	; 0x4000
  20:	eafffffe 	b	0 <vexImuModeSet>
  24:	e320f000 	nop	{0}
  28:	00000000 	andeq	r0, r0, r0
  2c:	40700000 	rsbsmi	r0, r0, r0

Disassembly of section .text._ZN3vex8inertial7changedEPFvvE:

00000000 <vex::inertial::changed(void (*)())>:
   0:	e1a02001 	mov	r2, r1
   4:	e5900008 	ldr	r0, [r0, #8]
   8:	e3a01001 	mov	r1, #1
   c:	eafffffe 	b	0 <vex::event::init(unsigned long, unsigned long, void (*)())>

Disassembly of section .text._ZN3vex8inertial9collisionEPFvNS_8axisTypeEdddE:

00000000 <vex::inertial::collision(void (*)(vex::axisType, double, double, double))>:
   0:	e5801030 	str	r1, [r0, #48]	; 0x30
   4:	e1a03000 	mov	r3, r0
   8:	e3a01002 	mov	r1, #2
   c:	e5900008 	ldr	r0, [r0, #8]
  10:	e59f2000 	ldr	r2, [pc]	; 18 <vex::inertial::collision(void (*)(vex::axisType, double, double, double))+0x18>
  14:	eafffffe 	b	0 <vex::event::init(unsigned long, unsigned long, void (*)(void*), void*)>
  18:	00000000 	andeq	r0, r0, r0

Disassembly of section .rodata:

00000000 <.rodata>:
   0:	00000000 	andeq	r0, r0, r0
   4:	3ff00000 	svccc	0x00f00000	; IMB
	...
  2c:	3ff00000 	svccc	0x00f00000	; IMB
	...
  54:	3ff00000 	svccc	0x00f00000	; IMB
	...
  7c:	3ff00000 	svccc	0x00f00000	; IMB

Disassembly of section .rodata._ZTVN3vex8inertialE:

00000000 <vtable for vex::inertial>:
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
  44:	5b202965 	blpl	80a5e0 <non-virtual thunk to vex::inertial::calibrate(long)+0x80a5dc>
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

