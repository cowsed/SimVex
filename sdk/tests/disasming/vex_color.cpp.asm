
vex_color.cpp.obj:     file format elf32-littlearm


Disassembly of section .text._ZN3vex5colorD2Ev:

00000000 <_ZN3vex5colorD1Ev>:
   0:	e12fff1e 	bx	lr

Disassembly of section .text._ZL9_hexDigitc:

00000000 <_ZL9_hexDigitc>:
   0:	e2403030 	sub	r3, r0, #48	; 0x30
   4:	e6ef3073 	uxtb	r3, r3
   8:	e3530009 	cmp	r3, #9
   c:	9a000009 	bls	38 <_ZL9_hexDigitc+0x38>
  10:	e2403041 	sub	r3, r0, #65	; 0x41
  14:	e3530005 	cmp	r3, #5
  18:	92400037 	subls	r0, r0, #55	; 0x37
  1c:	9a000003 	bls	30 <_ZL9_hexDigitc+0x30>
  20:	e2403061 	sub	r3, r0, #97	; 0x61
  24:	e3530005 	cmp	r3, #5
  28:	8a000004 	bhi	40 <_ZL9_hexDigitc+0x40>
  2c:	e2400057 	sub	r0, r0, #87	; 0x57
  30:	e6ef0070 	uxtb	r0, r0
  34:	e12fff1e 	bx	lr
  38:	e1a00003 	mov	r0, r3
  3c:	e12fff1e 	bx	lr
  40:	e3a00000 	mov	r0, #0
  44:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex5colorC2Ev:

