
vex_motorgroup.cpp.obj:     file format elf32-littlearm


Disassembly of section .text._ZN3vex11motor_group18motor_group_motorsC2Ev:

00000000 <vex::motor_group::motor_group_motors::motor_group_motors()>:
   0:	e280203c 	add	r2, r0, #60	; 0x3c
   4:	e3a03000 	mov	r3, #0
   8:	e5803000 	str	r3, [r0]
   c:	e1a03000 	mov	r3, r0
  10:	e5800040 	str	r0, [r0, #64]	; 0x40
  14:	e3a01000 	mov	r1, #0
  18:	e5a31004 	str	r1, [r3, #4]!
  1c:	e1530002 	cmp	r3, r2
  20:	1afffffb 	bne	14 <vex::motor_group::motor_group_motors::motor_group_motors()+0x14>
  24:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex11motor_group18motor_group_motorsC2ERKS1_:

00000000 <vex::motor_group::motor_group_motors::motor_group_motors(vex::motor_group::motor_group_motors const&)>:
   0:	e3a03000 	mov	r3, #0
   4:	e5800040 	str	r0, [r0, #64]	; 0x40
   8:	e7912103 	ldr	r2, [r1, r3, lsl #2]
   c:	e7802103 	str	r2, [r0, r3, lsl #2]
  10:	e2833001 	add	r3, r3, #1
  14:	e3530010 	cmp	r3, #16
  18:	1afffffa 	bne	8 <vex::motor_group::motor_group_motors::motor_group_motors(vex::motor_group::motor_group_motors const&)+0x8>
  1c:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex11motor_group18motor_group_motorsD2Ev:

00000000 <vex::motor_group::motor_group_motors::~motor_group_motors()>:
   0:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex11motor_groupC2Ev:

00000000 <vex::motor_group::motor_group()>:
   0:	e92d4010 	push	{r4, lr}
   4:	e3e03102 	mvn	r3, #-2147483648	; 0x80000000
   8:	e1a04000 	mov	r4, r0
   c:	e4803004 	str	r3, [r0], #4
  10:	ebfffffe 	bl	0 <vex::motor_group::motor_group()>
  14:	e1a00004 	mov	r0, r4
  18:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex11motor_groupD2Ev:

00000000 <vex::motor_group::~motor_group()>:
   0:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex11motor_group9_addMotorEv:

00000000 <vex::motor_group::_addMotor()>:
   0:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex11motor_group9_addMotorERNS_5motorE:

00000000 <vex::motor_group::_addMotor(vex::motor&)>:
   0:	e5903044 	ldr	r3, [r0, #68]	; 0x44
   4:	e5932000 	ldr	r2, [r3]
   8:	e352000e 	cmp	r2, #14
   c:	d2820001 	addle	r0, r2, #1
  10:	d5830000 	strle	r0, [r3]
  14:	d0833102 	addle	r3, r3, r2, lsl #2
  18:	d5831004 	strle	r1, [r3, #4]
  1c:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex11motor_group5countEv:

00000000 <vex::motor_group::count()>:
   0:	e5903044 	ldr	r3, [r0, #68]	; 0x44
   4:	e5930000 	ldr	r0, [r3]
   8:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex11motor_group11setVelocityEdNS_13velocityUnitsE:

00000000 <vex::motor_group::setVelocity(double, vex::velocityUnits)>:
   0:	e92d41f3 	push	{r0, r1, r4, r5, r6, r7, r8, lr}
   4:	e1a07003 	mov	r7, r3
   8:	e5903044 	ldr	r3, [r0, #68]	; 0x44
   c:	e1a06002 	mov	r6, r2
  10:	e59d8020 	ldr	r8, [sp, #32]
  14:	e2835004 	add	r5, r3, #4
  18:	e5934000 	ldr	r4, [r3]
  1c:	e0833104 	add	r3, r3, r4, lsl #2
  20:	e2834004 	add	r4, r3, #4
  24:	e1550004 	cmp	r5, r4
  28:	0a000005 	beq	44 <vex::motor_group::setVelocity(double, vex::velocityUnits)+0x44>
  2c:	e58d8000 	str	r8, [sp]
  30:	e1a02006 	mov	r2, r6
  34:	e4950004 	ldr	r0, [r5], #4
  38:	e1a03007 	mov	r3, r7
  3c:	ebfffffe 	bl	0 <vex::motor::setVelocity(double, vex::velocityUnits)>
  40:	eafffff7 	b	24 <vex::motor_group::setVelocity(double, vex::velocityUnits)+0x24>
  44:	e28dd008 	add	sp, sp, #8
  48:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

Disassembly of section .text._ZN3vex11motor_group11setStoppingENS_9brakeTypeE:

00000000 <vex::motor_group::setStopping(vex::brakeType)>:
   0:	e5903044 	ldr	r3, [r0, #68]	; 0x44
   4:	e92d4070 	push	{r4, r5, r6, lr}
   8:	e2835004 	add	r5, r3, #4
   c:	e5934000 	ldr	r4, [r3]
  10:	e1a06001 	mov	r6, r1
  14:	e0833104 	add	r3, r3, r4, lsl #2
  18:	e2834004 	add	r4, r3, #4
  1c:	e1550004 	cmp	r5, r4
  20:	0a000003 	beq	34 <vex::motor_group::setStopping(vex::brakeType)+0x34>
  24:	e4950004 	ldr	r0, [r5], #4
  28:	e1a01006 	mov	r1, r6
  2c:	ebfffffe 	bl	0 <vex::motor::setStopping(vex::brakeType)>
  30:	eafffff9 	b	1c <vex::motor_group::setStopping(vex::brakeType)+0x1c>
  34:	e8bd8070 	pop	{r4, r5, r6, pc}

Disassembly of section .text._ZN3vex11motor_group13resetPositionEv:

00000000 <vex::motor_group::resetPosition()>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e5903044 	ldr	r3, [r0, #68]	; 0x44
   8:	e2835004 	add	r5, r3, #4
   c:	e5934000 	ldr	r4, [r3]
  10:	e0833104 	add	r3, r3, r4, lsl #2
  14:	e2834004 	add	r4, r3, #4
  18:	e1550004 	cmp	r5, r4
  1c:	0a000002 	beq	2c <vex::motor_group::resetPosition()+0x2c>
  20:	e4950004 	ldr	r0, [r5], #4
  24:	ebfffffe 	bl	0 <vex::motor::resetPosition()>
  28:	eafffffa 	b	18 <vex::motor_group::resetPosition()+0x18>
  2c:	e8bd8038 	pop	{r3, r4, r5, pc}

Disassembly of section .text._ZN3vex11motor_group11setPositionEdNS_13rotationUnitsE:

00000000 <vex::motor_group::setPosition(double, vex::rotationUnits)>:
   0:	e92d41f3 	push	{r0, r1, r4, r5, r6, r7, r8, lr}
   4:	e1a07003 	mov	r7, r3
   8:	e5903044 	ldr	r3, [r0, #68]	; 0x44
   c:	e1a06002 	mov	r6, r2
  10:	e59d8020 	ldr	r8, [sp, #32]
  14:	e2835004 	add	r5, r3, #4
  18:	e5934000 	ldr	r4, [r3]
  1c:	e0833104 	add	r3, r3, r4, lsl #2
  20:	e2834004 	add	r4, r3, #4
  24:	e1550004 	cmp	r5, r4
  28:	0a000005 	beq	44 <vex::motor_group::setPosition(double, vex::rotationUnits)+0x44>
  2c:	e58d8000 	str	r8, [sp]
  30:	e1a02006 	mov	r2, r6
  34:	e4950004 	ldr	r0, [r5], #4
  38:	e1a03007 	mov	r3, r7
  3c:	ebfffffe 	bl	0 <vex::motor::setPosition(double, vex::rotationUnits)>
  40:	eafffff7 	b	24 <vex::motor_group::setPosition(double, vex::rotationUnits)+0x24>
  44:	e28dd008 	add	sp, sp, #8
  48:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

Disassembly of section .text._ZN3vex11motor_group10setTimeoutElNS_9timeUnitsE:

00000000 <vex::motor_group::setTimeout(long, vex::timeUnits)>:
   0:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
   4:	e16f3f12 	clz	r3, r2
   8:	e3510000 	cmp	r1, #0
   c:	e1a07002 	mov	r7, r2
  10:	e1a032a3 	lsr	r3, r3, #5
  14:	e1a04001 	mov	r4, r1
  18:	d3a03000 	movle	r3, #0
  1c:	e3530000 	cmp	r3, #0
  20:	0a000005 	beq	3c <vex::motor_group::setTimeout(long, vex::timeUnits)+0x3c>
  24:	e59f3058 	ldr	r3, [pc, #88]	; 84 <vex::motor_group::setTimeout(long, vex::timeUnits)+0x84>
  28:	e1510003 	cmp	r1, r3
  2c:	a1a04003 	movge	r4, r3
  30:	e3a03ffa 	mov	r3, #1000	; 0x3e8
  34:	e0030493 	mul	r3, r3, r4
  38:	ea000003 	b	4c <vex::motor_group::setTimeout(long, vex::timeUnits)+0x4c>
  3c:	e3510000 	cmp	r1, #0
  40:	c5801000 	strgt	r1, [r0]
  44:	ca000001 	bgt	50 <vex::motor_group::setTimeout(long, vex::timeUnits)+0x50>
  48:	e3e03102 	mvn	r3, #-2147483648	; 0x80000000
  4c:	e5803000 	str	r3, [r0]
  50:	e5903044 	ldr	r3, [r0, #68]	; 0x44
  54:	e2836004 	add	r6, r3, #4
  58:	e5935000 	ldr	r5, [r3]
  5c:	e0833105 	add	r3, r3, r5, lsl #2
  60:	e2835004 	add	r5, r3, #4
  64:	e1560005 	cmp	r6, r5
  68:	0a000004 	beq	80 <vex::motor_group::setTimeout(long, vex::timeUnits)+0x80>
  6c:	e4960004 	ldr	r0, [r6], #4
  70:	e1a01004 	mov	r1, r4
  74:	e1a02007 	mov	r2, r7
  78:	ebfffffe 	bl	0 <vex::motor::setTimeout(long, vex::timeUnits)>
  7c:	eafffff8 	b	64 <vex::motor_group::setTimeout(long, vex::timeUnits)+0x64>
  80:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
  84:	000f4240 	andeq	r4, pc, r0, asr #4

Disassembly of section .text._ZN3vex11motor_group4spinENS_13directionTypeE:

00000000 <vex::motor_group::spin(vex::directionType)>:
   0:	e5903044 	ldr	r3, [r0, #68]	; 0x44
   4:	e92d4070 	push	{r4, r5, r6, lr}
   8:	e2835004 	add	r5, r3, #4
   c:	e5934000 	ldr	r4, [r3]
  10:	e1a06001 	mov	r6, r1
  14:	e0833104 	add	r3, r3, r4, lsl #2
  18:	e2834004 	add	r4, r3, #4
  1c:	e1550004 	cmp	r5, r4
  20:	0a000003 	beq	34 <vex::motor_group::spin(vex::directionType)+0x34>
  24:	e4950004 	ldr	r0, [r5], #4
  28:	e1a01006 	mov	r1, r6
  2c:	ebfffffe 	bl	0 <vex::motor::spin(vex::directionType)>
  30:	eafffff9 	b	1c <vex::motor_group::spin(vex::directionType)+0x1c>
  34:	e8bd8070 	pop	{r4, r5, r6, pc}

Disassembly of section .text._ZN3vex11motor_group4spinENS_13directionTypeEdNS_13velocityUnitsE:

00000000 <vex::motor_group::spin(vex::directionType, double, vex::velocityUnits)>:
   0:	e92d43f7 	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
   4:	e1a07003 	mov	r7, r3
   8:	e5903044 	ldr	r3, [r0, #68]	; 0x44
   c:	e1a08001 	mov	r8, r1
  10:	e59d9028 	ldr	r9, [sp, #40]	; 0x28
  14:	e1a06002 	mov	r6, r2
  18:	e2835004 	add	r5, r3, #4
  1c:	e5934000 	ldr	r4, [r3]
  20:	e0833104 	add	r3, r3, r4, lsl #2
  24:	e2834004 	add	r4, r3, #4
  28:	e1550004 	cmp	r5, r4
  2c:	0a000006 	beq	4c <vex::motor_group::spin(vex::directionType, double, vex::velocityUnits)+0x4c>
  30:	e58d9000 	str	r9, [sp]
  34:	e1a01008 	mov	r1, r8
  38:	e4950004 	ldr	r0, [r5], #4
  3c:	e1a02006 	mov	r2, r6
  40:	e1a03007 	mov	r3, r7
  44:	ebfffffe 	bl	0 <vex::motor::spin(vex::directionType, double, vex::velocityUnits)>
  48:	eafffff6 	b	28 <vex::motor_group::spin(vex::directionType, double, vex::velocityUnits)+0x28>
  4c:	e28dd00c 	add	sp, sp, #12
  50:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}

Disassembly of section .text._ZN3vex11motor_group4spinENS_13directionTypeEdNS_12voltageUnitsE:

00000000 <vex::motor_group::spin(vex::directionType, double, vex::voltageUnits)>:
   0:	e92d43f7 	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
   4:	e1a07003 	mov	r7, r3
   8:	e5903044 	ldr	r3, [r0, #68]	; 0x44
   c:	e1a08001 	mov	r8, r1
  10:	e59d9028 	ldr	r9, [sp, #40]	; 0x28
  14:	e1a06002 	mov	r6, r2
  18:	e2835004 	add	r5, r3, #4
  1c:	e5934000 	ldr	r4, [r3]
  20:	e0833104 	add	r3, r3, r4, lsl #2
  24:	e2834004 	add	r4, r3, #4
  28:	e1550004 	cmp	r5, r4
  2c:	0a000006 	beq	4c <vex::motor_group::spin(vex::directionType, double, vex::voltageUnits)+0x4c>
  30:	e58d9000 	str	r9, [sp]
  34:	e1a01008 	mov	r1, r8
  38:	e4950004 	ldr	r0, [r5], #4
  3c:	e1a02006 	mov	r2, r6
  40:	e1a03007 	mov	r3, r7
  44:	ebfffffe 	bl	0 <vex::motor::spin(vex::directionType, double, vex::voltageUnits)>
  48:	eafffff6 	b	28 <vex::motor_group::spin(vex::directionType, double, vex::voltageUnits)+0x28>
  4c:	e28dd00c 	add	sp, sp, #12
  50:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}

Disassembly of section .text._ZN3vex11motor_group10isSpinningEv:

00000000 <vex::motor_group::isSpinning()>:
   0:	e5903044 	ldr	r3, [r0, #68]	; 0x44
   4:	e92d4070 	push	{r4, r5, r6, lr}
   8:	e2836004 	add	r6, r3, #4
   c:	e5934000 	ldr	r4, [r3]
  10:	e3a05000 	mov	r5, #0
  14:	e0833104 	add	r3, r3, r4, lsl #2
  18:	e2834004 	add	r4, r3, #4
  1c:	e1560004 	cmp	r6, r4
  20:	0a000004 	beq	38 <vex::motor_group::isSpinning()+0x38>
  24:	e4960004 	ldr	r0, [r6], #4
  28:	ebfffffe 	bl	0 <vex::motor::isSpinning()>
  2c:	e1800005 	orr	r0, r0, r5
  30:	e6ef5070 	uxtb	r5, r0
  34:	eafffff8 	b	1c <vex::motor_group::isSpinning()+0x1c>
  38:	e1a00005 	mov	r0, r5
  3c:	e8bd8070 	pop	{r4, r5, r6, pc}

Disassembly of section .text._ZN3vex11motor_group6isDoneEv:

00000000 <vex::motor_group::isDone()>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vex::motor_group::isDone()>
   8:	e2200001 	eor	r0, r0, #1
   c:	e6ef0070 	uxtb	r0, r0
  10:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text._ZN3vex11motor_group14isSpinningModeEv:

00000000 <vex::motor_group::isSpinningMode()>:
   0:	e5903044 	ldr	r3, [r0, #68]	; 0x44
   4:	e92d4070 	push	{r4, r5, r6, lr}
   8:	e2836004 	add	r6, r3, #4
   c:	e5934000 	ldr	r4, [r3]
  10:	e3a05000 	mov	r5, #0
  14:	e0833104 	add	r3, r3, r4, lsl #2
  18:	e2834004 	add	r4, r3, #4
  1c:	e1560004 	cmp	r6, r4
  20:	0a000004 	beq	38 <vex::motor_group::isSpinningMode()+0x38>
  24:	e4960004 	ldr	r0, [r6], #4
  28:	ebfffffe 	bl	0 <vex::motor::isSpinningMode()>
  2c:	e1800005 	orr	r0, r0, r5
  30:	e6ef5070 	uxtb	r5, r0
  34:	eafffff8 	b	1c <vex::motor_group::isSpinningMode()+0x1c>
  38:	e1a00005 	mov	r0, r5
  3c:	e8bd8070 	pop	{r4, r5, r6, pc}

Disassembly of section .text._ZN3vex11motor_group4stopEv:

00000000 <vex::motor_group::stop()>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e5903044 	ldr	r3, [r0, #68]	; 0x44
   8:	e2835004 	add	r5, r3, #4
   c:	e5934000 	ldr	r4, [r3]
  10:	e0833104 	add	r3, r3, r4, lsl #2
  14:	e2834004 	add	r4, r3, #4
  18:	e1550004 	cmp	r5, r4
  1c:	0a000002 	beq	2c <vex::motor_group::stop()+0x2c>
  20:	e4950004 	ldr	r0, [r5], #4
  24:	ebfffffe 	bl	0 <vex::motor::stop()>
  28:	eafffffa 	b	18 <vex::motor_group::stop()+0x18>
  2c:	e8bd8038 	pop	{r3, r4, r5, pc}

Disassembly of section .text._ZN3vex11motor_group7spinForEdNS_9timeUnitsEdNS_13velocityUnitsE:

00000000 <vex::motor_group::spinFor(double, vex::timeUnits, double, vex::velocityUnits)>:
   0:	e92d4df0 	push	{r4, r5, r6, r7, r8, sl, fp, lr}
   4:	e24dd020 	sub	sp, sp, #32
   8:	e5904044 	ldr	r4, [r0, #68]	; 0x44
   c:	e1a08000 	mov	r8, r0
  10:	e59db040 	ldr	fp, [sp, #64]	; 0x40
  14:	e1cd64d8 	ldrd	r6, [sp, #72]	; 0x48
  18:	e5945000 	ldr	r5, [r4]
  1c:	e59da050 	ldr	sl, [sp, #80]	; 0x50
  20:	e1cd21f8 	strd	r2, [sp, #24]
  24:	e0845105 	add	r5, r4, r5, lsl #2
  28:	e2844004 	add	r4, r4, #4
  2c:	e2855004 	add	r5, r5, #4
  30:	e1540005 	cmp	r4, r5
  34:	0a000011 	beq	80 <vex::motor_group::spinFor(double, vex::timeUnits, double, vex::velocityUnits)+0x80>
  38:	e5983044 	ldr	r3, [r8, #68]	; 0x44
  3c:	e4940004 	ldr	r0, [r4], #4
  40:	e5932000 	ldr	r2, [r3]
  44:	e7933102 	ldr	r3, [r3, r2, lsl #2]
  48:	e1500003 	cmp	r0, r3
  4c:	1a000005 	bne	68 <vex::motor_group::spinFor(double, vex::timeUnits, double, vex::velocityUnits)+0x68>
  50:	e58db000 	str	fp, [sp]
  54:	e1cd60f8 	strd	r6, [sp, #8]
  58:	e58da010 	str	sl, [sp, #16]
  5c:	e1cd21d8 	ldrd	r2, [sp, #24]
  60:	ebfffffe 	bl	0 <vex::motor::spinFor(double, vex::timeUnits, double, vex::velocityUnits)>
  64:	eafffff1 	b	30 <vex::motor_group::spinFor(double, vex::timeUnits, double, vex::velocityUnits)+0x30>
  68:	e58da000 	str	sl, [sp]
  6c:	e3a01000 	mov	r1, #0
  70:	e1a02006 	mov	r2, r6
  74:	e1a03007 	mov	r3, r7
  78:	ebfffffe 	bl	0 <vex::motor::spin(vex::directionType, double, vex::velocityUnits)>
  7c:	eaffffeb 	b	30 <vex::motor_group::spinFor(double, vex::timeUnits, double, vex::velocityUnits)+0x30>
  80:	e1a00008 	mov	r0, r8
  84:	e28dd020 	add	sp, sp, #32
  88:	e8bd4df0 	pop	{r4, r5, r6, r7, r8, sl, fp, lr}
  8c:	eafffffe 	b	0 <vex::motor_group::spinFor(double, vex::timeUnits, double, vex::velocityUnits)>

Disassembly of section .text._ZN3vex11motor_group7spinForENS_13directionTypeEdNS_9timeUnitsEdNS_13velocityUnitsE:

00000000 <vex::motor_group::spinFor(vex::directionType, double, vex::timeUnits, double, vex::velocityUnits)>:
   0:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
   4:	e24dd024 	sub	sp, sp, #36	; 0x24
   8:	e5904044 	ldr	r4, [r0, #68]	; 0x44
   c:	e1a06000 	mov	r6, r0
  10:	e59db048 	ldr	fp, [sp, #72]	; 0x48
  14:	e1a07001 	mov	r7, r1
  18:	e1cd85d0 	ldrd	r8, [sp, #80]	; 0x50
  1c:	e5945000 	ldr	r5, [r4]
  20:	e59da058 	ldr	sl, [sp, #88]	; 0x58
  24:	e1cd21f8 	strd	r2, [sp, #24]
  28:	e0845105 	add	r5, r4, r5, lsl #2
  2c:	e2844004 	add	r4, r4, #4
  30:	e2855004 	add	r5, r5, #4
  34:	e1540005 	cmp	r4, r5
  38:	0a000012 	beq	88 <vex::motor_group::spinFor(vex::directionType, double, vex::timeUnits, double, vex::velocityUnits)+0x88>
  3c:	e5963044 	ldr	r3, [r6, #68]	; 0x44
  40:	e4940004 	ldr	r0, [r4], #4
  44:	e5932000 	ldr	r2, [r3]
  48:	e7933102 	ldr	r3, [r3, r2, lsl #2]
  4c:	e1500003 	cmp	r0, r3
  50:	1a000006 	bne	70 <vex::motor_group::spinFor(vex::directionType, double, vex::timeUnits, double, vex::velocityUnits)+0x70>
  54:	e58db000 	str	fp, [sp]
  58:	e1a01007 	mov	r1, r7
  5c:	e1cd80f8 	strd	r8, [sp, #8]
  60:	e58da010 	str	sl, [sp, #16]
  64:	e1cd21d8 	ldrd	r2, [sp, #24]
  68:	ebfffffe 	bl	0 <vex::motor::spinFor(vex::directionType, double, vex::timeUnits, double, vex::velocityUnits)>
  6c:	eafffff0 	b	34 <vex::motor_group::spinFor(vex::directionType, double, vex::timeUnits, double, vex::velocityUnits)+0x34>
  70:	e58da000 	str	sl, [sp]
  74:	e1a01007 	mov	r1, r7
  78:	e1a02008 	mov	r2, r8
  7c:	e1a03009 	mov	r3, r9
  80:	ebfffffe 	bl	0 <vex::motor::spin(vex::directionType, double, vex::velocityUnits)>
  84:	eaffffea 	b	34 <vex::motor_group::spinFor(vex::directionType, double, vex::timeUnits, double, vex::velocityUnits)+0x34>
  88:	e1a00006 	mov	r0, r6
  8c:	e28dd024 	add	sp, sp, #36	; 0x24
  90:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
  94:	eafffffe 	b	0 <vex::motor_group::spinFor(vex::directionType, double, vex::timeUnits, double, vex::velocityUnits)>

Disassembly of section .text._ZN3vex11motor_group7spinForEdNS_9timeUnitsE:

00000000 <vex::motor_group::spinFor(double, vex::timeUnits)>:
   0:	e92d43f7 	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
   4:	e1a09000 	mov	r9, r0
   8:	e5904044 	ldr	r4, [r0, #68]	; 0x44
   c:	e1a06002 	mov	r6, r2
  10:	e59d8028 	ldr	r8, [sp, #40]	; 0x28
  14:	e1a07003 	mov	r7, r3
  18:	e5945000 	ldr	r5, [r4]
  1c:	e0845105 	add	r5, r4, r5, lsl #2
  20:	e2844004 	add	r4, r4, #4
  24:	e2855004 	add	r5, r5, #4
  28:	e1540005 	cmp	r4, r5
  2c:	0a00000d 	beq	68 <vex::motor_group::spinFor(double, vex::timeUnits)+0x68>
  30:	e5993044 	ldr	r3, [r9, #68]	; 0x44
  34:	e4940004 	ldr	r0, [r4], #4
  38:	e5932000 	ldr	r2, [r3]
  3c:	e7933102 	ldr	r3, [r3, r2, lsl #2]
  40:	e1500003 	cmp	r0, r3
  44:	1a000004 	bne	5c <vex::motor_group::spinFor(double, vex::timeUnits)+0x5c>
  48:	e58d8000 	str	r8, [sp]
  4c:	e1a02006 	mov	r2, r6
  50:	e1a03007 	mov	r3, r7
  54:	ebfffffe 	bl	0 <vex::motor::spinFor(double, vex::timeUnits)>
  58:	eafffff2 	b	28 <vex::motor_group::spinFor(double, vex::timeUnits)+0x28>
  5c:	e3a01000 	mov	r1, #0
  60:	ebfffffe 	bl	0 <vex::motor::spin(vex::directionType)>
  64:	eaffffef 	b	28 <vex::motor_group::spinFor(double, vex::timeUnits)+0x28>
  68:	e1a00009 	mov	r0, r9
  6c:	e28dd00c 	add	sp, sp, #12
  70:	e8bd43f0 	pop	{r4, r5, r6, r7, r8, r9, lr}
  74:	eafffffe 	b	0 <vex::motor_group::spinFor(double, vex::timeUnits)>

Disassembly of section .text._ZN3vex11motor_group7spinForENS_13directionTypeEdNS_9timeUnitsE:

00000000 <vex::motor_group::spinFor(vex::directionType, double, vex::timeUnits)>:
   0:	e92d47f3 	push	{r0, r1, r4, r5, r6, r7, r8, r9, sl, lr}
   4:	e1a0a000 	mov	sl, r0
   8:	e5904044 	ldr	r4, [r0, #68]	; 0x44
   c:	e1a08001 	mov	r8, r1
  10:	e59d9028 	ldr	r9, [sp, #40]	; 0x28
  14:	e1a06002 	mov	r6, r2
  18:	e1a07003 	mov	r7, r3
  1c:	e5945000 	ldr	r5, [r4]
  20:	e0845105 	add	r5, r4, r5, lsl #2
  24:	e2844004 	add	r4, r4, #4
  28:	e2855004 	add	r5, r5, #4
  2c:	e1540005 	cmp	r4, r5
  30:	0a00000e 	beq	70 <vex::motor_group::spinFor(vex::directionType, double, vex::timeUnits)+0x70>
  34:	e59a3044 	ldr	r3, [sl, #68]	; 0x44
  38:	e4940004 	ldr	r0, [r4], #4
  3c:	e5932000 	ldr	r2, [r3]
  40:	e7933102 	ldr	r3, [r3, r2, lsl #2]
  44:	e1500003 	cmp	r0, r3
  48:	1a000005 	bne	64 <vex::motor_group::spinFor(vex::directionType, double, vex::timeUnits)+0x64>
  4c:	e58d9000 	str	r9, [sp]
  50:	e1a01008 	mov	r1, r8
  54:	e1a02006 	mov	r2, r6
  58:	e1a03007 	mov	r3, r7
  5c:	ebfffffe 	bl	0 <vex::motor::spinFor(vex::directionType, double, vex::timeUnits)>
  60:	eafffff1 	b	2c <vex::motor_group::spinFor(vex::directionType, double, vex::timeUnits)+0x2c>
  64:	e1a01008 	mov	r1, r8
  68:	ebfffffe 	bl	0 <vex::motor::spin(vex::directionType)>
  6c:	eaffffee 	b	2c <vex::motor_group::spinFor(vex::directionType, double, vex::timeUnits)+0x2c>
  70:	e1a0000a 	mov	r0, sl
  74:	e28dd008 	add	sp, sp, #8
  78:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
  7c:	eafffffe 	b	0 <vex::motor_group::spinFor(vex::directionType, double, vex::timeUnits)>

Disassembly of section .text._ZN3vex11motor_group4stopENS_9brakeTypeE:

00000000 <vex::motor_group::stop(vex::brakeType)>:
   0:	e5903044 	ldr	r3, [r0, #68]	; 0x44
   4:	e92d4070 	push	{r4, r5, r6, lr}
   8:	e2835004 	add	r5, r3, #4
   c:	e5934000 	ldr	r4, [r3]
  10:	e1a06001 	mov	r6, r1
  14:	e0833104 	add	r3, r3, r4, lsl #2
  18:	e2834004 	add	r4, r3, #4
  1c:	e1550004 	cmp	r5, r4
  20:	0a000003 	beq	34 <vex::motor_group::stop(vex::brakeType)+0x34>
  24:	e4950004 	ldr	r0, [r5], #4
  28:	e1a01006 	mov	r1, r6
  2c:	ebfffffe 	bl	0 <vex::motor::stop(vex::brakeType)>
  30:	eafffff9 	b	1c <vex::motor_group::stop(vex::brakeType)+0x1c>
  34:	e8bd8070 	pop	{r4, r5, r6, pc}

Disassembly of section .text._ZN3vex11motor_group12setMaxTorqueEdNS_12percentUnitsE:

00000000 <vex::motor_group::setMaxTorque(double, vex::percentUnits)>:
   0:	e92d41f3 	push	{r0, r1, r4, r5, r6, r7, r8, lr}
   4:	e1a07003 	mov	r7, r3
   8:	e5903044 	ldr	r3, [r0, #68]	; 0x44
   c:	e1a06002 	mov	r6, r2
  10:	e59d8020 	ldr	r8, [sp, #32]
  14:	e2835004 	add	r5, r3, #4
  18:	e5934000 	ldr	r4, [r3]
  1c:	e0833104 	add	r3, r3, r4, lsl #2
  20:	e2834004 	add	r4, r3, #4
  24:	e1550004 	cmp	r5, r4
  28:	0a000005 	beq	44 <vex::motor_group::setMaxTorque(double, vex::percentUnits)+0x44>
  2c:	e58d8000 	str	r8, [sp]
  30:	e1a02006 	mov	r2, r6
  34:	e4950004 	ldr	r0, [r5], #4
  38:	e1a03007 	mov	r3, r7
  3c:	ebfffffe 	bl	0 <vex::motor::setMaxTorque(double, vex::percentUnits)>
  40:	eafffff7 	b	24 <vex::motor_group::setMaxTorque(double, vex::percentUnits)+0x24>
  44:	e28dd008 	add	sp, sp, #8
  48:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

Disassembly of section .text._ZN3vex11motor_group12setMaxTorqueEdNS_11torqueUnitsE:

00000000 <vex::motor_group::setMaxTorque(double, vex::torqueUnits)>:
   0:	e92d41f3 	push	{r0, r1, r4, r5, r6, r7, r8, lr}
   4:	e1a07003 	mov	r7, r3
   8:	e5903044 	ldr	r3, [r0, #68]	; 0x44
   c:	e1a06002 	mov	r6, r2
  10:	e59d8020 	ldr	r8, [sp, #32]
  14:	e2835004 	add	r5, r3, #4
  18:	e5934000 	ldr	r4, [r3]
  1c:	e0833104 	add	r3, r3, r4, lsl #2
  20:	e2834004 	add	r4, r3, #4
  24:	e1550004 	cmp	r5, r4
  28:	0a000005 	beq	44 <vex::motor_group::setMaxTorque(double, vex::torqueUnits)+0x44>
  2c:	e58d8000 	str	r8, [sp]
  30:	e1a02006 	mov	r2, r6
  34:	e4950004 	ldr	r0, [r5], #4
  38:	e1a03007 	mov	r3, r7
  3c:	ebfffffe 	bl	0 <vex::motor::setMaxTorque(double, vex::torqueUnits)>
  40:	eafffff7 	b	24 <vex::motor_group::setMaxTorque(double, vex::torqueUnits)+0x24>
  44:	e28dd008 	add	sp, sp, #8
  48:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

Disassembly of section .text._ZN3vex11motor_group12setMaxTorqueEdNS_12currentUnitsE:

00000000 <vex::motor_group::setMaxTorque(double, vex::currentUnits)>:
   0:	e92d41f3 	push	{r0, r1, r4, r5, r6, r7, r8, lr}
   4:	e1a07003 	mov	r7, r3
   8:	e5903044 	ldr	r3, [r0, #68]	; 0x44
   c:	e1a06002 	mov	r6, r2
  10:	e59d8020 	ldr	r8, [sp, #32]
  14:	e2835004 	add	r5, r3, #4
  18:	e5934000 	ldr	r4, [r3]
  1c:	e0833104 	add	r3, r3, r4, lsl #2
  20:	e2834004 	add	r4, r3, #4
  24:	e1550004 	cmp	r5, r4
  28:	0a000005 	beq	44 <vex::motor_group::setMaxTorque(double, vex::currentUnits)+0x44>
  2c:	e58d8000 	str	r8, [sp]
  30:	e1a02006 	mov	r2, r6
  34:	e4950004 	ldr	r0, [r5], #4
  38:	e1a03007 	mov	r3, r7
  3c:	ebfffffe 	bl	0 <vex::motor::setMaxTorque(double, vex::currentUnits)>
  40:	eafffff7 	b	24 <vex::motor_group::setMaxTorque(double, vex::currentUnits)+0x24>
  44:	e28dd008 	add	sp, sp, #8
  48:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

Disassembly of section .text._ZN3vex11motor_group9directionEv:

00000000 <vex::motor_group::direction()>:
   0:	e5903044 	ldr	r3, [r0, #68]	; 0x44
   4:	e5930004 	ldr	r0, [r3, #4]
   8:	eafffffe 	b	0 <vex::motor::direction()>

Disassembly of section .text._ZN3vex11motor_group8positionENS_13rotationUnitsE:

00000000 <vex::motor_group::position(vex::rotationUnits)>:
   0:	e5903044 	ldr	r3, [r0, #68]	; 0x44
   4:	e5930004 	ldr	r0, [r3, #4]
   8:	eafffffe 	b	0 <vex::motor::position(vex::rotationUnits)>

Disassembly of section .text._ZN3vex11motor_group8velocityENS_13velocityUnitsE:

00000000 <vex::motor_group::velocity(vex::velocityUnits)>:
   0:	e5903044 	ldr	r3, [r0, #68]	; 0x44
   4:	e5930004 	ldr	r0, [r3, #4]
   8:	eafffffe 	b	0 <vex::motor::velocity(vex::velocityUnits)>

Disassembly of section .text._ZN3vex11motor_group7currentENS_12currentUnitsE:

00000000 <vex::motor_group::current(vex::currentUnits)>:
   0:	e5903044 	ldr	r3, [r0, #68]	; 0x44
   4:	e92d4070 	push	{r4, r5, r6, lr}
   8:	e2835004 	add	r5, r3, #4
   c:	e5934000 	ldr	r4, [r3]
  10:	e1a06001 	mov	r6, r1
  14:	ed2d8b02 	vpush	{d8}
  18:	e0833104 	add	r3, r3, r4, lsl #2
  1c:	ed9f8b0b 	vldr	d8, [pc, #44]	; 50 <vex::motor_group::current(vex::currentUnits)+0x50>
  20:	e2834004 	add	r4, r3, #4
  24:	e1550004 	cmp	r5, r4
  28:	0a000005 	beq	44 <vex::motor_group::current(vex::currentUnits)+0x44>
  2c:	e4950004 	ldr	r0, [r5], #4
  30:	e1a01006 	mov	r1, r6
  34:	ebfffffe 	bl	0 <vex::motor::current(vex::currentUnits)>
  38:	ec410b30 	vmov	d16, r0, r1
  3c:	ee388b20 	vadd.f64	d8, d8, d16
  40:	eafffff7 	b	24 <vex::motor_group::current(vex::currentUnits)+0x24>
  44:	ec510b18 	vmov	r0, r1, d8
  48:	ecbd8b02 	vpop	{d8}
  4c:	e8bd8070 	pop	{r4, r5, r6, pc}
	...

Disassembly of section .text._ZN3vex11motor_group7currentENS_12percentUnitsE:

00000000 <vex::motor_group::current(vex::percentUnits)>:
   0:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
   4:	e1a06000 	mov	r6, r0
   8:	e5903044 	ldr	r3, [r0, #68]	; 0x44
   c:	e1a07001 	mov	r7, r1
  10:	ed2d8b02 	vpush	{d8}
  14:	e2835004 	add	r5, r3, #4
  18:	e5934000 	ldr	r4, [r3]
  1c:	ed9f8b11 	vldr	d8, [pc, #68]	; 68 <vex::motor_group::current(vex::percentUnits)+0x68>
  20:	e0833104 	add	r3, r3, r4, lsl #2
  24:	e2834004 	add	r4, r3, #4
  28:	e1550004 	cmp	r5, r4
  2c:	0a000005 	beq	48 <vex::motor_group::current(vex::percentUnits)+0x48>
  30:	e4950004 	ldr	r0, [r5], #4
  34:	e1a01007 	mov	r1, r7
  38:	ebfffffe 	bl	0 <vex::motor::current(vex::percentUnits)>
  3c:	ec410b30 	vmov	d16, r0, r1
  40:	ee388b20 	vadd.f64	d8, d8, d16
  44:	eafffff7 	b	28 <vex::motor_group::current(vex::percentUnits)+0x28>
  48:	e5963044 	ldr	r3, [r6, #68]	; 0x44
  4c:	e5933000 	ldr	r3, [r3]
  50:	ee073a90 	vmov	s15, r3
  54:	eef80be7 	vcvt.f64.s32	d16, s15
  58:	eec80b20 	vdiv.f64	d16, d8, d16
  5c:	ecbd8b02 	vpop	{d8}
  60:	ec510b30 	vmov	r0, r1, d16
  64:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
	...

Disassembly of section .text._ZN3vex11motor_group7voltageENS_12voltageUnitsE:

00000000 <vex::motor_group::voltage(vex::voltageUnits)>:
   0:	e5903044 	ldr	r3, [r0, #68]	; 0x44
   4:	e5930004 	ldr	r0, [r3, #4]
   8:	eafffffe 	b	0 <vex::motor::voltage(vex::voltageUnits)>

Disassembly of section .text._ZN3vex11motor_group5powerENS_10powerUnitsE:

00000000 <vex::motor_group::power(vex::powerUnits)>:
   0:	e5903044 	ldr	r3, [r0, #68]	; 0x44
   4:	e5930004 	ldr	r0, [r3, #4]
   8:	eafffffe 	b	0 <vex::motor::power(vex::powerUnits)>

Disassembly of section .text._ZN3vex11motor_group6torqueENS_11torqueUnitsE:

00000000 <vex::motor_group::torque(vex::torqueUnits)>:
   0:	e5903044 	ldr	r3, [r0, #68]	; 0x44
   4:	e5930004 	ldr	r0, [r3, #4]
   8:	eafffffe 	b	0 <vex::motor::torque(vex::torqueUnits)>

Disassembly of section .text._ZN3vex11motor_group10efficiencyENS_12percentUnitsE:

00000000 <vex::motor_group::efficiency(vex::percentUnits)>:
   0:	e5903044 	ldr	r3, [r0, #68]	; 0x44
   4:	e5930004 	ldr	r0, [r3, #4]
   8:	eafffffe 	b	0 <vex::motor::efficiency(vex::percentUnits)>

Disassembly of section .text._ZN3vex11motor_group11temperatureENS_12percentUnitsE:

00000000 <vex::motor_group::temperature(vex::percentUnits)>:
   0:	e5903044 	ldr	r3, [r0, #68]	; 0x44
   4:	e5930004 	ldr	r0, [r3, #4]
   8:	eafffffe 	b	0 <vex::motor::temperature(vex::percentUnits)>

Disassembly of section .text._ZN3vex11motor_group11temperatureENS_16temperatureUnitsE:

00000000 <vex::motor_group::temperature(vex::temperatureUnits)>:
   0:	e5903044 	ldr	r3, [r0, #68]	; 0x44
   4:	e5930004 	ldr	r0, [r3, #4]
   8:	eafffffe 	b	0 <vex::motor::temperature(vex::temperatureUnits)>

Disassembly of section .text._ZN3vex11motor_group20waitForCompletionAllEv:

00000000 <vex::motor_group::waitForCompletionAll()>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e5905000 	ldr	r5, [r0]
   c:	e3550000 	cmp	r5, #0
  10:	ba000007 	blt	34 <vex::motor_group::waitForCompletionAll()+0x34>
  14:	e1a00004 	mov	r0, r4
  18:	ebfffffe 	bl	0 <vex::motor_group::waitForCompletionAll()>
  1c:	e3500000 	cmp	r0, #0
  20:	0a000003 	beq	34 <vex::motor_group::waitForCompletionAll()+0x34>
  24:	e3a0000a 	mov	r0, #10
  28:	e245500a 	sub	r5, r5, #10
  2c:	ebfffffe 	bl	0 <vex::this_thread::sleep_for(unsigned long)>
  30:	eafffff5 	b	c <vex::motor_group::waitForCompletionAll()+0xc>
  34:	e1a00004 	mov	r0, r4
  38:	ebfffffe 	bl	0 <vex::motor_group::waitForCompletionAll()>
  3c:	e1a05000 	mov	r5, r0
  40:	e1a00004 	mov	r0, r4
  44:	ebfffffe 	bl	0 <vex::motor_group::waitForCompletionAll()>
  48:	e3500000 	cmp	r0, #0
  4c:	1a000001 	bne	58 <vex::motor_group::waitForCompletionAll()+0x58>
  50:	e1a00004 	mov	r0, r4
  54:	ebfffffe 	bl	0 <vex::motor_group::waitForCompletionAll()>
  58:	e1a00005 	mov	r0, r5
  5c:	e8bd8038 	pop	{r3, r4, r5, pc}

Disassembly of section .text._ZN3vex11motor_group6spinToEdNS_13rotationUnitsEdNS_13velocityUnitsEb:

00000000 <vex::motor_group::spinTo(double, vex::rotationUnits, double, vex::velocityUnits, bool)>:
   0:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
   4:	e1a07003 	mov	r7, r3
   8:	ed2d8b02 	vpush	{d8}
   c:	e1a09000 	mov	r9, r0
  10:	e5903044 	ldr	r3, [r0, #68]	; 0x44
  14:	e1a06002 	mov	r6, r2
  18:	e2835004 	add	r5, r3, #4
  1c:	e24dd01c 	sub	sp, sp, #28
  20:	e5934000 	ldr	r4, [r3]
  24:	ed9d8b14 	vldr	d8, [sp, #80]	; 0x50
  28:	e0833104 	add	r3, r3, r4, lsl #2
  2c:	e59da048 	ldr	sl, [sp, #72]	; 0x48
  30:	e59db058 	ldr	fp, [sp, #88]	; 0x58
  34:	e2834004 	add	r4, r3, #4
  38:	e5dd805c 	ldrb	r8, [sp, #92]	; 0x5c
  3c:	e1550004 	cmp	r5, r4
  40:	0a000009 	beq	6c <vex::motor_group::spinTo(double, vex::rotationUnits, double, vex::velocityUnits, bool)+0x6c>
  44:	ed8d8b02 	vstr	d8, [sp, #8]
  48:	e3a03000 	mov	r3, #0
  4c:	e58da000 	str	sl, [sp]
  50:	e1a02006 	mov	r2, r6
  54:	e58d3014 	str	r3, [sp, #20]
  58:	e1a03007 	mov	r3, r7
  5c:	e58db010 	str	fp, [sp, #16]
  60:	e4950004 	ldr	r0, [r5], #4
  64:	ebfffffe 	bl	0 <vex::motor::spinTo(double, vex::rotationUnits, double, vex::velocityUnits, bool)>
  68:	eafffff3 	b	3c <vex::motor_group::spinTo(double, vex::rotationUnits, double, vex::velocityUnits, bool)+0x3c>
  6c:	e3580000 	cmp	r8, #0
  70:	0a000004 	beq	88 <vex::motor_group::spinTo(double, vex::rotationUnits, double, vex::velocityUnits, bool)+0x88>
  74:	e1a00009 	mov	r0, r9
  78:	e28dd01c 	add	sp, sp, #28
  7c:	ecbd8b02 	vpop	{d8}
  80:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
  84:	eafffffe 	b	0 <vex::motor_group::spinTo(double, vex::rotationUnits, double, vex::velocityUnits, bool)>
  88:	e1a00008 	mov	r0, r8
  8c:	e28dd01c 	add	sp, sp, #28
  90:	ecbd8b02 	vpop	{d8}
  94:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}

Disassembly of section .text._ZN3vex11motor_group14spinToPositionEdNS_13rotationUnitsEdNS_13velocityUnitsEb:

00000000 <vex::motor_group::spinToPosition(double, vex::rotationUnits, double, vex::velocityUnits, bool)>:
   0:	e92d4030 	push	{r4, r5, lr}
   4:	e5dd1020 	ldrb	r1, [sp, #32]
   8:	e58d1020 	str	r1, [sp, #32]
   c:	e8bd4030 	pop	{r4, r5, lr}
  10:	eafffffe 	b	0 <vex::motor_group::spinToPosition(double, vex::rotationUnits, double, vex::velocityUnits, bool)>

Disassembly of section .text._ZN3vex11motor_group6spinToEdNS_13rotationUnitsEb:

00000000 <vex::motor_group::spinTo(double, vex::rotationUnits, bool)>:
   0:	e92d47f3 	push	{r0, r1, r4, r5, r6, r7, r8, r9, sl, lr}
   4:	e1a07003 	mov	r7, r3
   8:	e5903044 	ldr	r3, [r0, #68]	; 0x44
   c:	e1a09000 	mov	r9, r0
  10:	e59da028 	ldr	sl, [sp, #40]	; 0x28
  14:	e1a06002 	mov	r6, r2
  18:	e2835004 	add	r5, r3, #4
  1c:	e5dd802c 	ldrb	r8, [sp, #44]	; 0x2c
  20:	e5934000 	ldr	r4, [r3]
  24:	e0833104 	add	r3, r3, r4, lsl #2
  28:	e2834004 	add	r4, r3, #4
  2c:	e1550004 	cmp	r5, r4
  30:	0a000007 	beq	54 <vex::motor_group::spinTo(double, vex::rotationUnits, bool)+0x54>
  34:	e58da000 	str	sl, [sp]
  38:	e3a03000 	mov	r3, #0
  3c:	e1a02006 	mov	r2, r6
  40:	e58d3004 	str	r3, [sp, #4]
  44:	e1a03007 	mov	r3, r7
  48:	e4950004 	ldr	r0, [r5], #4
  4c:	ebfffffe 	bl	0 <vex::motor::spinTo(double, vex::rotationUnits, bool)>
  50:	eafffff5 	b	2c <vex::motor_group::spinTo(double, vex::rotationUnits, bool)+0x2c>
  54:	e3580000 	cmp	r8, #0
  58:	0a000003 	beq	6c <vex::motor_group::spinTo(double, vex::rotationUnits, bool)+0x6c>
  5c:	e1a00009 	mov	r0, r9
  60:	e28dd008 	add	sp, sp, #8
  64:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
  68:	eafffffe 	b	0 <vex::motor_group::spinTo(double, vex::rotationUnits, bool)>
  6c:	e1a00008 	mov	r0, r8
  70:	e28dd008 	add	sp, sp, #8
  74:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}

Disassembly of section .text._ZN3vex11motor_group14spinToPositionEdNS_13rotationUnitsEb:

00000000 <vex::motor_group::spinToPosition(double, vex::rotationUnits, bool)>:
   0:	e5dd1004 	ldrb	r1, [sp, #4]
   4:	e58d1004 	str	r1, [sp, #4]
   8:	eafffffe 	b	0 <vex::motor_group::spinToPosition(double, vex::rotationUnits, bool)>

Disassembly of section .text._ZN3vex11motor_group7spinForEdNS_13rotationUnitsEdNS_13velocityUnitsEb:

00000000 <vex::motor_group::spinFor(double, vex::rotationUnits, double, vex::velocityUnits, bool)>:
   0:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
   4:	e1a07003 	mov	r7, r3
   8:	ed2d8b02 	vpush	{d8}
   c:	e1a09000 	mov	r9, r0
  10:	e5903044 	ldr	r3, [r0, #68]	; 0x44
  14:	e1a06002 	mov	r6, r2
  18:	e2835004 	add	r5, r3, #4
  1c:	e24dd01c 	sub	sp, sp, #28
  20:	e5934000 	ldr	r4, [r3]
  24:	ed9d8b14 	vldr	d8, [sp, #80]	; 0x50
  28:	e0833104 	add	r3, r3, r4, lsl #2
  2c:	e59da048 	ldr	sl, [sp, #72]	; 0x48
  30:	e59db058 	ldr	fp, [sp, #88]	; 0x58
  34:	e2834004 	add	r4, r3, #4
  38:	e5dd805c 	ldrb	r8, [sp, #92]	; 0x5c
  3c:	e1550004 	cmp	r5, r4
  40:	0a000009 	beq	6c <vex::motor_group::spinFor(double, vex::rotationUnits, double, vex::velocityUnits, bool)+0x6c>
  44:	ed8d8b02 	vstr	d8, [sp, #8]
  48:	e3a03000 	mov	r3, #0
  4c:	e58da000 	str	sl, [sp]
  50:	e1a02006 	mov	r2, r6
  54:	e58d3014 	str	r3, [sp, #20]
  58:	e1a03007 	mov	r3, r7
  5c:	e58db010 	str	fp, [sp, #16]
  60:	e4950004 	ldr	r0, [r5], #4
  64:	ebfffffe 	bl	0 <vex::motor::spinFor(double, vex::rotationUnits, double, vex::velocityUnits, bool)>
  68:	eafffff3 	b	3c <vex::motor_group::spinFor(double, vex::rotationUnits, double, vex::velocityUnits, bool)+0x3c>
  6c:	e3580000 	cmp	r8, #0
  70:	0a000004 	beq	88 <vex::motor_group::spinFor(double, vex::rotationUnits, double, vex::velocityUnits, bool)+0x88>
  74:	e1a00009 	mov	r0, r9
  78:	e28dd01c 	add	sp, sp, #28
  7c:	ecbd8b02 	vpop	{d8}
  80:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
  84:	eafffffe 	b	0 <vex::motor_group::spinFor(double, vex::rotationUnits, double, vex::velocityUnits, bool)>
  88:	e1a00008 	mov	r0, r8
  8c:	e28dd01c 	add	sp, sp, #28
  90:	ecbd8b02 	vpop	{d8}
  94:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}

Disassembly of section .text._ZN3vex11motor_group7spinForENS_13directionTypeEdNS_13rotationUnitsEdNS_13velocityUnitsEb:

00000000 <vex::motor_group::spinFor(vex::directionType, double, vex::rotationUnits, double, vex::velocityUnits, bool)>:
   0:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
   4:	e1a07003 	mov	r7, r3
   8:	ed2d8b02 	vpush	{d8}
   c:	e1a08000 	mov	r8, r0
  10:	e5903044 	ldr	r3, [r0, #68]	; 0x44
  14:	e1a09001 	mov	r9, r1
  18:	e1a06002 	mov	r6, r2
  1c:	e2834004 	add	r4, r3, #4
  20:	e24dd024 	sub	sp, sp, #36	; 0x24
  24:	e593c000 	ldr	ip, [r3]
  28:	ed9d8b16 	vldr	d8, [sp, #88]	; 0x58
  2c:	e083310c 	add	r3, r3, ip, lsl #2
  30:	e59da050 	ldr	sl, [sp, #80]	; 0x50
  34:	e59db060 	ldr	fp, [sp, #96]	; 0x60
  38:	e283c004 	add	ip, r3, #4
  3c:	e5dd5064 	ldrb	r5, [sp, #100]	; 0x64
  40:	e154000c 	cmp	r4, ip
  44:	0a00000c 	beq	7c <vex::motor_group::spinFor(vex::directionType, double, vex::rotationUnits, double, vex::velocityUnits, bool)+0x7c>
  48:	ed8d8b02 	vstr	d8, [sp, #8]
  4c:	e3a03000 	mov	r3, #0
  50:	e58da000 	str	sl, [sp]
  54:	e1a01009 	mov	r1, r9
  58:	e58d3014 	str	r3, [sp, #20]
  5c:	e1a02006 	mov	r2, r6
  60:	e58db010 	str	fp, [sp, #16]
  64:	e1a03007 	mov	r3, r7
  68:	e4940004 	ldr	r0, [r4], #4
  6c:	e58dc01c 	str	ip, [sp, #28]
  70:	ebfffffe 	bl	0 <vex::motor::spinFor(vex::directionType, double, vex::rotationUnits, double, vex::velocityUnits, bool)>
  74:	e59dc01c 	ldr	ip, [sp, #28]
  78:	eafffff0 	b	40 <vex::motor_group::spinFor(vex::directionType, double, vex::rotationUnits, double, vex::velocityUnits, bool)+0x40>
  7c:	e3550000 	cmp	r5, #0
  80:	0a000004 	beq	98 <vex::motor_group::spinFor(vex::directionType, double, vex::rotationUnits, double, vex::velocityUnits, bool)+0x98>
  84:	e1a00008 	mov	r0, r8
  88:	e28dd024 	add	sp, sp, #36	; 0x24
  8c:	ecbd8b02 	vpop	{d8}
  90:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
  94:	eafffffe 	b	0 <vex::motor_group::spinFor(vex::directionType, double, vex::rotationUnits, double, vex::velocityUnits, bool)>
  98:	e1a00005 	mov	r0, r5
  9c:	e28dd024 	add	sp, sp, #36	; 0x24
  a0:	ecbd8b02 	vpop	{d8}
  a4:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}

Disassembly of section .text._ZN3vex11motor_group7spinForEdNS_13rotationUnitsEb:

00000000 <vex::motor_group::spinFor(double, vex::rotationUnits, bool)>:
   0:	e92d47f3 	push	{r0, r1, r4, r5, r6, r7, r8, r9, sl, lr}
   4:	e1a07003 	mov	r7, r3
   8:	e5903044 	ldr	r3, [r0, #68]	; 0x44
   c:	e1a09000 	mov	r9, r0
  10:	e59da028 	ldr	sl, [sp, #40]	; 0x28
  14:	e1a06002 	mov	r6, r2
  18:	e2835004 	add	r5, r3, #4
  1c:	e5dd802c 	ldrb	r8, [sp, #44]	; 0x2c
  20:	e5934000 	ldr	r4, [r3]
  24:	e0833104 	add	r3, r3, r4, lsl #2
  28:	e2834004 	add	r4, r3, #4
  2c:	e1550004 	cmp	r5, r4
  30:	0a000007 	beq	54 <vex::motor_group::spinFor(double, vex::rotationUnits, bool)+0x54>
  34:	e58da000 	str	sl, [sp]
  38:	e3a03000 	mov	r3, #0
  3c:	e1a02006 	mov	r2, r6
  40:	e58d3004 	str	r3, [sp, #4]
  44:	e1a03007 	mov	r3, r7
  48:	e4950004 	ldr	r0, [r5], #4
  4c:	ebfffffe 	bl	0 <vex::motor::spinFor(double, vex::rotationUnits, bool)>
  50:	eafffff5 	b	2c <vex::motor_group::spinFor(double, vex::rotationUnits, bool)+0x2c>
  54:	e3580000 	cmp	r8, #0
  58:	0a000003 	beq	6c <vex::motor_group::spinFor(double, vex::rotationUnits, bool)+0x6c>
  5c:	e1a00009 	mov	r0, r9
  60:	e28dd008 	add	sp, sp, #8
  64:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
  68:	eafffffe 	b	0 <vex::motor_group::spinFor(double, vex::rotationUnits, bool)>
  6c:	e1a00008 	mov	r0, r8
  70:	e28dd008 	add	sp, sp, #8
  74:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}

Disassembly of section .text._ZN3vex11motor_group7spinForENS_13directionTypeEdNS_13rotationUnitsEb:

00000000 <vex::motor_group::spinFor(vex::directionType, double, vex::rotationUnits, bool)>:
   0:	e92d4ff7 	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
   4:	e1a07003 	mov	r7, r3
   8:	e5903044 	ldr	r3, [r0, #68]	; 0x44
   c:	e1a09000 	mov	r9, r0
  10:	e59db030 	ldr	fp, [sp, #48]	; 0x30
  14:	e1a0a001 	mov	sl, r1
  18:	e2835004 	add	r5, r3, #4
  1c:	e5dd8034 	ldrb	r8, [sp, #52]	; 0x34
  20:	e5934000 	ldr	r4, [r3]
  24:	e1a06002 	mov	r6, r2
  28:	e0833104 	add	r3, r3, r4, lsl #2
  2c:	e2834004 	add	r4, r3, #4
  30:	e1550004 	cmp	r5, r4
  34:	0a000008 	beq	5c <vex::motor_group::spinFor(vex::directionType, double, vex::rotationUnits, bool)+0x5c>
  38:	e58db000 	str	fp, [sp]
  3c:	e3a03000 	mov	r3, #0
  40:	e1a0100a 	mov	r1, sl
  44:	e58d3004 	str	r3, [sp, #4]
  48:	e1a02006 	mov	r2, r6
  4c:	e4950004 	ldr	r0, [r5], #4
  50:	e1a03007 	mov	r3, r7
  54:	ebfffffe 	bl	0 <vex::motor::spinFor(vex::directionType, double, vex::rotationUnits, bool)>
  58:	eafffff4 	b	30 <vex::motor_group::spinFor(vex::directionType, double, vex::rotationUnits, bool)+0x30>
  5c:	e3580000 	cmp	r8, #0
  60:	0a000003 	beq	74 <vex::motor_group::spinFor(vex::directionType, double, vex::rotationUnits, bool)+0x74>
  64:	e1a00009 	mov	r0, r9
  68:	e28dd00c 	add	sp, sp, #12
  6c:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
  70:	eafffffe 	b	0 <vex::motor_group::spinFor(vex::directionType, double, vex::rotationUnits, bool)>
  74:	e1a00008 	mov	r0, r8
  78:	e28dd00c 	add	sp, sp, #12
  7c:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}

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
  44:	5b202965 	blpl	80a5e0 <vex::motor_group::spinFor(vex::directionType, double, vex::rotationUnits, double, vex::velocityUnits, bool)+0x80a5e0>
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

