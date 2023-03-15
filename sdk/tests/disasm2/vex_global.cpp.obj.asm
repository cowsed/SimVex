
vex_global.cpp.obj:     file format elf32-littlearm


Disassembly of section .text._ZN3vex4waitEdNS_9timeUnitsE:

00000000 <vex::wait(double, vex::timeUnits)>:
   0:	ec410b30 	vmov	d16, r0, r1
   4:	eef50bc0 	vcmpe.f64	d16, #0.0
   8:	eef1fa10 	vmrs	APSR_nzcv, fpscr
   c:	912fff1e 	bxls	lr
  10:	e3520001 	cmp	r2, #1
  14:	1ddf1b03 	vldrne	d17, [pc, #12]	; 28 <vex::wait(double, vex::timeUnits)+0x28>
  18:	1e600ba1 	vmulne.f64	d16, d16, d17
  1c:	eefd7be0 	vcvt.s32.f64	s15, d16
  20:	ee170a90 	vmov	r0, s15
  24:	eafffffe 	b	0 <vex::this_thread::sleep_for(unsigned long)>
  28:	00000000 	andeq	r0, r0, r0
  2c:	408f4000 	addmi	r4, pc, r0

Disassembly of section .rodata._ZN3vex6PORT20E:

00000000 <vex::PORT20>:
   0:	00000013 	andeq	r0, r0, r3, lsl r0

Disassembly of section .rodata._ZN3vex6purpleE:

00000000 <vex::purple>:
   0:	00000000 	andeq	r0, r0, r0

Disassembly of section .rodata._ZN3vex6yellowE:

00000000 <vex::yellow>:
   0:	00000000 	andeq	r0, r0, r0

Disassembly of section .rodata._ZN3vex3revE:

00000000 <vex::rev>:
   0:	00000001 	andeq	r0, r0, r1

Disassembly of section .rodata._ZN3vex3fwdE:

00000000 <vex::fwd>:
   0:	00000000 	andeq	r0, r0, r0

Disassembly of section .rodata._ZN3vex5PORT3E:

00000000 <vex::PORT3>:
   0:	00000002 	andeq	r0, r0, r2

Disassembly of section .rodata._ZN3vex5PORT1E:

00000000 <vex::PORT1>:
   0:	00000000 	andeq	r0, r0, r0

Disassembly of section .rodata._ZN3vex7monoXXLE:

00000000 <vex::monoXXL>:
   0:	00000003 	andeq	r0, r0, r3

Disassembly of section .rodata._ZN3vex7propXXLE:

00000000 <vex::propXXL>:
   0:	00000007 	andeq	r0, r0, r7

Disassembly of section .rodata._ZN3vex6prop60E:

00000000 <vex::prop60>:
   0:	00000007 	andeq	r0, r0, r7

Disassembly of section .rodata._ZN3vex7reverseE:

00000000 <vex::reverse>:
   0:	00000001 	andeq	r0, r0, r1

Disassembly of section .rodata._ZN3vex4voltE:

00000000 <vex::volt>:
   0:	00000000 	andeq	r0, r0, r0

Disassembly of section .rodata._ZN3vex3ampE:

00000000 <vex::amp>:
   0:	00000000 	andeq	r0, r0, r0

Disassembly of section .rodata._ZN3vex6PORT10E:

00000000 <vex::PORT10>:
   0:	00000009 	andeq	r0, r0, r9

Disassembly of section .rodata._ZN3vex5yaxisE:

00000000 <vex::yaxis>:
   0:	00000001 	andeq	r0, r0, r1

Disassembly of section .rodata._ZN3vex5PORT5E:

00000000 <vex::PORT5>:
   0:	00000004 	andeq	r0, r0, r4

Disassembly of section .rodata._ZN3vex10range12bitE:

00000000 <vex::range12bit>:
   0:	00000003 	andeq	r0, r0, r3

Disassembly of section .rodata._ZN3vex11transparentE:

00000000 <vex::transparent>:
   0:	00000000 	andeq	r0, r0, r0

Disassembly of section .rodata._ZN3vex10fahrenheitE:

00000000 <vex::fahrenheit>:
   0:	00000001 	andeq	r0, r0, r1

Disassembly of section .rodata._ZN3vex7forwardE:

00000000 <vex::forward>:
   0:	00000000 	andeq	r0, r0, r0

Disassembly of section .rodata._ZN3vex5zaxisE:

00000000 <vex::zaxis>:
   0:	00000002 	andeq	r0, r0, r2

Disassembly of section .rodata._ZN3vex6PORT14E:

00000000 <vex::PORT14>:
   0:	0000000d 	andeq	r0, r0, sp

Disassembly of section .rodata._ZN3vex5whiteE:

00000000 <vex::white>:
   0:	00000000 	andeq	r0, r0, r0

Disassembly of section .rodata._ZN3vex6mono30E:

00000000 <vex::mono30>:
   0:	00000001 	andeq	r0, r0, r1

Disassembly of section .rodata._ZN3vex3pctE:

00000000 <vex::pct>:
   0:	00000000 	andeq	r0, r0, r0

Disassembly of section .rodata._ZN3vex3secE:

00000000 <vex::sec>:
   0:	00000000 	andeq	r0, r0, r0

Disassembly of section .rodata._ZN3vex3redE:

00000000 <vex::red>:
   0:	00000000 	andeq	r0, r0, r0

Disassembly of section .rodata._ZN3vex5blackE:

00000000 <vex::black>:
   0:	00000000 	andeq	r0, r0, r0

Disassembly of section .rodata._ZN3vex4msecE:

00000000 <vex::msec>:
   0:	00000001 	andeq	r0, r0, r1

Disassembly of section .rodata._ZN3vex6PORT18E:

00000000 <vex::PORT18>:
   0:	00000011 	andeq	r0, r0, r1, lsl r0

Disassembly of section .rodata._ZN3vex9ratio36_1E:

00000000 <vex::ratio36_1>:
   0:	00000000 	andeq	r0, r0, r0

Disassembly of section .rodata._ZN3vex4blueE:

00000000 <vex::blue>:
   0:	00000000 	andeq	r0, r0, r0

Disassembly of section .rodata._ZN3vex5PORT9E:

00000000 <vex::PORT9>:
   0:	00000008 	andeq	r0, r0, r8

Disassembly of section .rodata._ZN3vex6PORT21E:

00000000 <vex::PORT21>:
   0:	00000014 	andeq	r0, r0, r4, lsl r0

Disassembly of section .rodata._ZN3vex6monoXSE:

00000000 <vex::monoXS>:
   0:	00000009 	andeq	r0, r0, r9

Disassembly of section .rodata._ZN3vex5monoSE:

00000000 <vex::monoS>:
   0:	00000008 	andeq	r0, r0, r8

Disassembly of section .data._ZN3vex11rumblePulseE:

00000000 <vex::rumblePulse>:
   0:	00000000 	andeq	r0, r0, r0

Disassembly of section .rodata._ZN3vex5xaxisE:

00000000 <vex::xaxis>:
   0:	00000000 	andeq	r0, r0, r0

Disassembly of section .rodata._ZN3vex6prop40E:

00000000 <vex::prop40>:
   0:	00000006 	andeq	r0, r0, r6

Disassembly of section .rodata._ZN3vex6mono20E:

00000000 <vex::mono20>:
   0:	00000000 	andeq	r0, r0, r0

Disassembly of section .rodata._ZN3vex5PORT2E:

00000000 <vex::PORT2>:
   0:	00000001 	andeq	r0, r0, r1

Disassembly of section .rodata._ZN3vex23__sdk_cpp_version_majorE:

00000000 <vex::__sdk_cpp_version_major>:
   0:	Address 0x0000000000000000 is out of bounds.


Disassembly of section .rodata._ZN3vex3dpsE:

00000000 <vex::dps>:
   0:	00000002 	andeq	r0, r0, r2

Disassembly of section .rodata._ZN3vex3rpmE:

00000000 <vex::rpm>:
   0:	00000001 	andeq	r0, r0, r1

Disassembly of section .rodata._ZN3vex2NmE:

00000000 <vex::Nm>:
   0:	00000000 	andeq	r0, r0, r0

Disassembly of section .rodata._ZN3vex6PORT11E:

00000000 <vex::PORT11>:
   0:	0000000a 	andeq	r0, r0, sl

Disassembly of section .rodata._ZN3vex5PORT6E:

00000000 <vex::PORT6>:
   0:	00000005 	andeq	r0, r0, r5

Disassembly of section .rodata._ZN3vex7primaryE:

00000000 <vex::primary>:
   0:	00000000 	andeq	r0, r0, r0

Disassembly of section .rodata._ZN3vex3degE:

00000000 <vex::deg>:
   0:	00000000 	andeq	r0, r0, r0

Disassembly of section .rodata._ZN3vex6monoXLE:

00000000 <vex::monoXL>:
   0:	00000002 	andeq	r0, r0, r2

Disassembly of section .rodata._ZN3vex5greenE:

00000000 <vex::green>:
   0:	00000000 	andeq	r0, r0, r0

Disassembly of section .rodata._ZN3vex5monoLE:

00000000 <vex::monoL>:
   0:	00000001 	andeq	r0, r0, r1

Disassembly of section .rodata._ZN3vex6prop30E:

00000000 <vex::prop30>:
   0:	00000005 	andeq	r0, r0, r5

Disassembly of section .rodata._ZN3vex10range10bitE:

00000000 <vex::range10bit>:
   0:	00000002 	andeq	r0, r0, r2

Disassembly of section .rodata._ZN3vex7percentE:

00000000 <vex::percent>:
   0:	00000000 	andeq	r0, r0, r0

Disassembly of section .rodata._ZN3vex6PORT15E:

00000000 <vex::PORT15>:
   0:	0000000e 	andeq	r0, r0, lr

Disassembly of section .data._ZN3vex10rumbleLongE:

00000000 <vex::rumbleLong>:
   0:	0000000a 	andeq	r0, r0, sl

Disassembly of section .rodata._ZN3vex17__sdk_cpp_versionE:

00000000 <vex::__sdk_cpp_version>:
   0:	01010201 	tsteq	r1, r1, lsl #4

Disassembly of section .rodata._ZN3vex4cyanE:

00000000 <vex::cyan>:
   0:	00000000 	andeq	r0, r0, r0

Disassembly of section .rodata._ZN3vex6PORT19E:

00000000 <vex::PORT19>:
   0:	00000012 	andeq	r0, r0, r2, lsl r0

Disassembly of section .rodata._ZN3vex7degreesE:

00000000 <vex::degrees>:
   0:	00000000 	andeq	r0, r0, r0

Disassembly of section .rodata._ZN3vex6PORT22E:

00000000 <vex::PORT22>:
   0:	00000015 	andeq	r0, r0, r5, lsl r0

Disassembly of section .rodata._ZN3vex6prop20E:

00000000 <vex::prop20>:
   0:	00000004 	andeq	r0, r0, r4

Disassembly of section .rodata._ZN3vex5propLE:

00000000 <vex::propL>:
   0:	00000005 	andeq	r0, r0, r5

Disassembly of section .rodata._ZN3vex4rollE:

00000000 <vex::roll>:
   0:	00000000 	andeq	r0, r0, r0

Disassembly of section .rodata._ZN3vex7partnerE:

00000000 <vex::partner>:
   0:	00000001 	andeq	r0, r0, r1

Disassembly of section .rodata._ZN3vex3yawE:

00000000 <vex::yaw>:
   0:	00000002 	andeq	r0, r0, r2

Disassembly of section .rodata._ZN3vex7celsiusE:

00000000 <vex::celsius>:
   0:	00000000 	andeq	r0, r0, r0

Disassembly of section .rodata.str1.1:

00000000 <.rodata.str1.1>:
   0:	2e2d2e2d 	cdpcs	14, 2, cr2, cr13, cr13, {1}
   4:	2e2e2e00 	cdpcs	14, 2, cr2, cr14, cr0, {0}
   8:	2d2d002e 	stccs	0, cr0, [sp, #-184]!	; 0xffffff48
   c:	Address 0x000000000000000c is out of bounds.


Disassembly of section .rodata._ZN3vex6orangeE:

00000000 <vex::orange>:
   0:	00000000 	andeq	r0, r0, r0

Disassembly of section .rodata._ZN3vex4holdE:

00000000 <vex::hold>:
   0:	00000002 	andeq	r0, r0, r2

Disassembly of section .rodata._ZN3vex6propXLE:

00000000 <vex::propXL>:
   0:	00000006 	andeq	r0, r0, r6

Disassembly of section .data._ZN3vex11rumbleShortE:

00000000 <vex::rumbleShort>:
   0:	00000005 	andeq	r0, r0, r5

Disassembly of section .rodata._ZN3vex6PORT12E:

00000000 <vex::PORT12>:
   0:	0000000b 	andeq	r0, r0, fp

Disassembly of section .rodata._ZN3vex2mVE:

00000000 <vex::mV>:
   0:	00000004 	andeq	r0, r0, r4

Disassembly of section .rodata._ZN3vex5PORT7E:

00000000 <vex::PORT7>:
   0:	00000006 	andeq	r0, r0, r6

Disassembly of section .rodata._ZN3vex23__sdk_cpp_version_minorE:

00000000 <vex::__sdk_cpp_version_minor>:
   0:	Address 0x0000000000000000 is out of bounds.


Disassembly of section .rodata._ZN3vex5monoME:

00000000 <vex::monoM>:
   0:	00000000 	andeq	r0, r0, r0

Disassembly of section .rodata._ZN3vex4leftE:

00000000 <vex::left>:
   0:	00000000 	andeq	r0, r0, r0

Disassembly of section .rodata._ZN3vex5pitchE:

00000000 <vex::pitch>:
   0:	00000001 	andeq	r0, r0, r1

Disassembly of section .rodata._ZN3vex6PORT16E:

00000000 <vex::PORT16>:
   0:	0000000f 	andeq	r0, r0, pc

Disassembly of section .rodata._ZN3vex5turnsE:

00000000 <vex::turns>:
   0:	00000001 	andeq	r0, r0, r1

Disassembly of section .rodata._ZN3vex8ratio6_1E:

00000000 <vex::ratio6_1>:
   0:	00000002 	andeq	r0, r0, r2

Disassembly of section .rodata._ZN3vex5propME:

00000000 <vex::propM>:
   0:	00000004 	andeq	r0, r0, r4

Disassembly of section .rodata._ZN3vex2mmE:

00000000 <vex::mm>:
   0:	00000000 	andeq	r0, r0, r0

Disassembly of section .rodata._ZN3vex5brakeE:

00000000 <vex::brake>:
   0:	00000001 	andeq	r0, r0, r1

Disassembly of section .rodata._ZN3vex5coastE:

00000000 <vex::coast>:
   0:	00000000 	andeq	r0, r0, r0

Disassembly of section .rodata._ZN3vex6mono60E:

00000000 <vex::mono60>:
   0:	00000003 	andeq	r0, r0, r3

Disassembly of section .rodata._ZN3vex5PORT4E:

00000000 <vex::PORT4>:
   0:	00000003 	andeq	r0, r0, r3

Disassembly of section .rodata._ZN3vex23__sdk_cpp_version_buildE:

00000000 <vex::__sdk_cpp_version_build>:
   0:	Address 0x0000000000000000 is out of bounds.


Disassembly of section .rodata._ZN3vex4wattE:

00000000 <vex::watt>:
   0:	00000000 	andeq	r0, r0, r0

Disassembly of section .rodata._ZN3vex9range8bitE:

00000000 <vex::range8bit>:
   0:	00000001 	andeq	r0, r0, r1

Disassembly of section .rodata._ZN3vex6PORT13E:

00000000 <vex::PORT13>:
   0:	0000000c 	andeq	r0, r0, ip

Disassembly of section .rodata._ZN3vex21__sdk_cpp_version_revE:

00000000 <vex::__sdk_cpp_version_rev>:
   0:	Address 0x0000000000000000 is out of bounds.


Disassembly of section .rodata._ZN3vex5PORT8E:

00000000 <vex::PORT8>:
   0:	00000007 	andeq	r0, r0, r7

Disassembly of section .rodata._ZN3vex9ratio18_1E:

00000000 <vex::ratio18_1>:
   0:	00000001 	andeq	r0, r0, r1

Disassembly of section .rodata._ZN3vex4InLbE:

00000000 <vex::InLb>:
   0:	00000001 	andeq	r0, r0, r1

Disassembly of section .rodata._ZN3vex6mono40E:

00000000 <vex::mono40>:
   0:	00000002 	andeq	r0, r0, r2

Disassembly of section .rodata._ZN3vex6mono12E:

00000000 <vex::mono12>:
   0:	00000009 	andeq	r0, r0, r9

Disassembly of section .rodata._ZN3vex6mono15E:

00000000 <vex::mono15>:
   0:	00000008 	andeq	r0, r0, r8

Disassembly of section .rodata._ZN3vex5rightE:

00000000 <vex::right>:
   0:	00000001 	andeq	r0, r0, r1

Disassembly of section .rodata._ZN3vex6PORT17E:

00000000 <vex::PORT17>:
   0:	00000010 	andeq	r0, r0, r0, lsl r0

Disassembly of section .rodata._ZN3vex6inchesE:

00000000 <vex::inches>:
   0:	00000001 	andeq	r0, r0, r1

Disassembly of section .rodata._ZN3vex7secondsE:

00000000 <vex::seconds>:
   0:	00000000 	andeq	r0, r0, r0

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
  44:	5b202965 	blpl	80a5e0 <vex::wait(double, vex::timeUnits)+0x80a5e0>
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

