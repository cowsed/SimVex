
vex_vision.cpp.obj:     file format elf32-littlearm


Disassembly of section .text._ZN3vex6vision9installedEv:

00000000 <vex::vision::installed()>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vex::device::type()>
   8:	e240000b 	sub	r0, r0, #11
   c:	e16f0f10 	clz	r0, r0
  10:	e1a002a0 	lsr	r0, r0, #5
  14:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text._ZN3vex6visionD2Ev:

00000000 <vex::vision::~vision()>:
   0:	e59f302c 	ldr	r3, [pc, #44]	; 34 <vex::vision::~vision()+0x34>
   4:	e1a02000 	mov	r2, r0
   8:	e92d4010 	push	{r4, lr}
   c:	e1a04000 	mov	r4, r0
  10:	e4823070 	str	r3, [r2], #112	; 0x70
  14:	e2803e57 	add	r3, r0, #1392	; 0x570
  18:	e1530002 	cmp	r3, r2
  1c:	12433050 	subne	r3, r3, #80	; 0x50
  20:	1afffffc 	bne	18 <vex::vision::~vision()+0x18>
  24:	e1a00004 	mov	r0, r4
  28:	ebfffffe 	bl	0 <vex::device::~device()>
  2c:	e1a00004 	mov	r0, r4
  30:	e8bd8010 	pop	{r4, pc}
  34:	00000008 	andeq	r0, r0, r8

Disassembly of section .text._ZN3vex6visionD0Ev:

00000000 <vex::vision::~vision()>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <vex::vision::~vision()>
   c:	e1a00004 	mov	r0, r4
  10:	ebfffffe 	bl	0 <operator delete(void*)>
  14:	e1a00004 	mov	r0, r4
  18:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex6vision12setSignatureEP25_V5_DeviceVisionSignature:

00000000 <vex::vision::setSignature(_V5_DeviceVisionSignature*)>:
   0:	e92d4008 	push	{r3, lr}
   4:	e2513000 	subs	r3, r1, #0
   8:	0a000003 	beq	1c <vex::vision::setSignature(_V5_DeviceVisionSignature*)+0x1c>
   c:	e5900008 	ldr	r0, [r0, #8]
  10:	ebfffffe 	bl	0 <vexVisionSignatureSet>
  14:	e3a00001 	mov	r0, #1
  18:	e8bd8008 	pop	{r3, pc}
  1c:	e1a00003 	mov	r0, r3
  20:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text._ZN3vex6vision12setSignatureERNS0_9signatureE:

00000000 <vex::vision::setSignature(vex::vision::signature&)>:
   0:	e5913000 	ldr	r3, [r1]
   4:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
   8:	e24dd02c 	sub	sp, sp, #44	; 0x2c
   c:	e5900008 	ldr	r0, [r0, #8]
  10:	e5cd3000 	strb	r3, [sp]
  14:	e5913004 	ldr	r3, [r1, #4]
  18:	e58d3008 	str	r3, [sp, #8]
  1c:	e5913008 	ldr	r3, [r1, #8]
  20:	e58d300c 	str	r3, [sp, #12]
  24:	e591300c 	ldr	r3, [r1, #12]
  28:	e58d3010 	str	r3, [sp, #16]
  2c:	e5913010 	ldr	r3, [r1, #16]
  30:	e58d3014 	str	r3, [sp, #20]
  34:	e5913014 	ldr	r3, [r1, #20]
  38:	e58d3018 	str	r3, [sp, #24]
  3c:	e5913018 	ldr	r3, [r1, #24]
  40:	e58d301c 	str	r3, [sp, #28]
  44:	e591301c 	ldr	r3, [r1, #28]
  48:	e58d3004 	str	r3, [sp, #4]
  4c:	e5913020 	ldr	r3, [r1, #32]
  50:	e58d3020 	str	r3, [sp, #32]
  54:	e5913024 	ldr	r3, [r1, #36]	; 0x24
  58:	e1a0100d 	mov	r1, sp
  5c:	e58d3024 	str	r3, [sp, #36]	; 0x24
  60:	ebfffffe 	bl	0 <vexVisionSignatureSet>
  64:	e3a00001 	mov	r0, #1
  68:	e28dd02c 	add	sp, sp, #44	; 0x2c
  6c:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

Disassembly of section .text._ZN3vex6vision12getSignatureEmP25_V5_DeviceVisionSignature:

00000000 <vex::vision::getSignature(unsigned long, _V5_DeviceVisionSignature*)>:
   0:	e2523000 	subs	r3, r2, #0
   4:	0a000001 	beq	10 <vex::vision::getSignature(unsigned long, _V5_DeviceVisionSignature*)+0x10>
   8:	e5900008 	ldr	r0, [r0, #8]
   c:	eafffffe 	b	0 <vexVisionSignatureGet>
  10:	e1a00003 	mov	r0, r3
  14:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex6vision12getSignatureEmRNS0_9signatureE:

00000000 <vex::vision::getSignature(unsigned long, vex::vision::signature&)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e24dd028 	sub	sp, sp, #40	; 0x28
   8:	e1a04002 	mov	r4, r2
   c:	e5900008 	ldr	r0, [r0, #8]
  10:	e1a0200d 	mov	r2, sp
  14:	ebfffffe 	bl	0 <vexVisionSignatureGet>
  18:	e5dd3000 	ldrb	r3, [sp]
  1c:	e5843000 	str	r3, [r4]
  20:	e59d3008 	ldr	r3, [sp, #8]
  24:	e5843004 	str	r3, [r4, #4]
  28:	e59d300c 	ldr	r3, [sp, #12]
  2c:	e5843008 	str	r3, [r4, #8]
  30:	e59d3010 	ldr	r3, [sp, #16]
  34:	e584300c 	str	r3, [r4, #12]
  38:	e59d3014 	ldr	r3, [sp, #20]
  3c:	e5843010 	str	r3, [r4, #16]
  40:	e59d3018 	ldr	r3, [sp, #24]
  44:	e5843014 	str	r3, [r4, #20]
  48:	e59d301c 	ldr	r3, [sp, #28]
  4c:	e5843018 	str	r3, [r4, #24]
  50:	e59d3004 	ldr	r3, [sp, #4]
  54:	e584301c 	str	r3, [r4, #28]
  58:	e59d3020 	ldr	r3, [sp, #32]
  5c:	e5843020 	str	r3, [r4, #32]
  60:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
  64:	e5843024 	str	r3, [r4, #36]	; 0x24
  68:	e28dd028 	add	sp, sp, #40	; 0x28
  6c:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex6vision7setModeENS0_13detectionModeE:

00000000 <vex::vision::setMode(vex::vision::detectionMode)>:
   0:	e92d4008 	push	{r3, lr}
   4:	e6ef1071 	uxtb	r1, r1
   8:	e5900008 	ldr	r0, [r0, #8]
   c:	ebfffffe 	bl	0 <vexVisionModeSet>
  10:	e3a00001 	mov	r0, #1
  14:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text._ZN3vex6vision7getModeEv:

00000000 <vex::vision::getMode()>:
   0:	e92d4008 	push	{r3, lr}
   4:	e5900008 	ldr	r0, [r0, #8]
   8:	ebfffffe 	bl	0 <vexVisionModeGet>
   c:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text._ZN3vex6vision13setBrightnessEh:

00000000 <vex::vision::setBrightness(unsigned char)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e3a03032 	mov	r3, #50	; 0x32
   8:	e1a04000 	mov	r4, r0
   c:	e3a00064 	mov	r0, #100	; 0x64
  10:	e0203190 	mla	r0, r0, r1, r3
  14:	e3a010ff 	mov	r1, #255	; 0xff
  18:	ebfffffe 	bl	0 <__aeabi_idiv>
  1c:	e6ef1070 	uxtb	r1, r0
  20:	e5940008 	ldr	r0, [r4, #8]
  24:	ebfffffe 	bl	0 <vexVisionBrightnessSet>
  28:	e3a00001 	mov	r0, #1
  2c:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex6vision13getBrightnessEv:

00000000 <vex::vision::getBrightness()>:
   0:	e92d4008 	push	{r3, lr}
   4:	e5900008 	ldr	r0, [r0, #8]
   8:	ebfffffe 	bl	0 <vexVisionBrightnessGet>
   c:	e3a03032 	mov	r3, #50	; 0x32
  10:	e3a020ff 	mov	r2, #255	; 0xff
  14:	e3a01064 	mov	r1, #100	; 0x64
  18:	e6bf0070 	sxth	r0, r0
  1c:	e0203290 	mla	r0, r0, r2, r3
  20:	ebfffffe 	bl	0 <__aeabi_idiv>
  24:	e6ef0070 	uxtb	r0, r0
  28:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text._ZN3vex6vision19setWhiteBalanceModeENS0_16whiteBalanceModeE:

00000000 <vex::vision::setWhiteBalanceMode(vex::vision::whiteBalanceMode)>:
   0:	e92d4008 	push	{r3, lr}
   4:	e6ef1071 	uxtb	r1, r1
   8:	e5900008 	ldr	r0, [r0, #8]
   c:	ebfffffe 	bl	0 <vexVisionWhiteBalanceModeSet>
  10:	e3a00001 	mov	r0, #1
  14:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text._ZN3vex6vision19getWhiteBalanceModeEv:

00000000 <vex::vision::getWhiteBalanceMode()>:
   0:	e92d4008 	push	{r3, lr}
   4:	e5900008 	ldr	r0, [r0, #8]
   8:	ebfffffe 	bl	0 <vexVisionWhiteBalanceModeGet>
   c:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text._ZN3vex6vision21setWhiteBalanceValuesEhhh:

00000000 <vex::vision::setWhiteBalanceValues(unsigned char, unsigned char, unsigned char)>:
   0:	e92d4007 	push	{r0, r1, r2, lr}
   4:	e3a0c000 	mov	ip, #0
   8:	e58dc004 	str	ip, [sp, #4]
   c:	e5cd1004 	strb	r1, [sp, #4]
  10:	e5cd2005 	strb	r2, [sp, #5]
  14:	e5cd3006 	strb	r3, [sp, #6]
  18:	e5900008 	ldr	r0, [r0, #8]
  1c:	e59d1004 	ldr	r1, [sp, #4]
  20:	ebfffffe 	bl	0 <vexVisionWhiteBalanceSet>
  24:	e3a00001 	mov	r0, #1
  28:	e28dd00c 	add	sp, sp, #12
  2c:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

Disassembly of section .text._ZN3vex6vision21getWhiteBalanceValuesEPhS1_S1_:

00000000 <vex::vision::getWhiteBalanceValues(unsigned char*, unsigned char*, unsigned char*)>:
   0:	e92d4073 	push	{r0, r1, r4, r5, r6, lr}
   4:	e1a04003 	mov	r4, r3
   8:	e5900008 	ldr	r0, [r0, #8]
   c:	e1a06001 	mov	r6, r1
  10:	e1a05002 	mov	r5, r2
  14:	ebfffffe 	bl	0 <vexVisionWhiteBalanceGet>
  18:	e5c60000 	strb	r0, [r6]
  1c:	e7e73450 	ubfx	r3, r0, #8, #8
  20:	e7e70850 	ubfx	r0, r0, #16, #8
  24:	e5c53000 	strb	r3, [r5]
  28:	e5c40000 	strb	r0, [r4]
  2c:	e3a00001 	mov	r0, #1
  30:	e28dd008 	add	sp, sp, #8
  34:	e8bd8070 	pop	{r4, r5, r6, pc}

Disassembly of section .text._ZN3vex6vision10setLedModeENS0_7ledModeE:

00000000 <vex::vision::setLedMode(vex::vision::ledMode)>:
   0:	e92d4008 	push	{r3, lr}
   4:	e6ef1071 	uxtb	r1, r1
   8:	e5900008 	ldr	r0, [r0, #8]
   c:	ebfffffe 	bl	0 <vexVisionLedModeSet>
  10:	e3a00001 	mov	r0, #1
  14:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text._ZN3vex6vision10getLedModeEv:

00000000 <vex::vision::getLedMode()>:
   0:	e92d4008 	push	{r3, lr}
   4:	e5900008 	ldr	r0, [r0, #8]
   8:	ebfffffe 	bl	0 <vexVisionLedModeGet>
   c:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text._ZN3vex6vision16setLedBrightnessEh:

00000000 <vex::vision::setLedBrightness(unsigned char)>:
   0:	e3510064 	cmp	r1, #100	; 0x64
   4:	e5900008 	ldr	r0, [r0, #8]
   8:	e92d4008 	push	{r3, lr}
   c:	23a01064 	movcs	r1, #100	; 0x64
  10:	ebfffffe 	bl	0 <vexVisionLedBrigntnessSet>
  14:	e3a00001 	mov	r0, #1
  18:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text._ZN3vex6vision16getLedBrightnessEv:

00000000 <vex::vision::getLedBrightness()>:
   0:	e5900008 	ldr	r0, [r0, #8]
   4:	eafffffe 	b	0 <vexVisionLedBrigntnessGet>

Disassembly of section .text._ZN3vex6vision11setLedColorEhhh:

00000000 <vex::vision::setLedColor(unsigned char, unsigned char, unsigned char)>:
   0:	e92d4007 	push	{r0, r1, r2, lr}
   4:	e3e0c000 	mvn	ip, #0
   8:	e5cd1004 	strb	r1, [sp, #4]
   c:	e5cdc007 	strb	ip, [sp, #7]
  10:	e5cd2005 	strb	r2, [sp, #5]
  14:	e5cd3006 	strb	r3, [sp, #6]
  18:	e5900008 	ldr	r0, [r0, #8]
  1c:	e59d1004 	ldr	r1, [sp, #4]
  20:	ebfffffe 	bl	0 <vexVisionLedColorSet>
  24:	e3a00001 	mov	r0, #1
  28:	e28dd00c 	add	sp, sp, #12
  2c:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

Disassembly of section .text._ZN3vex6vision11getLedColorEPhS1_S1_:

00000000 <vex::vision::getLedColor(unsigned char*, unsigned char*, unsigned char*)>:
   0:	e92d4073 	push	{r0, r1, r4, r5, r6, lr}
   4:	e1a04003 	mov	r4, r3
   8:	e5900008 	ldr	r0, [r0, #8]
   c:	e1a06001 	mov	r6, r1
  10:	e1a05002 	mov	r5, r2
  14:	ebfffffe 	bl	0 <vexVisionLedColorGet>
  18:	e5c60000 	strb	r0, [r6]
  1c:	e7e73450 	ubfx	r3, r0, #8, #8
  20:	e7e70850 	ubfx	r0, r0, #16, #8
  24:	e5c53000 	strb	r3, [r5]
  28:	e5c40000 	strb	r0, [r4]
  2c:	e3a00001 	mov	r0, #1
  30:	e28dd008 	add	sp, sp, #8
  34:	e8bd8070 	pop	{r4, r5, r6, pc}

Disassembly of section .text._ZN3vex6vision11setWifiModeENS0_8wifiModeE:

00000000 <vex::vision::setWifiMode(vex::vision::wifiMode)>:
   0:	e92d4008 	push	{r3, lr}
   4:	e6ef1071 	uxtb	r1, r1
   8:	e5900008 	ldr	r0, [r0, #8]
   c:	ebfffffe 	bl	0 <vexVisionWifiModeSet>
  10:	e3a00001 	mov	r0, #1
  14:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text._ZN3vex6vision11getWifiModeEv:

00000000 <vex::vision::getWifiMode()>:
   0:	e92d4008 	push	{r3, lr}
   4:	e5900008 	ldr	r0, [r0, #8]
   8:	ebfffffe 	bl	0 <vexVisionWifiModeGet>
   c:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text._ZN3vex6vision9signatureD2Ev:

00000000 <vex::vision::signature::~signature()>:
   0:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex6vision9signature5clearEv:

00000000 <vex::vision::signature::clear()>:
   0:	e59f202c 	ldr	r2, [pc, #44]	; 34 <vex::vision::signature::clear()+0x34>
   4:	e3a03000 	mov	r3, #0
   8:	e5803000 	str	r3, [r0]
   c:	e5803004 	str	r3, [r0, #4]
  10:	e5803008 	str	r3, [r0, #8]
  14:	e580300c 	str	r3, [r0, #12]
  18:	e5803010 	str	r3, [r0, #16]
  1c:	e5803014 	str	r3, [r0, #20]
  20:	e5803018 	str	r3, [r0, #24]
  24:	e580201c 	str	r2, [r0, #28]
  28:	e5803020 	str	r3, [r0, #32]
  2c:	e5803024 	str	r3, [r0, #36]	; 0x24
  30:	e12fff1e 	bx	lr
  34:	40400000 	submi	r0, r0, r0

Disassembly of section .text._ZN3vex6vision9signatureC2Ev:

00000000 <vex::vision::signature::signature()>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e5840028 	str	r0, [r4, #40]	; 0x28
   c:	e2803004 	add	r3, r0, #4
  10:	e580302c 	str	r3, [r0, #44]	; 0x2c
  14:	e2803008 	add	r3, r0, #8
  18:	e5803030 	str	r3, [r0, #48]	; 0x30
  1c:	e280300c 	add	r3, r0, #12
  20:	e5803034 	str	r3, [r0, #52]	; 0x34
  24:	e2803010 	add	r3, r0, #16
  28:	e5803038 	str	r3, [r0, #56]	; 0x38
  2c:	e2803014 	add	r3, r0, #20
  30:	e580303c 	str	r3, [r0, #60]	; 0x3c
  34:	e2803018 	add	r3, r0, #24
  38:	e5803040 	str	r3, [r0, #64]	; 0x40
  3c:	e280301c 	add	r3, r0, #28
  40:	e5803044 	str	r3, [r0, #68]	; 0x44
  44:	e2803020 	add	r3, r0, #32
  48:	e5803048 	str	r3, [r0, #72]	; 0x48
  4c:	e2803024 	add	r3, r0, #36	; 0x24
  50:	e580304c 	str	r3, [r0, #76]	; 0x4c
  54:	ebfffffe 	bl	0 <vex::vision::signature::signature()>
  58:	e1a00004 	mov	r0, r4
  5c:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex6vision9signatureC2Elllllllfl:

00000000 <vex::vision::signature::signature(long, long, long, long, long, long, long, float, long)>:
   0:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e1a05003 	mov	r5, r3
   c:	e1a07001 	mov	r7, r1
  10:	e1a06002 	mov	r6, r2
  14:	ebfffffe 	bl	0 <vex::vision::signature::signature(long, long, long, long, long, long, long, float, long)>
  18:	e59d3018 	ldr	r3, [sp, #24]
  1c:	e1a00004 	mov	r0, r4
  20:	e5847000 	str	r7, [r4]
  24:	e5846004 	str	r6, [r4, #4]
  28:	e584300c 	str	r3, [r4, #12]
  2c:	e59d301c 	ldr	r3, [sp, #28]
  30:	e5845008 	str	r5, [r4, #8]
  34:	e5843010 	str	r3, [r4, #16]
  38:	e59d3020 	ldr	r3, [sp, #32]
  3c:	e5843014 	str	r3, [r4, #20]
  40:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
  44:	e5843018 	str	r3, [r4, #24]
  48:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
  4c:	e584301c 	str	r3, [r4, #28]
  50:	e59d302c 	ldr	r3, [sp, #44]	; 0x2c
  54:	e5843024 	str	r3, [r4, #36]	; 0x24
  58:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}

Disassembly of section .text._ZN3vex6vision4codeC2Elllll:

00000000 <vex::vision::code::code(long, long, long, long, long)>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e3a0e000 	mov	lr, #0
   8:	e59d5010 	ldr	r5, [sp, #16]
   c:	e153000e 	cmp	r3, lr
  10:	e5c0e004 	strb	lr, [r0, #4]
  14:	e1a04303 	lsl	r4, r3, #6
  18:	11a0e003 	movne	lr, r3
  1c:	e59dc014 	ldr	ip, [sp, #20]
  20:	01a0e002 	moveq	lr, r2
  24:	e3550000 	cmp	r5, #0
  28:	11a0e005 	movne	lr, r5
  2c:	e35c0000 	cmp	ip, #0
  30:	11a0e00c 	movne	lr, ip
  34:	e15e0001 	cmp	lr, r1
  38:	1a00001a 	bne	a8 <vex::vision::code::code(long, long, long, long, long)+0xa8>
  3c:	e2951000 	adds	r1, r5, #0
  40:	13a01001 	movne	r1, #1
  44:	e3530000 	cmp	r3, #0
  48:	03a06000 	moveq	r6, #0
  4c:	12016001 	andne	r6, r1, #1
  50:	e3560000 	cmp	r6, #0
  54:	01a0300e 	moveq	r3, lr
  58:	e35c0000 	cmp	ip, #0
  5c:	03a01000 	moveq	r1, #0
  60:	12011001 	andne	r1, r1, #1
  64:	e3510000 	cmp	r1, #0
  68:	11a03005 	movne	r3, r5
  6c:	e1530002 	cmp	r3, r2
  70:	d1a0360c 	lslle	r3, ip, #12
  74:	c18c1185 	orrgt	r1, ip, r5, lsl #3
  78:	d183c485 	orrle	ip, r3, r5, lsl #9
  7c:	c1811004 	orrgt	r1, r1, r4
  80:	d18c1004 	orrle	r1, ip, r4
  84:	c1812482 	orrgt	r2, r1, r2, lsl #9
  88:	d1812182 	orrle	r2, r1, r2, lsl #3
  8c:	c182260e 	orrgt	r2, r2, lr, lsl #12
  90:	d182200e 	orrle	r2, r2, lr
  94:	c3a03001 	movgt	r3, #1
  98:	c5c03004 	strbgt	r3, [r0, #4]
  9c:	e5802000 	str	r2, [r0]
  a0:	e3a02005 	mov	r2, #5
  a4:	ea00000e 	b	e4 <vex::vision::code::code(long, long, long, long, long)+0xe4>
  a8:	c18cc601 	orrgt	ip, ip, r1, lsl #12
  ac:	d181c60c 	orrle	ip, r1, ip, lsl #12
  b0:	d18c1485 	orrle	r1, ip, r5, lsl #9
  b4:	c18cc185 	orrgt	ip, ip, r5, lsl #3
  b8:	c18c1004 	orrgt	r1, ip, r4
  bc:	d1811004 	orrle	r1, r1, r4
  c0:	c3a03001 	movgt	r3, #1
  c4:	c1812482 	orrgt	r2, r1, r2, lsl #9
  c8:	c5c03004 	strbgt	r3, [r0, #4]
  cc:	d1812182 	orrle	r2, r1, r2, lsl #3
  d0:	eafffff1 	b	9c <vex::vision::code::code(long, long, long, long, long)+0x9c>
  d4:	e2522001 	subs	r2, r2, #1
  d8:	e1a031a3 	lsr	r3, r3, #3
  dc:	e5803000 	str	r3, [r0]
  e0:	08bd8070 	popeq	{r4, r5, r6, pc}
  e4:	e5903000 	ldr	r3, [r0]
  e8:	e3130007 	tst	r3, #7
  ec:	0afffff8 	beq	d4 <vex::vision::code::code(long, long, long, long, long)+0xd4>
  f0:	e8bd8070 	pop	{r4, r5, r6, pc}

Disassembly of section .text._ZN3vex6vision4codeC2Ellll:

00000000 <vex::vision::code::code(long, long, long, long)>:
   0:	e92d4013 	push	{r0, r1, r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e59dc010 	ldr	ip, [sp, #16]
   c:	e58dc000 	str	ip, [sp]
  10:	e3a0c000 	mov	ip, #0
  14:	e58dc004 	str	ip, [sp, #4]
  18:	ebfffffe 	bl	0 <vex::vision::code::code(long, long, long, long)>
  1c:	e1a00004 	mov	r0, r4
  20:	e28dd008 	add	sp, sp, #8
  24:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex6vision4codeC2ERNS0_9signatureES3_S3_S3_:

00000000 <vex::vision::code::code(vex::vision::signature&, vex::vision::signature&, vex::vision::signature&, vex::vision::signature&)>:
   0:	e92d41f3 	push	{r0, r1, r4, r5, r6, r7, r8, lr}
   4:	e1a05003 	mov	r5, r3
   8:	e59d4020 	ldr	r4, [sp, #32]
   c:	e1a07001 	mov	r7, r1
  10:	e1a06002 	mov	r6, r2
  14:	e1a08000 	mov	r8, r0
  18:	e5943000 	ldr	r3, [r4]
  1c:	e58d3000 	str	r3, [sp]
  20:	e5953000 	ldr	r3, [r5]
  24:	e5911000 	ldr	r1, [r1]
  28:	e5922000 	ldr	r2, [r2]
  2c:	ebfffffe 	bl	0 <vex::vision::code::code(vex::vision::signature&, vex::vision::signature&, vex::vision::signature&, vex::vision::signature&)>
  30:	e3a03001 	mov	r3, #1
  34:	e1a00008 	mov	r0, r8
  38:	e5873024 	str	r3, [r7, #36]	; 0x24
  3c:	e5863024 	str	r3, [r6, #36]	; 0x24
  40:	e5853024 	str	r3, [r5, #36]	; 0x24
  44:	e5843024 	str	r3, [r4, #36]	; 0x24
  48:	e28dd008 	add	sp, sp, #8
  4c:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

Disassembly of section .text._ZN3vex6vision4codeC2Elll:

00000000 <vex::vision::code::code(long, long, long)>:
   0:	e92d4013 	push	{r0, r1, r4, lr}
   4:	e3a0c000 	mov	ip, #0
   8:	e58dc000 	str	ip, [sp]
   c:	e1a04000 	mov	r4, r0
  10:	e58dc004 	str	ip, [sp, #4]
  14:	ebfffffe 	bl	0 <vex::vision::code::code(long, long, long)>
  18:	e1a00004 	mov	r0, r4
  1c:	e28dd008 	add	sp, sp, #8
  20:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex6vision4codeC2ERNS0_9signatureES3_S3_:

00000000 <vex::vision::code::code(vex::vision::signature&, vex::vision::signature&, vex::vision::signature&)>:
   0:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
   4:	e1a07000 	mov	r7, r0
   8:	e1a06001 	mov	r6, r1
   c:	e1a05002 	mov	r5, r2
  10:	e1a04003 	mov	r4, r3
  14:	e5911000 	ldr	r1, [r1]
  18:	e5922000 	ldr	r2, [r2]
  1c:	e5933000 	ldr	r3, [r3]
  20:	ebfffffe 	bl	0 <vex::vision::code::code(vex::vision::signature&, vex::vision::signature&, vex::vision::signature&)>
  24:	e3a03001 	mov	r3, #1
  28:	e1a00007 	mov	r0, r7
  2c:	e5863024 	str	r3, [r6, #36]	; 0x24
  30:	e5853024 	str	r3, [r5, #36]	; 0x24
  34:	e5843024 	str	r3, [r4, #36]	; 0x24
  38:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}

Disassembly of section .text._ZN3vex6vision4codeC2Ell:

00000000 <vex::vision::code::code(long, long)>:
   0:	e92d4013 	push	{r0, r1, r4, lr}
   4:	e3a03000 	mov	r3, #0
   8:	e58d3000 	str	r3, [sp]
   c:	e1a04000 	mov	r4, r0
  10:	e58d3004 	str	r3, [sp, #4]
  14:	ebfffffe 	bl	0 <vex::vision::code::code(long, long)>
  18:	e1a00004 	mov	r0, r4
  1c:	e28dd008 	add	sp, sp, #8
  20:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex6vision4codeC2ERNS0_9signatureES3_:

00000000 <vex::vision::code::code(vex::vision::signature&, vex::vision::signature&)>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a06000 	mov	r6, r0
   8:	e1a05001 	mov	r5, r1
   c:	e1a04002 	mov	r4, r2
  10:	e5911000 	ldr	r1, [r1]
  14:	e5922000 	ldr	r2, [r2]
  18:	ebfffffe 	bl	0 <vex::vision::code::code(vex::vision::signature&, vex::vision::signature&)>
  1c:	e3a03001 	mov	r3, #1
  20:	e1a00006 	mov	r0, r6
  24:	e5853024 	str	r3, [r5, #36]	; 0x24
  28:	e5843024 	str	r3, [r4, #36]	; 0x24
  2c:	e8bd8070 	pop	{r4, r5, r6, pc}

Disassembly of section .text._ZN3vex6vision4codeC2ERNS0_9signatureES3_S3_S3_S3_:

00000000 <vex::vision::code::code(vex::vision::signature&, vex::vision::signature&, vex::vision::signature&, vex::vision::signature&, vex::vision::signature&)>:
   0:	e92d43f7 	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
   4:	e1a06003 	mov	r6, r3
   8:	e59d5028 	ldr	r5, [sp, #40]	; 0x28
   c:	e1a08001 	mov	r8, r1
  10:	e59d402c 	ldr	r4, [sp, #44]	; 0x2c
  14:	e1a07002 	mov	r7, r2
  18:	e1a09000 	mov	r9, r0
  1c:	e5953000 	ldr	r3, [r5]
  20:	e58d3000 	str	r3, [sp]
  24:	e5943000 	ldr	r3, [r4]
  28:	e58d3004 	str	r3, [sp, #4]
  2c:	e5963000 	ldr	r3, [r6]
  30:	e5911000 	ldr	r1, [r1]
  34:	e5922000 	ldr	r2, [r2]
  38:	ebfffffe 	bl	0 <vex::vision::code::code(vex::vision::signature&, vex::vision::signature&, vex::vision::signature&, vex::vision::signature&, vex::vision::signature&)>
  3c:	e3a03001 	mov	r3, #1
  40:	e1a00009 	mov	r0, r9
  44:	e5883024 	str	r3, [r8, #36]	; 0x24
  48:	e5873024 	str	r3, [r7, #36]	; 0x24
  4c:	e5863024 	str	r3, [r6, #36]	; 0x24
  50:	e5853024 	str	r3, [r5, #36]	; 0x24
  54:	e5843024 	str	r3, [r4, #36]	; 0x24
  58:	e28dd00c 	add	sp, sp, #12
  5c:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}

Disassembly of section .text._ZN3vex6vision6objectD2Ev:

00000000 <vex::vision::object::~object()>:
   0:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex6vision6object3setE22_V5_DeviceVisionObject:

00000000 <vex::vision::object::set(_V5_DeviceVisionObject)>:
   0:	e24dd010 	sub	sp, sp, #16
   4:	eddf1b19 	vldr	d17, [pc, #100]	; 70 <vex::vision::object::set(_V5_DeviceVisionObject)+0x70>
   8:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
   c:	e28dc008 	add	ip, sp, #8
  10:	e88c000e 	stm	ip, {r1, r2, r3}
  14:	e1dd20bb 	ldrh	r2, [sp, #11]
  18:	e1dd30bd 	ldrh	r3, [sp, #13]
  1c:	e1dd11b1 	ldrh	r1, [sp, #17]
  20:	e1dde0b8 	ldrh	lr, [sp, #8]
  24:	e980000c 	stmib	r0, {r2, r3}
  28:	e08330a1 	add	r3, r3, r1, lsr #1
  2c:	e5803010 	str	r3, [r0, #16]
  30:	e1dd31b3 	ldrh	r3, [sp, #19]
  34:	e1ddc0bf 	ldrh	ip, [sp, #15]
  38:	e580e000 	str	lr, [r0]
  3c:	ee073a90 	vmov	s15, r3
  40:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
  44:	e08220ac 	add	r2, r2, ip, lsr #1
  48:	e3a03001 	mov	r3, #1
  4c:	eef80be7 	vcvt.f64.s32	d16, s15
  50:	e580200c 	str	r2, [r0, #12]
  54:	e580c014 	str	ip, [r0, #20]
  58:	e28dd010 	add	sp, sp, #16
  5c:	e5801018 	str	r1, [r0, #24]
  60:	e5c03028 	strb	r3, [r0, #40]	; 0x28
  64:	ee600ba1 	vmul.f64	d16, d16, d17
  68:	edc00b08 	vstr	d16, [r0, #32]
  6c:	e12fff1e 	bx	lr
  70:	47ae147b 			; <UNDEFINED> instruction: 0x47ae147b
  74:	3f847ae1 	svccc	0x00847ae1

Disassembly of section .text._ZN3vex6vision6object9flipAngleEv:

00000000 <vex::vision::object::flipAngle()>:
   0:	edd00b08 	vldr	d16, [r0, #32]
   4:	eddf1b07 	vldr	d17, [pc, #28]	; 28 <vex::vision::object::flipAngle()+0x28>
   8:	ee700ba1 	vadd.f64	d16, d16, d17
   c:	eddf1b07 	vldr	d17, [pc, #28]	; 30 <vex::vision::object::flipAngle()+0x30>
  10:	eef40be1 	vcmpe.f64	d16, d17
  14:	eef1fa10 	vmrs	APSR_nzcv, fpscr
  18:	ce700be1 	vsubgt.f64	d16, d16, d17
  1c:	edc00b08 	vstr	d16, [r0, #32]
  20:	e12fff1e 	bx	lr
  24:	e320f000 	nop	{0}
  28:	00000000 	andeq	r0, r0, r0
  2c:	40668000 	rsbmi	r8, r6, r0
  30:	00000000 	andeq	r0, r0, r0
  34:	40768000 	rsbsmi	r8, r6, r0

Disassembly of section .text._ZN3vex6vision6object5clearEv:

00000000 <vex::vision::object::clear()>:
   0:	e3a03000 	mov	r3, #0
   4:	e5803000 	str	r3, [r0]
   8:	e92d4030 	push	{r4, r5, lr}
   c:	e3a04000 	mov	r4, #0
  10:	e3a05000 	mov	r5, #0
  14:	e5803004 	str	r3, [r0, #4]
  18:	e5803008 	str	r3, [r0, #8]
  1c:	e580300c 	str	r3, [r0, #12]
  20:	e5803010 	str	r3, [r0, #16]
  24:	e5803014 	str	r3, [r0, #20]
  28:	e5803018 	str	r3, [r0, #24]
  2c:	e1c042f0 	strd	r4, [r0, #32]
  30:	e5c03028 	strb	r3, [r0, #40]	; 0x28
  34:	e8bd8030 	pop	{r4, r5, pc}

Disassembly of section .text._ZN3vex6vision6objectC2Ev:

00000000 <vex::vision::object::object()>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e584002c 	str	r0, [r4, #44]	; 0x2c
   c:	e2803004 	add	r3, r0, #4
  10:	e5803030 	str	r3, [r0, #48]	; 0x30
  14:	e2803008 	add	r3, r0, #8
  18:	e5803034 	str	r3, [r0, #52]	; 0x34
  1c:	e280300c 	add	r3, r0, #12
  20:	e5803038 	str	r3, [r0, #56]	; 0x38
  24:	e2803010 	add	r3, r0, #16
  28:	e580303c 	str	r3, [r0, #60]	; 0x3c
  2c:	e2803014 	add	r3, r0, #20
  30:	e5803040 	str	r3, [r0, #64]	; 0x40
  34:	e2803018 	add	r3, r0, #24
  38:	e5803044 	str	r3, [r0, #68]	; 0x44
  3c:	e2803020 	add	r3, r0, #32
  40:	e5803048 	str	r3, [r0, #72]	; 0x48
  44:	e2803028 	add	r3, r0, #40	; 0x28
  48:	e580304c 	str	r3, [r0, #76]	; 0x4c
  4c:	ebfffffe 	bl	0 <vex::vision::object::object()>
  50:	e1a00004 	mov	r0, r4
  54:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex6vision13_clearObjectsEv:

00000000 <vex::vision::_clearObjects()>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e2806070 	add	r6, r0, #112	; 0x70
   8:	e1a04000 	mov	r4, r0
   c:	e3a05000 	mov	r5, #0
  10:	e5943068 	ldr	r3, [r4, #104]	; 0x68
  14:	e1530005 	cmp	r3, r5
  18:	e2855001 	add	r5, r5, #1
  1c:	d2840e57 	addle	r0, r4, #1392	; 0x570
  20:	c1a00006 	movgt	r0, r6
  24:	e2866050 	add	r6, r6, #80	; 0x50
  28:	ebfffffe 	bl	0 <vex::vision::_clearObjects()>
  2c:	e3550010 	cmp	r5, #16
  30:	1afffff6 	bne	10 <vex::vision::_clearObjects()+0x10>
  34:	e2840018 	add	r0, r4, #24
  38:	e8bd4070 	pop	{r4, r5, r6, lr}
  3c:	eafffffe 	b	0 <vex::vision::_clearObjects()>

Disassembly of section .text._ZN3vex6vision6objectaSERKS1_:

00000000 <vex::vision::object::operator=(vex::vision::object const&)>:
   0:	e591202c 	ldr	r2, [r1, #44]	; 0x2c
   4:	e92d4030 	push	{r4, r5, lr}
   8:	e5922000 	ldr	r2, [r2]
   c:	e5802000 	str	r2, [r0]
  10:	e5912030 	ldr	r2, [r1, #48]	; 0x30
  14:	e5922000 	ldr	r2, [r2]
  18:	e5802004 	str	r2, [r0, #4]
  1c:	e5912034 	ldr	r2, [r1, #52]	; 0x34
  20:	e5922000 	ldr	r2, [r2]
  24:	e5802008 	str	r2, [r0, #8]
  28:	e5912038 	ldr	r2, [r1, #56]	; 0x38
  2c:	e5922000 	ldr	r2, [r2]
  30:	e580200c 	str	r2, [r0, #12]
  34:	e591203c 	ldr	r2, [r1, #60]	; 0x3c
  38:	e5922000 	ldr	r2, [r2]
  3c:	e5802010 	str	r2, [r0, #16]
  40:	e5912040 	ldr	r2, [r1, #64]	; 0x40
  44:	e5922000 	ldr	r2, [r2]
  48:	e5802014 	str	r2, [r0, #20]
  4c:	e5912044 	ldr	r2, [r1, #68]	; 0x44
  50:	e5922000 	ldr	r2, [r2]
  54:	e5802018 	str	r2, [r0, #24]
  58:	e5912048 	ldr	r2, [r1, #72]	; 0x48
  5c:	e1c240d0 	ldrd	r4, [r2]
  60:	e591204c 	ldr	r2, [r1, #76]	; 0x4c
  64:	e1c042f0 	strd	r4, [r0, #32]
  68:	e5d22000 	ldrb	r2, [r2]
  6c:	e5c02028 	strb	r2, [r0, #40]	; 0x28
  70:	e8bd8030 	pop	{r4, r5, pc}

Disassembly of section .text._ZN3vex6vision12takeSnapshotEmm:

00000000 <vex::vision::takeSnapshot(unsigned long, unsigned long)>:
   0:	e3520010 	cmp	r2, #16
   4:	e92d47f3 	push	{r0, r1, r4, r5, r6, r7, r8, r9, sl, lr}
   8:	e1a04000 	mov	r4, r0
   c:	e5900008 	ldr	r0, [r0, #8]
  10:	e1a08001 	mov	r8, r1
  14:	31a0a002 	movcc	sl, r2
  18:	23a0a010 	movcs	sl, #16
  1c:	ebfffffe 	bl	0 <vexVisionObjectCountGet>
  20:	e3a06000 	mov	r6, #0
  24:	e2847d17 	add	r7, r4, #1472	; 0x5c0
  28:	e1a05006 	mov	r5, r6
  2c:	e1a09000 	mov	r9, r0
  30:	e1a00004 	mov	r0, r4
  34:	ebfffffe 	bl	0 <vex::vision::takeSnapshot(unsigned long, unsigned long)>
  38:	e356000f 	cmp	r6, #15
  3c:	91560009 	cmpls	r6, r9
  40:	2a000027 	bcs	e4 <vex::vision::takeSnapshot(unsigned long, unsigned long)+0xe4>
  44:	e5940008 	ldr	r0, [r4, #8]
  48:	e1a01006 	mov	r1, r6
  4c:	e1a02007 	mov	r2, r7
  50:	ebfffffe 	bl	0 <vexVisionObjectGet>
  54:	e3a0300d 	mov	r3, #13
  58:	e0234693 	mla	r3, r3, r6, r4
  5c:	e2833d17 	add	r3, r3, #1472	; 0x5c0
  60:	e1d330b0 	ldrh	r3, [r3]
  64:	e3580000 	cmp	r8, #0
  68:	11530008 	cmpne	r3, r8
  6c:	1a000019 	bne	d8 <vex::vision::takeSnapshot(unsigned long, unsigned long)+0xd8>
  70:	e155000a 	cmp	r5, sl
  74:	2a000017 	bcs	d8 <vex::vision::takeSnapshot(unsigned long, unsigned long)+0xd8>
  78:	e5943068 	ldr	r3, [r4, #104]	; 0x68
  7c:	e1530005 	cmp	r3, r5
  80:	c3a00050 	movgt	r0, #80	; 0x50
  84:	c0204590 	mlagt	r0, r0, r5, r4
  88:	c2800070 	addgt	r0, r0, #112	; 0x70
  8c:	d2840e57 	addle	r0, r4, #1392	; 0x570
  90:	e3a0c00d 	mov	ip, #13
  94:	e02c469c 	mla	ip, ip, r6, r4
  98:	e1a0300c 	mov	r3, ip
  9c:	e5dcc5cc 	ldrb	ip, [ip, #1484]	; 0x5cc
  a0:	e5b315c0 	ldr	r1, [r3, #1472]!	; 0x5c0
  a4:	e5932004 	ldr	r2, [r3, #4]
  a8:	e5933008 	ldr	r3, [r3, #8]
  ac:	e5cdc000 	strb	ip, [sp]
  b0:	ebfffffe 	bl	0 <vex::vision::takeSnapshot(unsigned long, unsigned long)>
  b4:	e3550000 	cmp	r5, #0
  b8:	1a000005 	bne	d4 <vex::vision::takeSnapshot(unsigned long, unsigned long)+0xd4>
  bc:	e5943068 	ldr	r3, [r4, #104]	; 0x68
  c0:	e2840018 	add	r0, r4, #24
  c4:	e3530000 	cmp	r3, #0
  c8:	d2841e57 	addle	r1, r4, #1392	; 0x570
  cc:	c2841070 	addgt	r1, r4, #112	; 0x70
  d0:	ebfffffe 	bl	0 <vex::vision::takeSnapshot(unsigned long, unsigned long)>
  d4:	e2855001 	add	r5, r5, #1
  d8:	e2866001 	add	r6, r6, #1
  dc:	e287700d 	add	r7, r7, #13
  e0:	eaffffd4 	b	38 <vex::vision::takeSnapshot(unsigned long, unsigned long)+0x38>
  e4:	e1a00005 	mov	r0, r5
  e8:	e5845010 	str	r5, [r4, #16]
  ec:	e28dd008 	add	sp, sp, #8
  f0:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}

Disassembly of section .text._ZN3vex6vision12takeSnapshotEm:

00000000 <vex::vision::takeSnapshot(unsigned long)>:
   0:	e3a02008 	mov	r2, #8
   4:	eafffffe 	b	0 <vex::vision::takeSnapshot(unsigned long)>

Disassembly of section .text._ZN3vex6vision5valueEv:

00000000 <vex::vision::value()>:
   0:	e3a01001 	mov	r1, #1
   4:	eafffffe 	b	0 <vex::vision::value()>

Disassembly of section .text._ZN3vex6vision12takeSnapshotERNS0_4codeE:

00000000 <vex::vision::takeSnapshot(vex::vision::code&)>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e3a02008 	mov	r2, #8
   8:	e1a05001 	mov	r5, r1
   c:	e5911000 	ldr	r1, [r1]
  10:	e1a04000 	mov	r4, r0
  14:	ebfffffe 	bl	0 <vex::vision::takeSnapshot(vex::vision::code&)>
  18:	e2506000 	subs	r6, r0, #0
  1c:	da000009 	ble	48 <vex::vision::takeSnapshot(vex::vision::code&)+0x48>
  20:	e5d53004 	ldrb	r3, [r5, #4]
  24:	e3530000 	cmp	r3, #0
  28:	0a000006 	beq	48 <vex::vision::takeSnapshot(vex::vision::code&)+0x48>
  2c:	e5943068 	ldr	r3, [r4, #104]	; 0x68
  30:	e3530000 	cmp	r3, #0
  34:	c2840070 	addgt	r0, r4, #112	; 0x70
  38:	d2840e57 	addle	r0, r4, #1392	; 0x570
  3c:	ebfffffe 	bl	0 <vex::vision::takeSnapshot(vex::vision::code&)>
  40:	e2840018 	add	r0, r4, #24
  44:	ebfffffe 	bl	0 <vex::vision::takeSnapshot(vex::vision::code&)>
  48:	e1a00006 	mov	r0, r6
  4c:	e8bd8070 	pop	{r4, r5, r6, pc}

Disassembly of section .text._ZN3vex6vision12takeSnapshotERNS0_4codeEm:

00000000 <vex::vision::takeSnapshot(vex::vision::code&, unsigned long)>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a04001 	mov	r4, r1
   8:	e5911000 	ldr	r1, [r1]
   c:	e1a05000 	mov	r5, r0
  10:	ebfffffe 	bl	0 <vex::vision::takeSnapshot(vex::vision::code&, unsigned long)>
  14:	e2506000 	subs	r6, r0, #0
  18:	da000013 	ble	6c <vex::vision::takeSnapshot(vex::vision::code&, unsigned long)+0x6c>
  1c:	e5d43004 	ldrb	r3, [r4, #4]
  20:	e3530000 	cmp	r3, #0
  24:	0a000010 	beq	6c <vex::vision::takeSnapshot(vex::vision::code&, unsigned long)+0x6c>
  28:	e3a04000 	mov	r4, #0
  2c:	e5953068 	ldr	r3, [r5, #104]	; 0x68
  30:	e1530004 	cmp	r3, r4
  34:	c3a00050 	movgt	r0, #80	; 0x50
  38:	c0205490 	mlagt	r0, r0, r4, r5
  3c:	c2800070 	addgt	r0, r0, #112	; 0x70
  40:	ca000000 	bgt	48 <vex::vision::takeSnapshot(vex::vision::code&, unsigned long)+0x48>
  44:	e2850e57 	add	r0, r5, #1392	; 0x570
  48:	e2844001 	add	r4, r4, #1
  4c:	ebfffffe 	bl	0 <vex::vision::takeSnapshot(vex::vision::code&, unsigned long)>
  50:	e1540006 	cmp	r4, r6
  54:	aa000002 	bge	64 <vex::vision::takeSnapshot(vex::vision::code&, unsigned long)+0x64>
  58:	e3540000 	cmp	r4, #0
  5c:	aafffff2 	bge	2c <vex::vision::takeSnapshot(vex::vision::code&, unsigned long)+0x2c>
  60:	eafffff7 	b	44 <vex::vision::takeSnapshot(vex::vision::code&, unsigned long)+0x44>
  64:	e2850018 	add	r0, r5, #24
  68:	ebfffffe 	bl	0 <vex::vision::takeSnapshot(vex::vision::code&, unsigned long)>
  6c:	e1a00006 	mov	r0, r6
  70:	e8bd8070 	pop	{r4, r5, r6, pc}

Disassembly of section .text._ZN3vex6vision12takeSnapshotERNS0_9signatureE:

00000000 <vex::vision::takeSnapshot(vex::vision::signature&)>:
   0:	e5913028 	ldr	r3, [r1, #40]	; 0x28
   4:	e3a02008 	mov	r2, #8
   8:	e5931000 	ldr	r1, [r3]
   c:	eafffffe 	b	0 <vex::vision::takeSnapshot(vex::vision::signature&)>

Disassembly of section .text._ZN3vex6vision12takeSnapshotERNS0_9signatureEm:

00000000 <vex::vision::takeSnapshot(vex::vision::signature&, unsigned long)>:
   0:	e5913028 	ldr	r3, [r1, #40]	; 0x28
   4:	e5931000 	ldr	r1, [r3]
   8:	eafffffe 	b	0 <vex::vision::takeSnapshot(vex::vision::signature&, unsigned long)>

Disassembly of section .text._ZN3vex6vision6objectaSEl:

00000000 <vex::vision::object::operator=(long)>:
   0:	e3a02000 	mov	r2, #0
   4:	e5801000 	str	r1, [r0]
   8:	e92d4030 	push	{r4, r5, lr}
   c:	e3a04000 	mov	r4, #0
  10:	e3a05000 	mov	r5, #0
  14:	e5802004 	str	r2, [r0, #4]
  18:	e5802008 	str	r2, [r0, #8]
  1c:	e580200c 	str	r2, [r0, #12]
  20:	e5802010 	str	r2, [r0, #16]
  24:	e5802014 	str	r2, [r0, #20]
  28:	e5802018 	str	r2, [r0, #24]
  2c:	e1c042f0 	strd	r4, [r0, #32]
  30:	e5c02028 	strb	r2, [r0, #40]	; 0x28
  34:	e8bd8030 	pop	{r4, r5, pc}

Disassembly of section .text._ZN3vex6visionC2El:

00000000 <vex::vision::vision(long)>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <vex::device::device(long)>
   c:	e59f308c 	ldr	r3, [pc, #140]	; a0 <vex::vision::vision(long)+0xa0>
  10:	e1a00004 	mov	r0, r4
  14:	e2845070 	add	r5, r4, #112	; 0x70
  18:	e2846e57 	add	r6, r4, #1392	; 0x570
  1c:	e4803018 	str	r3, [r0], #24
  20:	ebfffffe 	bl	0 <vex::vision::vision(long)>
  24:	e1a00005 	mov	r0, r5
  28:	e2855050 	add	r5, r5, #80	; 0x50
  2c:	ebfffffe 	bl	0 <vex::vision::vision(long)>
  30:	e1550006 	cmp	r5, r6
  34:	1afffffa 	bne	24 <vex::vision::vision(long)+0x24>
  38:	e1a00005 	mov	r0, r5
  3c:	ebfffffe 	bl	0 <vex::vision::vision(long)>
  40:	e3a03010 	mov	r3, #16
  44:	e3a01000 	mov	r1, #0
  48:	e5843068 	str	r3, [r4, #104]	; 0x68
  4c:	e1a00005 	mov	r0, r5
  50:	ebfffffe 	bl	0 <vex::vision::vision(long)>
  54:	e1a00004 	mov	r0, r4
  58:	ebfffffe 	bl	0 <vex::vision::vision(long)>
  5c:	e1a00004 	mov	r0, r4
  60:	ebfffffe 	bl	0 <vex::vision::vision(long)>
  64:	e3500000 	cmp	r0, #0
  68:	0a00000a 	beq	98 <vex::vision::vision(long)+0x98>
  6c:	e3a01001 	mov	r1, #1
  70:	e1a00004 	mov	r0, r4
  74:	ebfffffe 	bl	0 <vex::vision::vision(long)>
  78:	e3a01000 	mov	r1, #0
  7c:	e1a03001 	mov	r3, r1
  80:	e1a00004 	mov	r0, r4
  84:	e3a020c0 	mov	r2, #192	; 0xc0
  88:	ebfffffe 	bl	0 <vex::vision::vision(long)>
  8c:	e1a00004 	mov	r0, r4
  90:	e3a01001 	mov	r1, #1
  94:	ebfffffe 	bl	0 <vex::vision::vision(long)>
  98:	e1a00004 	mov	r0, r4
  9c:	e8bd8070 	pop	{r4, r5, r6, pc}
  a0:	00000008 	andeq	r0, r0, r8

Disassembly of section .rodata._ZTVN3vex6visionE:

00000000 <vtable for vex::vision>:
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
  44:	5b202965 	blpl	80a5e0 <vex::vision::takeSnapshot(unsigned long, unsigned long)+0x80a5e0>
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

