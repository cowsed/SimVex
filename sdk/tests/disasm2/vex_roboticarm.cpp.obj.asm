
vex_roboticarm.cpp.obj:     file format elf32-littlearm


Disassembly of section .text._ZN3vex10RoboticArm19checkMasteringValueEiiii.part.1:

00000000 <vex::RoboticArm::checkMasteringValue(int, int, int, int) [clone .part.1]>:
   0:	e92d4080 	push	{r7, lr}
   4:	e24dde2d 	sub	sp, sp, #720	; 0x2d0
   8:	e1a05002 	mov	r5, r2
   c:	e1a07001 	mov	r7, r1
  10:	e1a04003 	mov	r4, r3
  14:	e1a06000 	mov	r6, r0
  18:	ebfffffe 	bl	0 <vexTaskStopAll>
  1c:	e3a00002 	mov	r0, #2
  20:	ebfffffe 	bl	0 <vexTaskSleep>
  24:	e28d0014 	add	r0, sp, #20
  28:	ebfffffe 	bl	0 <vex::brain::brain()>
  2c:	e28d0014 	add	r0, sp, #20
  30:	ebfffffe 	bl	0 <vex::brain::lcd::clearScreen()>
  34:	e59f30b4 	ldr	r3, [pc, #180]	; f0 <vex::RoboticArm::checkMasteringValue(int, int, int, int) [clone .part.1]+0xf0>
  38:	e28d0014 	add	r0, sp, #20
  3c:	e5933000 	ldr	r3, [r3]
  40:	e1a01003 	mov	r1, r3
  44:	e58d300c 	str	r3, [sp, #12]
  48:	ebfffffe 	bl	0 <vex::brain::lcd::setFillColor(vex::color const&)>
  4c:	e28d0014 	add	r0, sp, #20
  50:	e59d100c 	ldr	r1, [sp, #12]
  54:	ebfffffe 	bl	0 <vex::brain::lcd::setPenColor(vex::color const&)>
  58:	e3a01000 	mov	r1, #0
  5c:	e1a02001 	mov	r2, r1
  60:	e3a030f0 	mov	r3, #240	; 0xf0
  64:	e28d0014 	add	r0, sp, #20
  68:	e58d3000 	str	r3, [sp]
  6c:	e3a03e1e 	mov	r3, #480	; 0x1e0
  70:	ebfffffe 	bl	0 <vex::brain::lcd::drawRectangle(int, int, int, int)>
  74:	e59f3078 	ldr	r3, [pc, #120]	; f4 <vex::RoboticArm::checkMasteringValue(int, int, int, int) [clone .part.1]+0xf4>
  78:	e28d0014 	add	r0, sp, #20
  7c:	e5931000 	ldr	r1, [r3]
  80:	ebfffffe 	bl	0 <vex::brain::lcd::setPenColor(vex::color const&)>
  84:	e3a01001 	mov	r1, #1
  88:	e1a02001 	mov	r2, r1
  8c:	e28d0014 	add	r0, sp, #20
  90:	ebfffffe 	bl	0 <vex::brain::lcd::setCursor(long, long)>
  94:	e59f105c 	ldr	r1, [pc, #92]	; f8 <vex::RoboticArm::checkMasteringValue(int, int, int, int) [clone .part.1]+0xf8>
  98:	e1a02007 	mov	r2, r7
  9c:	e28d0014 	add	r0, sp, #20
  a0:	ebfffffe 	bl	0 <vex::brain::lcd::print(char const*, ...)>
  a4:	e28d0014 	add	r0, sp, #20
  a8:	ebfffffe 	bl	0 <vex::brain::lcd::newLine()>
  ac:	e59f1048 	ldr	r1, [pc, #72]	; fc <vex::RoboticArm::checkMasteringValue(int, int, int, int) [clone .part.1]+0xfc>
  b0:	e1a02006 	mov	r2, r6
  b4:	e28d0014 	add	r0, sp, #20
  b8:	ebfffffe 	bl	0 <vex::brain::lcd::print(char const*, ...)>
  bc:	e28d0014 	add	r0, sp, #20
  c0:	ebfffffe 	bl	0 <vex::brain::lcd::newLine()>
  c4:	e28d0014 	add	r0, sp, #20
  c8:	e59f1030 	ldr	r1, [pc, #48]	; 100 <vex::RoboticArm::checkMasteringValue(int, int, int, int) [clone .part.1]+0x100>
  cc:	e1a02005 	mov	r2, r5
  d0:	e1a03004 	mov	r3, r4
  d4:	ebfffffe 	bl	0 <vex::brain::lcd::print(char const*, ...)>
  d8:	e59f3024 	ldr	r3, [pc, #36]	; 104 <vex::RoboticArm::checkMasteringValue(int, int, int, int) [clone .part.1]+0x104>
  dc:	e3a00000 	mov	r0, #0
  e0:	e59f1020 	ldr	r1, [pc, #32]	; 108 <vex::RoboticArm::checkMasteringValue(int, int, int, int) [clone .part.1]+0x108>
  e4:	e5932000 	ldr	r2, [r3]
  e8:	ebfffffe 	bl	0 <vex::wait(double, vex::timeUnits)>
  ec:	eafffff9 	b	d8 <vex::RoboticArm::checkMasteringValue(int, int, int, int) [clone .part.1]+0xd8>
	...
  fc:	00000026 	andeq	r0, r0, r6, lsr #32
 100:	0000003a 	andeq	r0, r0, sl, lsr r0
 104:	00000000 	andeq	r0, r0, r0
 108:	3ff00000 	svccc	0x00f00000	; IMB

Disassembly of section .text._ZN3vex10RoboticArmC2ERNS_5motorERNS_3potES2_S4_S2_S4_S2_S4_:

00000000 <vex::RoboticArm::RoboticArm(vex::motor&, vex::pot&, vex::motor&, vex::pot&, vex::motor&, vex::pot&, vex::motor&, vex::pot&)>:
   0:	e92d4ff7 	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
   4:	e1a0a001 	mov	sl, r1
   8:	e59f1188 	ldr	r1, [pc, #392]	; 198 <vex::RoboticArm::RoboticArm(vex::motor&, vex::pot&, vex::motor&, vex::pot&, vex::motor&, vex::pot&, vex::motor&, vex::pot&)+0x198>
   c:	e1a0b003 	mov	fp, r3
  10:	e2803cfa 	add	r3, r0, #64000	; 0xfa00
  14:	e1a05000 	mov	r5, r0
  18:	e3a00000 	mov	r0, #0
  1c:	e2854a0f 	add	r4, r5, #61440	; 0xf000
  20:	e1c307f0 	strd	r0, [r3, #112]	; 0x70
  24:	e2853cfa 	add	r3, r5, #64000	; 0xfa00
  28:	e59f116c 	ldr	r1, [pc, #364]	; 19c <vex::RoboticArm::RoboticArm(vex::motor&, vex::pot&, vex::motor&, vex::pot&, vex::motor&, vex::pot&, vex::motor&, vex::pot&)+0x19c>
  2c:	e3a00000 	mov	r0, #0
  30:	e3a06000 	mov	r6, #0
  34:	e3a07000 	mov	r7, #0
  38:	e3a08000 	mov	r8, #0
  3c:	e1a09002 	mov	r9, r2
  40:	e1c307f8 	strd	r0, [r3, #120]	; 0x78
  44:	e3a03032 	mov	r3, #50	; 0x32
  48:	e5843ae0 	str	r3, [r4, #2784]	; 0xae0
  4c:	e2852cfb 	add	r2, r5, #64256	; 0xfb00
  50:	e5843ae4 	str	r3, [r4, #2788]	; 0xae4
  54:	e2853cfb 	add	r3, r5, #64256	; 0xfb00
  58:	e5848af0 	str	r8, [r4, #2800]	; 0xaf0
  5c:	e2840eb5 	add	r0, r4, #2896	; 0xb50
  60:	e1c361f8 	strd	r6, [r3, #24]
  64:	e1a01008 	mov	r1, r8
  68:	e1c362f0 	strd	r6, [r3, #32]
  6c:	e2853cfb 	add	r3, r5, #64256	; 0xfb00
  70:	e2800008 	add	r0, r0, #8
  74:	e1c362f8 	strd	r6, [r3, #40]	; 0x28
  78:	e1c363f0 	strd	r6, [r3, #48]	; 0x30
  7c:	e2853cfb 	add	r3, r5, #64256	; 0xfb00
  80:	e1c363f8 	strd	r6, [r3, #56]	; 0x38
  84:	e1c364f0 	strd	r6, [r3, #64]	; 0x40
  88:	e1c264f8 	strd	r6, [r2, #72]	; 0x48
  8c:	e1c265f0 	strd	r6, [r2, #80]	; 0x50
  90:	e3a02020 	mov	r2, #32
  94:	ebfffffe 	bl	0 <memset>
  98:	e2852cfb 	add	r2, r5, #64256	; 0xfb00
  9c:	e2853cfb 	add	r3, r5, #64256	; 0xfb00
  a0:	e59f10f8 	ldr	r1, [pc, #248]	; 1a0 <vex::RoboticArm::RoboticArm(vex::motor&, vex::pot&, vex::motor&, vex::pot&, vex::motor&, vex::pot&, vex::motor&, vex::pot&)+0x1a0>
  a4:	e1c267f8 	strd	r6, [r2, #120]	; 0x78
  a8:	e3a00000 	mov	r0, #0
  ac:	e1c268f0 	strd	r6, [r2, #128]	; 0x80
  b0:	e3a02000 	mov	r2, #0
  b4:	e1c368f8 	strd	r6, [r3, #136]	; 0x88
  b8:	e59d3034 	ldr	r3, [sp, #52]	; 0x34
  bc:	e5c48bb0 	strb	r8, [r4, #2992]	; 0xbb0
  c0:	e5c48bb1 	strb	r8, [r4, #2993]	; 0xbb1
  c4:	e5843b98 	str	r3, [r4, #2968]	; 0xb98
  c8:	e59d303c 	ldr	r3, [sp, #60]	; 0x3c
  cc:	e584ab90 	str	sl, [r4, #2960]	; 0xb90
  d0:	e584bb94 	str	fp, [r4, #2964]	; 0xb94
  d4:	e5843b9c 	str	r3, [r4, #2972]	; 0xb9c
  d8:	e59d3030 	ldr	r3, [sp, #48]	; 0x30
  dc:	e5849ba0 	str	r9, [r4, #2976]	; 0xba0
  e0:	e5843ba4 	str	r3, [r4, #2980]	; 0xba4
  e4:	e59d3038 	ldr	r3, [sp, #56]	; 0x38
  e8:	e5843ba8 	str	r3, [r4, #2984]	; 0xba8
  ec:	e59d3040 	ldr	r3, [sp, #64]	; 0x40
  f0:	e5843bac 	str	r3, [r4, #2988]	; 0xbac
  f4:	e2853cfb 	add	r3, r5, #64256	; 0xfb00
  f8:	e1c30cf0 	strd	r0, [r3, #192]	; 0xc0
  fc:	e2850cfb 	add	r0, r5, #64256	; 0xfb00
 100:	e1c36bf8 	strd	r6, [r3, #184]	; 0xb8
 104:	e28000d0 	add	r0, r0, #208	; 0xd0
 108:	e59f3094 	ldr	r3, [pc, #148]	; 1a4 <vex::RoboticArm::RoboticArm(vex::motor&, vex::pot&, vex::motor&, vex::pot&, vex::motor&, vex::pot&, vex::motor&, vex::pot&)+0x1a4>
 10c:	e3a06000 	mov	r6, #0
 110:	e59f7090 	ldr	r7, [pc, #144]	; 1a8 <vex::RoboticArm::RoboticArm(vex::motor&, vex::pot&, vex::motor&, vex::pot&, vex::motor&, vex::pot&, vex::motor&, vex::pot&)+0x1a8>
 114:	e14020f8 	strd	r2, [r0, #-8]
 118:	ebfffffe 	bl	0 <vex::task::task()>
 11c:	e3a03001 	mov	r3, #1
 120:	e5c43bd8 	strb	r3, [r4, #3032]	; 0xbd8
 124:	e1a02006 	mov	r2, r6
 128:	e59f307c 	ldr	r3, [pc, #124]	; 1ac <vex::RoboticArm::RoboticArm(vex::motor&, vex::pot&, vex::motor&, vex::pot&, vex::motor&, vex::pot&, vex::motor&, vex::pot&)+0x1ac>
 12c:	e5c48bd9 	strb	r8, [r4, #3033]	; 0xbd9
 130:	e5c48bda 	strb	r8, [r4, #3034]	; 0xbda
 134:	e5c48bdb 	strb	r8, [r4, #3035]	; 0xbdb
 138:	e5c48bdc 	strb	r8, [r4, #3036]	; 0xbdc
 13c:	e5938000 	ldr	r8, [r3]
 140:	e1a03007 	mov	r3, r7
 144:	e58d8000 	str	r8, [sp]
 148:	e5940b90 	ldr	r0, [r4, #2960]	; 0xb90
 14c:	ebfffffe 	bl	0 <vex::motor::setMaxTorque(double, vex::percentUnits)>
 150:	e58d8000 	str	r8, [sp]
 154:	e1a02006 	mov	r2, r6
 158:	e5940b94 	ldr	r0, [r4, #2964]	; 0xb94
 15c:	e1a03007 	mov	r3, r7
 160:	ebfffffe 	bl	0 <vex::motor::setMaxTorque(double, vex::percentUnits)>
 164:	e58d8000 	str	r8, [sp]
 168:	e1a02006 	mov	r2, r6
 16c:	e5940b98 	ldr	r0, [r4, #2968]	; 0xb98
 170:	e1a03007 	mov	r3, r7
 174:	ebfffffe 	bl	0 <vex::motor::setMaxTorque(double, vex::percentUnits)>
 178:	e58d8000 	str	r8, [sp]
 17c:	e1a02006 	mov	r2, r6
 180:	e5940b9c 	ldr	r0, [r4, #2972]	; 0xb9c
 184:	e1a03007 	mov	r3, r7
 188:	ebfffffe 	bl	0 <vex::motor::setMaxTorque(double, vex::percentUnits)>
 18c:	e1a00005 	mov	r0, r5
 190:	e28dd00c 	add	sp, sp, #12
 194:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
 198:	40240000 	eormi	r0, r4, r0
 19c:	40568000 	subsmi	r8, r6, r0
 1a0:	40140000 	andsmi	r0, r4, r0
 1a4:	40390000 	eorsmi	r0, r9, r0
 1a8:	404b8000 	submi	r8, fp, r0
 1ac:	00000000 	andeq	r0, r0, r0

Disassembly of section .text._ZN3vex10RoboticArm13emergencyStopEv:

00000000 <vex::RoboticArm::emergencyStop()>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e2804a0f 	add	r4, r0, #61440	; 0xf000
   8:	e3a03001 	mov	r3, #1
   c:	e5c43bb1 	strb	r3, [r4, #2993]	; 0xbb1
  10:	e59f3058 	ldr	r3, [pc, #88]	; 70 <vex::RoboticArm::emergencyStop()+0x70>
  14:	e5940b90 	ldr	r0, [r4, #2960]	; 0xb90
  18:	e5935000 	ldr	r5, [r3]
  1c:	e1a01005 	mov	r1, r5
  20:	ebfffffe 	bl	0 <vex::motor::setBrake(vex::brakeType)>
  24:	e5940b94 	ldr	r0, [r4, #2964]	; 0xb94
  28:	e1a01005 	mov	r1, r5
  2c:	ebfffffe 	bl	0 <vex::motor::setBrake(vex::brakeType)>
  30:	e5940b98 	ldr	r0, [r4, #2968]	; 0xb98
  34:	e1a01005 	mov	r1, r5
  38:	ebfffffe 	bl	0 <vex::motor::setBrake(vex::brakeType)>
  3c:	e1a01005 	mov	r1, r5
  40:	e5940b9c 	ldr	r0, [r4, #2972]	; 0xb9c
  44:	ebfffffe 	bl	0 <vex::motor::setBrake(vex::brakeType)>
  48:	e5940b90 	ldr	r0, [r4, #2960]	; 0xb90
  4c:	ebfffffe 	bl	0 <vex::motor::stop()>
  50:	e5940b94 	ldr	r0, [r4, #2964]	; 0xb94
  54:	ebfffffe 	bl	0 <vex::motor::stop()>
  58:	e5940b98 	ldr	r0, [r4, #2968]	; 0xb98
  5c:	ebfffffe 	bl	0 <vex::motor::stop()>
  60:	e5940b9c 	ldr	r0, [r4, #2972]	; 0xb9c
  64:	ebfffffe 	bl	0 <vex::motor::stop()>
  68:	e8bd4038 	pop	{r3, r4, r5, lr}
  6c:	eafffffe 	b	0 <vexSystemExitRequest>
  70:	00000000 	andeq	r0, r0, r0

Disassembly of section .text._ZN3vex10RoboticArm18setProfileVelocityEdd:

00000000 <vex::RoboticArm::setProfileVelocity(double, double)>:
   0:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e1a06002 	mov	r6, r2
   c:	e1a07003 	mov	r7, r3
  10:	e2845a0f 	add	r5, r4, #61440	; 0xf000
  14:	e5953af0 	ldr	r3, [r5, #2800]	; 0xaf0
  18:	e3130004 	tst	r3, #4
  1c:	0a000005 	beq	38 <vex::RoboticArm::setProfileVelocity(double, double)+0x38>
  20:	e59f3058 	ldr	r3, [pc, #88]	; 80 <vex::RoboticArm::setProfileVelocity(double, double)+0x80>
  24:	e59f0058 	ldr	r0, [pc, #88]	; 84 <vex::RoboticArm::setProfileVelocity(double, double)+0x84>
  28:	e59f1058 	ldr	r1, [pc, #88]	; 88 <vex::RoboticArm::setProfileVelocity(double, double)+0x88>
  2c:	e5932000 	ldr	r2, [r3]
  30:	ebfffffe 	bl	0 <vex::wait(double, vex::timeUnits)>
  34:	eafffff5 	b	10 <vex::RoboticArm::setProfileVelocity(double, double)+0x10>
  38:	e1cd01d8 	ldrd	r0, [sp, #24]
  3c:	e2842cfa 	add	r2, r4, #64000	; 0xfa00
  40:	e2844cfa 	add	r4, r4, #64000	; 0xfa00
  44:	e3833004 	orr	r3, r3, #4
  48:	e1c267f0 	strd	r6, [r2, #112]	; 0x70
  4c:	e2844080 	add	r4, r4, #128	; 0x80
  50:	e14400f8 	strd	r0, [r4, #-8]
  54:	e5853af0 	str	r3, [r5, #2800]	; 0xaf0
  58:	e5953af0 	ldr	r3, [r5, #2800]	; 0xaf0
  5c:	e3130004 	tst	r3, #4
  60:	0a000005 	beq	7c <vex::RoboticArm::setProfileVelocity(double, double)+0x7c>
  64:	e59f3014 	ldr	r3, [pc, #20]	; 80 <vex::RoboticArm::setProfileVelocity(double, double)+0x80>
  68:	e59f0014 	ldr	r0, [pc, #20]	; 84 <vex::RoboticArm::setProfileVelocity(double, double)+0x84>
  6c:	e59f1014 	ldr	r1, [pc, #20]	; 88 <vex::RoboticArm::setProfileVelocity(double, double)+0x88>
  70:	e5932000 	ldr	r2, [r3]
  74:	ebfffffe 	bl	0 <vex::wait(double, vex::timeUnits)>
  78:	eafffff6 	b	58 <vex::RoboticArm::setProfileVelocity(double, double)+0x58>
  7c:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
  80:	00000000 	andeq	r0, r0, r0
  84:	47ae147b 			; <UNDEFINED> instruction: 0x47ae147b
  88:	3f847ae1 	svccc	0x00847ae1

Disassembly of section .text._ZN3vex10RoboticArm16setProfileFilterEii:

00000000 <vex::RoboticArm::setProfileFilter(int, int)>:
   0:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
   4:	e1a07000 	mov	r7, r0
   8:	e1a06001 	mov	r6, r1
   c:	e1a05002 	mov	r5, r2
  10:	e2874a0f 	add	r4, r7, #61440	; 0xf000
  14:	e5943af0 	ldr	r3, [r4, #2800]	; 0xaf0
  18:	e3130002 	tst	r3, #2
  1c:	0a000005 	beq	38 <vex::RoboticArm::setProfileFilter(int, int)+0x38>
  20:	e59f3048 	ldr	r3, [pc, #72]	; 70 <vex::RoboticArm::setProfileFilter(int, int)+0x70>
  24:	e59f0048 	ldr	r0, [pc, #72]	; 74 <vex::RoboticArm::setProfileFilter(int, int)+0x74>
  28:	e59f1048 	ldr	r1, [pc, #72]	; 78 <vex::RoboticArm::setProfileFilter(int, int)+0x78>
  2c:	e5932000 	ldr	r2, [r3]
  30:	ebfffffe 	bl	0 <vex::wait(double, vex::timeUnits)>
  34:	eafffff5 	b	10 <vex::RoboticArm::setProfileFilter(int, int)+0x10>
  38:	e3833002 	orr	r3, r3, #2
  3c:	e5846ae8 	str	r6, [r4, #2792]	; 0xae8
  40:	e5845aec 	str	r5, [r4, #2796]	; 0xaec
  44:	e5843af0 	str	r3, [r4, #2800]	; 0xaf0
  48:	e5943af0 	ldr	r3, [r4, #2800]	; 0xaf0
  4c:	e3130002 	tst	r3, #2
  50:	0a000005 	beq	6c <vex::RoboticArm::setProfileFilter(int, int)+0x6c>
  54:	e59f3014 	ldr	r3, [pc, #20]	; 70 <vex::RoboticArm::setProfileFilter(int, int)+0x70>
  58:	e59f0014 	ldr	r0, [pc, #20]	; 74 <vex::RoboticArm::setProfileFilter(int, int)+0x74>
  5c:	e59f1014 	ldr	r1, [pc, #20]	; 78 <vex::RoboticArm::setProfileFilter(int, int)+0x78>
  60:	e5932000 	ldr	r2, [r3]
  64:	ebfffffe 	bl	0 <vex::wait(double, vex::timeUnits)>
  68:	eafffff6 	b	48 <vex::RoboticArm::setProfileFilter(int, int)+0x48>
  6c:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
  70:	00000000 	andeq	r0, r0, r0
  74:	47ae147b 			; <UNDEFINED> instruction: 0x47ae147b
  78:	3f847ae1 	svccc	0x00847ae1

Disassembly of section .text._ZN3vex10RoboticArm15positionArrivedEv:

00000000 <vex::RoboticArm::positionArrived()>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e2803cfa 	add	r3, r0, #64000	; 0xfa00
   8:	e1a04000 	mov	r4, r0
   c:	ed2d8b02 	vpush	{d8}
  10:	e1a05003 	mov	r5, r3
  14:	edd30b20 	vldr	d16, [r3, #128]	; 0x80
  18:	edd52b28 	vldr	d18, [r5, #160]	; 0xa0
  1c:	edd51b2a 	vldr	d17, [r5, #168]	; 0xa8
  20:	ee702be2 	vsub.f64	d18, d16, d18
  24:	edd50b22 	vldr	d16, [r5, #136]	; 0x88
  28:	edd53b2c 	vldr	d19, [r5, #176]	; 0xb0
  2c:	ee700be1 	vsub.f64	d16, d16, d17
  30:	edd51b24 	vldr	d17, [r5, #144]	; 0x90
  34:	ee600ba0 	vmul.f64	d16, d16, d16
  38:	ee420ba2 	vmla.f64	d16, d18, d18
  3c:	ee711be3 	vsub.f64	d17, d17, d19
  40:	ee410ba1 	vmla.f64	d16, d17, d17
  44:	ec510b30 	vmov	r0, r1, d16
  48:	ebfffffe 	bl	0 <sqrt>
  4c:	e2843cfb 	add	r3, r4, #64256	; 0xfb00
  50:	eddf1b20 	vldr	d17, [pc, #128]	; d8 <vex::RoboticArm::positionArrived()+0xd8>
  54:	edd30b1e 	vldr	d16, [r3, #120]	; 0x78
  58:	e2843cfb 	add	r3, r4, #64256	; 0xfb00
  5c:	e2844cfa 	add	r4, r4, #64000	; 0xfa00
  60:	eddf2b1e 	vldr	d18, [pc, #120]	; e0 <vex::RoboticArm::positionArrived()+0xe0>
  64:	ee701ba1 	vadd.f64	d17, d16, d17
  68:	edd30b22 	vldr	d16, [r3, #136]	; 0x88
  6c:	ee700be2 	vsub.f64	d16, d16, d18
  70:	ee600ba0 	vmul.f64	d16, d16, d16
  74:	ec410b18 	vmov	d8, r0, r1
  78:	ee410ba1 	vmla.f64	d16, d17, d17
  7c:	ec510b30 	vmov	r0, r1, d16
  80:	ebfffffe 	bl	0 <sqrt>
  84:	eddf2b17 	vldr	d18, [pc, #92]	; e8 <vex::RoboticArm::positionArrived()+0xe8>
  88:	edd51b26 	vldr	d17, [r5, #152]	; 0x98
  8c:	eeb48be2 	vcmpe.f64	d8, d18
  90:	edd40b2e 	vldr	d16, [r4, #184]	; 0xb8
  94:	eef1fa10 	vmrs	APSR_nzcv, fpscr
  98:	53a00000 	movpl	r0, #0
  9c:	5a00000b 	bpl	d0 <vex::RoboticArm::positionArrived()+0xd0>
  a0:	ee711be0 	vsub.f64	d17, d17, d16
  a4:	eddf0b11 	vldr	d16, [pc, #68]	; f0 <vex::RoboticArm::positionArrived()+0xf0>
  a8:	ec410b33 	vmov	d19, r0, r1
  ac:	ee611ba0 	vmul.f64	d17, d17, d16
  b0:	eddf0b10 	vldr	d16, [pc, #64]	; f8 <vex::RoboticArm::positionArrived()+0xf8>
  b4:	eec10ba0 	vdiv.f64	d16, d17, d16
  b8:	ee600ba3 	vmul.f64	d16, d16, d19
  bc:	eef00be0 	vabs.f64	d16, d16
  c0:	eef40be2 	vcmpe.f64	d16, d18
  c4:	eef1fa10 	vmrs	APSR_nzcv, fpscr
  c8:	43a00001 	movmi	r0, #1
  cc:	53a00000 	movpl	r0, #0
  d0:	ecbd8b02 	vpop	{d8}
  d4:	e8bd8038 	pop	{r3, r4, r5, pc}
  d8:	eb1c432d 	bl	710d94 <vex::RoboticArm::positionArrived()+0x710d94>
  dc:	3fff36e2 	svccc	0x00ff36e2
  e0:	66666666 	strbtvs	r6, [r6], -r6, ror #12
  e4:	3fe66666 	svccc	0x00e66666
  e8:	bc6a7efa 	stcllt	14, cr7, [sl], #-1000	; 0xfffffc18
  ec:	3f689374 	svccc	0x00689374
  f0:	54442d18 	strbpl	r2, [r4], #-3352	; 0xfffff2e8
  f4:	400921fb 	strdmi	r2, [r9], -fp
  f8:	00000000 	andeq	r0, r0, r0
  fc:	40668000 	rsbmi	r8, r6, r0

Disassembly of section .text._ZN3vex10RoboticArm14moveToPositionEdddd:

00000000 <vex::RoboticArm::moveToPosition(double, double, double, double)>:
   0:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
   4:	e2805a0f 	add	r5, r0, #61440	; 0xf000
   8:	e5d51bb0 	ldrb	r1, [r5, #2992]	; 0xbb0
   c:	e3510000 	cmp	r1, #0
  10:	08bd80f8 	popeq	{r3, r4, r5, r6, r7, pc}
  14:	e1a07003 	mov	r7, r3
  18:	e5d53bb1 	ldrb	r3, [r5, #2993]	; 0xbb1
  1c:	e1a06002 	mov	r6, r2
  20:	e1a04000 	mov	r4, r0
  24:	e3530000 	cmp	r3, #0
  28:	18bd80f8 	popne	{r3, r4, r5, r6, r7, pc}
  2c:	e5953af0 	ldr	r3, [r5, #2800]	; 0xaf0
  30:	e3130001 	tst	r3, #1
  34:	0a000005 	beq	50 <vex::RoboticArm::moveToPosition(double, double, double, double)+0x50>
  38:	e59f3088 	ldr	r3, [pc, #136]	; c8 <vex::RoboticArm::moveToPosition(double, double, double, double)+0xc8>
  3c:	e59f0088 	ldr	r0, [pc, #136]	; cc <vex::RoboticArm::moveToPosition(double, double, double, double)+0xcc>
  40:	e59f1088 	ldr	r1, [pc, #136]	; d0 <vex::RoboticArm::moveToPosition(double, double, double, double)+0xd0>
  44:	e5932000 	ldr	r2, [r3]
  48:	ebfffffe 	bl	0 <vex::wait(double, vex::timeUnits)>
  4c:	eafffff6 	b	2c <vex::RoboticArm::moveToPosition(double, double, double, double)+0x2c>
  50:	e1cd01d8 	ldrd	r0, [sp, #24]
  54:	e2842cfb 	add	r2, r4, #64256	; 0xfb00
  58:	e3833001 	orr	r3, r3, #1
  5c:	e14260f8 	strd	r6, [r2, #-8]
  60:	e1c200f0 	strd	r0, [r2]
  64:	e1cd02d0 	ldrd	r0, [sp, #32]
  68:	e1c200f8 	strd	r0, [r2, #8]
  6c:	e1cd02d8 	ldrd	r0, [sp, #40]	; 0x28
  70:	e1c201f0 	strd	r0, [r2, #16]
  74:	e5853af0 	str	r3, [r5, #2800]	; 0xaf0
  78:	e5953af0 	ldr	r3, [r5, #2800]	; 0xaf0
  7c:	e3130001 	tst	r3, #1
  80:	0a000005 	beq	9c <vex::RoboticArm::moveToPosition(double, double, double, double)+0x9c>
  84:	e59f303c 	ldr	r3, [pc, #60]	; c8 <vex::RoboticArm::moveToPosition(double, double, double, double)+0xc8>
  88:	e59f003c 	ldr	r0, [pc, #60]	; cc <vex::RoboticArm::moveToPosition(double, double, double, double)+0xcc>
  8c:	e59f103c 	ldr	r1, [pc, #60]	; d0 <vex::RoboticArm::moveToPosition(double, double, double, double)+0xd0>
  90:	e5932000 	ldr	r2, [r3]
  94:	ebfffffe 	bl	0 <vex::wait(double, vex::timeUnits)>
  98:	eafffff6 	b	78 <vex::RoboticArm::moveToPosition(double, double, double, double)+0x78>
  9c:	e1a00004 	mov	r0, r4
  a0:	ebfffffe 	bl	0 <vex::RoboticArm::moveToPosition(double, double, double, double)>
  a4:	e3500000 	cmp	r0, #0
  a8:	1a000005 	bne	c4 <vex::RoboticArm::moveToPosition(double, double, double, double)+0xc4>
  ac:	e59f3020 	ldr	r3, [pc, #32]	; d4 <vex::RoboticArm::moveToPosition(double, double, double, double)+0xd4>
  b0:	e3a00000 	mov	r0, #0
  b4:	e59f101c 	ldr	r1, [pc, #28]	; d8 <vex::RoboticArm::moveToPosition(double, double, double, double)+0xd8>
  b8:	e5932000 	ldr	r2, [r3]
  bc:	ebfffffe 	bl	0 <vex::wait(double, vex::timeUnits)>
  c0:	eafffff5 	b	9c <vex::RoboticArm::moveToPosition(double, double, double, double)+0x9c>
  c4:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
  c8:	00000000 	andeq	r0, r0, r0
  cc:	47ae147b 			; <UNDEFINED> instruction: 0x47ae147b
  d0:	3f847ae1 	svccc	0x00847ae1
  d4:	00000000 	andeq	r0, r0, r0
  d8:	40590000 	subsmi	r0, r9, r0

Disassembly of section .text._ZN3vex10RoboticArm22moveToRelativePositionEdddd:

00000000 <vex::RoboticArm::moveToRelativePosition(double, double, double, double)>:
   0:	e280ccfb 	add	ip, r0, #64256	; 0xfb00
   4:	eddd0b00 	vldr	d16, [sp]
   8:	e2801cfb 	add	r1, r0, #64256	; 0xfb00
   c:	eddc2b18 	vldr	d18, [ip, #96]	; 0x60
  10:	eddc1b16 	vldr	d17, [ip, #88]	; 0x58
  14:	ee700ba2 	vadd.f64	d16, d16, d18
  18:	edcd0b00 	vstr	d16, [sp]
  1c:	eddd0b02 	vldr	d16, [sp, #8]
  20:	edd12b1a 	vldr	d18, [r1, #104]	; 0x68
  24:	ee700ba2 	vadd.f64	d16, d16, d18
  28:	edcd0b02 	vstr	d16, [sp, #8]
  2c:	eddd0b04 	vldr	d16, [sp, #16]
  30:	edd12b1c 	vldr	d18, [r1, #112]	; 0x70
  34:	ee700ba2 	vadd.f64	d16, d16, d18
  38:	edcd0b04 	vstr	d16, [sp, #16]
  3c:	ec432b30 	vmov	d16, r2, r3
  40:	ee700ba1 	vadd.f64	d16, d16, d17
  44:	ec532b30 	vmov	r2, r3, d16
  48:	eafffffe 	b	0 <vex::RoboticArm::moveToRelativePosition(double, double, double, double)>

Disassembly of section .text._ZN3vex10RoboticArm18enterMasteringModeEv:

00000000 <vex::RoboticArm::enterMasteringMode()>:
   0:	e59f3074 	ldr	r3, [pc, #116]	; 7c <vex::RoboticArm::enterMasteringMode()+0x7c>
   4:	e92d4073 	push	{r0, r1, r4, r5, r6, lr}
   8:	e2805a0f 	add	r5, r0, #61440	; 0xf000
   c:	e5934000 	ldr	r4, [r3]
  10:	e3a06000 	mov	r6, #0
  14:	e59f2064 	ldr	r2, [pc, #100]	; 80 <vex::RoboticArm::enterMasteringMode()+0x80>
  18:	e58d6000 	str	r6, [sp]
  1c:	e1a01004 	mov	r1, r4
  20:	e5950b90 	ldr	r0, [r5, #2960]	; 0xb90
  24:	e59f3058 	ldr	r3, [pc, #88]	; 84 <vex::RoboticArm::enterMasteringMode()+0x84>
  28:	ebfffffe 	bl	0 <vex::motor::spin(vex::directionType, double, vex::voltageUnits)>
  2c:	e58d6000 	str	r6, [sp]
  30:	e1a01004 	mov	r1, r4
  34:	e5950b94 	ldr	r0, [r5, #2964]	; 0xb94
  38:	e59f2048 	ldr	r2, [pc, #72]	; 88 <vex::RoboticArm::enterMasteringMode()+0x88>
  3c:	e59f3048 	ldr	r3, [pc, #72]	; 8c <vex::RoboticArm::enterMasteringMode()+0x8c>
  40:	ebfffffe 	bl	0 <vex::motor::spin(vex::directionType, double, vex::voltageUnits)>
  44:	e58d6000 	str	r6, [sp]
  48:	e1a01004 	mov	r1, r4
  4c:	e5950b98 	ldr	r0, [r5, #2968]	; 0xb98
  50:	e59f2038 	ldr	r2, [pc, #56]	; 90 <vex::RoboticArm::enterMasteringMode()+0x90>
  54:	e59f3038 	ldr	r3, [pc, #56]	; 94 <vex::RoboticArm::enterMasteringMode()+0x94>
  58:	ebfffffe 	bl	0 <vex::motor::spin(vex::directionType, double, vex::voltageUnits)>
  5c:	e58d6000 	str	r6, [sp]
  60:	e1a01004 	mov	r1, r4
  64:	e5950b9c 	ldr	r0, [r5, #2972]	; 0xb9c
  68:	e59f2028 	ldr	r2, [pc, #40]	; 98 <vex::RoboticArm::enterMasteringMode()+0x98>
  6c:	e59f3028 	ldr	r3, [pc, #40]	; 9c <vex::RoboticArm::enterMasteringMode()+0x9c>
  70:	ebfffffe 	bl	0 <vex::motor::spin(vex::directionType, double, vex::voltageUnits)>
  74:	e28dd008 	add	sp, sp, #8
  78:	e8bd8070 	pop	{r4, r5, r6, pc}
  7c:	00000000 	andeq	r0, r0, r0
  80:	9999999a 	ldmibls	r9, {r1, r3, r4, r7, r8, fp, ip, pc}
  84:	3fc99999 	svccc	0x00c99999
  88:	c28f5c29 	addgt	r5, pc, #10496	; 0x2900
  8c:	bfbc28f5 	svclt	0x00bc28f5
  90:	47ae147b 			; <UNDEFINED> instruction: 0x47ae147b
  94:	bfd47ae1 	svclt	0x00d47ae1
  98:	7ae147ae 	bvc	ff851f58 <vex::RoboticArm::enterMasteringMode()+0xff851f58>
  9c:	3fefae14 	svccc	0x00efae14

Disassembly of section .text._ZN3vex10RoboticArm21forwardKinematicSolveEddddRNS0_8PositionE:

00000000 <vex::RoboticArm::forwardKinematicSolve(double, double, double, double, vex::RoboticArm::Position&)>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ed2d8b10 	vpush	{d8-d15}
   c:	e2846cfb 	add	r6, r4, #64256	; 0xfb00
  10:	ed9fcb4c 	vldr	d12, [pc, #304]	; 148 <vex::RoboticArm::forwardKinematicSolve(double, double, double, double, vex::RoboticArm::Position&)+0x148>
  14:	e24dd028 	sub	sp, sp, #40	; 0x28
  18:	ed9d8b1e 	vldr	d8, [sp, #120]	; 0x78
  1c:	e1cd22f0 	strd	r2, [sp, #32]
  20:	e59d5090 	ldr	r5, [sp, #144]	; 0x90
  24:	ed9fbb49 	vldr	d11, [pc, #292]	; 150 <vex::RoboticArm::forwardKinematicSolve(double, double, double, double, vex::RoboticArm::Position&)+0x150>
  28:	ee288b0c 	vmul.f64	d8, d8, d12
  2c:	ee888b0b 	vdiv.f64	d8, d8, d11
  30:	ec510b18 	vmov	r0, r1, d8
  34:	ebfffffe 	bl	0 <sin>
  38:	eeb1ab0c 	vmov.f64	d10, #28	; 0x40e00000  7.0
  3c:	e1cd00f0 	strd	r0, [sp]
  40:	ec510b18 	vmov	r0, r1, d8
  44:	ebfffffe 	bl	0 <cos>
  48:	ed9d8b20 	vldr	d8, [sp, #128]	; 0x80
  4c:	ee288b0c 	vmul.f64	d8, d8, d12
  50:	ee888b0b 	vdiv.f64	d8, d8, d11
  54:	e1cd00f8 	strd	r0, [sp, #8]
  58:	ec510b18 	vmov	r0, r1, d8
  5c:	ebfffffe 	bl	0 <sin>
  60:	e1cd01f0 	strd	r0, [sp, #16]
  64:	ec510b18 	vmov	r0, r1, d8
  68:	ebfffffe 	bl	0 <cos>
  6c:	ed969b1e 	vldr	d9, [r6, #120]	; 0x78
  70:	eddf0b38 	vldr	d16, [pc, #224]	; 158 <vex::RoboticArm::forwardKinematicSolve(double, double, double, double, vex::RoboticArm::Position&)+0x158>
  74:	ee399b20 	vadd.f64	d9, d9, d16
  78:	eddd0b22 	vldr	d16, [sp, #136]	; 0x88
  7c:	ee208b8c 	vmul.f64	d8, d16, d12
  80:	e1cd01f8 	strd	r0, [sp, #24]
  84:	ee888b0b 	vdiv.f64	d8, d8, d11
  88:	ec510b18 	vmov	r0, r1, d8
  8c:	ebfffffe 	bl	0 <cos>
  90:	ed96db22 	vldr	d13, [r6, #136]	; 0x88
  94:	eddf0b31 	vldr	d16, [pc, #196]	; 160 <vex::RoboticArm::forwardKinematicSolve(double, double, double, double, vex::RoboticArm::Position&)+0x160>
  98:	ee3ddb60 	vsub.f64	d13, d13, d16
  9c:	ec410b1f 	vmov	d15, r0, r1
  a0:	ec510b18 	vmov	r0, r1, d8
  a4:	ebfffffe 	bl	0 <sin>
  a8:	ed9f8b2e 	vldr	d8, [pc, #184]	; 168 <vex::RoboticArm::forwardKinematicSolve(double, double, double, double, vex::RoboticArm::Position&)+0x168>
  ac:	eddd0b00 	vldr	d16, [sp]
  b0:	ee008b8a 	vmla.f64	d8, d16, d10
  b4:	eddd0b04 	vldr	d16, [sp, #16]
  b8:	ec410b1e 	vmov	d14, r0, r1
  bc:	ee008b8a 	vmla.f64	d8, d16, d10
  c0:	eddd0b08 	vldr	d16, [sp, #32]
  c4:	ee20cb8c 	vmul.f64	d12, d16, d12
  c8:	eecc0b0b 	vdiv.f64	d16, d12, d11
  cc:	ec510b30 	vmov	r0, r1, d16
  d0:	edcd0b00 	vstr	d16, [sp]
  d4:	ebfffffe 	bl	0 <cos>
  d8:	ed96bb20 	vldr	d11, [r6, #128]	; 0x80
  dc:	eddf0b23 	vldr	d16, [pc, #140]	; 170 <vex::RoboticArm::forwardKinematicSolve(double, double, double, double, vex::RoboticArm::Position&)+0x170>
  e0:	ee098b0f 	vmla.f64	d8, d9, d15
  e4:	ec410b1c 	vmov	d12, r0, r1
  e8:	e1cd00d0 	ldrd	r0, [sp]
  ec:	ee3bbb60 	vsub.f64	d11, d11, d16
  f0:	ebfffffe 	bl	0 <sin>
  f4:	ee0d8b4e 	vmls.f64	d8, d13, d14
  f8:	ec410b31 	vmov	d17, r0, r1
  fc:	ee6b0b21 	vmul.f64	d16, d11, d17
 100:	ee580b0c 	vnmls.f64	d16, d8, d12
 104:	ee2bbb0c 	vmul.f64	d11, d11, d12
 108:	edc50b00 	vstr	d16, [r5]
 10c:	eddf0b19 	vldr	d16, [pc, #100]	; 178 <vex::RoboticArm::forwardKinematicSolve(double, double, double, double, vex::RoboticArm::Position&)+0x178>
 110:	ee08bb21 	vmla.f64	d11, d8, d17
 114:	eddd1b02 	vldr	d17, [sp, #8]
 118:	ee410b8a 	vmla.f64	d16, d17, d10
 11c:	eddd1b06 	vldr	d17, [sp, #24]
 120:	ed85bb02 	vstr	d11, [r5, #8]
 124:	ee410bca 	vmls.f64	d16, d17, d10
 128:	ee490b0e 	vmla.f64	d16, d9, d14
 12c:	ee4d0b0f 	vmla.f64	d16, d13, d15
 130:	edc50b04 	vstr	d16, [r5, #16]
 134:	eddd0b22 	vldr	d16, [sp, #136]	; 0x88
 138:	edc50b06 	vstr	d16, [r5, #24]
 13c:	e28dd028 	add	sp, sp, #40	; 0x28
 140:	ecbd8b10 	vpop	{d8-d15}
 144:	e8bd8070 	pop	{r4, r5, r6, pc}
 148:	54442d18 	strbpl	r2, [r4], #-3352	; 0xfffff2e8
 14c:	400921fb 	strdmi	r2, [r9], -fp
 150:	00000000 	andeq	r0, r0, r0
 154:	40668000 	rsbmi	r8, r6, r0
 158:	eb1c432d 	bl	710e14 <vex::RoboticArm::forwardKinematicSolve(double, double, double, double, vex::RoboticArm::Position&)+0x710e14>
 15c:	3fff36e2 	svccc	0x00ff36e2
 160:	66666666 	strbtvs	r6, [r6], -r6, ror #12
 164:	3fe66666 	svccc	0x00e66666
 168:	9ad42c3d 	bls	ff50b264 <vex::RoboticArm::forwardKinematicSolve(double, double, double, double, vex::RoboticArm::Position&)+0xff50b264>
 16c:	3fe71de6 	svccc	0x00e71de6
 170:	f9db22d1 			; <UNDEFINED> instruction: 0xf9db22d1
 174:	3fac6a7e 	svccc	0x00ac6a7e
 178:	9fbe76c9 	svcls	0x00be76c9
 17c:	40152f1a 	andsmi	r2, r5, sl, lsl pc

Disassembly of section .text._ZN3vex10RoboticArm4stowEv:

00000000 <vex::RoboticArm::stow()>:
   0:	e92d40d0 	push	{r4, r6, r7, lr}
   4:	e24dd040 	sub	sp, sp, #64	; 0x40
   8:	e59f7050 	ldr	r7, [pc, #80]	; 60 <vex::RoboticArm::stow()+0x60>
   c:	e3a02000 	mov	r2, #0
  10:	e3a03000 	mov	r3, #0
  14:	e28d1020 	add	r1, sp, #32
  18:	e1cd20f8 	strd	r2, [sp, #8]
  1c:	e3a06000 	mov	r6, #0
  20:	e1cd21f0 	strd	r2, [sp, #16]
  24:	e1a04000 	mov	r4, r0
  28:	e58d1018 	str	r1, [sp, #24]
  2c:	e1cd60f0 	strd	r6, [sp]
  30:	ebfffffe 	bl	0 <vex::RoboticArm::stow()>
  34:	e1cd22d8 	ldrd	r2, [sp, #40]	; 0x28
  38:	e1a00004 	mov	r0, r4
  3c:	e1cd20f0 	strd	r2, [sp]
  40:	e1cd23d0 	ldrd	r2, [sp, #48]	; 0x30
  44:	e1cd20f8 	strd	r2, [sp, #8]
  48:	e1cd23d8 	ldrd	r2, [sp, #56]	; 0x38
  4c:	e1cd21f0 	strd	r2, [sp, #16]
  50:	e1cd22d0 	ldrd	r2, [sp, #32]
  54:	ebfffffe 	bl	0 <vex::RoboticArm::stow()>
  58:	e28dd040 	add	sp, sp, #64	; 0x40
  5c:	e8bd80d0 	pop	{r4, r6, r7, pc}
  60:	40340000 	eorsmi	r0, r4, r0

Disassembly of section .text._ZN3vex10RoboticArm21inverseKinematicSolveEddddRNS0_5AngleE:

00000000 <vex::RoboticArm::inverseKinematicSolve(double, double, double, double, vex::RoboticArm::Angle&)>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ed2d8b10 	vpush	{d8-d15}
   c:	e2845cfb 	add	r5, r4, #64256	; 0xfb00
  10:	ed9f9b5e 	vldr	d9, [pc, #376]	; 190 <vex::RoboticArm::inverseKinematicSolve(double, double, double, double, vex::RoboticArm::Angle&)+0x190>
  14:	e24dd008 	sub	sp, sp, #8
  18:	ed9dbb16 	vldr	d11, [sp, #88]	; 0x58
  1c:	e59d6070 	ldr	r6, [sp, #112]	; 0x70
  20:	eddd0b1a 	vldr	d16, [sp, #104]	; 0x68
  24:	ec510b1b 	vmov	r0, r1, d11
  28:	ec432b1d 	vmov	d13, r2, r3
  2c:	ee208b89 	vmul.f64	d8, d16, d9
  30:	ebfffffe 	bl	0 <atan2>
  34:	ed95eb20 	vldr	d14, [r5, #128]	; 0x80
  38:	ed9fcb56 	vldr	d12, [pc, #344]	; 198 <vex::RoboticArm::inverseKinematicSolve(double, double, double, double, vex::RoboticArm::Angle&)+0x198>
  3c:	ed9fab57 	vldr	d10, [pc, #348]	; 1a0 <vex::RoboticArm::inverseKinematicSolve(double, double, double, double, vex::RoboticArm::Angle&)+0x1a0>
  40:	ee2bbb0b 	vmul.f64	d11, d11, d11
  44:	ec410b1f 	vmov	d15, r0, r1
  48:	ee0dbb0d 	vmla.f64	d11, d13, d13
  4c:	ec510b1b 	vmov	r0, r1, d11
  50:	ebfffffe 	bl	0 <sqrt>
  54:	ee3eeb4c 	vsub.f64	d14, d14, d12
  58:	ee888b0a 	vdiv.f64	d8, d8, d10
  5c:	ec410b30 	vmov	d16, r0, r1
  60:	eece0b20 	vdiv.f64	d16, d14, d16
  64:	ec510b30 	vmov	r0, r1, d16
  68:	ebfffffe 	bl	0 <asin>
  6c:	edd50b20 	vldr	d16, [r5, #128]	; 0x80
  70:	ee30cbcc 	vsub.f64	d12, d16, d12
  74:	ee0cbb4c 	vmls.f64	d11, d12, d12
  78:	e1cd00f0 	strd	r0, [sp]
  7c:	ec510b1b 	vmov	r0, r1, d11
  80:	ebfffffe 	bl	0 <sqrt>
  84:	ed95cb1e 	vldr	d12, [r5, #120]	; 0x78
  88:	eddf0b46 	vldr	d16, [pc, #280]	; 1a8 <vex::RoboticArm::inverseKinematicSolve(double, double, double, double, vex::RoboticArm::Angle&)+0x1a8>
  8c:	ee3ccb20 	vadd.f64	d12, d12, d16
  90:	ec410b1e 	vmov	d14, r0, r1
  94:	ec510b18 	vmov	r0, r1, d8
  98:	ebfffffe 	bl	0 <cos>
  9c:	eddf0b43 	vldr	d16, [pc, #268]	; 1b0 <vex::RoboticArm::inverseKinematicSolve(double, double, double, double, vex::RoboticArm::Angle&)+0x1b0>
  a0:	ec410b1d 	vmov	d13, r0, r1
  a4:	e2840cfb 	add	r0, r4, #64256	; 0xfb00
  a8:	ed90bb22 	vldr	d11, [r0, #136]	; 0x88
  ac:	ec510b18 	vmov	r0, r1, d8
  b0:	ee3bbb60 	vsub.f64	d11, d11, d16
  b4:	ebfffffe 	bl	0 <sin>
  b8:	eddd0b18 	vldr	d16, [sp, #96]	; 0x60
  bc:	ed9f8b3d 	vldr	d8, [pc, #244]	; 1b8 <vex::RoboticArm::inverseKinematicSolve(double, double, double, double, vex::RoboticArm::Angle&)+0x1b8>
  c0:	ee0ceb4d 	vmls.f64	d14, d12, d13
  c4:	ec410b31 	vmov	d17, r0, r1
  c8:	ee4c0b61 	vmls.f64	d16, d12, d17
  cc:	ee4b0b4d 	vmls.f64	d16, d11, d13
  d0:	ee0beb21 	vmla.f64	d14, d11, d17
  d4:	ed9fbb39 	vldr	d11, [pc, #228]	; 1c0 <vex::RoboticArm::inverseKinematicSolve(double, double, double, double, vex::RoboticArm::Angle&)+0x1c0>
  d8:	ee30bbcb 	vsub.f64	d11, d16, d11
  dc:	eddf0b39 	vldr	d16, [pc, #228]	; 1c8 <vex::RoboticArm::inverseKinematicSolve(double, double, double, double, vex::RoboticArm::Angle&)+0x1c8>
  e0:	ee2bcb0b 	vmul.f64	d12, d11, d11
  e4:	ee3e8b48 	vsub.f64	d8, d14, d8
  e8:	ee08cb08 	vmla.f64	d12, d8, d8
  ec:	ee701bcc 	vsub.f64	d17, d16, d12
  f0:	eec10ba0 	vdiv.f64	d16, d17, d16
  f4:	ec510b30 	vmov	r0, r1, d16
  f8:	ebfffffe 	bl	0 <acos>
  fc:	ec532b18 	vmov	r2, r3, d8
 100:	ec410b1d 	vmov	d13, r0, r1
 104:	ec510b1b 	vmov	r0, r1, d11
 108:	ebfffffe 	bl	0 <atan2>
 10c:	ec410b1b 	vmov	d11, r0, r1
 110:	ec510b1d 	vmov	r0, r1, d13
 114:	ebfffffe 	bl	0 <sin>
 118:	ec410b18 	vmov	d8, r0, r1
 11c:	ec510b1c 	vmov	r0, r1, d12
 120:	ebfffffe 	bl	0 <sqrt>
 124:	eef10b0c 	vmov.f64	d16, #28	; 0x40e00000  7.0
 128:	ee288b20 	vmul.f64	d8, d8, d16
 12c:	ec410b30 	vmov	d16, r0, r1
 130:	eec80b20 	vdiv.f64	d16, d8, d16
 134:	ec510b30 	vmov	r0, r1, d16
 138:	ebfffffe 	bl	0 <asin>
 13c:	eddf0b23 	vldr	d16, [pc, #140]	; 1d0 <vex::RoboticArm::inverseKinematicSolve(double, double, double, double, vex::RoboticArm::Angle&)+0x1d0>
 140:	ee30bbcb 	vsub.f64	d11, d16, d11
 144:	ec410b30 	vmov	d16, r0, r1
 148:	ee3bbb60 	vsub.f64	d11, d11, d16
 14c:	eddd0b00 	vldr	d16, [sp]
 150:	ee3ddb4b 	vsub.f64	d13, d13, d11
 154:	ee3ffb60 	vsub.f64	d15, d15, d16
 158:	ee6b0b0a 	vmul.f64	d16, d11, d10
 15c:	ee2ffb0a 	vmul.f64	d15, d15, d10
 160:	ee2dab0a 	vmul.f64	d10, d13, d10
 164:	eec00b89 	vdiv.f64	d16, d16, d9
 168:	ee8ffb09 	vdiv.f64	d15, d15, d9
 16c:	edc60b02 	vstr	d16, [r6, #8]
 170:	eddd0b1a 	vldr	d16, [sp, #104]	; 0x68
 174:	edc60b06 	vstr	d16, [r6, #24]
 178:	ee8a9b09 	vdiv.f64	d9, d10, d9
 17c:	ed86fb00 	vstr	d15, [r6]
 180:	ed869b04 	vstr	d9, [r6, #16]
 184:	e28dd008 	add	sp, sp, #8
 188:	ecbd8b10 	vpop	{d8-d15}
 18c:	e8bd8070 	pop	{r4, r5, r6, pc}
 190:	54442d18 	strbpl	r2, [r4], #-3352	; 0xfffff2e8
 194:	400921fb 	strdmi	r2, [r9], -fp
 198:	f9db22d1 			; <UNDEFINED> instruction: 0xf9db22d1
 19c:	3fac6a7e 	svccc	0x00ac6a7e
 1a0:	00000000 	andeq	r0, r0, r0
 1a4:	40668000 	rsbmi	r8, r6, r0
 1a8:	eb1c432d 	bl	710e64 <vex::RoboticArm::inverseKinematicSolve(double, double, double, double, vex::RoboticArm::Angle&)+0x710e64>
 1ac:	3fff36e2 	svccc	0x00ff36e2
 1b0:	66666666 	strbtvs	r6, [r6], -r6, ror #12
 1b4:	3fe66666 	svccc	0x00e66666
 1b8:	9ad42c3d 	bls	ff50b2b4 <vex::RoboticArm::inverseKinematicSolve(double, double, double, double, vex::RoboticArm::Angle&)+0xff50b2b4>
 1bc:	3fe71de6 	svccc	0x00e71de6
 1c0:	9fbe76c9 	svcls	0x00be76c9
 1c4:	40152f1a 	andsmi	r2, r5, sl, lsl pc
 1c8:	00000000 	andeq	r0, r0, r0
 1cc:	40588000 	subsmi	r8, r8, r0
 1d0:	54442d18 	strbpl	r2, [r4], #-3352	; 0xfffff2e8
 1d4:	3ff921fb 	svccc	0x00f921fb

Disassembly of section .text._ZN3vex10RoboticArm19adjustProfileFilterEii:

00000000 <vex::RoboticArm::adjustProfileFilter(int, int)>:
   0:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
   4:	e280ca0f 	add	ip, r0, #61440	; 0xf000
   8:	ed2d8b0e 	vpush	{d8-d14}
   c:	e1a04000 	mov	r4, r0
  10:	e58c2ae4 	str	r2, [ip, #2788]	; 0xae4
  14:	e3a06000 	mov	r6, #0
  18:	e58c1ae0 	str	r1, [ip, #2784]	; 0xae0
  1c:	e1a00001 	mov	r0, r1
  20:	e58c6a44 	str	r6, [ip, #2628]	; 0xa44
  24:	e1a05002 	mov	r5, r2
  28:	e24dd00c 	sub	sp, sp, #12
  2c:	e2847cfa 	add	r7, r4, #64000	; 0xfa00
  30:	e2849cfa 	add	r9, r4, #64000	; 0xfa00
  34:	e284bcfa 	add	fp, r4, #64000	; 0xfa00
  38:	e58d1000 	str	r1, [sp]
  3c:	e3a01ffa 	mov	r1, #1000	; 0x3e8
  40:	e58dc004 	str	ip, [sp, #4]
  44:	ebfffffe 	bl	0 <__aeabi_idivmod>
  48:	e59dc004 	ldr	ip, [sp, #4]
  4c:	e1a00005 	mov	r0, r5
  50:	e2877030 	add	r7, r7, #48	; 0x30
  54:	e2899020 	add	r9, r9, #32
  58:	e28bb040 	add	fp, fp, #64	; 0x40
  5c:	e58c6a4c 	str	r6, [ip, #2636]	; 0xa4c
  60:	e58c1a40 	str	r1, [ip, #2624]	; 0xa40
  64:	e3a01ffa 	mov	r1, #1000	; 0x3e8
  68:	ebfffffe 	bl	0 <__aeabi_idivmod>
  6c:	ee075a90 	vmov	s15, r5
  70:	edd93b00 	vldr	d19, [r9]
  74:	e2842c7d 	add	r2, r4, #32000	; 0x7d00
  78:	e59dc004 	ldr	ip, [sp, #4]
  7c:	eeb8cbe7 	vcvt.f64.s32	d12, s15
  80:	ed572b02 	vldr	d18, [r7, #-8]
  84:	edd71b00 	vldr	d17, [r7]
  88:	ed5b0b02 	vldr	d16, [fp, #-8]
  8c:	eec33b8c 	vdiv.f64	d19, d19, d12
  90:	e58c1a48 	str	r1, [ip, #2632]	; 0xa48
  94:	eec22b8c 	vdiv.f64	d18, d18, d12
  98:	eec11b8c 	vdiv.f64	d17, d17, d12
  9c:	eec04b8c 	vdiv.f64	d20, d16, d12
  a0:	e1560005 	cmp	r6, r5
  a4:	e2822020 	add	r2, r2, #32
  a8:	aa000005 	bge	c4 <vex::RoboticArm::adjustProfileFilter(int, int)+0xc4>
  ac:	ed423b08 	vstr	d19, [r2, #-32]	; 0xffffffe0
  b0:	e2866001 	add	r6, r6, #1
  b4:	ed422b06 	vstr	d18, [r2, #-24]	; 0xffffffe8
  b8:	ed421b04 	vstr	d17, [r2, #-16]
  bc:	ed424b02 	vstr	d20, [r2, #-8]
  c0:	eafffff6 	b	a0 <vex::RoboticArm::adjustProfileFilter(int, int)+0xa0>
  c4:	e0851fa5 	add	r1, r5, r5, lsr #31
  c8:	e3852001 	orr	r2, r5, #1
  cc:	e3150001 	tst	r5, #1
  d0:	e2848cfa 	add	r8, r4, #64000	; 0xfa00
  d4:	e1a010c1 	asr	r1, r1, #1
  d8:	ed9fbb6a 	vldr	d11, [pc, #424]	; 288 <vex::RoboticArm::adjustProfileFilter(int, int)+0x288>
  dc:	e59d3000 	ldr	r3, [sp]
  e0:	e1a00004 	mov	r0, r4
  e4:	e0020291 	mul	r2, r1, r2
  e8:	ed98ab28 	vldr	d10, [r8, #160]	; 0xa0
  ec:	e3a01000 	mov	r1, #0
  f0:	e58dc004 	str	ip, [sp, #4]
  f4:	10822005 	addne	r2, r2, r5
  f8:	ed989b2a 	vldr	d9, [r8, #168]	; 0xa8
  fc:	ee072a90 	vmov	s15, r2
 100:	e1a02283 	lsl	r2, r3, #5
 104:	ed988b2c 	vldr	d8, [r8, #176]	; 0xb0
 108:	eef80be7 	vcvt.f64.s32	d16, s15
 10c:	ed98db2e 	vldr	d13, [r8, #184]	; 0xb8
 110:	ed98eb36 	vldr	d14, [r8, #216]	; 0xd8
 114:	ee603ba3 	vmul.f64	d19, d16, d19
 118:	ee602ba2 	vmul.f64	d18, d16, d18
 11c:	ee601ba1 	vmul.f64	d17, d16, d17
 120:	ee600ba4 	vmul.f64	d16, d16, d20
 124:	ee03ab8b 	vmla.f64	d10, d19, d11
 128:	edd83b30 	vldr	d19, [r8, #192]	; 0xc0
 12c:	ee029b8b 	vmla.f64	d9, d18, d11
 130:	edd82b32 	vldr	d18, [r8, #200]	; 0xc8
 134:	ee018b8b 	vmla.f64	d8, d17, d11
 138:	edd81b34 	vldr	d17, [r8, #208]	; 0xd0
 13c:	ee00db8b 	vmla.f64	d13, d16, d11
 140:	ee33abca 	vsub.f64	d10, d19, d10
 144:	ee329bc9 	vsub.f64	d9, d18, d9
 148:	ee318bc8 	vsub.f64	d8, d17, d8
 14c:	ebfffffe 	bl	0 <memset>
 150:	e59dc004 	ldr	ip, [sp, #4]
 154:	e59d3000 	ldr	r3, [sp]
 158:	e59c0a40 	ldr	r0, [ip, #2624]	; 0xa40
 15c:	e1a01003 	mov	r1, r3
 160:	e0830000 	add	r0, r3, r0
 164:	e2400001 	sub	r0, r0, #1
 168:	ebfffffe 	bl	0 <__aeabi_idivmod>
 16c:	eddd7a00 	vldr	s15, [sp]
 170:	e59dc004 	ldr	ip, [sp, #4]
 174:	ee3eeb4d 	vsub.f64	d14, d14, d13
 178:	e59c0a48 	ldr	r0, [ip, #2632]	; 0xa48
 17c:	e0850000 	add	r0, r5, r0
 180:	e2400001 	sub	r0, r0, #1
 184:	eeb8dbe7 	vcvt.f64.s32	d13, s15
 188:	ee2ddb0b 	vmul.f64	d13, d13, d11
 18c:	e0841281 	add	r1, r4, r1, lsl #5
 190:	ee8aab0d 	vdiv.f64	d10, d10, d13
 194:	ee899b0d 	vdiv.f64	d9, d9, d13
 198:	ed81ab00 	vstr	d10, [r1]
 19c:	ed88ab00 	vstr	d10, [r8]
 1a0:	ee888b0d 	vdiv.f64	d8, d8, d13
 1a4:	ed819b02 	vstr	d9, [r1, #8]
 1a8:	ed889b02 	vstr	d9, [r8, #8]
 1ac:	ee8edb0d 	vdiv.f64	d13, d14, d13
 1b0:	ed818b04 	vstr	d8, [r1, #16]
 1b4:	ed888b04 	vstr	d8, [r8, #16]
 1b8:	ee8aab0c 	vdiv.f64	d10, d10, d12
 1bc:	ed81db06 	vstr	d13, [r1, #24]
 1c0:	e1a01005 	mov	r1, r5
 1c4:	ed09db02 	vstr	d13, [r9, #-8]
 1c8:	ebfffffe 	bl	0 <__aeabi_idivmod>
 1cc:	e0841281 	add	r1, r4, r1, lsl #5
 1d0:	e2813c7d 	add	r3, r1, #32000	; 0x7d00
 1d4:	edd30b00 	vldr	d16, [r3]
 1d8:	ee899b0c 	vdiv.f64	d9, d9, d12
 1dc:	ee888b0c 	vdiv.f64	d8, d8, d12
 1e0:	ee8dcb0c 	vdiv.f64	d12, d13, d12
 1e4:	ee700b8a 	vadd.f64	d16, d16, d10
 1e8:	edc30b00 	vstr	d16, [r3]
 1ec:	edd30b02 	vldr	d16, [r3, #8]
 1f0:	ed1bdb02 	vldr	d13, [fp, #-8]
 1f4:	ee700b89 	vadd.f64	d16, d16, d9
 1f8:	edc30b02 	vstr	d16, [r3, #8]
 1fc:	e2813c7d 	add	r3, r1, #32000	; 0x7d00
 200:	e2811c7d 	add	r1, r1, #32000	; 0x7d00
 204:	edd30b04 	vldr	d16, [r3, #16]
 208:	ee700b88 	vadd.f64	d16, d16, d8
 20c:	edc30b04 	vstr	d16, [r3, #16]
 210:	edd10b06 	vldr	d16, [r1, #24]
 214:	ee700b8c 	vadd.f64	d16, d16, d12
 218:	edc10b06 	vstr	d16, [r1, #24]
 21c:	edd90b00 	vldr	d16, [r9]
 220:	ee3ccb0d 	vadd.f64	d12, d12, d13
 224:	ee3aab20 	vadd.f64	d10, d10, d16
 228:	ed570b02 	vldr	d16, [r7, #-8]
 22c:	ee399b20 	vadd.f64	d9, d9, d16
 230:	edd70b00 	vldr	d16, [r7]
 234:	ed89ab00 	vstr	d10, [r9]
 238:	ee388b20 	vadd.f64	d8, d8, d16
 23c:	edd80b28 	vldr	d16, [r8, #160]	; 0xa0
 240:	ed079b02 	vstr	d9, [r7, #-8]
 244:	ee4a0b0b 	vmla.f64	d16, d10, d11
 248:	ed878b00 	vstr	d8, [r7]
 24c:	ed0bcb02 	vstr	d12, [fp, #-8]
 250:	edc80b28 	vstr	d16, [r8, #160]	; 0xa0
 254:	edd80b2a 	vldr	d16, [r8, #168]	; 0xa8
 258:	ee490b0b 	vmla.f64	d16, d9, d11
 25c:	edc80b2a 	vstr	d16, [r8, #168]	; 0xa8
 260:	edd80b2c 	vldr	d16, [r8, #176]	; 0xb0
 264:	ee480b0b 	vmla.f64	d16, d8, d11
 268:	edc80b2c 	vstr	d16, [r8, #176]	; 0xb0
 26c:	edd80b2e 	vldr	d16, [r8, #184]	; 0xb8
 270:	ee4c0b0b 	vmla.f64	d16, d12, d11
 274:	edc80b2e 	vstr	d16, [r8, #184]	; 0xb8
 278:	e28dd00c 	add	sp, sp, #12
 27c:	ecbd8b0e 	vpop	{d8-d14}
 280:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
 284:	e320f000 	nop	{0}
 288:	47ae147b 			; <UNDEFINED> instruction: 0x47ae147b
 28c:	3f847ae1 	svccc	0x00847ae1

Disassembly of section .text._ZN3vex10RoboticArm14readBestAnglesERNS0_5AngleE:

00000000 <vex::RoboticArm::readBestAngles(vex::RoboticArm::Angle&)>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e2806a0f 	add	r6, r0, #61440	; 0xf000
   8:	ed2d8b04 	vpush	{d8-d9}
   c:	e1a04001 	mov	r4, r1
  10:	e5960b90 	ldr	r0, [r6, #2960]	; 0xb90
  14:	e3a01000 	mov	r1, #0
  18:	ebfffffe 	bl	0 <vex::motor::position(vex::rotationUnits)>
  1c:	e59f50a4 	ldr	r5, [pc, #164]	; c8 <vex::RoboticArm::readBestAngles(vex::RoboticArm::Angle&)+0xc8>
  20:	eeb28b08 	vmov.f64	d8, #40	; 0x41400000  12.0
  24:	eddf1b23 	vldr	d17, [pc, #140]	; b8 <vex::RoboticArm::readBestAngles(vex::RoboticArm::Angle&)+0xb8>
  28:	ed9f9b24 	vldr	d9, [pc, #144]	; c0 <vex::RoboticArm::readBestAngles(vex::RoboticArm::Angle&)+0xc0>
  2c:	ec410b30 	vmov	d16, r0, r1
  30:	e5960b94 	ldr	r0, [r6, #2964]	; 0xb94
  34:	e3a01000 	mov	r1, #0
  38:	ee600bc8 	vnmul.f64	d16, d16, d8
  3c:	eec00ba1 	vdiv.f64	d16, d16, d17
  40:	edd51b00 	vldr	d17, [r5]
  44:	ee700ba1 	vadd.f64	d16, d16, d17
  48:	edc40b00 	vstr	d16, [r4]
  4c:	ebfffffe 	bl	0 <vex::motor::position(vex::rotationUnits)>
  50:	edd51b02 	vldr	d17, [r5, #8]
  54:	ec410b30 	vmov	d16, r0, r1
  58:	e5960b98 	ldr	r0, [r6, #2968]	; 0xb98
  5c:	e3a01000 	mov	r1, #0
  60:	ee600b88 	vmul.f64	d16, d16, d8
  64:	eec00b89 	vdiv.f64	d16, d16, d9
  68:	ee700ba1 	vadd.f64	d16, d16, d17
  6c:	edc40b02 	vstr	d16, [r4, #8]
  70:	ebfffffe 	bl	0 <vex::motor::position(vex::rotationUnits)>
  74:	edd51b04 	vldr	d17, [r5, #16]
  78:	ec410b30 	vmov	d16, r0, r1
  7c:	e5960b9c 	ldr	r0, [r6, #2972]	; 0xb9c
  80:	e3a01000 	mov	r1, #0
  84:	ee600bc8 	vnmul.f64	d16, d16, d8
  88:	eec00b89 	vdiv.f64	d16, d16, d9
  8c:	ee700ba1 	vadd.f64	d16, d16, d17
  90:	edc40b04 	vstr	d16, [r4, #16]
  94:	ebfffffe 	bl	0 <vex::motor::position(vex::rotationUnits)>
  98:	ec410b30 	vmov	d16, r0, r1
  9c:	ee208b88 	vmul.f64	d8, d16, d8
  a0:	edd50b06 	vldr	d16, [r5, #24]
  a4:	ee888b09 	vdiv.f64	d8, d8, d9
  a8:	ee388b20 	vadd.f64	d8, d8, d16
  ac:	ed848b06 	vstr	d8, [r4, #24]
  b0:	ecbd8b04 	vpop	{d8-d9}
  b4:	e8bd8070 	pop	{r4, r5, r6, pc}
  b8:	00000000 	andeq	r0, r0, r0
  bc:	40550000 	subsmi	r0, r5, r0
  c0:	00000000 	andeq	r0, r0, r0
  c4:	40418000 	submi	r8, r1, r0
  c8:	00000000 	andeq	r0, r0, r0

Disassembly of section .text._ZN3vex10RoboticArm11getPositionERNS0_8PositionE:

00000000 <vex::RoboticArm::getPosition(vex::RoboticArm::Position&)>:
   0:	e92d4030 	push	{r4, r5, lr}
   4:	e24dd044 	sub	sp, sp, #68	; 0x44
   8:	e1a05001 	mov	r5, r1
   c:	e28d1020 	add	r1, sp, #32
  10:	e1a04000 	mov	r4, r0
  14:	ebfffffe 	bl	0 <vex::RoboticArm::getPosition(vex::RoboticArm::Position&)>
  18:	e1cd22d8 	ldrd	r2, [sp, #40]	; 0x28
  1c:	e1a00004 	mov	r0, r4
  20:	e58d5018 	str	r5, [sp, #24]
  24:	e1cd20f0 	strd	r2, [sp]
  28:	e1cd23d0 	ldrd	r2, [sp, #48]	; 0x30
  2c:	e1cd20f8 	strd	r2, [sp, #8]
  30:	e1cd23d8 	ldrd	r2, [sp, #56]	; 0x38
  34:	e1cd21f0 	strd	r2, [sp, #16]
  38:	e1cd22d0 	ldrd	r2, [sp, #32]
  3c:	ebfffffe 	bl	0 <vex::RoboticArm::getPosition(vex::RoboticArm::Position&)>
  40:	e28dd044 	add	sp, sp, #68	; 0x44
  44:	e8bd8030 	pop	{r4, r5, pc}

Disassembly of section .text._ZN3vex10RoboticArm19setRelativePositionEdddd:

00000000 <vex::RoboticArm::setRelativePosition(double, double, double, double)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ed2d8b02 	vpush	{d8}
   c:	ec432b18 	vmov	d8, r2, r3
  10:	e24dd020 	sub	sp, sp, #32
  14:	e1a0100d 	mov	r1, sp
  18:	ebfffffe 	bl	0 <vex::RoboticArm::setRelativePosition(double, double, double, double)>
  1c:	eddd0b00 	vldr	d16, [sp]
  20:	e2843cfb 	add	r3, r4, #64256	; 0xfb00
  24:	e2840cfb 	add	r0, r4, #64256	; 0xfb00
  28:	eddd1b0c 	vldr	d17, [sp, #48]	; 0x30
  2c:	ee700bc8 	vsub.f64	d16, d16, d8
  30:	edc30b16 	vstr	d16, [r3, #88]	; 0x58
  34:	eddd0b02 	vldr	d16, [sp, #8]
  38:	ee700be1 	vsub.f64	d16, d16, d17
  3c:	eddd1b0e 	vldr	d17, [sp, #56]	; 0x38
  40:	edc30b18 	vstr	d16, [r3, #96]	; 0x60
  44:	eddd0b04 	vldr	d16, [sp, #16]
  48:	ee700be1 	vsub.f64	d16, d16, d17
  4c:	eddd1b10 	vldr	d17, [sp, #64]	; 0x40
  50:	edc00b1a 	vstr	d16, [r0, #104]	; 0x68
  54:	eddd0b06 	vldr	d16, [sp, #24]
  58:	ee700be1 	vsub.f64	d16, d16, d17
  5c:	edc00b1c 	vstr	d16, [r0, #112]	; 0x70
  60:	e28dd020 	add	sp, sp, #32
  64:	ecbd8b02 	vpop	{d8}
  68:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex10RoboticArm19getRelativePositionERNS0_8PositionE:

00000000 <vex::RoboticArm::getRelativePosition(vex::RoboticArm::Position&)>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a04001 	mov	r4, r1
   8:	e1a05000 	mov	r5, r0
   c:	ebfffffe 	bl	0 <vex::RoboticArm::getRelativePosition(vex::RoboticArm::Position&)>
  10:	e2853cfb 	add	r3, r5, #64256	; 0xfb00
  14:	edd40b00 	vldr	d16, [r4]
  18:	e2850cfb 	add	r0, r5, #64256	; 0xfb00
  1c:	edd31b16 	vldr	d17, [r3, #88]	; 0x58
  20:	ee700be1 	vsub.f64	d16, d16, d17
  24:	edd31b18 	vldr	d17, [r3, #96]	; 0x60
  28:	edc40b00 	vstr	d16, [r4]
  2c:	edd40b02 	vldr	d16, [r4, #8]
  30:	ee700be1 	vsub.f64	d16, d16, d17
  34:	edd01b1a 	vldr	d17, [r0, #104]	; 0x68
  38:	edc40b02 	vstr	d16, [r4, #8]
  3c:	edd40b04 	vldr	d16, [r4, #16]
  40:	ee700be1 	vsub.f64	d16, d16, d17
  44:	edd01b1c 	vldr	d17, [r0, #112]	; 0x70
  48:	edc40b04 	vstr	d16, [r4, #16]
  4c:	edd40b06 	vldr	d16, [r4, #24]
  50:	ee700be1 	vsub.f64	d16, d16, d17
  54:	edc40b06 	vstr	d16, [r4, #24]
  58:	e8bd8038 	pop	{r3, r4, r5, pc}

Disassembly of section .text._ZN3vex10RoboticArm25initializeProfilePositionEv:

00000000 <vex::RoboticArm::initializeProfilePosition()>:
   0:	e92d40d0 	push	{r4, r6, r7, lr}
   4:	e24dd020 	sub	sp, sp, #32
   8:	e1a04000 	mov	r4, r0
   c:	e1a0100d 	mov	r1, sp
  10:	ebfffffe 	bl	0 <vex::RoboticArm::initializeProfilePosition()>
  14:	e1cd00d0 	ldrd	r0, [sp]
  18:	e1cd60d8 	ldrd	r6, [sp, #8]
  1c:	e2843cfa 	add	r3, r4, #64000	; 0xfa00
  20:	e2844cfa 	add	r4, r4, #64000	; 0xfa00
  24:	e1c30af0 	strd	r0, [r3, #160]	; 0xa0
  28:	e1c308f0 	strd	r0, [r3, #128]	; 0x80
  2c:	e1c30cf0 	strd	r0, [r3, #192]	; 0xc0
  30:	e1c36af8 	strd	r6, [r3, #168]	; 0xa8
  34:	e1cd01d8 	ldrd	r0, [sp, #24]
  38:	e1c368f8 	strd	r6, [r3, #136]	; 0x88
  3c:	e1c36cf8 	strd	r6, [r3, #200]	; 0xc8
  40:	e1cd61d0 	ldrd	r6, [sp, #16]
  44:	e1c30bf8 	strd	r0, [r3, #184]	; 0xb8
  48:	e1c309f8 	strd	r0, [r3, #152]	; 0x98
  4c:	e1c36bf0 	strd	r6, [r3, #176]	; 0xb0
  50:	e1c369f0 	strd	r6, [r3, #144]	; 0x90
  54:	e1c36df0 	strd	r6, [r3, #208]	; 0xd0
  58:	e1c40df8 	strd	r0, [r4, #216]	; 0xd8
  5c:	e28dd020 	add	sp, sp, #32
  60:	e8bd80d0 	pop	{r4, r6, r7, pc}

Disassembly of section .text._ZN3vex10RoboticArm24initializeVelocityFilterEv:

00000000 <vex::RoboticArm::initializeVelocityFilter()>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e3a04c7d 	mov	r4, #32000	; 0x7d00
   8:	e1a02004 	mov	r2, r4
   c:	e3a01000 	mov	r1, #0
  10:	e1a05000 	mov	r5, r0
  14:	ebfffffe 	bl	0 <memset>
  18:	e0850004 	add	r0, r5, r4
  1c:	e1a02004 	mov	r2, r4
  20:	e3a01000 	mov	r1, #0
  24:	e3a04000 	mov	r4, #0
  28:	ebfffffe 	bl	0 <memset>
  2c:	e2853a0f 	add	r3, r5, #61440	; 0xf000
  30:	e3a06020 	mov	r6, #32
  34:	e1a01004 	mov	r1, r4
  38:	e5932ae0 	ldr	r2, [r3, #2784]	; 0xae0
  3c:	e2850cfa 	add	r0, r5, #64000	; 0xfa00
  40:	e5834a44 	str	r4, [r3, #2628]	; 0xa44
  44:	e5834a4c 	str	r4, [r3, #2636]	; 0xa4c
  48:	e5832a40 	str	r2, [r3, #2624]	; 0xa40
  4c:	e5932ae4 	ldr	r2, [r3, #2788]	; 0xae4
  50:	e5832a48 	str	r2, [r3, #2632]	; 0xa48
  54:	e1a02006 	mov	r2, r6
  58:	ebfffffe 	bl	0 <memset>
  5c:	e2850cfa 	add	r0, r5, #64000	; 0xfa00
  60:	e0800006 	add	r0, r0, r6
  64:	e1a01004 	mov	r1, r4
  68:	e1a02006 	mov	r2, r6
  6c:	e8bd4070 	pop	{r4, r5, r6, lr}
  70:	eafffffe 	b	0 <memset>

Disassembly of section .text._ZN3vex10RoboticArm14velocityFilterEdddd:

00000000 <vex::RoboticArm::velocityFilter(double, double, double, double)>:
   0:	ec432b3d 	vmov	d29, r2, r3
   4:	e2802cfa 	add	r2, r0, #64000	; 0xfa00
   8:	e92d4ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
   c:	e2804a0f 	add	r4, r0, #61440	; 0xf000
  10:	eddf9b7e 	vldr	d25, [pc, #504]	; 210 <vex::RoboticArm::velocityFilter(double, double, double, double)+0x210>
  14:	e307ad08 	movw	sl, #32008	; 0x7d08
  18:	e5948a44 	ldr	r8, [r4, #2628]	; 0xa44
  1c:	e3079d10 	movw	r9, #32016	; 0x7d10
  20:	e5946a40 	ldr	r6, [r4, #2624]	; 0xa40
  24:	e307bd18 	movw	fp, #32024	; 0x7d18
  28:	edd20b30 	vldr	d16, [r2, #192]	; 0xc0
  2c:	e0801288 	add	r1, r0, r8, lsl #5
  30:	e5947a4c 	ldr	r7, [r4, #2636]	; 0xa4c
  34:	edddcb0a 	vldr	d28, [sp, #40]	; 0x28
  38:	e2873ffa 	add	r3, r7, #1000	; 0x3e8
  3c:	e0803283 	add	r3, r0, r3, lsl #5
  40:	ee4d0ba9 	vmla.f64	d16, d29, d25
  44:	edddbb0c 	vldr	d27, [sp, #48]	; 0x30
  48:	edddab0e 	vldr	d26, [sp, #56]	; 0x38
  4c:	edd16b00 	vldr	d22, [r1]
  50:	edd14b02 	vldr	d20, [r1, #8]
  54:	edd12b04 	vldr	d18, [r1, #16]
  58:	edd27b06 	vldr	d23, [r2, #24]
  5c:	edc20b30 	vstr	d16, [r2, #192]	; 0xc0
  60:	edd20b32 	vldr	d16, [r2, #200]	; 0xc8
  64:	ee4c0ba9 	vmla.f64	d16, d28, d25
  68:	edc20b32 	vstr	d16, [r2, #200]	; 0xc8
  6c:	edd20b34 	vldr	d16, [r2, #208]	; 0xd0
  70:	ee4b0ba9 	vmla.f64	d16, d27, d25
  74:	edc20b34 	vstr	d16, [r2, #208]	; 0xd0
  78:	edd20b36 	vldr	d16, [r2, #216]	; 0xd8
  7c:	ee4a0ba9 	vmla.f64	d16, d26, d25
  80:	edc20b36 	vstr	d16, [r2, #216]	; 0xd8
  84:	edd20b00 	vldr	d16, [r2]
  88:	ee706be6 	vsub.f64	d22, d16, d22
  8c:	edd20b02 	vldr	d16, [r2, #8]
  90:	ee704be4 	vsub.f64	d20, d16, d20
  94:	edd20b04 	vldr	d16, [r2, #16]
  98:	ee70ebe2 	vsub.f64	d30, d16, d18
  9c:	edd10b06 	vldr	d16, [r1, #24]
  a0:	e5941ae0 	ldr	r1, [r4, #2784]	; 0xae0
  a4:	ee071a90 	vmov	s15, r1
  a8:	e0801286 	add	r1, r0, r6, lsl #5
  ac:	eef81be7 	vcvt.f64.s32	d17, s15
  b0:	eecd5ba1 	vdiv.f64	d21, d29, d17
  b4:	eecc3ba1 	vdiv.f64	d19, d28, d17
  b8:	edc15b00 	vstr	d21, [r1]
  bc:	eecb2ba1 	vdiv.f64	d18, d27, d17
  c0:	eeca1ba1 	vdiv.f64	d17, d26, d17
  c4:	ee770be0 	vsub.f64	d16, d23, d16
  c8:	ee766ba5 	vadd.f64	d22, d22, d21
  cc:	ee744ba3 	vadd.f64	d20, d20, d19
  d0:	edc26b00 	vstr	d22, [r2]
  d4:	edc13b02 	vstr	d19, [r1, #8]
  d8:	ee708ba1 	vadd.f64	d24, d16, d17
  dc:	edc24b02 	vstr	d20, [r2, #8]
  e0:	edc12b04 	vstr	d18, [r1, #16]
  e4:	ee7e2ba2 	vadd.f64	d18, d30, d18
  e8:	edc22b04 	vstr	d18, [r2, #16]
  ec:	edc11b06 	vstr	d17, [r1, #24]
  f0:	e3a01ffa 	mov	r1, #1000	; 0x3e8
  f4:	edd21b08 	vldr	d17, [r2, #32]
  f8:	edc28b06 	vstr	d24, [r2, #24]
  fc:	edd37b00 	vldr	d23, [r3]
 100:	e0803287 	add	r3, r0, r7, lsl #5
 104:	e083e00a 	add	lr, r3, sl
 108:	e5945a48 	ldr	r5, [r4, #2632]	; 0xa48
 10c:	edde5b00 	vldr	d21, [lr]
 110:	e083e009 	add	lr, r3, r9
 114:	e083300b 	add	r3, r3, fp
 118:	ee717be7 	vsub.f64	d23, d17, d23
 11c:	edd21b0a 	vldr	d17, [r2, #40]	; 0x28
 120:	edde3b00 	vldr	d19, [lr]
 124:	edd30b00 	vldr	d16, [r3]
 128:	e5943ae4 	ldr	r3, [r4, #2788]	; 0xae4
 12c:	ee715be5 	vsub.f64	d21, d17, d21
 130:	edd21b0c 	vldr	d17, [r2, #48]	; 0x30
 134:	ee073a90 	vmov	s15, r3
 138:	e2853ffa 	add	r3, r5, #1000	; 0x3e8
 13c:	e0803283 	add	r3, r0, r3, lsl #5
 140:	ee713be3 	vsub.f64	d19, d17, d19
 144:	edd21b0e 	vldr	d17, [r2, #56]	; 0x38
 148:	ee711be0 	vsub.f64	d17, d17, d16
 14c:	eef80be7 	vcvt.f64.s32	d16, s15
 150:	eec66ba0 	vdiv.f64	d22, d22, d16
 154:	eec44ba0 	vdiv.f64	d20, d20, d16
 158:	edc36b00 	vstr	d22, [r3]
 15c:	e0803285 	add	r3, r0, r5, lsl #5
 160:	e083a00a 	add	sl, r3, sl
 164:	e0839009 	add	r9, r3, r9
 168:	e083300b 	add	r3, r3, fp
 16c:	e2880001 	add	r0, r8, #1
 170:	eec22ba0 	vdiv.f64	d18, d18, d16
 174:	eec80ba0 	vdiv.f64	d16, d24, d16
 178:	ee776ba6 	vadd.f64	d22, d23, d22
 17c:	edc26b08 	vstr	d22, [r2, #32]
 180:	edca4b00 	vstr	d20, [sl]
 184:	ee754ba4 	vadd.f64	d20, d21, d20
 188:	edc24b0a 	vstr	d20, [r2, #40]	; 0x28
 18c:	edc92b00 	vstr	d18, [r9]
 190:	ee732ba2 	vadd.f64	d18, d19, d18
 194:	edc22b0c 	vstr	d18, [r2, #48]	; 0x30
 198:	edc30b00 	vstr	d16, [r3]
 19c:	ee710ba0 	vadd.f64	d16, d17, d16
 1a0:	edd21b28 	vldr	d17, [r2, #160]	; 0xa0
 1a4:	ee461ba9 	vmla.f64	d17, d22, d25
 1a8:	edc20b0e 	vstr	d16, [r2, #56]	; 0x38
 1ac:	edc21b28 	vstr	d17, [r2, #160]	; 0xa0
 1b0:	edd21b2a 	vldr	d17, [r2, #168]	; 0xa8
 1b4:	ee441ba9 	vmla.f64	d17, d20, d25
 1b8:	edc21b2a 	vstr	d17, [r2, #168]	; 0xa8
 1bc:	edd21b2c 	vldr	d17, [r2, #176]	; 0xb0
 1c0:	ee421ba9 	vmla.f64	d17, d18, d25
 1c4:	edc21b2c 	vstr	d17, [r2, #176]	; 0xb0
 1c8:	edd21b2e 	vldr	d17, [r2, #184]	; 0xb8
 1cc:	ee401ba9 	vmla.f64	d17, d16, d25
 1d0:	edc21b2e 	vstr	d17, [r2, #184]	; 0xb8
 1d4:	ebfffffe 	bl	0 <__aeabi_idivmod>
 1d8:	e2860001 	add	r0, r6, #1
 1dc:	e5841a44 	str	r1, [r4, #2628]	; 0xa44
 1e0:	e3a01ffa 	mov	r1, #1000	; 0x3e8
 1e4:	ebfffffe 	bl	0 <__aeabi_idivmod>
 1e8:	e2870001 	add	r0, r7, #1
 1ec:	e5841a40 	str	r1, [r4, #2624]	; 0xa40
 1f0:	e3a01ffa 	mov	r1, #1000	; 0x3e8
 1f4:	ebfffffe 	bl	0 <__aeabi_idivmod>
 1f8:	e2850001 	add	r0, r5, #1
 1fc:	e5841a4c 	str	r1, [r4, #2636]	; 0xa4c
 200:	e3a01ffa 	mov	r1, #1000	; 0x3e8
 204:	ebfffffe 	bl	0 <__aeabi_idivmod>
 208:	e5841a48 	str	r1, [r4, #2632]	; 0xa48
 20c:	e8bd8ff8 	pop	{r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 210:	47ae147b 			; <UNDEFINED> instruction: 0x47ae147b
 214:	3f847ae1 	svccc	0x00847ae1

Disassembly of section .text._ZN3vex10RoboticArm5getJ1Ev:

00000000 <vex::RoboticArm::getJ1()>:
   0:	e92d4008 	push	{r3, lr}
   4:	e2803cfb 	add	r3, r0, #64256	; 0xfb00
   8:	e2800a0f 	add	r0, r0, #61440	; 0xf000
   c:	ed2d8b02 	vpush	{d8}
  10:	e3a01003 	mov	r1, #3
  14:	e5900ba0 	ldr	r0, [r0, #2976]	; 0xba0
  18:	ed938b06 	vldr	d8, [r3, #24]
  1c:	ebfffffe 	bl	0 <vex::pot::value(vex::analogUnits)>
  20:	ee070a90 	vmov	s15, r0
  24:	eef80be7 	vcvt.f64.s32	d16, s15
  28:	ee388b60 	vsub.f64	d8, d8, d16
  2c:	eddf0b03 	vldr	d16, [pc, #12]	; 40 <vex::RoboticArm::getJ1()+0x40>
  30:	ee680b20 	vmul.f64	d16, d8, d16
  34:	ecbd8b02 	vpop	{d8}
  38:	ec510b30 	vmov	r0, r1, d16
  3c:	e8bd8008 	pop	{r3, pc}
  40:	b9611a7c 	stmdblt	r1!, {r2, r3, r4, r5, r6, r9, fp, ip}^
  44:	3fb611a7 	svccc	0x00b611a7

Disassembly of section .text._ZN3vex10RoboticArm5getJ2Ev:

00000000 <vex::RoboticArm::getJ2()>:
   0:	e92d4008 	push	{r3, lr}
   4:	e2803cfb 	add	r3, r0, #64256	; 0xfb00
   8:	e2800a0f 	add	r0, r0, #61440	; 0xf000
   c:	ed2d8b02 	vpush	{d8}
  10:	e3a01003 	mov	r1, #3
  14:	e5900ba4 	ldr	r0, [r0, #2980]	; 0xba4
  18:	ed938b08 	vldr	d8, [r3, #32]
  1c:	ebfffffe 	bl	0 <vex::pot::value(vex::analogUnits)>
  20:	ee070a90 	vmov	s15, r0
  24:	eef80be7 	vcvt.f64.s32	d16, s15
  28:	ee388b60 	vsub.f64	d8, d8, d16
  2c:	eddf0b03 	vldr	d16, [pc, #12]	; 40 <vex::RoboticArm::getJ2()+0x40>
  30:	ee680b20 	vmul.f64	d16, d8, d16
  34:	ecbd8b02 	vpop	{d8}
  38:	ec510b30 	vmov	r0, r1, d16
  3c:	e8bd8008 	pop	{r3, pc}
  40:	38bfaf4a 	ldmcc	pc!, {r1, r3, r6, r8, r9, sl, fp, sp, pc}	; <UNPREDICTABLE>
  44:	3f9e4419 	svccc	0x009e4419

Disassembly of section .text._ZN3vex10RoboticArm5getJ3Ev:

00000000 <vex::RoboticArm::getJ3()>:
   0:	e92d4008 	push	{r3, lr}
   4:	e2803cfb 	add	r3, r0, #64256	; 0xfb00
   8:	e2800a0f 	add	r0, r0, #61440	; 0xf000
   c:	ed2d8b02 	vpush	{d8}
  10:	e3a01003 	mov	r1, #3
  14:	e5900ba8 	ldr	r0, [r0, #2984]	; 0xba8
  18:	ed938b0a 	vldr	d8, [r3, #40]	; 0x28
  1c:	ebfffffe 	bl	0 <vex::pot::value(vex::analogUnits)>
  20:	ee070a90 	vmov	s15, r0
  24:	eef80be7 	vcvt.f64.s32	d16, s15
  28:	ee388b60 	vsub.f64	d8, d8, d16
  2c:	eddf0b03 	vldr	d16, [pc, #12]	; 40 <vex::RoboticArm::getJ3()+0x40>
  30:	ee680b20 	vmul.f64	d16, d8, d16
  34:	ecbd8b02 	vpop	{d8}
  38:	ec510b30 	vmov	r0, r1, d16
  3c:	e8bd8008 	pop	{r3, pc}
  40:	38bfaf4a 	ldmcc	pc!, {r1, r3, r6, r8, r9, sl, fp, sp, pc}	; <UNPREDICTABLE>
  44:	3f9e4419 	svccc	0x009e4419

Disassembly of section .text._ZN3vex10RoboticArm5getJ4Ev:

00000000 <vex::RoboticArm::getJ4()>:
   0:	e2803a0f 	add	r3, r0, #61440	; 0xf000
   4:	e3a01003 	mov	r1, #3
   8:	e92d4010 	push	{r4, lr}
   c:	e1a04000 	mov	r4, r0
  10:	e5930bac 	ldr	r0, [r3, #2988]	; 0xbac
  14:	ebfffffe 	bl	0 <vex::pot::value(vex::analogUnits)>
  18:	ee070a90 	vmov	s15, r0
  1c:	e2840cfb 	add	r0, r4, #64256	; 0xfb00
  20:	eef80be7 	vcvt.f64.s32	d16, s15
  24:	edd01b0c 	vldr	d17, [r0, #48]	; 0x30
  28:	ee700be1 	vsub.f64	d16, d16, d17
  2c:	eddf1b03 	vldr	d17, [pc, #12]	; 40 <vex::RoboticArm::getJ4()+0x40>
  30:	ee600ba1 	vmul.f64	d16, d16, d17
  34:	ec510b30 	vmov	r0, r1, d16
  38:	e8bd8010 	pop	{r4, pc}
  3c:	e320f000 	nop	{0}
  40:	38bfaf4a 	ldmcc	pc!, {r1, r3, r6, r8, r9, sl, fp, sp, pc}	; <UNPREDICTABLE>
  44:	3f9e4419 	svccc	0x009e4419

Disassembly of section .text._ZN3vex10RoboticArm22initializeProfileAngleEv:

00000000 <vex::RoboticArm::initializeProfileAngle()>:
   0:	e92d43f8 	push	{r3, r4, r5, r6, r7, r8, r9, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <vex::RoboticArm::initializeProfileAngle()>
   c:	e2845cfa 	add	r5, r4, #64000	; 0xfa00
  10:	e28590b0 	add	r9, r5, #176	; 0xb0
  14:	e2858090 	add	r8, r5, #144	; 0x90
  18:	e28570d0 	add	r7, r5, #208	; 0xd0
  1c:	e28560c0 	add	r6, r5, #192	; 0xc0
  20:	e28550a0 	add	r5, r5, #160	; 0xa0
  24:	e1c500f0 	strd	r0, [r5]
  28:	e14502f0 	strd	r0, [r5, #-32]	; 0xffffffe0
  2c:	e1c502f0 	strd	r0, [r5, #32]
  30:	e1a00004 	mov	r0, r4
  34:	ebfffffe 	bl	0 <vex::RoboticArm::initializeProfileAngle()>
  38:	e1c500f8 	strd	r0, [r5, #8]
  3c:	e14501f8 	strd	r0, [r5, #-24]	; 0xffffffe8
  40:	e1c502f8 	strd	r0, [r5, #40]	; 0x28
  44:	e1a00004 	mov	r0, r4
  48:	ebfffffe 	bl	0 <vex::RoboticArm::initializeProfileAngle()>
  4c:	e1c501f0 	strd	r0, [r5, #16]
  50:	e14501f0 	strd	r0, [r5, #-16]
  54:	e1c503f0 	strd	r0, [r5, #48]	; 0x30
  58:	e1a00004 	mov	r0, r4
  5c:	ebfffffe 	bl	0 <vex::RoboticArm::initializeProfileAngle()>
  60:	e2844cfa 	add	r4, r4, #64000	; 0xfa00
  64:	e28440e0 	add	r4, r4, #224	; 0xe0
  68:	e1c501f8 	strd	r0, [r5, #24]
  6c:	e14500f8 	strd	r0, [r5, #-8]
  70:	e14400f8 	strd	r0, [r4, #-8]
  74:	e8bd83f8 	pop	{r3, r4, r5, r6, r7, r8, r9, pc}

Disassembly of section .text._ZN3vex10RoboticArm25complimentaryFilterAnglesERNS0_5AngleE:

00000000 <vex::RoboticArm::complimentaryFilterAngles(vex::RoboticArm::Angle&)>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a06000 	mov	r6, r0
   8:	ed2d8b02 	vpush	{d8}
   c:	e1a05001 	mov	r5, r1
  10:	ebfffffe 	bl	0 <vex::RoboticArm::complimentaryFilterAngles(vex::RoboticArm::Angle&)>
  14:	e1a00006 	mov	r0, r6
  18:	ebfffffe 	bl	0 <vex::RoboticArm::complimentaryFilterAngles(vex::RoboticArm::Angle&)>
  1c:	e59f408c 	ldr	r4, [pc, #140]	; b0 <vex::RoboticArm::complimentaryFilterAngles(vex::RoboticArm::Angle&)+0xb0>
  20:	edd50b00 	vldr	d16, [r5]
  24:	ed9f8b1f 	vldr	d8, [pc, #124]	; a8 <vex::RoboticArm::complimentaryFilterAngles(vex::RoboticArm::Angle&)+0xa8>
  28:	ec410b31 	vmov	d17, r0, r1
  2c:	e1a00006 	mov	r0, r6
  30:	ee711be0 	vsub.f64	d17, d17, d16
  34:	edd40b00 	vldr	d16, [r4]
  38:	ee410b88 	vmla.f64	d16, d17, d8
  3c:	edc40b00 	vstr	d16, [r4]
  40:	ebfffffe 	bl	0 <vex::RoboticArm::complimentaryFilterAngles(vex::RoboticArm::Angle&)>
  44:	edd50b02 	vldr	d16, [r5, #8]
  48:	ec410b31 	vmov	d17, r0, r1
  4c:	e1a00006 	mov	r0, r6
  50:	ee711be0 	vsub.f64	d17, d17, d16
  54:	edd40b02 	vldr	d16, [r4, #8]
  58:	ee410b88 	vmla.f64	d16, d17, d8
  5c:	edc40b02 	vstr	d16, [r4, #8]
  60:	ebfffffe 	bl	0 <vex::RoboticArm::complimentaryFilterAngles(vex::RoboticArm::Angle&)>
  64:	edd50b04 	vldr	d16, [r5, #16]
  68:	ec410b31 	vmov	d17, r0, r1
  6c:	e1a00006 	mov	r0, r6
  70:	ee711be0 	vsub.f64	d17, d17, d16
  74:	edd40b04 	vldr	d16, [r4, #16]
  78:	ee410b88 	vmla.f64	d16, d17, d8
  7c:	edc40b04 	vstr	d16, [r4, #16]
  80:	ebfffffe 	bl	0 <vex::RoboticArm::complimentaryFilterAngles(vex::RoboticArm::Angle&)>
  84:	edd51b06 	vldr	d17, [r5, #24]
  88:	ec410b30 	vmov	d16, r0, r1
  8c:	ee701be1 	vsub.f64	d17, d16, d17
  90:	edd40b06 	vldr	d16, [r4, #24]
  94:	ee410b88 	vmla.f64	d16, d17, d8
  98:	ecbd8b02 	vpop	{d8}
  9c:	edc40b06 	vstr	d16, [r4, #24]
  a0:	e8bd8070 	pop	{r4, r5, r6, pc}
  a4:	e320f000 	nop	{0}
  a8:	c53c5b03 	ldrgt	r5, [ip, #-2819]!	; 0xfffff4fd
  ac:	3f4496b7 	svccc	0x004496b7
  b0:	00000000 	andeq	r0, r0, r0

Disassembly of section .text._ZN3vex10RoboticArm16motorControlLoopERNS0_5AngleE:

00000000 <vex::RoboticArm::motorControlLoop(vex::RoboticArm::Angle&)>:
   0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ed2d8b10 	vpush	{d8-d15}
   c:	e1a05000 	mov	r5, r0
  10:	e2856a0f 	add	r6, r5, #61440	; 0xf000
  14:	e2858cfa 	add	r8, r5, #64000	; 0xfa00
  18:	ed9f9bcc 	vldr	d9, [pc, #816]	; 350 <vex::RoboticArm::motorControlLoop(vex::RoboticArm::Angle&)+0x350>
  1c:	e1a07008 	mov	r7, r8
  20:	e24dd038 	sub	sp, sp, #56	; 0x38
  24:	e28d1018 	add	r1, sp, #24
  28:	ebfffffe 	bl	0 <vex::RoboticArm::motorControlLoop(vex::RoboticArm::Angle&)>
  2c:	edd40b00 	vldr	d16, [r4]
  30:	e5960b90 	ldr	r0, [r6, #2960]	; 0xb90
  34:	e3a01002 	mov	r1, #2
  38:	ed9dfb06 	vldr	d15, [sp, #24]
  3c:	ed9d8b08 	vldr	d8, [sp, #32]
  40:	ee30fbcf 	vsub.f64	d15, d16, d15
  44:	edd40b02 	vldr	d16, [r4, #8]
  48:	ed9ddb0a 	vldr	d13, [sp, #40]	; 0x28
  4c:	ed9deb0c 	vldr	d14, [sp, #48]	; 0x30
  50:	ee308bc8 	vsub.f64	d8, d16, d8
  54:	edd40b04 	vldr	d16, [r4, #16]
  58:	ed9fcbbe 	vldr	d12, [pc, #760]	; 358 <vex::RoboticArm::motorControlLoop(vex::RoboticArm::Angle&)+0x358>
  5c:	ed9fbbbf 	vldr	d11, [pc, #764]	; 360 <vex::RoboticArm::motorControlLoop(vex::RoboticArm::Angle&)+0x360>
  60:	ee30dbcd 	vsub.f64	d13, d16, d13
  64:	edd40b06 	vldr	d16, [r4, #24]
  68:	ee30ebce 	vsub.f64	d14, d16, d14
  6c:	ebfffffe 	bl	0 <vex::motor::velocity(vex::velocityUnits)>
  70:	edd40b00 	vldr	d16, [r4]
  74:	edd81b14 	vldr	d17, [r8, #80]	; 0x50
  78:	ee700be1 	vsub.f64	d16, d16, d17
  7c:	eec00b89 	vdiv.f64	d16, d16, d9
  80:	ee2ffb0c 	vmul.f64	d15, d15, d12
  84:	ee20cb8c 	vmul.f64	d12, d16, d12
  88:	ec410b30 	vmov	d16, r0, r1
  8c:	e5960b94 	ldr	r0, [r6, #2964]	; 0xb94
  90:	e3a01002 	mov	r1, #2
  94:	eeb2ab08 	vmov.f64	d10, #40	; 0x41400000  12.0
  98:	ee8ccb0a 	vdiv.f64	d12, d12, d10
  9c:	ee700bcc 	vsub.f64	d16, d16, d12
  a0:	edcd0b04 	vstr	d16, [sp, #16]
  a4:	ebfffffe 	bl	0 <vex::motor::velocity(vex::velocityUnits)>
  a8:	edd81b16 	vldr	d17, [r8, #88]	; 0x58
  ac:	ee288b0b 	vmul.f64	d8, d8, d11
  b0:	ee2ddb0b 	vmul.f64	d13, d13, d11
  b4:	ec410b30 	vmov	d16, r0, r1
  b8:	e5960b98 	ldr	r0, [r6, #2968]	; 0xb98
  bc:	e3a01002 	mov	r1, #2
  c0:	eeb1cb60 	vneg.f64	d12, d16
  c4:	edd40b02 	vldr	d16, [r4, #8]
  c8:	ee2eeb0b 	vmul.f64	d14, d14, d11
  cc:	ee700be1 	vsub.f64	d16, d16, d17
  d0:	eec00b89 	vdiv.f64	d16, d16, d9
  d4:	ee600b8b 	vmul.f64	d16, d16, d11
  d8:	eec00b8a 	vdiv.f64	d16, d16, d10
  dc:	ee3ccb60 	vsub.f64	d12, d12, d16
  e0:	ebfffffe 	bl	0 <vex::motor::velocity(vex::velocityUnits)>
  e4:	edd40b04 	vldr	d16, [r4, #16]
  e8:	edd81b18 	vldr	d17, [r8, #96]	; 0x60
  ec:	ee700be1 	vsub.f64	d16, d16, d17
  f0:	eec00b89 	vdiv.f64	d16, d16, d9
  f4:	ec410b31 	vmov	d17, r0, r1
  f8:	e5960b9c 	ldr	r0, [r6, #2972]	; 0xb9c
  fc:	e3a01002 	mov	r1, #2
 100:	ee600b8b 	vmul.f64	d16, d16, d11
 104:	eec00b8a 	vdiv.f64	d16, d16, d10
 108:	ee710be0 	vsub.f64	d16, d17, d16
 10c:	edcd0b02 	vstr	d16, [sp, #8]
 110:	ebfffffe 	bl	0 <vex::motor::velocity(vex::velocityUnits)>
 114:	e1a03008 	mov	r3, r8
 118:	e59f2258 	ldr	r2, [pc, #600]	; 378 <vex::RoboticArm::motorControlLoop(vex::RoboticArm::Angle&)+0x378>
 11c:	edd41b06 	vldr	d17, [r4, #24]
 120:	ee8ffb0a 	vdiv.f64	d15, d15, d10
 124:	eddf3b8f 	vldr	d19, [pc, #572]	; 368 <vex::RoboticArm::motorControlLoop(vex::RoboticArm::Angle&)+0x368>
 128:	ec410b30 	vmov	d16, r0, r1
 12c:	e1c400d0 	ldrd	r0, [r4]
 130:	e1c805f0 	strd	r0, [r8, #80]	; 0x50
 134:	e1c400d8 	ldrd	r0, [r4, #8]
 138:	eef12b60 	vneg.f64	d18, d16
 13c:	edd80b1a 	vldr	d16, [r8, #104]	; 0x68
 140:	e1c705f8 	strd	r0, [r7, #88]	; 0x58
 144:	e1c401d0 	ldrd	r0, [r4, #16]
 148:	ee888b0a 	vdiv.f64	d8, d8, d10
 14c:	e1c706f0 	strd	r0, [r7, #96]	; 0x60
 150:	e2850cfb 	add	r0, r5, #64256	; 0xfb00
 154:	edc31b1a 	vstr	d17, [r3, #104]	; 0x68
 158:	e2853cfb 	add	r3, r5, #64256	; 0xfb00
 15c:	e2833040 	add	r3, r3, #64	; 0x40
 160:	e2800050 	add	r0, r0, #80	; 0x50
 164:	ed506b02 	vldr	d22, [r0, #-8]
 168:	ee710be0 	vsub.f64	d16, d17, d16
 16c:	edd31b00 	vldr	d17, [r3]
 170:	eec00b89 	vdiv.f64	d16, d16, d9
 174:	ee20bb8b 	vmul.f64	d11, d16, d11
 178:	edd00b00 	vldr	d16, [r0]
 17c:	ee8ddb0a 	vdiv.f64	d13, d13, d10
 180:	ee8eeb0a 	vdiv.f64	d14, d14, d10
 184:	ee8bab0a 	vdiv.f64	d10, d11, d10
 188:	ee32bbca 	vsub.f64	d11, d18, d10
 18c:	ed532b02 	vldr	d18, [r3, #-8]
 190:	ee4f2b09 	vmla.f64	d18, d15, d9
 194:	ee4d6b09 	vmla.f64	d22, d13, d9
 198:	ed432b02 	vstr	d18, [r3, #-8]
 19c:	ee481b09 	vmla.f64	d17, d8, d9
 1a0:	ee4e0b09 	vmla.f64	d16, d14, d9
 1a4:	edc31b00 	vstr	d17, [r3]
 1a8:	ed406b02 	vstr	d22, [r0, #-8]
 1ac:	ee622ba3 	vmul.f64	d18, d18, d19
 1b0:	edc00b00 	vstr	d16, [r0]
 1b4:	eef15b04 	vmov.f64	d21, #20	; 0x40a00000  5.0
 1b8:	eef42be5 	vcmpe.f64	d18, d21
 1bc:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 1c0:	c59f51b4 	ldrgt	r5, [pc, #436]	; 37c <vex::RoboticArm::motorControlLoop(vex::RoboticArm::Angle&)+0x37c>
 1c4:	eef02b63 	vmov.f64	d18, d19
 1c8:	c3a04000 	movgt	r4, #0
 1cc:	c14340f8 	strdgt	r4, [r3, #-8]
 1d0:	ed533b02 	vldr	d19, [r3, #-8]
 1d4:	ee600ba2 	vmul.f64	d16, d16, d18
 1d8:	ee634ba2 	vmul.f64	d20, d19, d18
 1dc:	eef93b04 	vmov.f64	d19, #148	; 0xc0a00000 -5.0
 1e0:	eef44be3 	vcmpe.f64	d20, d19
 1e4:	ee614ba2 	vmul.f64	d20, d17, d18
 1e8:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 1ec:	459f518c 	ldrmi	r5, [pc, #396]	; 380 <vex::RoboticArm::motorControlLoop(vex::RoboticArm::Angle&)+0x380>
 1f0:	43a04000 	movmi	r4, #0
 1f4:	414340f8 	strdmi	r4, [r3, #-8]
 1f8:	eef44be5 	vcmpe.f64	d20, d21
 1fc:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 200:	c59f5174 	ldrgt	r5, [pc, #372]	; 37c <vex::RoboticArm::motorControlLoop(vex::RoboticArm::Angle&)+0x37c>
 204:	c3a04000 	movgt	r4, #0
 208:	ee661ba2 	vmul.f64	d17, d22, d18
 20c:	c1c340f0 	strdgt	r4, [r3]
 210:	edd34b00 	vldr	d20, [r3]
 214:	ee644ba2 	vmul.f64	d20, d20, d18
 218:	eef44be3 	vcmpe.f64	d20, d19
 21c:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 220:	eef41be5 	vcmpe.f64	d17, d21
 224:	459f5154 	ldrmi	r5, [pc, #340]	; 380 <vex::RoboticArm::motorControlLoop(vex::RoboticArm::Angle&)+0x380>
 228:	43a04000 	movmi	r4, #0
 22c:	41c340f0 	strdmi	r4, [r3]
 230:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 234:	c59f5140 	ldrgt	r5, [pc, #320]	; 37c <vex::RoboticArm::motorControlLoop(vex::RoboticArm::Angle&)+0x37c>
 238:	c3a04000 	movgt	r4, #0
 23c:	eef64b00 	vmov.f64	d20, #96	; 0x3f000000  0.5
 240:	c14040f8 	strdgt	r4, [r0, #-8]
 244:	ed501b02 	vldr	d17, [r0, #-8]
 248:	ee611ba2 	vmul.f64	d17, d17, d18
 24c:	eef41be3 	vcmpe.f64	d17, d19
 250:	edd31b00 	vldr	d17, [r3]
 254:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 258:	eef40be5 	vcmpe.f64	d16, d21
 25c:	459f511c 	ldrmi	r5, [pc, #284]	; 380 <vex::RoboticArm::motorControlLoop(vex::RoboticArm::Angle&)+0x380>
 260:	43a04000 	movmi	r4, #0
 264:	414040f8 	strdmi	r4, [r0, #-8]
 268:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 26c:	c59f5108 	ldrgt	r5, [pc, #264]	; 37c <vex::RoboticArm::motorControlLoop(vex::RoboticArm::Angle&)+0x37c>
 270:	c3a04000 	movgt	r4, #0
 274:	ed109b02 	vldr	d9, [r0, #-8]
 278:	c1c040f0 	strdgt	r4, [r0]
 27c:	edd00b00 	vldr	d16, [r0]
 280:	ee299b24 	vmul.f64	d9, d9, d20
 284:	ee600ba2 	vmul.f64	d16, d16, d18
 288:	eef40be3 	vcmpe.f64	d16, d19
 28c:	eddf3b37 	vldr	d19, [pc, #220]	; 370 <vex::RoboticArm::motorControlLoop(vex::RoboticArm::Angle&)+0x370>
 290:	eddd0b02 	vldr	d16, [sp, #8]
 294:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 298:	459f50e0 	ldrmi	r5, [pc, #224]	; 380 <vex::RoboticArm::motorControlLoop(vex::RoboticArm::Angle&)+0x380>
 29c:	43a04000 	movmi	r4, #0
 2a0:	ee0d9b23 	vmla.f64	d9, d13, d19
 2a4:	41c040f0 	strdmi	r4, [r0]
 2a8:	e3a04000 	mov	r4, #0
 2ac:	ed90ab00 	vldr	d10, [r0]
 2b0:	e5922000 	ldr	r2, [r2]
 2b4:	e58d2008 	str	r2, [sp, #8]
 2b8:	e1a01002 	mov	r1, r2
 2bc:	ee009ba2 	vmla.f64	d9, d16, d18
 2c0:	ed530b02 	vldr	d16, [r3, #-8]
 2c4:	e58d4000 	str	r4, [sp]
 2c8:	e5960b90 	ldr	r0, [r6, #2960]	; 0xb90
 2cc:	ee611ba4 	vmul.f64	d17, d17, d20
 2d0:	ee600ba4 	vmul.f64	d16, d16, d20
 2d4:	ee2aab24 	vmul.f64	d10, d10, d20
 2d8:	ee481b23 	vmla.f64	d17, d8, d19
 2dc:	ee4f0b23 	vmla.f64	d16, d15, d19
 2e0:	ee0eab23 	vmla.f64	d10, d14, d19
 2e4:	eeb08b61 	vmov.f64	d8, d17
 2e8:	eddd1b04 	vldr	d17, [sp, #16]
 2ec:	ee0c8b22 	vmla.f64	d8, d12, d18
 2f0:	ee410ba2 	vmla.f64	d16, d17, d18
 2f4:	ee0bab22 	vmla.f64	d10, d11, d18
 2f8:	eef10b60 	vneg.f64	d16, d16
 2fc:	ec532b30 	vmov	r2, r3, d16
 300:	ebfffffe 	bl	0 <vex::motor::spin(vex::directionType, double, vex::voltageUnits)>
 304:	e58d4000 	str	r4, [sp]
 308:	e59d1008 	ldr	r1, [sp, #8]
 30c:	e5960b94 	ldr	r0, [r6, #2964]	; 0xb94
 310:	ec532b18 	vmov	r2, r3, d8
 314:	ebfffffe 	bl	0 <vex::motor::spin(vex::directionType, double, vex::voltageUnits)>
 318:	e58d4000 	str	r4, [sp]
 31c:	eef10b49 	vneg.f64	d16, d9
 320:	e5960b98 	ldr	r0, [r6, #2968]	; 0xb98
 324:	e59d1008 	ldr	r1, [sp, #8]
 328:	ec532b30 	vmov	r2, r3, d16
 32c:	ebfffffe 	bl	0 <vex::motor::spin(vex::directionType, double, vex::voltageUnits)>
 330:	e58d4000 	str	r4, [sp]
 334:	e59d1008 	ldr	r1, [sp, #8]
 338:	e5960b9c 	ldr	r0, [r6, #2972]	; 0xb9c
 33c:	ec532b1a 	vmov	r2, r3, d10
 340:	ebfffffe 	bl	0 <vex::motor::spin(vex::directionType, double, vex::voltageUnits)>
 344:	e28dd038 	add	sp, sp, #56	; 0x38
 348:	ecbd8b10 	vpop	{d8-d15}
 34c:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 350:	47ae147b 			; <UNDEFINED> instruction: 0x47ae147b
 354:	3f847ae1 	svccc	0x00847ae1
 358:	00000000 	andeq	r0, r0, r0
 35c:	40550000 	subsmi	r0, r5, r0
 360:	00000000 	andeq	r0, r0, r0
 364:	40418000 	submi	r8, r1, r0
 368:	47ae147b 			; <UNDEFINED> instruction: 0x47ae147b
 36c:	3f747ae1 	svccc	0x00747ae1
 370:	9999999a 	ldmibls	r9, {r1, r3, r4, r7, r8, fp, ip, pc}
 374:	3fd99999 	svccc	0x00d99999
 378:	00000000 	andeq	r0, r0, r0
 37c:	408f4000 	addmi	r4, pc, r0
 380:	c08f4000 	addgt	r4, pc, r0

Disassembly of section .text._ZN3vex10RoboticArm29initializeComplimentaryFilterEv:

00000000 <vex::RoboticArm::initializeComplimentaryFilter()>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a06000 	mov	r6, r0
   8:	ed2d8b06 	vpush	{d8-d10}
   c:	e2865a0f 	add	r5, r6, #61440	; 0xf000
  10:	ebfffffe 	bl	0 <vex::RoboticArm::initializeComplimentaryFilter()>
  14:	e59f40cc 	ldr	r4, [pc, #204]	; e8 <vex::RoboticArm::initializeComplimentaryFilter()+0xe8>
  18:	eeb28b08 	vmov.f64	d8, #40	; 0x41400000  12.0
  1c:	ed9fab2d 	vldr	d10, [pc, #180]	; d8 <vex::RoboticArm::initializeComplimentaryFilter()+0xd8>
  20:	ec410b19 	vmov	d9, r0, r1
  24:	e5950b90 	ldr	r0, [r5, #2960]	; 0xb90
  28:	e3a01000 	mov	r1, #0
  2c:	ebfffffe 	bl	0 <vex::motor::position(vex::rotationUnits)>
  30:	eddf1b2a 	vldr	d17, [pc, #168]	; e0 <vex::RoboticArm::initializeComplimentaryFilter()+0xe0>
  34:	ec410b30 	vmov	d16, r0, r1
  38:	e1a00006 	mov	r0, r6
  3c:	ee600b88 	vmul.f64	d16, d16, d8
  40:	eec00ba1 	vdiv.f64	d16, d16, d17
  44:	ee399b20 	vadd.f64	d9, d9, d16
  48:	ed849b00 	vstr	d9, [r4]
  4c:	ebfffffe 	bl	0 <vex::RoboticArm::initializeComplimentaryFilter()>
  50:	ec410b19 	vmov	d9, r0, r1
  54:	e5950b94 	ldr	r0, [r5, #2964]	; 0xb94
  58:	e3a01000 	mov	r1, #0
  5c:	ebfffffe 	bl	0 <vex::motor::position(vex::rotationUnits)>
  60:	ec410b30 	vmov	d16, r0, r1
  64:	e1a00006 	mov	r0, r6
  68:	ee600b88 	vmul.f64	d16, d16, d8
  6c:	eec00b8a 	vdiv.f64	d16, d16, d10
  70:	ee399b60 	vsub.f64	d9, d9, d16
  74:	ed849b02 	vstr	d9, [r4, #8]
  78:	ebfffffe 	bl	0 <vex::RoboticArm::initializeComplimentaryFilter()>
  7c:	ec410b19 	vmov	d9, r0, r1
  80:	e5950b98 	ldr	r0, [r5, #2968]	; 0xb98
  84:	e3a01000 	mov	r1, #0
  88:	ebfffffe 	bl	0 <vex::motor::position(vex::rotationUnits)>
  8c:	ec410b30 	vmov	d16, r0, r1
  90:	e1a00006 	mov	r0, r6
  94:	ee600b88 	vmul.f64	d16, d16, d8
  98:	eec00b8a 	vdiv.f64	d16, d16, d10
  9c:	ee399b20 	vadd.f64	d9, d9, d16
  a0:	ed849b04 	vstr	d9, [r4, #16]
  a4:	ebfffffe 	bl	0 <vex::RoboticArm::initializeComplimentaryFilter()>
  a8:	ec410b19 	vmov	d9, r0, r1
  ac:	e5950b9c 	ldr	r0, [r5, #2972]	; 0xb9c
  b0:	e3a01000 	mov	r1, #0
  b4:	ebfffffe 	bl	0 <vex::motor::position(vex::rotationUnits)>
  b8:	ec410b30 	vmov	d16, r0, r1
  bc:	ee208b88 	vmul.f64	d8, d16, d8
  c0:	ee888b0a 	vdiv.f64	d8, d8, d10
  c4:	ee398b48 	vsub.f64	d8, d9, d8
  c8:	ed848b06 	vstr	d8, [r4, #24]
  cc:	ecbd8b06 	vpop	{d8-d10}
  d0:	e8bd8070 	pop	{r4, r5, r6, pc}
  d4:	e320f000 	nop	{0}
  d8:	00000000 	andeq	r0, r0, r0
  dc:	40418000 	submi	r8, r1, r0
  e0:	00000000 	andeq	r0, r0, r0
  e4:	40550000 	subsmi	r0, r5, r0
  e8:	00000000 	andeq	r0, r0, r0

Disassembly of section .text._ZN3vex10RoboticArm25positionProfileLoopLinearEv:

00000000 <vex::RoboticArm::positionProfileLoopLinear()>:
   0:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
   4:	e280bcfa 	add	fp, r0, #64000	; 0xfa00
   8:	ed2d8b0e 	vpush	{d8-d14}
   c:	e2809cfa 	add	r9, r0, #64000	; 0xfa00
  10:	e28bb070 	add	fp, fp, #112	; 0x70
  14:	e2899080 	add	r9, r9, #128	; 0x80
  18:	e1a04000 	mov	r4, r0
  1c:	e2847cfa 	add	r7, r4, #64000	; 0xfa00
  20:	e28770b0 	add	r7, r7, #176	; 0xb0
  24:	ed9bcb00 	vldr	d12, [fp]
  28:	e24dd044 	sub	sp, sp, #68	; 0x44
  2c:	e284acfa 	add	sl, r4, #64000	; 0xfa00
  30:	e28aa0c0 	add	sl, sl, #192	; 0xc0
  34:	e2846cfa 	add	r6, r4, #64000	; 0xfa00
  38:	ed19db02 	vldr	d13, [r9, #-8]
  3c:	ebfffffe 	bl	0 <vex::RoboticArm::positionProfileLoopLinear()>
  40:	e1a00004 	mov	r0, r4
  44:	e28660a0 	add	r6, r6, #160	; 0xa0
  48:	ebfffffe 	bl	0 <vex::RoboticArm::positionProfileLoopLinear()>
  4c:	e1a00004 	mov	r0, r4
  50:	ebfffffe 	bl	0 <vex::RoboticArm::positionProfileLoopLinear()>
  54:	e14720d8 	ldrd	r2, [r7, #-8]
  58:	e1a00004 	mov	r0, r4
  5c:	e1cd20f0 	strd	r2, [sp]
  60:	e1c720d0 	ldrd	r2, [r7]
  64:	e1cd20f8 	strd	r2, [sp, #8]
  68:	e14a20d8 	ldrd	r2, [sl, #-8]
  6c:	e1cd21f0 	strd	r2, [sp, #16]
  70:	e2843cfa 	add	r3, r4, #64000	; 0xfa00
  74:	e2833050 	add	r3, r3, #80	; 0x50
  78:	e58d3018 	str	r3, [sp, #24]
  7c:	e1c620d0 	ldrd	r2, [r6]
  80:	ebfffffe 	bl	0 <vex::RoboticArm::positionProfileLoopLinear()>
  84:	e2845a0f 	add	r5, r4, #61440	; 0xf000
  88:	e2848cfa 	add	r8, r4, #64000	; 0xfa00
  8c:	e2888090 	add	r8, r8, #144	; 0x90
  90:	e5953af0 	ldr	r3, [r5, #2800]	; 0xaf0
  94:	e3130001 	tst	r3, #1
  98:	0a00000a 	beq	c8 <vex::RoboticArm::positionProfileLoopLinear()+0xc8>
  9c:	e2842cfb 	add	r2, r4, #64256	; 0xfb00
  a0:	e3c33001 	bic	r3, r3, #1
  a4:	e14200d8 	ldrd	r0, [r2, #-8]
  a8:	e1c900f0 	strd	r0, [r9]
  ac:	e1c200d0 	ldrd	r0, [r2]
  b0:	e14800f8 	strd	r0, [r8, #-8]
  b4:	e1c200d8 	ldrd	r0, [r2, #8]
  b8:	e1c800f0 	strd	r0, [r8]
  bc:	e1c201d0 	ldrd	r0, [r2, #16]
  c0:	e14600f8 	strd	r0, [r6, #-8]
  c4:	e5853af0 	str	r3, [r5, #2800]	; 0xaf0
  c8:	e5953af0 	ldr	r3, [r5, #2800]	; 0xaf0
  cc:	e3130004 	tst	r3, #4
  d0:	13c33004 	bicne	r3, r3, #4
  d4:	1d9bcb00 	vldrne	d12, [fp]
  d8:	1d19db02 	vldrne	d13, [r9, #-8]
  dc:	15853af0 	strne	r3, [r5, #2800]	; 0xaf0
  e0:	e5953af0 	ldr	r3, [r5, #2800]	; 0xaf0
  e4:	e3130002 	tst	r3, #2
  e8:	0a000006 	beq	108 <vex::RoboticArm::positionProfileLoopLinear()+0x108>
  ec:	e1a00004 	mov	r0, r4
  f0:	e5951ae8 	ldr	r1, [r5, #2792]	; 0xae8
  f4:	e5952aec 	ldr	r2, [r5, #2796]	; 0xaec
  f8:	ebfffffe 	bl	0 <vex::RoboticArm::positionProfileLoopLinear()>
  fc:	e5953af0 	ldr	r3, [r5, #2800]	; 0xaf0
 100:	e3c33002 	bic	r3, r3, #2
 104:	e5853af0 	str	r3, [r5, #2800]	; 0xaf0
 108:	edda0b00 	vldr	d16, [sl]
 10c:	e2843cfa 	add	r3, r4, #64000	; 0xfa00
 110:	e28d5020 	add	r5, sp, #32
 114:	ed99ab00 	vldr	d10, [r9]
 118:	ed189b02 	vldr	d9, [r8, #-8]
 11c:	ee3aab60 	vsub.f64	d10, d10, d16
 120:	edd30b32 	vldr	d16, [r3, #200]	; 0xc8
 124:	ed988b00 	vldr	d8, [r8]
 128:	ed16eb02 	vldr	d14, [r6, #-8]
 12c:	ee399b60 	vsub.f64	d9, d9, d16
 130:	edd30b34 	vldr	d16, [r3, #208]	; 0xd0
 134:	e2843cfa 	add	r3, r4, #64000	; 0xfa00
 138:	ed9fbb2e 	vldr	d11, [pc, #184]	; 1f8 <vex::RoboticArm::positionProfileLoopLinear()+0x1f8>
 13c:	ee388b60 	vsub.f64	d8, d8, d16
 140:	edd30b36 	vldr	d16, [r3, #216]	; 0xd8
 144:	ee3eeb60 	vsub.f64	d14, d14, d16
 148:	ee690b09 	vmul.f64	d16, d9, d9
 14c:	ee4a0b0a 	vmla.f64	d16, d10, d10
 150:	ee480b08 	vmla.f64	d16, d8, d8
 154:	ec510b30 	vmov	r0, r1, d16
 158:	ebfffffe 	bl	0 <sqrt>
 15c:	eef01bce 	vabs.f64	d17, d14
 160:	eec11b8d 	vdiv.f64	d17, d17, d13
 164:	ec410b30 	vmov	d16, r0, r1
 168:	e1a00004 	mov	r0, r4
 16c:	eec00b8c 	vdiv.f64	d16, d16, d12
 170:	eef41b60 	vcmp.f64	d17, d16
 174:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 178:	cef00b61 	vmovgt.f64	d16, d17
 17c:	eef40b4b 	vcmp.f64	d16, d11
 180:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 184:	4ef00b4b 	vmovmi.f64	d16, d11
 188:	ee899b20 	vdiv.f64	d9, d9, d16
 18c:	ee888b20 	vdiv.f64	d8, d8, d16
 190:	ed8d9b00 	vstr	d9, [sp]
 194:	ee8eeb20 	vdiv.f64	d14, d14, d16
 198:	ed8d8b02 	vstr	d8, [sp, #8]
 19c:	eeca0b20 	vdiv.f64	d16, d10, d16
 1a0:	ed8deb04 	vstr	d14, [sp, #16]
 1a4:	ec532b30 	vmov	r2, r3, d16
 1a8:	ebfffffe 	bl	0 <vex::RoboticArm::positionProfileLoopLinear()>
 1ac:	e14720d8 	ldrd	r2, [r7, #-8]
 1b0:	e1a00004 	mov	r0, r4
 1b4:	e1cd20f0 	strd	r2, [sp]
 1b8:	e1c720d0 	ldrd	r2, [r7]
 1bc:	e1cd20f8 	strd	r2, [sp, #8]
 1c0:	e14a20d8 	ldrd	r2, [sl, #-8]
 1c4:	e58d5018 	str	r5, [sp, #24]
 1c8:	e1cd21f0 	strd	r2, [sp, #16]
 1cc:	e1c620d0 	ldrd	r2, [r6]
 1d0:	ebfffffe 	bl	0 <vex::RoboticArm::positionProfileLoopLinear()>
 1d4:	e1a00004 	mov	r0, r4
 1d8:	e1a01005 	mov	r1, r5
 1dc:	ebfffffe 	bl	0 <vex::RoboticArm::positionProfileLoopLinear()>
 1e0:	e59f3018 	ldr	r3, [pc, #24]	; 200 <vex::RoboticArm::positionProfileLoopLinear()+0x200>
 1e4:	ec510b1b 	vmov	r0, r1, d11
 1e8:	e5932000 	ldr	r2, [r3]
 1ec:	ebfffffe 	bl	0 <vex::wait(double, vex::timeUnits)>
 1f0:	eaffffa3 	b	84 <vex::RoboticArm::positionProfileLoopLinear()+0x84>
 1f4:	e320f000 	nop	{0}
 1f8:	47ae147b 			; <UNDEFINED> instruction: 0x47ae147b
 1fc:	3f847ae1 	svccc	0x00847ae1
 200:	00000000 	andeq	r0, r0, r0

Disassembly of section .text._ZN3vex10RoboticArm24positionProfileLoopJointEv:

00000000 <vex::RoboticArm::positionProfileLoopJoint()>:
   0:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
   4:	e2809cfa 	add	r9, r0, #64000	; 0xfa00
   8:	ed2d8b04 	vpush	{d8-d9}
   c:	e2899080 	add	r9, r9, #128	; 0x80
  10:	e1a04000 	mov	r4, r0
  14:	e2846cfa 	add	r6, r4, #64000	; 0xfa00
  18:	e28660b0 	add	r6, r6, #176	; 0xb0
  1c:	e284acfa 	add	sl, r4, #64000	; 0xfa00
  20:	ed198b02 	vldr	d8, [r9, #-8]
  24:	e28aa0c0 	add	sl, sl, #192	; 0xc0
  28:	e24dd04c 	sub	sp, sp, #76	; 0x4c
  2c:	e2847cfa 	add	r7, r4, #64000	; 0xfa00
  30:	ebfffffe 	bl	0 <vex::RoboticArm::positionProfileLoopJoint()>
  34:	e1a00004 	mov	r0, r4
  38:	ebfffffe 	bl	0 <vex::RoboticArm::positionProfileLoopJoint()>
  3c:	e1a00004 	mov	r0, r4
  40:	ebfffffe 	bl	0 <vex::RoboticArm::positionProfileLoopJoint()>
  44:	e14620d8 	ldrd	r2, [r6, #-8]
  48:	e28770a0 	add	r7, r7, #160	; 0xa0
  4c:	e1a00004 	mov	r0, r4
  50:	e1cd20f0 	strd	r2, [sp]
  54:	e1c620d0 	ldrd	r2, [r6]
  58:	e1cd20f8 	strd	r2, [sp, #8]
  5c:	e14a20d8 	ldrd	r2, [sl, #-8]
  60:	e1cd21f0 	strd	r2, [sp, #16]
  64:	e2843cfa 	add	r3, r4, #64000	; 0xfa00
  68:	e2833050 	add	r3, r3, #80	; 0x50
  6c:	e58d3018 	str	r3, [sp, #24]
  70:	e1c720d0 	ldrd	r2, [r7]
  74:	ebfffffe 	bl	0 <vex::RoboticArm::positionProfileLoopJoint()>
  78:	e2845a0f 	add	r5, r4, #61440	; 0xf000
  7c:	e2848cfa 	add	r8, r4, #64000	; 0xfa00
  80:	e28db028 	add	fp, sp, #40	; 0x28
  84:	e2888090 	add	r8, r8, #144	; 0x90
  88:	e5953af0 	ldr	r3, [r5, #2800]	; 0xaf0
  8c:	e3130001 	tst	r3, #1
  90:	0a000019 	beq	fc <vex::RoboticArm::positionProfileLoopJoint()+0xfc>
  94:	e2843cfb 	add	r3, r4, #64256	; 0xfb00
  98:	ed530b02 	vldr	d16, [r3, #-8]
  9c:	e1c320d0 	ldrd	r2, [r3]
  a0:	e1cd20f0 	strd	r2, [sp]
  a4:	e2843cfb 	add	r3, r4, #64256	; 0xfb00
  a8:	e2833010 	add	r3, r3, #16
  ac:	edcd0b08 	vstr	d16, [sp, #32]
  b0:	e14300d8 	ldrd	r0, [r3, #-8]
  b4:	e1cd00f8 	strd	r0, [sp, #8]
  b8:	e1a00004 	mov	r0, r4
  bc:	e1c320d0 	ldrd	r2, [r3]
  c0:	e58db018 	str	fp, [sp, #24]
  c4:	e1cd21f0 	strd	r2, [sp, #16]
  c8:	ec532b30 	vmov	r2, r3, d16
  cc:	ebfffffe 	bl	0 <vex::RoboticArm::positionProfileLoopJoint()>
  d0:	e1cd22d8 	ldrd	r2, [sp, #40]	; 0x28
  d4:	e1c920f0 	strd	r2, [r9]
  d8:	e1cd23d0 	ldrd	r2, [sp, #48]	; 0x30
  dc:	e14820f8 	strd	r2, [r8, #-8]
  e0:	e1cd23d8 	ldrd	r2, [sp, #56]	; 0x38
  e4:	e1c820f0 	strd	r2, [r8]
  e8:	e1cd24d0 	ldrd	r2, [sp, #64]	; 0x40
  ec:	e14720f8 	strd	r2, [r7, #-8]
  f0:	e5953af0 	ldr	r3, [r5, #2800]	; 0xaf0
  f4:	e3c33001 	bic	r3, r3, #1
  f8:	e5853af0 	str	r3, [r5, #2800]	; 0xaf0
  fc:	e5953af0 	ldr	r3, [r5, #2800]	; 0xaf0
 100:	e3130004 	tst	r3, #4
 104:	13c33004 	bicne	r3, r3, #4
 108:	1d198b02 	vldrne	d8, [r9, #-8]
 10c:	15853af0 	strne	r3, [r5, #2800]	; 0xaf0
 110:	e5953af0 	ldr	r3, [r5, #2800]	; 0xaf0
 114:	e3130002 	tst	r3, #2
 118:	0a000006 	beq	138 <vex::RoboticArm::positionProfileLoopJoint()+0x138>
 11c:	e1a00004 	mov	r0, r4
 120:	e5951ae8 	ldr	r1, [r5, #2792]	; 0xae8
 124:	e5952aec 	ldr	r2, [r5, #2796]	; 0xaec
 128:	ebfffffe 	bl	0 <vex::RoboticArm::positionProfileLoopJoint()>
 12c:	e5953af0 	ldr	r3, [r5, #2800]	; 0xaf0
 130:	e3c33002 	bic	r3, r3, #2
 134:	e5853af0 	str	r3, [r5, #2800]	; 0xaf0
 138:	edda0b00 	vldr	d16, [sl]
 13c:	e2843cfa 	add	r3, r4, #64000	; 0xfa00
 140:	e1a00004 	mov	r0, r4
 144:	edd94b00 	vldr	d20, [r9]
 148:	edd33b32 	vldr	d19, [r3, #200]	; 0xc8
 14c:	ee744be0 	vsub.f64	d20, d20, d16
 150:	ed580b02 	vldr	d16, [r8, #-8]
 154:	edd32b34 	vldr	d18, [r3, #208]	; 0xd0
 158:	e2843cfa 	add	r3, r4, #64000	; 0xfa00
 15c:	edd31b36 	vldr	d17, [r3, #216]	; 0xd8
 160:	ee703be3 	vsub.f64	d19, d16, d19
 164:	edd80b00 	vldr	d16, [r8]
 168:	ed9f9b30 	vldr	d9, [pc, #192]	; 230 <vex::RoboticArm::positionProfileLoopJoint()+0x230>
 16c:	ee702be2 	vsub.f64	d18, d16, d18
 170:	ed570b02 	vldr	d16, [r7, #-8]
 174:	eef05be3 	vabs.f64	d21, d19
 178:	ee701be1 	vsub.f64	d17, d16, d17
 17c:	eef00be4 	vabs.f64	d16, d20
 180:	eec55b88 	vdiv.f64	d21, d21, d8
 184:	eec00b88 	vdiv.f64	d16, d16, d8
 188:	eef45b60 	vcmp.f64	d21, d16
 18c:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 190:	cef00b65 	vmovgt.f64	d16, d21
 194:	eef05be2 	vabs.f64	d21, d18
 198:	eec55b88 	vdiv.f64	d21, d21, d8
 19c:	eef45b60 	vcmp.f64	d21, d16
 1a0:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 1a4:	cef00b65 	vmovgt.f64	d16, d21
 1a8:	eef05be1 	vabs.f64	d21, d17
 1ac:	eec55b88 	vdiv.f64	d21, d21, d8
 1b0:	eef45b60 	vcmp.f64	d21, d16
 1b4:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 1b8:	cef00b65 	vmovgt.f64	d16, d21
 1bc:	eef40b49 	vcmp.f64	d16, d9
 1c0:	eef1fa10 	vmrs	APSR_nzcv, fpscr
 1c4:	4ef00b49 	vmovmi.f64	d16, d9
 1c8:	eec33ba0 	vdiv.f64	d19, d19, d16
 1cc:	eec22ba0 	vdiv.f64	d18, d18, d16
 1d0:	edcd3b00 	vstr	d19, [sp]
 1d4:	eec11ba0 	vdiv.f64	d17, d17, d16
 1d8:	edcd2b02 	vstr	d18, [sp, #8]
 1dc:	eec40ba0 	vdiv.f64	d16, d20, d16
 1e0:	edcd1b04 	vstr	d17, [sp, #16]
 1e4:	ec532b30 	vmov	r2, r3, d16
 1e8:	ebfffffe 	bl	0 <vex::RoboticArm::positionProfileLoopJoint()>
 1ec:	e1c720d0 	ldrd	r2, [r7]
 1f0:	e1a00004 	mov	r0, r4
 1f4:	e1a0100b 	mov	r1, fp
 1f8:	e1cd22f8 	strd	r2, [sp, #40]	; 0x28
 1fc:	e14620d8 	ldrd	r2, [r6, #-8]
 200:	e1cd23f0 	strd	r2, [sp, #48]	; 0x30
 204:	e1c620d0 	ldrd	r2, [r6]
 208:	e1cd23f8 	strd	r2, [sp, #56]	; 0x38
 20c:	e14a20d8 	ldrd	r2, [sl, #-8]
 210:	e1cd24f0 	strd	r2, [sp, #64]	; 0x40
 214:	ebfffffe 	bl	0 <vex::RoboticArm::positionProfileLoopJoint()>
 218:	e59f3018 	ldr	r3, [pc, #24]	; 238 <vex::RoboticArm::positionProfileLoopJoint()+0x238>
 21c:	ec510b19 	vmov	r0, r1, d9
 220:	e5932000 	ldr	r2, [r3]
 224:	ebfffffe 	bl	0 <vex::wait(double, vex::timeUnits)>
 228:	eaffff92 	b	78 <vex::RoboticArm::positionProfileLoopJoint()+0x78>
 22c:	e320f000 	nop	{0}
 230:	47ae147b 			; <UNDEFINED> instruction: 0x47ae147b
 234:	3f847ae1 	svccc	0x00847ae1
 238:	00000000 	andeq	r0, r0, r0

Disassembly of section .text._ZN3vex10RoboticArm18profilerTaskHelperEPv:

00000000 <vex::RoboticArm::profilerTaskHelper(void*)>:
   0:	e92d4008 	push	{r3, lr}
   4:	e2803a0f 	add	r3, r0, #61440	; 0xf000
   8:	e3a02001 	mov	r2, #1
   c:	e5c32bdb 	strb	r2, [r3, #3035]	; 0xbdb
  10:	e5d33bd8 	ldrb	r3, [r3, #3032]	; 0xbd8
  14:	e3530000 	cmp	r3, #0
  18:	0a000000 	beq	20 <vex::RoboticArm::profilerTaskHelper(void*)+0x20>
  1c:	ebfffffe 	bl	0 <vex::RoboticArm::profilerTaskHelper(void*)>
  20:	ebfffffe 	bl	0 <vex::RoboticArm::profilerTaskHelper(void*)>

Disassembly of section .text._ZN3vex10RoboticArm19checkMasteringValueEiiii:

00000000 <vex::RoboticArm::checkMasteringValue(int, int, int, int)>:
   0:	e92d4008 	push	{r3, lr}
   4:	e1a00001 	mov	r0, r1
   8:	e59de008 	ldr	lr, [sp, #8]
   c:	e151000e 	cmp	r1, lr
  10:	d3a01000 	movle	r1, #0
  14:	c3a01001 	movgt	r1, #1
  18:	e1500003 	cmp	r0, r3
  1c:	b3811001 	orrlt	r1, r1, #1
  20:	e3510000 	cmp	r1, #0
  24:	0a000003 	beq	38 <vex::RoboticArm::checkMasteringValue(int, int, int, int)+0x38>
  28:	e1a01002 	mov	r1, r2
  2c:	e1a02003 	mov	r2, r3
  30:	e1a0300e 	mov	r3, lr
  34:	ebfffffe 	bl	0 <vex::RoboticArm::checkMasteringValue(int, int, int, int)>
  38:	e3a00001 	mov	r0, #1
  3c:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text._ZN3vex10RoboticArm11setArmAngleEd:

00000000 <vex::RoboticArm::setArmAngle(double)>:
   0:	ec432b31 	vmov	d17, r2, r3
   4:	e2800cfb 	add	r0, r0, #64256	; 0xfb00
   8:	e28000c0 	add	r0, r0, #192	; 0xc0
   c:	eef51bc0 	vcmpe.f64	d17, #0.0
  10:	eef1fa10 	vmrs	APSR_nzcv, fpscr
  14:	43a02000 	movmi	r2, #0
  18:	43a03000 	movmi	r3, #0
  1c:	414020f8 	strdmi	r2, [r0, #-8]
  20:	412fff1e 	bxmi	lr
  24:	eddf0b05 	vldr	d16, [pc, #20]	; 40 <vex::RoboticArm::setArmAngle(double)+0x40>
  28:	eef41be0 	vcmpe.f64	d17, d16
  2c:	eef1fa10 	vmrs	APSR_nzcv, fpscr
  30:	def00b61 	vmovle.f64	d16, d17
  34:	ed400b02 	vstr	d16, [r0, #-8]
  38:	e12fff1e 	bx	lr
  3c:	e320f000 	nop	{0}
  40:	00000000 	andeq	r0, r0, r0
  44:	40568000 	subsmi	r8, r6, r0

Disassembly of section .text._ZN3vex10RoboticArm13getJointValueEi:

00000000 <vex::RoboticArm::getJointValue(int)>:
   0:	e2411001 	sub	r1, r1, #1
   4:	e3510003 	cmp	r1, #3
   8:	979ff101 	ldrls	pc, [pc, r1, lsl #2]
   c:	ea000010 	b	54 <vex::RoboticArm::getJointValue(int)+0x54>
  10:	00000020 	andeq	r0, r0, r0, lsr #32
  14:	0000002c 	andeq	r0, r0, ip, lsr #32
  18:	00000038 	andeq	r0, r0, r8, lsr r0
  1c:	00000044 	andeq	r0, r0, r4, asr #32
  20:	e2800a0f 	add	r0, r0, #61440	; 0xf000
  24:	e5900ba0 	ldr	r0, [r0, #2976]	; 0xba0
  28:	ea000007 	b	4c <vex::RoboticArm::getJointValue(int)+0x4c>
  2c:	e2800a0f 	add	r0, r0, #61440	; 0xf000
  30:	e5900ba4 	ldr	r0, [r0, #2980]	; 0xba4
  34:	ea000004 	b	4c <vex::RoboticArm::getJointValue(int)+0x4c>
  38:	e2800a0f 	add	r0, r0, #61440	; 0xf000
  3c:	e5900ba8 	ldr	r0, [r0, #2984]	; 0xba8
  40:	ea000001 	b	4c <vex::RoboticArm::getJointValue(int)+0x4c>
  44:	e2800a0f 	add	r0, r0, #61440	; 0xf000
  48:	e5900bac 	ldr	r0, [r0, #2988]	; 0xbac
  4c:	e3a01003 	mov	r1, #3
  50:	eafffffe 	b	0 <vex::pot::value(vex::analogUnits)>
  54:	e3a00000 	mov	r0, #0
  58:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex10RoboticArm15getAxisPositionENS_8axisTypeE:

00000000 <vex::RoboticArm::getAxisPosition(vex::axisType)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e24dd020 	sub	sp, sp, #32
   8:	e1a04001 	mov	r4, r1
   c:	e1a0100d 	mov	r1, sp
  10:	ebfffffe 	bl	0 <vex::RoboticArm::getAxisPosition(vex::axisType)>
  14:	e59f3040 	ldr	r3, [pc, #64]	; 5c <vex::RoboticArm::getAxisPosition(vex::axisType)+0x5c>
  18:	e5933000 	ldr	r3, [r3]
  1c:	e1540003 	cmp	r4, r3
  20:	01cd00d0 	ldrdeq	r0, [sp]
  24:	0a00000a 	beq	54 <vex::RoboticArm::getAxisPosition(vex::axisType)+0x54>
  28:	e59f3030 	ldr	r3, [pc, #48]	; 60 <vex::RoboticArm::getAxisPosition(vex::axisType)+0x60>
  2c:	e5933000 	ldr	r3, [r3]
  30:	e1540003 	cmp	r4, r3
  34:	01cd00d8 	ldrdeq	r0, [sp, #8]
  38:	0a000005 	beq	54 <vex::RoboticArm::getAxisPosition(vex::axisType)+0x54>
  3c:	e59f3020 	ldr	r3, [pc, #32]	; 64 <vex::RoboticArm::getAxisPosition(vex::axisType)+0x64>
  40:	e5933000 	ldr	r3, [r3]
  44:	e1540003 	cmp	r4, r3
  48:	01cd01d0 	ldrdeq	r0, [sp, #16]
  4c:	13a00000 	movne	r0, #0
  50:	13a01000 	movne	r1, #0
  54:	e28dd020 	add	sp, sp, #32
  58:	e8bd8010 	pop	{r4, pc}
	...

Disassembly of section .text._ZN3vex10RoboticArm19setRelativePositionEddd:

00000000 <vex::RoboticArm::setRelativePosition(double, double, double)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ed2d8b02 	vpush	{d8}
   c:	ec432b18 	vmov	d8, r2, r3
  10:	e24dd020 	sub	sp, sp, #32
  14:	e1a0100d 	mov	r1, sp
  18:	ebfffffe 	bl	0 <vex::RoboticArm::setRelativePosition(double, double, double)>
  1c:	eddd0b00 	vldr	d16, [sp]
  20:	e2843cfb 	add	r3, r4, #64256	; 0xfb00
  24:	e2840cfb 	add	r0, r4, #64256	; 0xfb00
  28:	eddd1b0c 	vldr	d17, [sp, #48]	; 0x30
  2c:	ee700bc8 	vsub.f64	d16, d16, d8
  30:	edc30b16 	vstr	d16, [r3, #88]	; 0x58
  34:	eddd0b02 	vldr	d16, [sp, #8]
  38:	ee700be1 	vsub.f64	d16, d16, d17
  3c:	eddd1b0e 	vldr	d17, [sp, #56]	; 0x38
  40:	edc30b18 	vstr	d16, [r3, #96]	; 0x60
  44:	eddd0b04 	vldr	d16, [sp, #16]
  48:	ee700be1 	vsub.f64	d16, d16, d17
  4c:	edc00b1a 	vstr	d16, [r0, #104]	; 0x68
  50:	e28dd020 	add	sp, sp, #32
  54:	ecbd8b02 	vpop	{d8}
  58:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex10RoboticArm18setLinearMoveSpeedEd:

00000000 <vex::RoboticArm::setLinearMoveSpeed(double)>:
   0:	e92d4037 	push	{r0, r1, r2, r4, r5, lr}
   4:	e2801a0f 	add	r1, r0, #61440	; 0xf000
   8:	e280ccfb 	add	ip, r0, #64256	; 0xfb00
   c:	e5d11bd8 	ldrb	r1, [r1, #3032]	; 0xbd8
  10:	e1cc2cf0 	strd	r2, [ip, #192]	; 0xc0
  14:	e3510000 	cmp	r1, #0
  18:	0a000003 	beq	2c <vex::RoboticArm::setLinearMoveSpeed(double)+0x2c>
  1c:	e59f5010 	ldr	r5, [pc, #16]	; 34 <vex::RoboticArm::setLinearMoveSpeed(double)+0x34>
  20:	e3a04000 	mov	r4, #0
  24:	e1cd40f0 	strd	r4, [sp]
  28:	ebfffffe 	bl	0 <vex::RoboticArm::setLinearMoveSpeed(double)>
  2c:	e28dd00c 	add	sp, sp, #12
  30:	e8bd8030 	pop	{r4, r5, pc}
  34:	40590000 	subsmi	r0, r9, r0

Disassembly of section .text._ZN3vex10RoboticArm17setJointMoveSpeedEd:

00000000 <vex::RoboticArm::setJointMoveSpeed(double)>:
   0:	e92d4007 	push	{r0, r1, r2, lr}
   4:	e2801a0f 	add	r1, r0, #61440	; 0xf000
   8:	e280ccfb 	add	ip, r0, #64256	; 0xfb00
   c:	e5d11bd8 	ldrb	r1, [r1, #3032]	; 0xbd8
  10:	e1cc2cf8 	strd	r2, [ip, #200]	; 0xc8
  14:	e3510000 	cmp	r1, #0
  18:	1a000003 	bne	2c <vex::RoboticArm::setJointMoveSpeed(double)+0x2c>
  1c:	e1cd20f0 	strd	r2, [sp]
  20:	e3a02000 	mov	r2, #0
  24:	e59f3008 	ldr	r3, [pc, #8]	; 34 <vex::RoboticArm::setJointMoveSpeed(double)+0x34>
  28:	ebfffffe 	bl	0 <vex::RoboticArm::setJointMoveSpeed(double)>
  2c:	e28dd00c 	add	sp, sp, #12
  30:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)
  34:	40240000 	eormi	r0, r4, r0

Disassembly of section .text._ZN3vex10RoboticArm17startProfilerTaskEv:

00000000 <vex::RoboticArm::startProfilerTask()>:
   0:	e92d40f0 	push	{r4, r5, r6, r7, lr}
   4:	e2807a0f 	add	r7, r0, #61440	; 0xf000
   8:	e24dd014 	sub	sp, sp, #20
   c:	e5d73bdc 	ldrb	r3, [r7, #3036]	; 0xbdc
  10:	e3530000 	cmp	r3, #0
  14:	1a00001d 	bne	90 <vex::RoboticArm::startProfilerTask()+0x90>
  18:	e2805cfb 	add	r5, r0, #64256	; 0xfb00
  1c:	e28d6008 	add	r6, sp, #8
  20:	e28550d0 	add	r5, r5, #208	; 0xd0
  24:	e1a04000 	mov	r4, r0
  28:	e1a00005 	mov	r0, r5
  2c:	ebfffffe 	bl	0 <vex::task::stop()>
  30:	e1a02004 	mov	r2, r4
  34:	e59f105c 	ldr	r1, [pc, #92]	; 98 <vex::RoboticArm::startProfilerTask()+0x98>
  38:	e1a00006 	mov	r0, r6
  3c:	ebfffffe 	bl	0 <vex::task::task(int (*)(void*), void*)>
  40:	e8960003 	ldm	r6, {r0, r1}
  44:	e2873ebd 	add	r3, r7, #3024	; 0xbd0
  48:	e8830003 	stm	r3, {r0, r1}
  4c:	e1a00006 	mov	r0, r6
  50:	ebfffffe 	bl	0 <vex::task::~task()>
  54:	e5d73bd8 	ldrb	r3, [r7, #3032]	; 0xbd8
  58:	e3530000 	cmp	r3, #0
  5c:	12843cfb 	addne	r3, r4, #64256	; 0xfb00
  60:	014520d8 	ldrdeq	r2, [r5, #-8]
  64:	128330c0 	addne	r3, r3, #192	; 0xc0
  68:	159f102c 	ldrne	r1, [pc, #44]	; 9c <vex::RoboticArm::startProfilerTask()+0x9c>
  6c:	13a00000 	movne	r0, #0
  70:	01a00004 	moveq	r0, r4
  74:	11cd00f0 	strdne	r0, [sp]
  78:	11a00004 	movne	r0, r4
  7c:	01cd20f0 	strdeq	r2, [sp]
  80:	03a02000 	moveq	r2, #0
  84:	11c320d0 	ldrdne	r2, [r3]
  88:	059f3010 	ldreq	r3, [pc, #16]	; a0 <vex::RoboticArm::startProfilerTask()+0xa0>
  8c:	ebfffffe 	bl	0 <vex::RoboticArm::startProfilerTask()>
  90:	e28dd014 	add	sp, sp, #20
  94:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
  98:	00000000 	andeq	r0, r0, r0
  9c:	40590000 	subsmi	r0, r9, r0
  a0:	40240000 	eormi	r0, r4, r0

Disassembly of section .text._ZN3vex10RoboticArm20moveToPositionLinearEddd:

00000000 <vex::RoboticArm::moveToPositionLinear(double, double, double)>:
   0:	e92d40d0 	push	{r4, r6, r7, lr}
   4:	e1a07003 	mov	r7, r3
   8:	e2803a0f 	add	r3, r0, #61440	; 0xf000
   c:	e1a06002 	mov	r6, r2
  10:	e24dd018 	sub	sp, sp, #24
  14:	e5d32bb0 	ldrb	r2, [r3, #2992]	; 0xbb0
  18:	e3520000 	cmp	r2, #0
  1c:	0a000019 	beq	88 <vex::RoboticArm::moveToPositionLinear(double, double, double)+0x88>
  20:	e5d32bb1 	ldrb	r2, [r3, #2993]	; 0xbb1
  24:	e3520000 	cmp	r2, #0
  28:	1a000016 	bne	88 <vex::RoboticArm::moveToPositionLinear(double, double, double)+0x88>
  2c:	e5d32bd8 	ldrb	r2, [r3, #3032]	; 0xbd8
  30:	e1a04000 	mov	r4, r0
  34:	e3520000 	cmp	r2, #0
  38:	0a000002 	beq	48 <vex::RoboticArm::moveToPositionLinear(double, double, double)+0x48>
  3c:	e5d32bdb 	ldrb	r2, [r3, #3035]	; 0xbdb
  40:	e3520000 	cmp	r2, #0
  44:	1a000003 	bne	58 <vex::RoboticArm::moveToPositionLinear(double, double, double)+0x58>
  48:	e3a02001 	mov	r2, #1
  4c:	e1a00004 	mov	r0, r4
  50:	e5c32bd8 	strb	r2, [r3, #3032]	; 0xbd8
  54:	ebfffffe 	bl	0 <vex::RoboticArm::moveToPositionLinear(double, double, double)>
  58:	e1cd22d8 	ldrd	r2, [sp, #40]	; 0x28
  5c:	e1a00004 	mov	r0, r4
  60:	e1cd20f0 	strd	r2, [sp]
  64:	e1cd23d0 	ldrd	r2, [sp, #48]	; 0x30
  68:	e1cd20f8 	strd	r2, [sp, #8]
  6c:	e2843cfb 	add	r3, r4, #64256	; 0xfb00
  70:	e28330c0 	add	r3, r3, #192	; 0xc0
  74:	e14320d8 	ldrd	r2, [r3, #-8]
  78:	e1cd21f0 	strd	r2, [sp, #16]
  7c:	e1a02006 	mov	r2, r6
  80:	e1a03007 	mov	r3, r7
  84:	ebfffffe 	bl	0 <vex::RoboticArm::moveToPositionLinear(double, double, double)>
  88:	e28dd018 	add	sp, sp, #24
  8c:	e8bd80d0 	pop	{r4, r6, r7, pc}

Disassembly of section .text._ZN3vex10RoboticArm20moveToPositionLinearEdddd:

00000000 <vex::RoboticArm::moveToPositionLinear(double, double, double, double)>:
   0:	e92d4fd0 	push	{r4, r6, r7, r8, r9, sl, fp, lr}
   4:	e1a07003 	mov	r7, r3
   8:	e2803a0f 	add	r3, r0, #61440	; 0xf000
   c:	e1a06002 	mov	r6, r2
  10:	ed2d8b02 	vpush	{d8}
  14:	e5d32bb0 	ldrb	r2, [r3, #2992]	; 0xbb0
  18:	e1cda3d0 	ldrd	sl, [sp, #48]	; 0x30
  1c:	e3520000 	cmp	r2, #0
  20:	ed9d8b0a 	vldr	d8, [sp, #40]	; 0x28
  24:	e1cd83d8 	ldrd	r8, [sp, #56]	; 0x38
  28:	0a00000e 	beq	68 <vex::RoboticArm::moveToPositionLinear(double, double, double, double)+0x68>
  2c:	e5d33bb1 	ldrb	r3, [r3, #2993]	; 0xbb1
  30:	e3530000 	cmp	r3, #0
  34:	1a00000b 	bne	68 <vex::RoboticArm::moveToPositionLinear(double, double, double, double)+0x68>
  38:	e1a02008 	mov	r2, r8
  3c:	e1a03009 	mov	r3, r9
  40:	e1a04000 	mov	r4, r0
  44:	ebfffffe 	bl	0 <vex::RoboticArm::moveToPositionLinear(double, double, double, double)>
  48:	e1cda3f0 	strd	sl, [sp, #48]	; 0x30
  4c:	e1a00004 	mov	r0, r4
  50:	ed8d8b0a 	vstr	d8, [sp, #40]	; 0x28
  54:	e1a02006 	mov	r2, r6
  58:	ecbd8b02 	vpop	{d8}
  5c:	e1a03007 	mov	r3, r7
  60:	e8bd4fd0 	pop	{r4, r6, r7, r8, r9, sl, fp, lr}
  64:	eafffffe 	b	0 <vex::RoboticArm::moveToPositionLinear(double, double, double, double)>
  68:	ecbd8b02 	vpop	{d8}
  6c:	e8bd8fd0 	pop	{r4, r6, r7, r8, r9, sl, fp, pc}

Disassembly of section .text._ZN3vex10RoboticArm19moveToPositionJointEddd:

00000000 <vex::RoboticArm::moveToPositionJoint(double, double, double)>:
   0:	e92d40d0 	push	{r4, r6, r7, lr}
   4:	e1a07003 	mov	r7, r3
   8:	e2803a0f 	add	r3, r0, #61440	; 0xf000
   c:	e1a06002 	mov	r6, r2
  10:	e24dd018 	sub	sp, sp, #24
  14:	e5d32bb0 	ldrb	r2, [r3, #2992]	; 0xbb0
  18:	e3520000 	cmp	r2, #0
  1c:	0a000019 	beq	88 <vex::RoboticArm::moveToPositionJoint(double, double, double)+0x88>
  20:	e5d32bb1 	ldrb	r2, [r3, #2993]	; 0xbb1
  24:	e3520000 	cmp	r2, #0
  28:	1a000016 	bne	88 <vex::RoboticArm::moveToPositionJoint(double, double, double)+0x88>
  2c:	e5d32bd8 	ldrb	r2, [r3, #3032]	; 0xbd8
  30:	e1a04000 	mov	r4, r0
  34:	e3520000 	cmp	r2, #0
  38:	1a000002 	bne	48 <vex::RoboticArm::moveToPositionJoint(double, double, double)+0x48>
  3c:	e5d32bdb 	ldrb	r2, [r3, #3035]	; 0xbdb
  40:	e3520000 	cmp	r2, #0
  44:	1a000003 	bne	58 <vex::RoboticArm::moveToPositionJoint(double, double, double)+0x58>
  48:	e3a02000 	mov	r2, #0
  4c:	e1a00004 	mov	r0, r4
  50:	e5c32bd8 	strb	r2, [r3, #3032]	; 0xbd8
  54:	ebfffffe 	bl	0 <vex::RoboticArm::moveToPositionJoint(double, double, double)>
  58:	e1cd22d8 	ldrd	r2, [sp, #40]	; 0x28
  5c:	e1a00004 	mov	r0, r4
  60:	e1cd20f0 	strd	r2, [sp]
  64:	e1cd23d0 	ldrd	r2, [sp, #48]	; 0x30
  68:	e1cd20f8 	strd	r2, [sp, #8]
  6c:	e2843cfb 	add	r3, r4, #64256	; 0xfb00
  70:	e28330c0 	add	r3, r3, #192	; 0xc0
  74:	e14320d8 	ldrd	r2, [r3, #-8]
  78:	e1cd21f0 	strd	r2, [sp, #16]
  7c:	e1a02006 	mov	r2, r6
  80:	e1a03007 	mov	r3, r7
  84:	ebfffffe 	bl	0 <vex::RoboticArm::moveToPositionJoint(double, double, double)>
  88:	e28dd018 	add	sp, sp, #24
  8c:	e8bd80d0 	pop	{r4, r6, r7, pc}

Disassembly of section .text._ZN3vex10RoboticArm19moveToPositionJointEdddd:

00000000 <vex::RoboticArm::moveToPositionJoint(double, double, double, double)>:
   0:	e92d4fd0 	push	{r4, r6, r7, r8, r9, sl, fp, lr}
   4:	e1a07003 	mov	r7, r3
   8:	e2803a0f 	add	r3, r0, #61440	; 0xf000
   c:	e1a06002 	mov	r6, r2
  10:	ed2d8b02 	vpush	{d8}
  14:	e5d32bb0 	ldrb	r2, [r3, #2992]	; 0xbb0
  18:	e1cda3d0 	ldrd	sl, [sp, #48]	; 0x30
  1c:	e3520000 	cmp	r2, #0
  20:	ed9d8b0a 	vldr	d8, [sp, #40]	; 0x28
  24:	e1cd83d8 	ldrd	r8, [sp, #56]	; 0x38
  28:	0a00000e 	beq	68 <vex::RoboticArm::moveToPositionJoint(double, double, double, double)+0x68>
  2c:	e5d33bb1 	ldrb	r3, [r3, #2993]	; 0xbb1
  30:	e3530000 	cmp	r3, #0
  34:	1a00000b 	bne	68 <vex::RoboticArm::moveToPositionJoint(double, double, double, double)+0x68>
  38:	e1a02008 	mov	r2, r8
  3c:	e1a03009 	mov	r3, r9
  40:	e1a04000 	mov	r4, r0
  44:	ebfffffe 	bl	0 <vex::RoboticArm::moveToPositionJoint(double, double, double, double)>
  48:	e1cda3f0 	strd	sl, [sp, #48]	; 0x30
  4c:	e1a00004 	mov	r0, r4
  50:	ed8d8b0a 	vstr	d8, [sp, #40]	; 0x28
  54:	e1a02006 	mov	r2, r6
  58:	ecbd8b02 	vpop	{d8}
  5c:	e1a03007 	mov	r3, r7
  60:	e8bd4fd0 	pop	{r4, r6, r7, r8, r9, sl, fp, lr}
  64:	eafffffe 	b	0 <vex::RoboticArm::moveToPositionJoint(double, double, double, double)>
  68:	ecbd8b02 	vpop	{d8}
  6c:	e8bd8fd0 	pop	{r4, r6, r7, r8, r9, sl, fp, pc}

Disassembly of section .text._ZN3vex10RoboticArm16stopProfilerTaskEv:

00000000 <vex::RoboticArm::stopProfilerTask()>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e2800cfb 	add	r0, r0, #64256	; 0xfb00
   c:	e2844a0f 	add	r4, r4, #61440	; 0xf000
  10:	e28000d0 	add	r0, r0, #208	; 0xd0
  14:	ebfffffe 	bl	0 <vex::task::stop()>
  18:	e3a03000 	mov	r3, #0
  1c:	e5c43bdb 	strb	r3, [r4, #3035]	; 0xbdb
  20:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex10RoboticArm16setToolTipOffsetEddd:

00000000 <vex::RoboticArm::setToolTipOffset(double, double, double)>:
   0:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e1a06002 	mov	r6, r2
   c:	e1a07003 	mov	r7, r3
  10:	ebfffffe 	bl	0 <vex::RoboticArm::setToolTipOffset(double, double, double)>
  14:	e1cd01d8 	ldrd	r0, [sp, #24]
  18:	e2843cfb 	add	r3, r4, #64256	; 0xfb00
  1c:	e2845a0f 	add	r5, r4, #61440	; 0xf000
  20:	e1c308f0 	strd	r0, [r3, #128]	; 0x80
  24:	e1cd02d0 	ldrd	r0, [sp, #32]
  28:	e1c367f8 	strd	r6, [r3, #120]	; 0x78
  2c:	e2843cfb 	add	r3, r4, #64256	; 0xfb00
  30:	e1c308f8 	strd	r0, [r3, #136]	; 0x88
  34:	e1a00004 	mov	r0, r4
  38:	ebfffffe 	bl	0 <vex::RoboticArm::setToolTipOffset(double, double, double)>
  3c:	e5d53bd9 	ldrb	r3, [r5, #3033]	; 0xbd9
  40:	e3530000 	cmp	r3, #0
  44:	1a000005 	bne	60 <vex::RoboticArm::setToolTipOffset(double, double, double)+0x60>
  48:	e3a01014 	mov	r1, #20
  4c:	e1a00004 	mov	r0, r4
  50:	e1a02001 	mov	r2, r1
  54:	ebfffffe 	bl	0 <vex::RoboticArm::setToolTipOffset(double, double, double)>
  58:	e3a03001 	mov	r3, #1
  5c:	e5c53bd9 	strb	r3, [r5, #3033]	; 0xbd9
  60:	e3a03001 	mov	r3, #1
  64:	e5c53bda 	strb	r3, [r5, #3034]	; 0xbda
  68:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}

Disassembly of section .text._ZN3vex10RoboticArm18setMasteringValuesEiiii:

00000000 <vex::RoboticArm::setMasteringValues(int, int, int, int)>:
   0:	e92d4030 	push	{r4, r5, lr}
   4:	e24dd024 	sub	sp, sp, #36	; 0x24
   8:	e1a04000 	mov	r4, r0
   c:	e58d1014 	str	r1, [sp, #20]
  10:	e58d2018 	str	r2, [sp, #24]
  14:	e58d301c 	str	r3, [sp, #28]
  18:	e59d5030 	ldr	r5, [sp, #48]	; 0x30
  1c:	ebfffffe 	bl	0 <vex::RoboticArm::setMasteringValues(int, int, int, int)>
  20:	e3a03e7d 	mov	r3, #2000	; 0x7d0
  24:	e59d1014 	ldr	r1, [sp, #20]
  28:	e58d3000 	str	r3, [sp]
  2c:	e3a02001 	mov	r2, #1
  30:	e3a03d19 	mov	r3, #1600	; 0x640
  34:	e1a00004 	mov	r0, r4
  38:	ebfffffe 	bl	0 <vex::RoboticArm::setMasteringValues(int, int, int, int)>
  3c:	e59d1018 	ldr	r1, [sp, #24]
  40:	e3a02002 	mov	r2, #2
  44:	e3500000 	cmp	r0, #0
  48:	e1a00004 	mov	r0, r4
  4c:	12843cfb 	addne	r3, r4, #64256	; 0xfb00
  50:	1ddd7a05 	vldrne	s15, [sp, #20]
  54:	1ef80be7 	vcvtne.f64.s32	d16, s15
  58:	1dc30b06 	vstrne	d16, [r3, #24]
  5c:	e3a03e96 	mov	r3, #2400	; 0x960
  60:	e58d3000 	str	r3, [sp]
  64:	e300376c 	movw	r3, #1900	; 0x76c
  68:	ebfffffe 	bl	0 <vex::RoboticArm::setMasteringValues(int, int, int, int)>
  6c:	e3500000 	cmp	r0, #0
  70:	0a000005 	beq	8c <vex::RoboticArm::setMasteringValues(int, int, int, int)+0x8c>
  74:	eddd7a06 	vldr	s15, [sp, #24]
  78:	e2843cfb 	add	r3, r4, #64256	; 0xfb00
  7c:	eddf1b31 	vldr	d17, [pc, #196]	; 148 <vex::RoboticArm::setMasteringValues(int, int, int, int)+0x148>
  80:	eef80be7 	vcvt.f64.s32	d16, s15
  84:	ee700ba1 	vadd.f64	d16, d16, d17
  88:	edc30b08 	vstr	d16, [r3, #32]
  8c:	e59d101c 	ldr	r1, [sp, #28]
  90:	e3003834 	movw	r3, #2100	; 0x834
  94:	e3a02003 	mov	r2, #3
  98:	e58d3000 	str	r3, [sp]
  9c:	e1a00004 	mov	r0, r4
  a0:	e30036a4 	movw	r3, #1700	; 0x6a4
  a4:	ebfffffe 	bl	0 <vex::RoboticArm::setMasteringValues(int, int, int, int)>
  a8:	e1a01005 	mov	r1, r5
  ac:	e3a02004 	mov	r2, #4
  b0:	e3500000 	cmp	r0, #0
  b4:	e1a00004 	mov	r0, r4
  b8:	12843cfb 	addne	r3, r4, #64256	; 0xfb00
  bc:	1ddd7a07 	vldrne	s15, [sp, #28]
  c0:	1ef80be7 	vcvtne.f64.s32	d16, s15
  c4:	1dc30b0a 	vstrne	d16, [r3, #40]	; 0x28
  c8:	e300328a 	movw	r3, #650	; 0x28a
  cc:	e58d3000 	str	r3, [sp]
  d0:	e3a030c8 	mov	r3, #200	; 0xc8
  d4:	ebfffffe 	bl	0 <vex::RoboticArm::setMasteringValues(int, int, int, int)>
  d8:	e59f1070 	ldr	r1, [pc, #112]	; 150 <vex::RoboticArm::setMasteringValues(int, int, int, int)+0x150>
  dc:	e3500000 	cmp	r0, #0
  e0:	e3a00000 	mov	r0, #0
  e4:	12843cfb 	addne	r3, r4, #64256	; 0xfb00
  e8:	1e075a90 	vmovne	s15, r5
  ec:	1ef80be7 	vcvtne.f64.s32	d16, s15
  f0:	1dc30b0c 	vstrne	d16, [r3, #48]	; 0x30
  f4:	e59f3058 	ldr	r3, [pc, #88]	; 154 <vex::RoboticArm::setMasteringValues(int, int, int, int)+0x154>
  f8:	e5932000 	ldr	r2, [r3]
  fc:	ebfffffe 	bl	0 <vex::wait(double, vex::timeUnits)>
 100:	e2843a0f 	add	r3, r4, #61440	; 0xf000
 104:	e3a02001 	mov	r2, #1
 108:	e5c32bb0 	strb	r2, [r3, #2992]	; 0xbb0
 10c:	e5d33bda 	ldrb	r3, [r3, #3034]	; 0xbda
 110:	e3530000 	cmp	r3, #0
 114:	1a000007 	bne	138 <vex::RoboticArm::setMasteringValues(int, int, int, int)+0x138>
 118:	e3a02000 	mov	r2, #0
 11c:	e3a03000 	mov	r3, #0
 120:	e1a00004 	mov	r0, r4
 124:	e1cd20f0 	strd	r2, [sp]
 128:	e1cd20f8 	strd	r2, [sp, #8]
 12c:	ebfffffe 	bl	0 <vex::RoboticArm::setMasteringValues(int, int, int, int)>
 130:	e28dd024 	add	sp, sp, #36	; 0x24
 134:	e8bd8030 	pop	{r4, r5, pc}
 138:	e1a00004 	mov	r0, r4
 13c:	e28dd024 	add	sp, sp, #36	; 0x24
 140:	e8bd4030 	pop	{r4, r5, lr}
 144:	eafffffe 	b	0 <vex::RoboticArm::setMasteringValues(int, int, int, int)>
 148:	55555556 	ldrbpl	r5, [r5, #-1366]	; 0xfffffaaa
 14c:	40852555 	addmi	r2, r5, r5, asr r5
 150:	407f4000 	rsbsmi	r4, pc, r0
 154:	00000000 	andeq	r0, r0, r0

Disassembly of section .text._ZN3vex10RoboticArm20enableManualMovementEv:

00000000 <vex::RoboticArm::enableManualMovement()>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <vex::RoboticArm::enableManualMovement()>
   c:	e2844a0f 	add	r4, r4, #61440	; 0xf000
  10:	e3a03001 	mov	r3, #1
  14:	e5c43bdc 	strb	r3, [r4, #3036]	; 0xbdc
  18:	e59f3054 	ldr	r3, [pc, #84]	; 74 <vex::RoboticArm::enableManualMovement()+0x74>
  1c:	e5940b90 	ldr	r0, [r4, #2960]	; 0xb90
  20:	e5935000 	ldr	r5, [r3]
  24:	e1a01005 	mov	r1, r5
  28:	ebfffffe 	bl	0 <vex::motor::setStopping(vex::brakeType)>
  2c:	e5940b94 	ldr	r0, [r4, #2964]	; 0xb94
  30:	e1a01005 	mov	r1, r5
  34:	ebfffffe 	bl	0 <vex::motor::setStopping(vex::brakeType)>
  38:	e5940b98 	ldr	r0, [r4, #2968]	; 0xb98
  3c:	e1a01005 	mov	r1, r5
  40:	ebfffffe 	bl	0 <vex::motor::setStopping(vex::brakeType)>
  44:	e1a01005 	mov	r1, r5
  48:	e5940b9c 	ldr	r0, [r4, #2972]	; 0xb9c
  4c:	ebfffffe 	bl	0 <vex::motor::setStopping(vex::brakeType)>
  50:	e5940b90 	ldr	r0, [r4, #2960]	; 0xb90
  54:	ebfffffe 	bl	0 <vex::motor::stop()>
  58:	e5940b94 	ldr	r0, [r4, #2964]	; 0xb94
  5c:	ebfffffe 	bl	0 <vex::motor::stop()>
  60:	e5940b98 	ldr	r0, [r4, #2968]	; 0xb98
  64:	ebfffffe 	bl	0 <vex::motor::stop()>
  68:	e5940b9c 	ldr	r0, [r4, #2972]	; 0xb9c
  6c:	e8bd4038 	pop	{r3, r4, r5, lr}
  70:	eafffffe 	b	0 <vex::motor::stop()>
  74:	00000000 	andeq	r0, r0, r0

Disassembly of section .text._ZN3vex10RoboticArm7getInfoEv:

00000000 <vex::RoboticArm::getInfo()>:
   0:	e59f0000 	ldr	r0, [pc]	; 8 <vex::RoboticArm::getInfo()+0x8>
   4:	e12fff1e 	bx	lr
   8:	03c2bf0e 	biceq	fp, r2, #14, 30	; 0x38

Disassembly of section .bss._ZL11AngleOffset:

00000000 <.bss._ZL11AngleOffset>:
	...

Disassembly of section .rodata.str1.1:

00000000 <.rodata.str1.1>:
   0:	6e696f4a 	cdpvs	15, 6, cr6, cr9, cr10, {2}
   4:	64252074 	strtvs	r2, [r5], #-116	; 0xffffff8c
   8:	73616d20 	cmnvc	r1, #32, 26	; 0x800
   c:	69726574 	ldmdbvs	r2!, {r2, r4, r5, r6, r8, sl, sp, lr}^
  10:	7620676e 	strtvc	r6, [r0], -lr, ror #14
  14:	65756c61 	ldrbvs	r6, [r5, #-3169]!	; 0xfffff39f
  18:	74756f20 	ldrbtvc	r6, [r5], #-3872	; 0xfffff0e0
  1c:	20666f20 	rsbcs	r6, r6, r0, lsr #30
  20:	676e6172 			; <UNDEFINED> instruction: 0x676e6172
  24:	74410065 	strbvc	r0, [r1], #-101	; 0xffffff9b
  28:	706d6574 	rsbvc	r6, sp, r4, ror r5
  2c:	20646574 	rsbcs	r6, r4, r4, ror r5
  30:	75206f74 	strvc	r6, [r0, #-3956]!	; 0xfffff08c
  34:	25206573 	strcs	r6, [r0, #-1395]!	; 0xfffffa8d
  38:	68530064 	ldmdavs	r3, {r2, r5, r6}^
  3c:	646c756f 	strbtvs	r7, [ip], #-1391	; 0xfffffa91
  40:	20656220 	rsbcs	r6, r5, r0, lsr #4
  44:	77746562 	ldrbvc	r6, [r4, -r2, ror #10]!
  48:	206e6565 	rsbcs	r6, lr, r5, ror #10
  4c:	61206425 			; <UNDEFINED> instruction: 0x61206425
  50:	2520646e 	strcs	r6, [r0, #-1134]!	; 0xfffffb92
  54:	Address 0x0000000000000054 is out of bounds.


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
  44:	5b202965 	blpl	80a5e0 <vex::RoboticArm::motorControlLoop(vex::RoboticArm::Angle&)+0x80a5e0>
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

