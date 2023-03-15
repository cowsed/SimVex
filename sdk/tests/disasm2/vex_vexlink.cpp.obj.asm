
vex_vexlink.cpp.obj:     file format elf32-littlearm


Disassembly of section .text._ZN3vex7vexlinkD2Ev:

00000000 <vex::vexlink::~vexlink()>:
   0:	e59f3014 	ldr	r3, [pc, #20]	; 1c <vex::vexlink::~vexlink()+0x1c>
   4:	e92d4010 	push	{r4, lr}
   8:	e1a04000 	mov	r4, r0
   c:	e5803000 	str	r3, [r0]
  10:	ebfffffe 	bl	0 <vex::device::~device()>
  14:	e1a00004 	mov	r0, r4
  18:	e8bd8010 	pop	{r4, pc}
  1c:	00000008 	andeq	r0, r0, r8

Disassembly of section .text._ZN3vex11serial_linkD2Ev:

00000000 <vex::serial_link::~serial_link()>:
   0:	e59f301c 	ldr	r3, [pc, #28]	; 24 <vex::serial_link::~serial_link()+0x24>
   4:	e92d4010 	push	{r4, lr}
   8:	e1a04000 	mov	r4, r0
   c:	e5803000 	str	r3, [r0]
  10:	e3a03000 	mov	r3, #0
  14:	e58034b4 	str	r3, [r0, #1204]	; 0x4b4
  18:	ebfffffe 	bl	0 <vex::serial_link::~serial_link()>
  1c:	e1a00004 	mov	r0, r4
  20:	e8bd8010 	pop	{r4, pc}
  24:	00000008 	andeq	r0, r0, r8

Disassembly of section .text._ZN3vex12message_linkD2Ev:

00000000 <vex::message_link::~message_link()>:
   0:	e59f301c 	ldr	r3, [pc, #28]	; 24 <vex::message_link::~message_link()+0x24>
   4:	e92d4010 	push	{r4, lr}
   8:	e1a04000 	mov	r4, r0
   c:	e5803000 	str	r3, [r0]
  10:	e3a03000 	mov	r3, #0
  14:	e58034b8 	str	r3, [r0, #1208]	; 0x4b8
  18:	ebfffffe 	bl	0 <vex::message_link::~message_link()>
  1c:	e1a00004 	mov	r0, r4
  20:	e8bd8010 	pop	{r4, pc}
  24:	00000008 	andeq	r0, r0, r8

Disassembly of section .text._ZN3vex7vexlinkD0Ev:

00000000 <vex::vexlink::~vexlink()>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <vex::vexlink::~vexlink()>
   c:	e1a00004 	mov	r0, r4
  10:	ebfffffe 	bl	0 <operator delete(void*)>
  14:	e1a00004 	mov	r0, r4
  18:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex11serial_linkD0Ev:

00000000 <vex::serial_link::~serial_link()>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <vex::serial_link::~serial_link()>
   c:	e1a00004 	mov	r0, r4
  10:	ebfffffe 	bl	0 <operator delete(void*)>
  14:	e1a00004 	mov	r0, r4
  18:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex12message_linkD0Ev:

00000000 <vex::message_link::~message_link()>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <vex::message_link::~message_link()>
   c:	e1a00004 	mov	r0, r4
  10:	ebfffffe 	bl	0 <operator delete(void*)>
  14:	e1a00004 	mov	r0, r4
  18:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text._ZN3vex7vexlink9installedEv:

00000000 <vex::vexlink::installed()>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vex::device::type()>
   8:	e2400081 	sub	r0, r0, #129	; 0x81
   c:	e16f0f10 	clz	r0, r0
  10:	e1a002a0 	lsr	r0, r0, #5
  14:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text._ZN3vex7vexlinkC2El:

00000000 <vex::vexlink::vexlink(long)>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <vex::device::device(long)>
   c:	e59f3044 	ldr	r3, [pc, #68]	; 58 <vex::vexlink::vexlink(long)+0x58>
  10:	e3a05000 	mov	r5, #0
  14:	e2840e41 	add	r0, r4, #1040	; 0x410
  18:	e5845010 	str	r5, [r4, #16]
  1c:	e5c45014 	strb	r5, [r4, #20]
  20:	e1a01005 	mov	r1, r5
  24:	e5843000 	str	r3, [r4]
  28:	e3a02080 	mov	r2, #128	; 0x80
  2c:	e2800006 	add	r0, r0, #6
  30:	ebfffffe 	bl	0 <memset>
  34:	e5845498 	str	r5, [r4, #1176]	; 0x498
  38:	e584549c 	str	r5, [r4, #1180]	; 0x49c
  3c:	e1a00004 	mov	r0, r4
  40:	e58454a0 	str	r5, [r4, #1184]	; 0x4a0
  44:	e58454a4 	str	r5, [r4, #1188]	; 0x4a4
  48:	e58454a8 	str	r5, [r4, #1192]	; 0x4a8
  4c:	e58454ac 	str	r5, [r4, #1196]	; 0x4ac
  50:	e58454b0 	str	r5, [r4, #1200]	; 0x4b0
  54:	e8bd8038 	pop	{r3, r4, r5, pc}
  58:	00000008 	andeq	r0, r0, r8

Disassembly of section .text._ZN3vex7vexlinkC2ElPKcNS_8linkTypeEb:

00000000 <vex::vexlink::vexlink(long, char const*, vex::linkType, bool)>:
   0:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
   4:	e1a05003 	mov	r5, r3
   8:	e5dd7018 	ldrb	r7, [sp, #24]
   c:	e1a04000 	mov	r4, r0
  10:	e1a06002 	mov	r6, r2
  14:	ebfffffe 	bl	0 <vex::device::device(long)>
  18:	e59f3158 	ldr	r3, [pc, #344]	; 178 <vex::vexlink::vexlink(long, char const*, vex::linkType, bool)+0x178>
  1c:	e3570000 	cmp	r7, #0
  20:	e5843000 	str	r3, [r4]
  24:	e2453001 	sub	r3, r5, #1
  28:	1a000016 	bne	88 <vex::vexlink::vexlink(long, char const*, vex::linkType, bool)+0x88>
  2c:	e3530001 	cmp	r3, #1
  30:	8a000029 	bhi	dc <vex::vexlink::vexlink(long, char const*, vex::linkType, bool)+0xdc>
  34:	e2452001 	sub	r2, r5, #1
  38:	e3a03001 	mov	r3, #1
  3c:	e16f2f12 	clz	r2, r2
  40:	e5940008 	ldr	r0, [r4, #8]
  44:	e1a01006 	mov	r1, r6
  48:	e1a022a2 	lsr	r2, r2, #5
  4c:	ebfffffe 	bl	0 <vexGenericRadioConnection>
  50:	e59f3124 	ldr	r3, [pc, #292]	; 17c <vex::vexlink::vexlink(long, char const*, vex::linkType, bool)+0x17c>
  54:	e5843498 	str	r3, [r4, #1176]	; 0x498
  58:	e59f3120 	ldr	r3, [pc, #288]	; 180 <vex::vexlink::vexlink(long, char const*, vex::linkType, bool)+0x180>
  5c:	e584349c 	str	r3, [r4, #1180]	; 0x49c
  60:	e59f311c 	ldr	r3, [pc, #284]	; 184 <vex::vexlink::vexlink(long, char const*, vex::linkType, bool)+0x184>
  64:	e58434a0 	str	r3, [r4, #1184]	; 0x4a0
  68:	e59f3118 	ldr	r3, [pc, #280]	; 188 <vex::vexlink::vexlink(long, char const*, vex::linkType, bool)+0x188>
  6c:	e58434a4 	str	r3, [r4, #1188]	; 0x4a4
  70:	e59f3114 	ldr	r3, [pc, #276]	; 18c <vex::vexlink::vexlink(long, char const*, vex::linkType, bool)+0x18c>
  74:	e58434a8 	str	r3, [r4, #1192]	; 0x4a8
  78:	e59f3110 	ldr	r3, [pc, #272]	; 190 <vex::vexlink::vexlink(long, char const*, vex::linkType, bool)+0x190>
  7c:	e58434ac 	str	r3, [r4, #1196]	; 0x4ac
  80:	e59f310c 	ldr	r3, [pc, #268]	; 194 <vex::vexlink::vexlink(long, char const*, vex::linkType, bool)+0x194>
  84:	ea000029 	b	130 <vex::vexlink::vexlink(long, char const*, vex::linkType, bool)+0x130>
  88:	e3530001 	cmp	r3, #1
  8c:	8a000012 	bhi	dc <vex::vexlink::vexlink(long, char const*, vex::linkType, bool)+0xdc>
  90:	e2451001 	sub	r1, r5, #1
  94:	e5940008 	ldr	r0, [r4, #8]
  98:	e16f1f11 	clz	r1, r1
  9c:	e1a012a1 	lsr	r1, r1, #5
  a0:	ebfffffe 	bl	0 <vexGenericCdcConnection>
  a4:	e59f30ec 	ldr	r3, [pc, #236]	; 198 <vex::vexlink::vexlink(long, char const*, vex::linkType, bool)+0x198>
  a8:	e5843498 	str	r3, [r4, #1176]	; 0x498
  ac:	e59f30e8 	ldr	r3, [pc, #232]	; 19c <vex::vexlink::vexlink(long, char const*, vex::linkType, bool)+0x19c>
  b0:	e584349c 	str	r3, [r4, #1180]	; 0x49c
  b4:	e59f30e4 	ldr	r3, [pc, #228]	; 1a0 <vex::vexlink::vexlink(long, char const*, vex::linkType, bool)+0x1a0>
  b8:	e58434a0 	str	r3, [r4, #1184]	; 0x4a0
  bc:	e59f30e0 	ldr	r3, [pc, #224]	; 1a4 <vex::vexlink::vexlink(long, char const*, vex::linkType, bool)+0x1a4>
  c0:	e58434a4 	str	r3, [r4, #1188]	; 0x4a4
  c4:	e59f30dc 	ldr	r3, [pc, #220]	; 1a8 <vex::vexlink::vexlink(long, char const*, vex::linkType, bool)+0x1a8>
  c8:	e58434a8 	str	r3, [r4, #1192]	; 0x4a8
  cc:	e59f30d8 	ldr	r3, [pc, #216]	; 1ac <vex::vexlink::vexlink(long, char const*, vex::linkType, bool)+0x1ac>
  d0:	e58434ac 	str	r3, [r4, #1196]	; 0x4ac
  d4:	e59f30d4 	ldr	r3, [pc, #212]	; 1b0 <vex::vexlink::vexlink(long, char const*, vex::linkType, bool)+0x1b0>
  d8:	ea000014 	b	130 <vex::vexlink::vexlink(long, char const*, vex::linkType, bool)+0x130>
  dc:	e3550003 	cmp	r5, #3
  e0:	1a000013 	bne	134 <vex::vexlink::vexlink(long, char const*, vex::linkType, bool)+0x134>
  e4:	e5940008 	ldr	r0, [r4, #8]
  e8:	e3a01000 	mov	r1, #0
  ec:	ebfffffe 	bl	0 <vexGenericSerialEnable>
  f0:	e5940008 	ldr	r0, [r4, #8]
  f4:	e3a01be1 	mov	r1, #230400	; 0x38400
  f8:	ebfffffe 	bl	0 <vexGenericSerialBaudrate>
  fc:	e59f30b0 	ldr	r3, [pc, #176]	; 1b4 <vex::vexlink::vexlink(long, char const*, vex::linkType, bool)+0x1b4>
 100:	e5843498 	str	r3, [r4, #1176]	; 0x498
 104:	e59f30ac 	ldr	r3, [pc, #172]	; 1b8 <vex::vexlink::vexlink(long, char const*, vex::linkType, bool)+0x1b8>
 108:	e584349c 	str	r3, [r4, #1180]	; 0x49c
 10c:	e59f30a8 	ldr	r3, [pc, #168]	; 1bc <vex::vexlink::vexlink(long, char const*, vex::linkType, bool)+0x1bc>
 110:	e58434a0 	str	r3, [r4, #1184]	; 0x4a0
 114:	e59f30a4 	ldr	r3, [pc, #164]	; 1c0 <vex::vexlink::vexlink(long, char const*, vex::linkType, bool)+0x1c0>
 118:	e58434a4 	str	r3, [r4, #1188]	; 0x4a4
 11c:	e59f30a0 	ldr	r3, [pc, #160]	; 1c4 <vex::vexlink::vexlink(long, char const*, vex::linkType, bool)+0x1c4>
 120:	e58434a8 	str	r3, [r4, #1192]	; 0x4a8
 124:	e59f309c 	ldr	r3, [pc, #156]	; 1c8 <vex::vexlink::vexlink(long, char const*, vex::linkType, bool)+0x1c8>
 128:	e58434ac 	str	r3, [r4, #1196]	; 0x4ac
 12c:	e59f3098 	ldr	r3, [pc, #152]	; 1cc <vex::vexlink::vexlink(long, char const*, vex::linkType, bool)+0x1cc>
 130:	e58434b0 	str	r3, [r4, #1200]	; 0x4b0
 134:	e5845010 	str	r5, [r4, #16]
 138:	e2845e41 	add	r5, r4, #1040	; 0x410
 13c:	e2855006 	add	r5, r5, #6
 140:	e3a01000 	mov	r1, #0
 144:	e5c47014 	strb	r7, [r4, #20]
 148:	e3a02080 	mov	r2, #128	; 0x80
 14c:	e5c41015 	strb	r1, [r4, #21]
 150:	e1a00005 	mov	r0, r5
 154:	ebfffffe 	bl	0 <memset>
 158:	e3560000 	cmp	r6, #0
 15c:	0a000003 	beq	170 <vex::vexlink::vexlink(long, char const*, vex::linkType, bool)+0x170>
 160:	e1a00005 	mov	r0, r5
 164:	e1a01006 	mov	r1, r6
 168:	e3a0207f 	mov	r2, #127	; 0x7f
 16c:	ebfffffe 	bl	0 <memcpy>
 170:	e1a00004 	mov	r0, r4
 174:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}
 178:	00000008 	andeq	r0, r0, r8
	...

Disassembly of section .text._ZN3vex7vexlink8isLinkedEv:

00000000 <vex::vexlink::isLinked()>:
   0:	e5d03014 	ldrb	r3, [r0, #20]
   4:	e3530000 	cmp	r3, #0
   8:	e5903010 	ldr	r3, [r0, #16]
   c:	e2432001 	sub	r2, r3, #1
  10:	1a000003 	bne	24 <vex::vexlink::isLinked()+0x24>
  14:	e3520001 	cmp	r2, #1
  18:	8a000005 	bhi	34 <vex::vexlink::isLinked()+0x34>
  1c:	e5900008 	ldr	r0, [r0, #8]
  20:	eafffffe 	b	0 <vexGenericRadioLinkStatus>
  24:	e3520001 	cmp	r2, #1
  28:	8a000001 	bhi	34 <vex::vexlink::isLinked()+0x34>
  2c:	e5900008 	ldr	r0, [r0, #8]
  30:	eafffffe 	b	0 <vexGenericCdcLinkStatus>
  34:	e2430003 	sub	r0, r3, #3
  38:	e16f0f10 	clz	r0, r0
  3c:	e1a002a0 	lsr	r0, r0, #5
  40:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex7vexlink5debugEl:

00000000 <vex::vexlink::debug(long)>:
   0:	e5d03014 	ldrb	r3, [r0, #20]
   4:	e3530000 	cmp	r3, #0
   8:	e5903010 	ldr	r3, [r0, #16]
   c:	e2433001 	sub	r3, r3, #1
  10:	1a000003 	bne	24 <vex::vexlink::debug(long)+0x24>
  14:	e3530001 	cmp	r3, #1
  18:	8a000005 	bhi	34 <vex::vexlink::debug(long)+0x34>
  1c:	e5900008 	ldr	r0, [r0, #8]
  20:	eafffffe 	b	0 <vexGenericRadioDebugGet>
  24:	e3530001 	cmp	r3, #1
  28:	8a000001 	bhi	34 <vex::vexlink::debug(long)+0x34>
  2c:	e5900008 	ldr	r0, [r0, #8]
  30:	eafffffe 	b	0 <vexGenericCdcDebugGet>
  34:	e3a00000 	mov	r0, #0
  38:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex7vexlink4baudEl:

00000000 <vex::vexlink::baud(long)>:
   0:	e5903010 	ldr	r3, [r0, #16]
   4:	e3530003 	cmp	r3, #3
   8:	112fff1e 	bxne	lr
   c:	e5900008 	ldr	r0, [r0, #8]
  10:	eafffffe 	b	0 <vexGenericSerialBaudrate>

Disassembly of section .text._ZN3vex7vexlink11isReceivingEv:

00000000 <vex::vexlink::isReceiving()>:
   0:	e92d4008 	push	{r3, lr}
   4:	e5903498 	ldr	r3, [r0, #1176]	; 0x498
   8:	e5900008 	ldr	r0, [r0, #8]
   c:	e12fff33 	blx	r3
  10:	e3500000 	cmp	r0, #0
  14:	d3a00000 	movle	r0, #0
  18:	c3a00001 	movgt	r0, #1
  1c:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text._ZN3vex7vexlink5crc32EPhmm:

00000000 <vex::vexlink::crc32(unsigned char*, unsigned long, unsigned long)>:
   0:	e92d4030 	push	{r4, r5, lr}
   4:	e59fe068 	ldr	lr, [pc, #104]	; 74 <vex::vexlink::crc32(unsigned char*, unsigned long, unsigned long)+0x74>
   8:	e59e3004 	ldr	r3, [lr, #4]
   c:	e3530000 	cmp	r3, #0
  10:	0a00000c 	beq	48 <vex::vexlink::crc32(unsigned char*, unsigned long, unsigned long)+0x48>
  14:	e0801001 	add	r1, r0, r1
  18:	ea00000d 	b	54 <vex::vexlink::crc32(unsigned char*, unsigned long, unsigned long)+0x54>
  1c:	e35c0000 	cmp	ip, #0
  20:	e1a0508c 	lsl	r5, ip, #1
  24:	b59fc04c 	ldrlt	ip, [pc, #76]	; 78 <vex::vexlink::crc32(unsigned char*, unsigned long, unsigned long)+0x78>
  28:	a1a0c005 	movge	ip, r5
  2c:	b02cc005 	eorlt	ip, ip, r5
  30:	e2544001 	subs	r4, r4, #1
  34:	1afffff8 	bne	1c <vex::vexlink::crc32(unsigned char*, unsigned long, unsigned long)+0x1c>
  38:	e78ec103 	str	ip, [lr, r3, lsl #2]
  3c:	e2833001 	add	r3, r3, #1
  40:	e3530c01 	cmp	r3, #256	; 0x100
  44:	0afffff2 	beq	14 <vex::vexlink::crc32(unsigned char*, unsigned long, unsigned long)+0x14>
  48:	e1a0cc03 	lsl	ip, r3, #24
  4c:	e3a04008 	mov	r4, #8
  50:	eafffff1 	b	1c <vex::vexlink::crc32(unsigned char*, unsigned long, unsigned long)+0x1c>
  54:	e1500001 	cmp	r0, r1
  58:	14d03001 	ldrbne	r3, [r0], #1
  5c:	10233c22 	eorne	r3, r3, r2, lsr #24
  60:	179e3103 	ldrne	r3, [lr, r3, lsl #2]
  64:	10232402 	eorne	r2, r3, r2, lsl #8
  68:	1afffff9 	bne	54 <vex::vexlink::crc32(unsigned char*, unsigned long, unsigned long)+0x54>
  6c:	e1a00002 	mov	r0, r2
  70:	e8bd8030 	pop	{r4, r5, pc}
  74:	00000000 	andeq	r0, r0, r0
  78:	04c11db7 	strbeq	r1, [r1], #3511	; 0xdb7

Disassembly of section .text._ZN3vex7vexlink8strcrc32EPKc:

00000000 <vex::vexlink::strcrc32(char const*)>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <strlen>
   c:	e3a02000 	mov	r2, #0
  10:	e1a01000 	mov	r1, r0
  14:	e1a00004 	mov	r0, r4
  18:	e8bd4010 	pop	{r4, lr}
  1c:	eafffffe 	b	0 <vex::vexlink::strcrc32(char const*)>

Disassembly of section .text._ZN3vex11serial_linkC2ElPKcNS_8linkTypeEb:

00000000 <vex::serial_link::serial_link(long, char const*, vex::linkType, bool)>:
   0:	e92d4013 	push	{r0, r1, r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e5ddc010 	ldrb	ip, [sp, #16]
   c:	e58dc000 	str	ip, [sp]
  10:	ebfffffe 	bl	0 <vex::serial_link::serial_link(long, char const*, vex::linkType, bool)>
  14:	e59f3014 	ldr	r3, [pc, #20]	; 30 <vex::serial_link::serial_link(long, char const*, vex::linkType, bool)+0x30>
  18:	e1a00004 	mov	r0, r4
  1c:	e5843000 	str	r3, [r4]
  20:	e3a03000 	mov	r3, #0
  24:	e58434b4 	str	r3, [r4, #1204]	; 0x4b4
  28:	e28dd008 	add	sp, sp, #8
  2c:	e8bd8010 	pop	{r4, pc}
  30:	00000008 	andeq	r0, r0, r8

Disassembly of section .text._ZN3vex11serial_link4sendEPhl:

00000000 <vex::serial_link::send(unsigned char*, long)>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a06001 	mov	r6, r1
   c:	e1a04002 	mov	r4, r2
  10:	ebfffffe 	bl	0 <vex::serial_link::send(unsigned char*, long)>
  14:	e3500000 	cmp	r0, #0
  18:	1a000001 	bne	24 <vex::serial_link::send(unsigned char*, long)+0x24>
  1c:	e3e00000 	mvn	r0, #0
  20:	e8bd8070 	pop	{r4, r5, r6, pc}
  24:	e59534a8 	ldr	r3, [r5, #1192]	; 0x4a8
  28:	e5950008 	ldr	r0, [r5, #8]
  2c:	e12fff33 	blx	r3
  30:	e1500004 	cmp	r0, r4
  34:	dafffff8 	ble	1c <vex::serial_link::send(unsigned char*, long)+0x1c>
  38:	e59534b0 	ldr	r3, [r5, #1200]	; 0x4b0
  3c:	e1a01006 	mov	r1, r6
  40:	e5950008 	ldr	r0, [r5, #8]
  44:	e1a02004 	mov	r2, r4
  48:	e12fff33 	blx	r3
  4c:	e1a00004 	mov	r0, r4
  50:	e8bd8070 	pop	{r4, r5, r6, pc}

Disassembly of section .text._ZN3vex11serial_link7receiveEPhll:

00000000 <vex::serial_link::receive(unsigned char*, long, long)>:
   0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e1a07001 	mov	r7, r1
   c:	e1a06002 	mov	r6, r2
  10:	e1a05003 	mov	r5, r3
  14:	ebfffffe 	bl	0 <vex::serial_link::receive(unsigned char*, long, long)>
  18:	e3500000 	cmp	r0, #0
  1c:	0a000017 	beq	80 <vex::serial_link::receive(unsigned char*, long, long)+0x80>
  20:	ebfffffe 	bl	0 <vexSystemTimeGet>
  24:	e0805005 	add	r5, r0, r5
  28:	e5943498 	ldr	r3, [r4, #1176]	; 0x498
  2c:	e5940008 	ldr	r0, [r4, #8]
  30:	e12fff33 	blx	r3
  34:	e1500006 	cmp	r0, r6
  38:	aa000007 	bge	5c <vex::serial_link::receive(unsigned char*, long, long)+0x5c>
  3c:	ebfffffe 	bl	0 <vexSystemTimeGet>
  40:	e1550000 	cmp	r5, r0
  44:	2a00000a 	bcs	74 <vex::serial_link::receive(unsigned char*, long, long)+0x74>
  48:	e5943498 	ldr	r3, [r4, #1176]	; 0x498
  4c:	e5940008 	ldr	r0, [r4, #8]
  50:	e12fff33 	blx	r3
  54:	e3500000 	cmp	r0, #0
  58:	0a000008 	beq	80 <vex::serial_link::receive(unsigned char*, long, long)+0x80>
  5c:	e59434a4 	ldr	r3, [r4, #1188]	; 0x4a4
  60:	e1a01007 	mov	r1, r7
  64:	e5940008 	ldr	r0, [r4, #8]
  68:	e1a02006 	mov	r2, r6
  6c:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
  70:	e12fff13 	bx	r3
  74:	e3a00005 	mov	r0, #5
  78:	ebfffffe 	bl	0 <vexTaskSleep>
  7c:	eaffffe9 	b	28 <vex::serial_link::receive(unsigned char*, long, long)+0x28>
  80:	e3e00000 	mvn	r0, #0
  84:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

Disassembly of section .text._ZN3vex11serial_link13_eventHandlerEv:

00000000 <vex::serial_link::_eventHandler()>:
   0:	e59034b4 	ldr	r3, [r0, #1204]	; 0x4b4
   4:	e3530000 	cmp	r3, #0
   8:	012fff1e 	bxeq	lr
   c:	e59034a4 	ldr	r3, [r0, #1188]	; 0x4a4
  10:	e3530000 	cmp	r3, #0
  14:	012fff1e 	bxeq	lr
  18:	e92d4070 	push	{r4, r5, r6, lr}
  1c:	e2805f85 	add	r5, r0, #532	; 0x214
  20:	e2855002 	add	r5, r5, #2
  24:	e1a04000 	mov	r4, r0
  28:	e3a02c02 	mov	r2, #512	; 0x200
  2c:	e5900008 	ldr	r0, [r0, #8]
  30:	e1a01005 	mov	r1, r5
  34:	e12fff33 	blx	r3
  38:	e59434b4 	ldr	r3, [r4, #1204]	; 0x4b4
  3c:	e3530000 	cmp	r3, #0
  40:	e1a01000 	mov	r1, r0
  44:	08bd8070 	popeq	{r4, r5, r6, pc}
  48:	e1a00005 	mov	r0, r5
  4c:	e8bd4070 	pop	{r4, r5, r6, lr}
  50:	e12fff13 	bx	r3

Disassembly of section .text._ZN3vex11serial_link13_eventHandlerEPv:

00000000 <vex::serial_link::_eventHandler(void*)>:
   0:	e3500000 	cmp	r0, #0
   4:	012fff1e 	bxeq	lr
   8:	eafffffe 	b	0 <vex::serial_link::_eventHandler(void*)>

Disassembly of section .text._ZN3vex11serial_link8receivedEPFvPhlE:

00000000 <vex::serial_link::received(void (*)(unsigned char*, long))>:
   0:	e5d03015 	ldrb	r3, [r0, #21]
   4:	e58014b4 	str	r1, [r0, #1204]	; 0x4b4
   8:	e3530000 	cmp	r3, #0
   c:	112fff1e 	bxne	lr
  10:	e92d4010 	push	{r4, lr}
  14:	e1a04000 	mov	r4, r0
  18:	e1a03004 	mov	r3, r4
  1c:	e5900008 	ldr	r0, [r0, #8]
  20:	e3a01001 	mov	r1, #1
  24:	e59f200c 	ldr	r2, [pc, #12]	; 38 <vex::serial_link::received(void (*)(unsigned char*, long))+0x38>
  28:	ebfffffe 	bl	0 <vex::event::init(unsigned long, unsigned long, void (*)(void*), void*)>
  2c:	e3a03001 	mov	r3, #1
  30:	e5c43015 	strb	r3, [r4, #21]
  34:	e8bd8010 	pop	{r4, pc}
  38:	00000000 	andeq	r0, r0, r0

Disassembly of section .text._ZN3vex12message_linkC2ElPKcNS_8linkTypeEb:

00000000 <vex::message_link::message_link(long, char const*, vex::linkType, bool)>:
   0:	e92d4013 	push	{r0, r1, r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e5ddc010 	ldrb	ip, [sp, #16]
   c:	e58dc000 	str	ip, [sp]
  10:	ebfffffe 	bl	0 <vex::message_link::message_link(long, char const*, vex::linkType, bool)>
  14:	e59f302c 	ldr	r3, [pc, #44]	; 48 <vex::message_link::message_link(long, char const*, vex::linkType, bool)+0x48>
  18:	e1a00004 	mov	r0, r4
  1c:	e5843000 	str	r3, [r4]
  20:	e3a03001 	mov	r3, #1
  24:	e5c434b4 	strb	r3, [r4, #1204]	; 0x4b4
  28:	e3a03002 	mov	r3, #2
  2c:	e5c434b5 	strb	r3, [r4, #1205]	; 0x4b5
  30:	e3a03000 	mov	r3, #0
  34:	e58434b8 	str	r3, [r4, #1208]	; 0x4b8
  38:	e58434d8 	str	r3, [r4, #1240]	; 0x4d8
  3c:	e58434d4 	str	r3, [r4, #1236]	; 0x4d4
  40:	e28dd008 	add	sp, sp, #8
  44:	e8bd8010 	pop	{r4, pc}
  48:	00000008 	andeq	r0, r0, r8

Disassembly of section .text._ZN3vex12message_link4sendEPKc:

00000000 <vex::message_link::send(char const*)>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a06001 	mov	r6, r1
   c:	ebfffffe 	bl	0 <vex::message_link::send(char const*)>
  10:	e3500000 	cmp	r0, #0
  14:	1a000001 	bne	20 <vex::message_link::send(char const*)+0x20>
  18:	e3e00000 	mvn	r0, #0
  1c:	e8bd8070 	pop	{r4, r5, r6, pc}
  20:	e1a00006 	mov	r0, r6
  24:	ebfffffe 	bl	0 <strlen>
  28:	e59534a8 	ldr	r3, [r5, #1192]	; 0x4a8
  2c:	e2804001 	add	r4, r0, #1
  30:	e5950008 	ldr	r0, [r5, #8]
  34:	e12fff33 	blx	r3
  38:	e1500004 	cmp	r0, r4
  3c:	dafffff5 	ble	18 <vex::message_link::send(char const*)+0x18>
  40:	e59534b0 	ldr	r3, [r5, #1200]	; 0x4b0
  44:	e1a01006 	mov	r1, r6
  48:	e5950008 	ldr	r0, [r5, #8]
  4c:	e1a02004 	mov	r2, r4
  50:	e12fff33 	blx	r3
  54:	e1a00004 	mov	r0, r4
  58:	e8bd8070 	pop	{r4, r5, r6, pc}

Disassembly of section .text._ZN3vex12message_link4sendEPKcd:

00000000 <vex::message_link::send(char const*, double)>:
   0:	e92d43f7 	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e1a05001 	mov	r5, r1
   c:	e1a08002 	mov	r8, r2
  10:	e1a09003 	mov	r9, r3
  14:	ebfffffe 	bl	0 <vex::message_link::send(char const*, double)>
  18:	e3500000 	cmp	r0, #0
  1c:	1a000001 	bne	28 <vex::message_link::send(char const*, double)+0x28>
  20:	e3e00000 	mvn	r0, #0
  24:	ea00001d 	b	a0 <vex::message_link::send(char const*, double)+0xa0>
  28:	e2846016 	add	r6, r4, #22
  2c:	e1a03005 	mov	r3, r5
  30:	e30011ff 	movw	r1, #511	; 0x1ff
  34:	e59f206c 	ldr	r2, [pc, #108]	; a8 <vex::message_link::send(char const*, double)+0xa8>
  38:	e1cd80f0 	strd	r8, [sp]
  3c:	e1a00006 	mov	r0, r6
  40:	ebfffffe 	bl	0 <vex_snprintf>
  44:	e1a00006 	mov	r0, r6
  48:	ebfffffe 	bl	0 <strlen>
  4c:	e59434a8 	ldr	r3, [r4, #1192]	; 0x4a8
  50:	e2805002 	add	r5, r0, #2
  54:	e1a07000 	mov	r7, r0
  58:	e5940008 	ldr	r0, [r4, #8]
  5c:	e12fff33 	blx	r3
  60:	e1500005 	cmp	r0, r5
  64:	daffffed 	ble	20 <vex::message_link::send(char const*, double)+0x20>
  68:	e59434ac 	ldr	r3, [r4, #1196]	; 0x4ac
  6c:	e5d414b4 	ldrb	r1, [r4, #1204]	; 0x4b4
  70:	e5940008 	ldr	r0, [r4, #8]
  74:	e12fff33 	blx	r3
  78:	e59434b0 	ldr	r3, [r4, #1200]	; 0x4b0
  7c:	e1a01006 	mov	r1, r6
  80:	e1a02007 	mov	r2, r7
  84:	e5940008 	ldr	r0, [r4, #8]
  88:	e12fff33 	blx	r3
  8c:	e59434ac 	ldr	r3, [r4, #1196]	; 0x4ac
  90:	e5940008 	ldr	r0, [r4, #8]
  94:	e3a01000 	mov	r1, #0
  98:	e12fff33 	blx	r3
  9c:	e1a00005 	mov	r0, r5
  a0:	e28dd00c 	add	sp, sp, #12
  a4:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}
  a8:	00000000 	andeq	r0, r0, r0

Disassembly of section .text._ZN3vex12message_link4sendEPKcld:

00000000 <vex::message_link::send(char const*, long, double)>:
   0:	e92d40f0 	push	{r4, r5, r6, r7, lr}
   4:	e24dd014 	sub	sp, sp, #20
   8:	e1a04000 	mov	r4, r0
   c:	e1a05001 	mov	r5, r1
  10:	e1a07002 	mov	r7, r2
  14:	ebfffffe 	bl	0 <vex::message_link::send(char const*, long, double)>
  18:	e3500000 	cmp	r0, #0
  1c:	1a000001 	bne	28 <vex::message_link::send(char const*, long, double)+0x28>
  20:	e3e00000 	mvn	r0, #0
  24:	ea00001f 	b	a8 <vex::message_link::send(char const*, long, double)+0xa8>
  28:	e1cd22d8 	ldrd	r2, [sp, #40]	; 0x28
  2c:	e2846016 	add	r6, r4, #22
  30:	e30011ff 	movw	r1, #511	; 0x1ff
  34:	e58d7000 	str	r7, [sp]
  38:	e1a00006 	mov	r0, r6
  3c:	e1cd20f8 	strd	r2, [sp, #8]
  40:	e1a03005 	mov	r3, r5
  44:	e59f2064 	ldr	r2, [pc, #100]	; b0 <vex::message_link::send(char const*, long, double)+0xb0>
  48:	ebfffffe 	bl	0 <vex_snprintf>
  4c:	e1a00006 	mov	r0, r6
  50:	ebfffffe 	bl	0 <strlen>
  54:	e59434a8 	ldr	r3, [r4, #1192]	; 0x4a8
  58:	e2805002 	add	r5, r0, #2
  5c:	e1a07000 	mov	r7, r0
  60:	e5940008 	ldr	r0, [r4, #8]
  64:	e12fff33 	blx	r3
  68:	e1500005 	cmp	r0, r5
  6c:	daffffeb 	ble	20 <vex::message_link::send(char const*, long, double)+0x20>
  70:	e59434ac 	ldr	r3, [r4, #1196]	; 0x4ac
  74:	e5d414b5 	ldrb	r1, [r4, #1205]	; 0x4b5
  78:	e5940008 	ldr	r0, [r4, #8]
  7c:	e12fff33 	blx	r3
  80:	e59434b0 	ldr	r3, [r4, #1200]	; 0x4b0
  84:	e1a01006 	mov	r1, r6
  88:	e1a02007 	mov	r2, r7
  8c:	e5940008 	ldr	r0, [r4, #8]
  90:	e12fff33 	blx	r3
  94:	e59434ac 	ldr	r3, [r4, #1196]	; 0x4ac
  98:	e5940008 	ldr	r0, [r4, #8]
  9c:	e3a01000 	mov	r1, #0
  a0:	e12fff33 	blx	r3
  a4:	e1a00005 	mov	r0, r5
  a8:	e28dd014 	add	sp, sp, #20
  ac:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
  b0:	00000008 	andeq	r0, r0, r8

Disassembly of section .text._ZN3vex12message_link7receiveEPcll:

00000000 <vex::message_link::receive(char*, long, long)>:
   0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a07001 	mov	r7, r1
   c:	e1a08002 	mov	r8, r2
  10:	e1a06003 	mov	r6, r3
  14:	ebfffffe 	bl	0 <vex::message_link::receive(char*, long, long)>
  18:	e3500000 	cmp	r0, #0
  1c:	1a000001 	bne	28 <vex::message_link::receive(char*, long, long)+0x28>
  20:	e3e00000 	mvn	r0, #0
  24:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
  28:	ebfffffe 	bl	0 <vexSystemTimeGet>
  2c:	e3a04000 	mov	r4, #0
  30:	e5c54216 	strb	r4, [r5, #534]	; 0x216
  34:	e0806006 	add	r6, r0, r6
  38:	e59534a0 	ldr	r3, [r5, #1184]	; 0x4a0
  3c:	e5950008 	ldr	r0, [r5, #8]
  40:	e12fff33 	blx	r3
  44:	e3500000 	cmp	r0, #0
  48:	0a00000e 	beq	88 <vex::message_link::receive(char*, long, long)+0x88>
  4c:	da000007 	ble	70 <vex::message_link::receive(char*, long, long)+0x70>
  50:	e2843001 	add	r3, r4, #1
  54:	e0854004 	add	r4, r5, r4
  58:	e1530008 	cmp	r3, r8
  5c:	b3530c02 	cmplt	r3, #512	; 0x200
  60:	e5c40216 	strb	r0, [r4, #534]	; 0x216
  64:	aaffffed 	bge	20 <vex::message_link::receive(char*, long, long)+0x20>
  68:	e1a04003 	mov	r4, r3
  6c:	ea000001 	b	78 <vex::message_link::receive(char*, long, long)+0x78>
  70:	e3a00002 	mov	r0, #2
  74:	ebfffffe 	bl	0 <vexTaskSleep>
  78:	ebfffffe 	bl	0 <vexSystemTimeGet>
  7c:	e1560000 	cmp	r6, r0
  80:	2affffec 	bcs	38 <vex::message_link::receive(char*, long, long)+0x38>
  84:	eaffffe5 	b	20 <vex::message_link::receive(char*, long, long)+0x20>
  88:	e2846001 	add	r6, r4, #1
  8c:	e0854004 	add	r4, r5, r4
  90:	e2851f85 	add	r1, r5, #532	; 0x214
  94:	e5c40216 	strb	r0, [r4, #534]	; 0x216
  98:	e2811002 	add	r1, r1, #2
  9c:	e1a00007 	mov	r0, r7
  a0:	ebfffffe 	bl	0 <strcpy>
  a4:	e1a00006 	mov	r0, r6
  a8:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

Disassembly of section .text._ZN3vex12message_link13_eventHandlerEv:

00000000 <vex::message_link::_eventHandler()>:
   0:	e59034b8 	ldr	r3, [r0, #1208]	; 0x4b8
   4:	e3530000 	cmp	r3, #0
   8:	1a000003 	bne	1c <vex::message_link::_eventHandler()+0x1c>
   c:	e2803a01 	add	r3, r0, #4096	; 0x1000
  10:	e5933ce0 	ldr	r3, [r3, #3296]	; 0xce0
  14:	e3530000 	cmp	r3, #0
  18:	012fff1e 	bxeq	lr
  1c:	e5903498 	ldr	r3, [r0, #1176]	; 0x498
  20:	e3530000 	cmp	r3, #0
  24:	012fff1e 	bxeq	lr
  28:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
  2c:	e1a04000 	mov	r4, r0
  30:	e24dd014 	sub	sp, sp, #20
  34:	e5900008 	ldr	r0, [r0, #8]
  38:	e12fff33 	blx	r3
  3c:	e2508000 	subs	r8, r0, #0
  40:	0a00009c 	beq	2b8 <vex::message_link::_eventHandler()+0x2b8>
  44:	e594349c 	ldr	r3, [r4, #1180]	; 0x49c
  48:	e5940008 	ldr	r0, [r4, #8]
  4c:	e12fff33 	blx	r3
  50:	e5d434b4 	ldrb	r3, [r4, #1204]	; 0x4b4
  54:	e5d454b5 	ldrb	r5, [r4, #1205]	; 0x4b5
  58:	e6ef0070 	uxtb	r0, r0
  5c:	e1530000 	cmp	r3, r0
  60:	0a000003 	beq	74 <vex::message_link::_eventHandler()+0x74>
  64:	e1550000 	cmp	r5, r0
  68:	13a05000 	movne	r5, #0
  6c:	11a09005 	movne	r9, r5
  70:	1a000007 	bne	94 <vex::message_link::_eventHandler()+0x94>
  74:	e0605005 	rsb	r5, r0, r5
  78:	e59434a0 	ldr	r3, [r4, #1184]	; 0x4a0
  7c:	e5940008 	ldr	r0, [r4, #8]
  80:	e16f5f15 	clz	r5, r5
  84:	e12fff33 	blx	r3
  88:	e2488001 	sub	r8, r8, #1
  8c:	e1a052a5 	lsr	r5, r5, #5
  90:	e3a09001 	mov	r9, #1
  94:	e2846f85 	add	r6, r4, #532	; 0x214
  98:	e3a07000 	mov	r7, #0
  9c:	e2866001 	add	r6, r6, #1
  a0:	e1570008 	cmp	r7, r8
  a4:	aa000083 	bge	2b8 <vex::message_link::_eventHandler()+0x2b8>
  a8:	e59434a0 	ldr	r3, [r4, #1184]	; 0x4a0
  ac:	e5940008 	ldr	r0, [r4, #8]
  b0:	e12fff33 	blx	r3
  b4:	e6ef0070 	uxtb	r0, r0
  b8:	e5e60001 	strb	r0, [r6, #1]!
  bc:	e3500000 	cmp	r0, #0
  c0:	1a00007a 	bne	2b0 <vex::message_link::_eventHandler()+0x2b0>
  c4:	e1950009 	orrs	r0, r5, r9
  c8:	01a05000 	moveq	r5, r0
  cc:	03a06000 	moveq	r6, #0
  d0:	03a07000 	moveq	r7, #0
  d4:	0a000026 	beq	174 <vex::message_link::_eventHandler()+0x174>
  d8:	e248a001 	sub	sl, r8, #1
  dc:	e2888f85 	add	r8, r8, #532	; 0x214
  e0:	e2888002 	add	r8, r8, #2
  e4:	e3a06000 	mov	r6, #0
  e8:	e0848008 	add	r8, r4, r8
  ec:	e3a07000 	mov	r7, #0
  f0:	e1590005 	cmp	r9, r5
  f4:	2a00000b 	bcs	128 <vex::message_link::_eventHandler()+0x128>
  f8:	e5583001 	ldrb	r3, [r8, #-1]
  fc:	e353005f 	cmp	r3, #95	; 0x5f
 100:	1a000008 	bne	128 <vex::message_link::_eventHandler()+0x128>
 104:	e084300a 	add	r3, r4, sl
 108:	e3a01000 	mov	r1, #0
 10c:	e2830f85 	add	r0, r3, #532	; 0x214
 110:	e3a0200a 	mov	r2, #10
 114:	e5c31216 	strb	r1, [r3, #534]	; 0x216
 118:	e2800003 	add	r0, r0, #3
 11c:	ebfffffe 	bl	0 <strtol>
 120:	e1a05000 	mov	r5, r0
 124:	ea000012 	b	174 <vex::message_link::_eventHandler()+0x174>
 128:	e3590000 	cmp	r9, #0
 12c:	0a00000b 	beq	160 <vex::message_link::_eventHandler()+0x160>
 130:	e5583001 	ldrb	r3, [r8, #-1]
 134:	e353005f 	cmp	r3, #95	; 0x5f
 138:	1a000008 	bne	160 <vex::message_link::_eventHandler()+0x160>
 13c:	e3a09000 	mov	r9, #0
 140:	e1a00008 	mov	r0, r8
 144:	e5489001 	strb	r9, [r8, #-1]
 148:	e1a01009 	mov	r1, r9
 14c:	ebfffffe 	bl	0 <strtod>
 150:	e1550009 	cmp	r5, r9
 154:	e1a06000 	mov	r6, r0
 158:	e1a07001 	mov	r7, r1
 15c:	0a000004 	beq	174 <vex::message_link::_eventHandler()+0x174>
 160:	e24aa001 	sub	sl, sl, #1
 164:	e2488001 	sub	r8, r8, #1
 168:	e37a0001 	cmn	sl, #1
 16c:	1affffdf 	bne	f0 <vex::message_link::_eventHandler()+0xf0>
 170:	e3a05000 	mov	r5, #0
 174:	e2843e4d 	add	r3, r4, #1232	; 0x4d0
 178:	e2848e41 	add	r8, r4, #1040	; 0x410
 17c:	e2888006 	add	r8, r8, #6
 180:	e58484c0 	str	r8, [r4, #1216]	; 0x4c0
 184:	e14360f8 	strd	r6, [r3, #-8]
 188:	e58454d0 	str	r5, [r4, #1232]	; 0x4d0
 18c:	ebfffffe 	bl	0 <vexSystemTimeGet>
 190:	e594c4b8 	ldr	ip, [r4, #1208]	; 0x4b8
 194:	e59434d8 	ldr	r3, [r4, #1240]	; 0x4d8
 198:	e35c0000 	cmp	ip, #0
 19c:	e2833001 	add	r3, r3, #1
 1a0:	e58434d8 	str	r3, [r4, #1240]	; 0x4d8
 1a4:	e58404d4 	str	r0, [r4, #1236]	; 0x4d4
 1a8:	0a000018 	beq	210 <vex::message_link::_eventHandler()+0x210>
 1ac:	e59434bc 	ldr	r3, [r4, #1212]	; 0x4bc
 1b0:	e3530001 	cmp	r3, #1
 1b4:	1a000006 	bne	1d4 <vex::message_link::_eventHandler()+0x1d4>
 1b8:	e2840f85 	add	r0, r4, #532	; 0x214
 1bc:	e1a01008 	mov	r1, r8
 1c0:	e2800002 	add	r0, r0, #2
 1c4:	e1a02006 	mov	r2, r6
 1c8:	e1a03007 	mov	r3, r7
 1cc:	e12fff3c 	blx	ip
 1d0:	ea00000e 	b	210 <vex::message_link::_eventHandler()+0x210>
 1d4:	e3530002 	cmp	r3, #2
 1d8:	1a000006 	bne	1f8 <vex::message_link::_eventHandler()+0x1f8>
 1dc:	e2840f85 	add	r0, r4, #532	; 0x214
 1e0:	e1cd60f0 	strd	r6, [sp]
 1e4:	e2800002 	add	r0, r0, #2
 1e8:	e1a01008 	mov	r1, r8
 1ec:	e1a02005 	mov	r2, r5
 1f0:	e12fff3c 	blx	ip
 1f4:	ea000005 	b	210 <vex::message_link::_eventHandler()+0x210>
 1f8:	e3530003 	cmp	r3, #3
 1fc:	1a000003 	bne	210 <vex::message_link::_eventHandler()+0x210>
 200:	e2840f85 	add	r0, r4, #532	; 0x214
 204:	e2841d13 	add	r1, r4, #1216	; 0x4c0
 208:	e2800002 	add	r0, r0, #2
 20c:	e12fff3c 	blx	ip
 210:	e284ba01 	add	fp, r4, #4096	; 0x1000
 214:	e59b3ce0 	ldr	r3, [fp, #3296]	; 0xce0
 218:	e3530000 	cmp	r3, #0
 21c:	0a000025 	beq	2b8 <vex::message_link::_eventHandler()+0x2b8>
 220:	e2849f85 	add	r9, r4, #532	; 0x214
 224:	e3a0a000 	mov	sl, #0
 228:	e2899002 	add	r9, r9, #2
 22c:	e1a00009 	mov	r0, r9
 230:	ebfffffe 	bl	0 <vex::message_link::_eventHandler()>
 234:	e58d000c 	str	r0, [sp, #12]
 238:	e59b3ce0 	ldr	r3, [fp, #3296]	; 0xce0
 23c:	e15a0003 	cmp	sl, r3
 240:	aa00001c 	bge	2b8 <vex::message_link::_eventHandler()+0x2b8>
 244:	e59434e0 	ldr	r3, [r4, #1248]	; 0x4e0
 248:	e59d200c 	ldr	r2, [sp, #12]
 24c:	e1530002 	cmp	r3, r2
 250:	1a000013 	bne	2a4 <vex::message_link::_eventHandler()+0x2a4>
 254:	e594c4e4 	ldr	ip, [r4, #1252]	; 0x4e4
 258:	e35c0000 	cmp	ip, #0
 25c:	0a000010 	beq	2a4 <vex::message_link::_eventHandler()+0x2a4>
 260:	e59434e8 	ldr	r3, [r4, #1256]	; 0x4e8
 264:	e3530001 	cmp	r3, #1
 268:	1a000004 	bne	280 <vex::message_link::_eventHandler()+0x280>
 26c:	e1a00009 	mov	r0, r9
 270:	e1a01008 	mov	r1, r8
 274:	e1a02006 	mov	r2, r6
 278:	e1a03007 	mov	r3, r7
 27c:	e12fff3c 	blx	ip
 280:	e59434e8 	ldr	r3, [r4, #1256]	; 0x4e8
 284:	e3530002 	cmp	r3, #2
 288:	1a000005 	bne	2a4 <vex::message_link::_eventHandler()+0x2a4>
 28c:	e1cd60f0 	strd	r6, [sp]
 290:	e1a00009 	mov	r0, r9
 294:	e59434e4 	ldr	r3, [r4, #1252]	; 0x4e4
 298:	e1a01008 	mov	r1, r8
 29c:	e1a02005 	mov	r2, r5
 2a0:	e12fff33 	blx	r3
 2a4:	e28aa001 	add	sl, sl, #1
 2a8:	e284400c 	add	r4, r4, #12
 2ac:	eaffffe1 	b	238 <vex::message_link::_eventHandler()+0x238>
 2b0:	e2877001 	add	r7, r7, #1
 2b4:	eaffff79 	b	a0 <vex::message_link::_eventHandler()+0xa0>
 2b8:	e28dd014 	add	sp, sp, #20
 2bc:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}

Disassembly of section .text._ZN3vex12message_link13_eventHandlerEPv:

00000000 <vex::message_link::_eventHandler(void*)>:
   0:	e3500000 	cmp	r0, #0
   4:	012fff1e 	bxeq	lr
   8:	eafffffe 	b	0 <vex::message_link::_eventHandler(void*)>

Disassembly of section .text._ZN3vex12message_link8receivedEPFvPKcS2_dE:

00000000 <vex::message_link::received(void (*)(char const*, char const*, double))>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e3a05001 	mov	r5, #1
   8:	e5d03015 	ldrb	r3, [r0, #21]
   c:	e58014b8 	str	r1, [r0, #1208]	; 0x4b8
  10:	e3530000 	cmp	r3, #0
  14:	e58054bc 	str	r5, [r0, #1212]	; 0x4bc
  18:	18bd8038 	popne	{r3, r4, r5, pc}
  1c:	e1a04000 	mov	r4, r0
  20:	e3a01002 	mov	r1, #2
  24:	e5900008 	ldr	r0, [r0, #8]
  28:	e1a03004 	mov	r3, r4
  2c:	e59f2008 	ldr	r2, [pc, #8]	; 3c <vex::message_link::received(void (*)(char const*, char const*, double))+0x3c>
  30:	ebfffffe 	bl	0 <vex::event::init(unsigned long, unsigned long, void (*)(void*), void*)>
  34:	e5c45015 	strb	r5, [r4, #21]
  38:	e8bd8038 	pop	{r3, r4, r5, pc}
  3c:	00000000 	andeq	r0, r0, r0

Disassembly of section .text._ZN3vex12message_link8receivedEPFvPKcS2_ldE:

00000000 <vex::message_link::received(void (*)(char const*, char const*, long, double))>:
   0:	e5d03015 	ldrb	r3, [r0, #21]
   4:	e58014b8 	str	r1, [r0, #1208]	; 0x4b8
   8:	e3a01002 	mov	r1, #2
   c:	e3530000 	cmp	r3, #0
  10:	e58014bc 	str	r1, [r0, #1212]	; 0x4bc
  14:	112fff1e 	bxne	lr
  18:	e92d4010 	push	{r4, lr}
  1c:	e1a04000 	mov	r4, r0
  20:	e1a03004 	mov	r3, r4
  24:	e5900008 	ldr	r0, [r0, #8]
  28:	e59f200c 	ldr	r2, [pc, #12]	; 3c <vex::message_link::received(void (*)(char const*, char const*, long, double))+0x3c>
  2c:	ebfffffe 	bl	0 <vex::event::init(unsigned long, unsigned long, void (*)(void*), void*)>
  30:	e3a03001 	mov	r3, #1
  34:	e5c43015 	strb	r3, [r4, #21]
  38:	e8bd8010 	pop	{r4, pc}
  3c:	00000000 	andeq	r0, r0, r0

Disassembly of section .text._ZN3vex12message_link8receivedEPFvPKcRNS0_4dataEE:

00000000 <vex::message_link::received(void (*)(char const*, vex::message_link::data&))>:
   0:	e3a03003 	mov	r3, #3
   4:	e58034bc 	str	r3, [r0, #1212]	; 0x4bc
   8:	e5d03015 	ldrb	r3, [r0, #21]
   c:	e58014b8 	str	r1, [r0, #1208]	; 0x4b8
  10:	e3530000 	cmp	r3, #0
  14:	112fff1e 	bxne	lr
  18:	e92d4010 	push	{r4, lr}
  1c:	e1a04000 	mov	r4, r0
  20:	e1a03004 	mov	r3, r4
  24:	e5900008 	ldr	r0, [r0, #8]
  28:	e3a01002 	mov	r1, #2
  2c:	e59f200c 	ldr	r2, [pc, #12]	; 40 <vex::message_link::received(void (*)(char const*, vex::message_link::data&))+0x40>
  30:	ebfffffe 	bl	0 <vex::event::init(unsigned long, unsigned long, void (*)(void*), void*)>
  34:	e3a03001 	mov	r3, #1
  38:	e5c43015 	strb	r3, [r4, #21]
  3c:	e8bd8010 	pop	{r4, pc}
  40:	00000000 	andeq	r0, r0, r0

Disassembly of section .text._ZN3vex12message_link18_addMessageHandlerEPKcPvl:

00000000 <vex::message_link::_addMessageHandler(char const*, void*, long)>:
   0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   4:	e2806a01 	add	r6, r0, #4096	; 0x1000
   8:	e5965ce0 	ldr	r5, [r6, #3296]	; 0xce0
   c:	e3550c02 	cmp	r5, #512	; 0x200
  10:	a8bd81f0 	popge	{r4, r5, r6, r7, r8, pc}
  14:	e1a04000 	mov	r4, r0
  18:	e1a00001 	mov	r0, r1
  1c:	e1a07003 	mov	r7, r3
  20:	e1a08002 	mov	r8, r2
  24:	ebfffffe 	bl	0 <vex::message_link::_addMessageHandler(char const*, void*, long)>
  28:	e5963ce0 	ldr	r3, [r6, #3296]	; 0xce0
  2c:	e3a0c000 	mov	ip, #0
  30:	e15c0003 	cmp	ip, r3
  34:	e3a0100c 	mov	r1, #12
  38:	aa000005 	bge	54 <vex::message_link::_addMessageHandler(char const*, void*, long)+0x54>
  3c:	e0214c91 	mla	r1, r1, ip, r4
  40:	e59124e0 	ldr	r2, [r1, #1248]	; 0x4e0
  44:	e1500002 	cmp	r0, r2
  48:	01a0500c 	moveq	r5, ip
  4c:	e28cc001 	add	ip, ip, #1
  50:	eafffff6 	b	30 <vex::message_link::_addMessageHandler(char const*, void*, long)+0x30>
  54:	e0214591 	mla	r1, r1, r5, r4
  58:	e1550003 	cmp	r5, r3
  5c:	e5d43015 	ldrb	r3, [r4, #21]
  60:	02855001 	addeq	r5, r5, #1
  64:	e58104e0 	str	r0, [r1, #1248]	; 0x4e0
  68:	e58184e4 	str	r8, [r1, #1252]	; 0x4e4
  6c:	e58174e8 	str	r7, [r1, #1256]	; 0x4e8
  70:	05865ce0 	streq	r5, [r6, #3296]	; 0xce0
  74:	e3530000 	cmp	r3, #0
  78:	18bd81f0 	popne	{r4, r5, r6, r7, r8, pc}
  7c:	e1a03004 	mov	r3, r4
  80:	e5940008 	ldr	r0, [r4, #8]
  84:	e3a01002 	mov	r1, #2
  88:	e59f200c 	ldr	r2, [pc, #12]	; 9c <vex::message_link::_addMessageHandler(char const*, void*, long)+0x9c>
  8c:	ebfffffe 	bl	0 <vex::event::init(unsigned long, unsigned long, void (*)(void*), void*)>
  90:	e3a03001 	mov	r3, #1
  94:	e5c43015 	strb	r3, [r4, #21]
  98:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
  9c:	00000000 	andeq	r0, r0, r0

Disassembly of section .text._ZN3vex12message_link8receivedEPKcPFvS2_S2_dE:

00000000 <vex::message_link::received(char const*, void (*)(char const*, char const*, double))>:
   0:	e3a03001 	mov	r3, #1
   4:	eafffffe 	b	0 <vex::message_link::received(char const*, void (*)(char const*, char const*, double))>

Disassembly of section .text._ZN3vex12message_link8receivedEPKcPFvS2_S2_ldE:

00000000 <vex::message_link::received(char const*, void (*)(char const*, char const*, long, double))>:
   0:	e3a03002 	mov	r3, #2
   4:	eafffffe 	b	0 <vex::message_link::received(char const*, void (*)(char const*, char const*, long, double))>

Disassembly of section .rodata._ZTVN3vex7vexlinkE:

00000000 <vtable for vex::vexlink>:
	...

Disassembly of section .bss._ZN3vex7vexlink12_crc32_tableE:

00000000 <vex::vexlink::_crc32_table>:
	...

Disassembly of section .rodata._ZTVN3vex12message_linkE:

00000000 <vtable for vex::message_link>:
	...

Disassembly of section .rodata.str1.1:

00000000 <.rodata.str1.1>:
   0:	255f7325 	ldrbcs	r7, [pc, #-805]	; fffffce3 <vex::message_link::_eventHandler()+0xfffffce3>
   4:	0066342e 	rsbeq	r3, r6, lr, lsr #8
   8:	255f7325 	ldrbcs	r7, [pc, #-805]	; fffffceb <vex::message_link::_eventHandler()+0xfffffceb>
   c:	2e255f64 	cdpcs	15, 2, cr5, cr5, cr4, {3}
  10:	Address 0x0000000000000010 is out of bounds.


Disassembly of section .rodata._ZTVN3vex11serial_linkE:

00000000 <vtable for vex::serial_link>:
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
  44:	5b202965 	blpl	80a5e0 <vex::message_link::_eventHandler()+0x80a5e0>
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