00000000 <_ZN3vex5colorC1Ev>:
   0:	e3a02000 	mov	r2, #0
   4:	e5802000 	str	r2, [r0]
   8:	e5c02004 	strb	r2, [r0, #4]
   c:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex5colorC2Ei:

00000000 <_ZN3vex5colorC1Ei>:
   0:	e3a02000 	mov	r2, #0
   4:	e5801000 	str	r1, [r0]
   8:	e5c02004 	strb	r2, [r0, #4]
   c:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex5colorC2Ehhh:

00000000 <_ZN3vex5colorC1Ehhh>:
   0:	e1a02402 	lsl	r2, r2, #8
   4:	e0821801 	add	r1, r2, r1, lsl #16
   8:	e0813003 	add	r3, r1, r3
   c:	e5803000 	str	r3, [r0]
  10:	e3a03000 	mov	r3, #0
  14:	e5c03004 	strb	r3, [r0, #4]
  18:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex5colorC2Eib:

00000000 <_ZN3vex5colorC1Eib>:
   0:	e5801000 	str	r1, [r0]
   4:	e5c02004 	strb	r2, [r0, #4]
   8:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex5color3rgbEm:

00000000 <_ZN3vex5color3rgbEm>:
   0:	e5801000 	str	r1, [r0]
   4:	e3a03000 	mov	r3, #0
   8:	e5c03004 	strb	r3, [r0, #4]
   c:	e1a00001 	mov	r0, r1
  10:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex5color3rgbEhhh:

00000000 <_ZN3vex5color3rgbEhhh>:
   0:	e1a02402 	lsl	r2, r2, #8
   4:	e0821801 	add	r1, r2, r1, lsl #16
   8:	e3a02000 	mov	r2, #0
   c:	e0813003 	add	r3, r1, r3
  10:	e5c02004 	strb	r2, [r0, #4]
  14:	e5803000 	str	r3, [r0]
  18:	e1a00003 	mov	r0, r3
  1c:	e12fff1e 	bx	lr

Disassembly of section .text._ZNK3vex5color3rgbEv:

00000000 <_ZNK3vex5color3rgbEv>:
   0:	e5900000 	ldr	r0, [r0]
   4:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex5coloraSEm:

00000000 <_ZN3vex5coloraSEm>:
   0:	e5801000 	str	r1, [r0]
   4:	e12fff1e 	bx	lr

Disassembly of section .text._ZNK3vex5colorcvmEv:

00000000 <_ZNK3vex5colorcvmEv>:
   0:	e5900000 	ldr	r0, [r0]
   4:	e12fff1e 	bx	lr

Disassembly of section .text._ZNK3vex5color13isTransparentEv:

00000000 <_ZNK3vex5color13isTransparentEv>:
   0:	e5d00004 	ldrb	r0, [r0, #4]
   4:	e12fff1e 	bx	lr

Disassembly of section .text._ZN3vex5color3hsvEmdd:

00000000 <_ZN3vex5color3hsvEmdd>:
   0:	ee071a90 	vmov	s15, r1
   4:	e92d4010 	push	{r4, lr}
   8:	e1a04000 	mov	r4, r0
   c:	ed2d8b04 	vpush	{d8-d9}
  10:	eeb89a67 	vcvt.f32.u32	s18, s15
  14:	eddf7a47 	vldr	s15, [pc, #284]	; 138 <_ZN3vex5color3hsvEmdd+0x138>
  18:	e24dd008 	sub	sp, sp, #8
  1c:	ec432b18 	vmov	d8, r2, r3
  20:	ee899a27 	vdiv.f32	s18, s18, s15
  24:	eef70ac9 	vcvt.f64.f32	d16, s18
  28:	ec510b30 	vmov	r0, r1, d16
  2c:	ebfffffe 	bl	0 <floor>
  30:	ed9f7b3e 	vldr	d7, [pc, #248]	; 130 <_ZN3vex5color3hsvEmdd+0x130>
  34:	ec410b30 	vmov	d16, r0, r1
  38:	eefd6be0 	vcvt.s32.f64	s13, d16
  3c:	eddd0b08 	vldr	d16, [sp, #32]
  40:	ee207b87 	vmul.f64	d7, d16, d7
  44:	ee162a90 	vmov	r2, s13
  48:	eef70b00 	vmov.f64	d16, #112	; 0x3f800000  1.0
  4c:	eefc7bc7 	vcvt.u32.f64	s15, d7
  50:	eef82b67 	vcvt.f64.u32	d18, s15
  54:	ee173a90 	vmov	r3, s15
  58:	ee307bc8 	vsub.f64	d7, d16, d8
  5c:	ee277b22 	vmul.f64	d7, d7, d18
  60:	eebc7bc7 	vcvt.u32.f64	s14, d7
  64:	eef87ae6 	vcvt.f32.s32	s15, s13
  68:	ed8d7a01 	vstr	s14, [sp, #4]
  6c:	e5dd0004 	ldrb	r0, [sp, #4]
  70:	ee399a67 	vsub.f32	s18, s18, s15
  74:	eef71ac9 	vcvt.f64.f32	d17, s18
  78:	eeb07b60 	vmov.f64	d7, d16
  7c:	ee087b61 	vmls.f64	d7, d8, d17
  80:	ee701be1 	vsub.f64	d17, d16, d17
  84:	ee480b61 	vmls.f64	d16, d8, d17
  88:	ee277b22 	vmul.f64	d7, d7, d18
  8c:	eebc7bc7 	vcvt.u32.f64	s14, d7
  90:	ed8d7a01 	vstr	s14, [sp, #4]
  94:	ee207ba2 	vmul.f64	d7, d16, d18
  98:	e5dd1004 	ldrb	r1, [sp, #4]
  9c:	eebc7bc7 	vcvt.u32.f64	s14, d7
  a0:	ed8d7a01 	vstr	s14, [sp, #4]
  a4:	e5ddc004 	ldrb	ip, [sp, #4]
  a8:	e3520004 	cmp	r2, #4
  ac:	979ff102 	ldrls	pc, [pc, r2, lsl #2]
  b0:	ea000014 	b	108 <_ZN3vex5color3hsvEmdd+0x108>
  b4:	000000c8 	andeq	r0, r0, r8, asr #1
  b8:	000000d4 	ldrdeq	r0, [r0], -r4
  bc:	000000e0 	andeq	r0, r0, r0, ror #1
  c0:	000000f0 	strdeq	r0, [r0], -r0	; <UNPREDICTABLE>
  c4:	000000fc 	strdeq	r0, [r0], -ip
  c8:	e0800803 	add	r0, r0, r3, lsl #16
  cc:	e080340c 	add	r3, r0, ip, lsl #8
  d0:	ea00000f 	b	114 <_ZN3vex5color3hsvEmdd+0x114>
  d4:	e0803403 	add	r3, r0, r3, lsl #8
  d8:	e0833801 	add	r3, r3, r1, lsl #16
  dc:	ea00000c 	b	114 <_ZN3vex5color3hsvEmdd+0x114>
  e0:	e1a01403 	lsl	r1, r3, #8
  e4:	e0812800 	add	r2, r1, r0, lsl #16
  e8:	e082300c 	add	r3, r2, ip
  ec:	ea000008 	b	114 <_ZN3vex5color3hsvEmdd+0x114>
  f0:	e0833800 	add	r3, r3, r0, lsl #16
  f4:	e0833401 	add	r3, r3, r1, lsl #8
  f8:	ea000005 	b	114 <_ZN3vex5color3hsvEmdd+0x114>
  fc:	e0833400 	add	r3, r3, r0, lsl #8
 100:	e083380c 	add	r3, r3, ip, lsl #16
 104:	ea000002 	b	114 <_ZN3vex5color3hsvEmdd+0x114>
 108:	e1a02803 	lsl	r2, r3, #16
 10c:	e0823400 	add	r3, r2, r0, lsl #8
 110:	e0833001 	add	r3, r3, r1
 114:	e5843000 	str	r3, [r4]
 118:	e1a00004 	mov	r0, r4
 11c:	e3a03000 	mov	r3, #0
 120:	e5c43004 	strb	r3, [r4, #4]
 124:	e28dd008 	add	sp, sp, #8
 128:	ecbd8b04 	vpop	{d8-d9}
 12c:	e8bd8010 	pop	{r4, pc}
 130:	00000000 	andeq	r0, r0, r0
 134:	406fe000 	rsbmi	lr, pc, r0
 138:	42700000 	rsbsmi	r0, r0, #0

Disassembly of section .text._ZN3vex5color3webEPKc:

00000000 <_ZN3vex5color3webEPKc>:
   0:	e92d40f8 	push	{r3, r4, r5, r6, r7, lr}
   4:	e1a06000 	mov	r6, r0
   8:	e5d13000 	ldrb	r3, [r1]
   c:	e1a05001 	mov	r5, r1
  10:	e3530023 	cmp	r3, #35	; 0x23
  14:	1a000009 	bne	40 <_ZN3vex5color3webEPKc+0x40>
  18:	e1a00001 	mov	r0, r1
  1c:	ebfffffe 	bl	0 <strlen>
  20:	e3500007 	cmp	r0, #7
  24:	1a000005 	bne	40 <_ZN3vex5color3webEPKc+0x40>
  28:	e2850001 	add	r0, r5, #1
  2c:	e3a01000 	mov	r1, #0
  30:	e3a02010 	mov	r2, #16
  34:	ebfffffe 	bl	0 <strtol>
  38:	e1a04000 	mov	r4, r0
  3c:	ea000000 	b	44 <_ZN3vex5color3webEPKc+0x44>
  40:	e3a04000 	mov	r4, #0
  44:	e5d53000 	ldrb	r3, [r5]
  48:	e3530023 	cmp	r3, #35	; 0x23
  4c:	1a000011 	bne	98 <_ZN3vex5color3webEPKc+0x98>
  50:	e1a00005 	mov	r0, r5
  54:	ebfffffe 	bl	0 <strlen>
  58:	e3500004 	cmp	r0, #4
  5c:	1a00000d 	bne	98 <_ZN3vex5color3webEPKc+0x98>
  60:	e5d50001 	ldrb	r0, [r5, #1]
  64:	ebfffffe 	bl	0 <_ZN3vex5color3webEPKc>
  68:	e1a04000 	mov	r4, r0
  6c:	e5d50002 	ldrb	r0, [r5, #2]
  70:	ebfffffe 	bl	0 <_ZN3vex5color3webEPKc>
  74:	e1a07000 	mov	r7, r0
  78:	e5d50003 	ldrb	r0, [r5, #3]
  7c:	ebfffffe 	bl	0 <_ZN3vex5color3webEPKc>
  80:	e1a03804 	lsl	r3, r4, #16
  84:	e0834a04 	add	r4, r3, r4, lsl #20
  88:	e0844607 	add	r4, r4, r7, lsl #12
  8c:	e0844407 	add	r4, r4, r7, lsl #8
  90:	e0844200 	add	r4, r4, r0, lsl #4
  94:	e0844000 	add	r4, r4, r0
  98:	e3a03000 	mov	r3, #0
  9c:	e5864000 	str	r4, [r6]
  a0:	e5c63004 	strb	r3, [r6, #4]
  a4:	e1a00006 	mov	r0, r6
  a8:	e8bd80f8 	pop	{r3, r4, r5, r6, r7, pc}

Disassembly of section .text.startup._GLOBAL__sub_I__ZN3vex5color5blackE:

00000000 <_GLOBAL__sub_I__ZN3vex5color5blackE>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e3a04000 	mov	r4, #0
   8:	e59f6118 	ldr	r6, [pc, #280]	; 128 <_GLOBAL__sub_I__ZN3vex5color5blackE+0x128>
   c:	e59f5118 	ldr	r5, [pc, #280]	; 12c <_GLOBAL__sub_I__ZN3vex5color5blackE+0x12c>
  10:	e59f0118 	ldr	r0, [pc, #280]	; 130 <_GLOBAL__sub_I__ZN3vex5color5blackE+0x130>
  14:	e1a01006 	mov	r1, r6
  18:	e1a02005 	mov	r2, r5
  1c:	e5804000 	str	r4, [r0]
  20:	e5c04004 	strb	r4, [r0, #4]
  24:	ebfffffe 	bl	0 <__aeabi_atexit>
  28:	e59f0104 	ldr	r0, [pc, #260]	; 134 <_GLOBAL__sub_I__ZN3vex5color5blackE+0x134>
  2c:	e1a01006 	mov	r1, r6
  30:	e1a02005 	mov	r2, r5
  34:	e3e034ff 	mvn	r3, #-16777216	; 0xff000000
  38:	e5c04004 	strb	r4, [r0, #4]
  3c:	e5803000 	str	r3, [r0]
  40:	ebfffffe 	bl	0 <__aeabi_atexit>
  44:	e59f00ec 	ldr	r0, [pc, #236]	; 138 <_GLOBAL__sub_I__ZN3vex5color5blackE+0x138>
  48:	e1a01006 	mov	r1, r6
  4c:	e1a02005 	mov	r2, r5
  50:	e3a038ff 	mov	r3, #16711680	; 0xff0000
  54:	e5c04004 	strb	r4, [r0, #4]
  58:	e5803000 	str	r3, [r0]
  5c:	ebfffffe 	bl	0 <__aeabi_atexit>
  60:	e59f00d4 	ldr	r0, [pc, #212]	; 13c <_GLOBAL__sub_I__ZN3vex5color5blackE+0x13c>
  64:	e1a01006 	mov	r1, r6
  68:	e1a02005 	mov	r2, r5
  6c:	e3a03cff 	mov	r3, #65280	; 0xff00
  70:	e5c04004 	strb	r4, [r0, #4]
  74:	e5803000 	str	r3, [r0]
  78:	ebfffffe 	bl	0 <__aeabi_atexit>
  7c:	e59f00bc 	ldr	r0, [pc, #188]	; 140 <_GLOBAL__sub_I__ZN3vex5color5blackE+0x140>
  80:	e1a01006 	mov	r1, r6
  84:	e1a02005 	mov	r2, r5
  88:	e3a030ff 	mov	r3, #255	; 0xff
  8c:	e5c04004 	strb	r4, [r0, #4]
  90:	e5803000 	str	r3, [r0]
  94:	ebfffffe 	bl	0 <__aeabi_atexit>
  98:	e59f00a4 	ldr	r0, [pc, #164]	; 144 <_GLOBAL__sub_I__ZN3vex5color5blackE+0x144>
  9c:	e1a01006 	mov	r1, r6
  a0:	e59f30a0 	ldr	r3, [pc, #160]	; 148 <_GLOBAL__sub_I__ZN3vex5color5blackE+0x148>
  a4:	e1a02005 	mov	r2, r5
  a8:	e5c04004 	strb	r4, [r0, #4]
  ac:	e5803000 	str	r3, [r0]
  b0:	ebfffffe 	bl	0 <__aeabi_atexit>
  b4:	e59f0090 	ldr	r0, [pc, #144]	; 14c <_GLOBAL__sub_I__ZN3vex5color5blackE+0x14c>
  b8:	e1a01006 	mov	r1, r6
  bc:	e59f308c 	ldr	r3, [pc, #140]	; 150 <_GLOBAL__sub_I__ZN3vex5color5blackE+0x150>
  c0:	e1a02005 	mov	r2, r5
  c4:	e5c04004 	strb	r4, [r0, #4]
  c8:	e5803000 	str	r3, [r0]
  cc:	ebfffffe 	bl	0 <__aeabi_atexit>
  d0:	e59f007c 	ldr	r0, [pc, #124]	; 154 <_GLOBAL__sub_I__ZN3vex5color5blackE+0x154>
  d4:	e1a01006 	mov	r1, r6
  d8:	e59f3078 	ldr	r3, [pc, #120]	; 158 <_GLOBAL__sub_I__ZN3vex5color5blackE+0x158>
  dc:	e1a02005 	mov	r2, r5
  e0:	e5c04004 	strb	r4, [r0, #4]
  e4:	e5803000 	str	r3, [r0]
  e8:	ebfffffe 	bl	0 <__aeabi_atexit>
  ec:	e59f0068 	ldr	r0, [pc, #104]	; 15c <_GLOBAL__sub_I__ZN3vex5color5blackE+0x15c>
  f0:	e1a01006 	mov	r1, r6
  f4:	e1a02005 	mov	r2, r5
  f8:	e30f3fff 	movw	r3, #65535	; 0xffff
  fc:	e5c04004 	strb	r4, [r0, #4]
 100:	e5803000 	str	r3, [r0]
 104:	ebfffffe 	bl	0 <__aeabi_atexit>
 108:	e59f0050 	ldr	r0, [pc, #80]	; 160 <_GLOBAL__sub_I__ZN3vex5color5blackE+0x160>
 10c:	e3a03001 	mov	r3, #1
 110:	e1a01006 	mov	r1, r6
 114:	e1a02005 	mov	r2, r5
 118:	e5804000 	str	r4, [r0]
 11c:	e8bd4070 	pop	{r4, r5, r6, lr}
 120:	e5c03004 	strb	r3, [r0, #4]
 124:	eafffffe 	b	0 <__aeabi_atexit>
	...
 148:	00ffff00 	rscseq	pc, pc, r0, lsl #30
 14c:	00000000 	andeq	r0, r0, r0
 150:	00ffa500 	rscseq	sl, pc, r0, lsl #10
 154:	00000000 	andeq	r0, r0, r0
 158:	00ff00ff 	ldrshteq	r0, [pc], #15
	...

Disassembly of section .init_array:

00000000 <.init_array>:
   0:	00000000 	andeq	r0, r0, r0

Disassembly of section .bss._ZN3vex5color6orangeE:

00000000 <_ZN3vex5color6orangeE>:
	...

Disassembly of section .bss._ZN3vex5color5blackE:

00000000 <_ZN3vex5color5blackE>:
	...

Disassembly of section .bss._ZN3vex5color6yellowE:

00000000 <_ZN3vex5color6yellowE>:
	...

Disassembly of section .bss._ZN3vex5color5greenE:

00000000 <_ZN3vex5color5greenE>:
	...

Disassembly of section .bss._ZN3vex5color6purpleE:

00000000 <_ZN3vex5color6purpleE>:
	...

Disassembly of section .bss._ZN3vex5color4cyanE:

00000000 <_ZN3vex5color4cyanE>:
	...

Disassembly of section .bss._ZN3vex5color4blueE:

00000000 <_ZN3vex5color4blueE>:
	...

Disassembly of section .bss._ZN3vex5color3redE:

00000000 <_ZN3vex5color3redE>:
	...

Disassembly of section .bss._ZN3vex5color11transparentE:

00000000 <_ZN3vex5color11transparentE>:
	...

Disassembly of section .bss._ZN3vex5color5whiteE:

00000000 <_ZN3vex5color5whiteE>:
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
  44:	5b202965 	blpl	80a5e0 <_ZN3vex5color3hsvEmdd+0x80a5e0>
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

