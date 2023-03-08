
v5_apiuser.c.obj:     file format elf32-littlearm


Disassembly of section .text.vexDelay:

00000000 <vexDelay>:
   0:	eafffffe 	b	0 <vexTaskSleep>

Disassembly of section .text.vexLedSet:

00000000 <vexLedSet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e3500000 	cmp	r0, #0
  10:	08bd8010 	popeq	{r4, pc}
  14:	e1a01004 	mov	r1, r4
  18:	e8bd4010 	pop	{r4, lr}
  1c:	eafffffe 	b	0 <vexDeviceLedSet>

Disassembly of section .text.vexLedRgbSet:

00000000 <vexLedRgbSet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e3500000 	cmp	r0, #0
  10:	08bd8010 	popeq	{r4, pc}
  14:	e1a01004 	mov	r1, r4
  18:	e8bd4010 	pop	{r4, lr}
  1c:	eafffffe 	b	0 <vexDeviceLedRgbSet>

Disassembly of section .text.vexLedGet:

00000000 <vexLedGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e3500000 	cmp	r0, #0
   c:	08bd8008 	popeq	{r3, pc}
  10:	e8bd4008 	pop	{r3, lr}
  14:	eafffffe 	b	0 <vexDeviceLedGet>

Disassembly of section .text.vexLedRgbGet:

00000000 <vexLedRgbGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e3500000 	cmp	r0, #0
   c:	08bd8008 	popeq	{r3, pc}
  10:	e8bd4008 	pop	{r3, lr}
  14:	eafffffe 	b	0 <vexDeviceLedRgbGet>

Disassembly of section .text.vexAdiPortConfigSet:

00000000 <vexAdiPortConfigSet>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a05001 	mov	r5, r1
   8:	e1a04002 	mov	r4, r2
   c:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
  10:	e3500000 	cmp	r0, #0
  14:	08bd8038 	popeq	{r3, r4, r5, pc}
  18:	e1a01005 	mov	r1, r5
  1c:	e1a02004 	mov	r2, r4
  20:	e8bd4038 	pop	{r3, r4, r5, lr}
  24:	eafffffe 	b	0 <vexDeviceAdiPortConfigSet>

Disassembly of section .text.vexAdiPortConfigGet:

00000000 <vexAdiPortConfigGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e3500000 	cmp	r0, #0
  10:	0a000002 	beq	20 <vexAdiPortConfigGet+0x20>
  14:	e1a01004 	mov	r1, r4
  18:	e8bd4010 	pop	{r4, lr}
  1c:	eafffffe 	b	0 <vexDeviceAdiPortConfigGet>
  20:	e3a000ff 	mov	r0, #255	; 0xff
  24:	e8bd8010 	pop	{r4, pc}

Disassembly of section .text.vexAdiValueSet:

00000000 <vexAdiValueSet>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a05001 	mov	r5, r1
   8:	e1a04002 	mov	r4, r2
   c:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
  10:	e3500000 	cmp	r0, #0
  14:	08bd8038 	popeq	{r3, r4, r5, pc}
  18:	e1a01005 	mov	r1, r5
  1c:	e1a02004 	mov	r2, r4
  20:	e8bd4038 	pop	{r3, r4, r5, lr}
  24:	eafffffe 	b	0 <vexDeviceAdiValueSet>

Disassembly of section .text.vexAdiValueGet:

00000000 <vexAdiValueGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e3500000 	cmp	r0, #0
  10:	08bd8010 	popeq	{r4, pc}
  14:	e1a01004 	mov	r1, r4
  18:	e8bd4010 	pop	{r4, lr}
  1c:	eafffffe 	b	0 <vexDeviceAdiValueGet>

Disassembly of section .text.vexAdiVoltageGet:

00000000 <vexAdiVoltageGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e3500000 	cmp	r0, #0
  10:	08bd8010 	popeq	{r4, pc}
  14:	e1a01004 	mov	r1, r4
  18:	e8bd4010 	pop	{r4, lr}
  1c:	eafffffe 	b	0 <vexDeviceAdiVoltageGet>

Disassembly of section .text.vexAdiAddrLedSet:

00000000 <vexAdiAddrLedSet>:
   0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   4:	e1a06001 	mov	r6, r1
   8:	e1a05002 	mov	r5, r2
   c:	e1a04003 	mov	r4, r3
  10:	e59d8018 	ldr	r8, [sp, #24]
  14:	e59d701c 	ldr	r7, [sp, #28]
  18:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
  1c:	e3500000 	cmp	r0, #0
  20:	08bd81f0 	popeq	{r4, r5, r6, r7, r8, pc}
  24:	e58d8018 	str	r8, [sp, #24]
  28:	e1a01006 	mov	r1, r6
  2c:	e58d701c 	str	r7, [sp, #28]
  30:	e1a02005 	mov	r2, r5
  34:	e1a03004 	mov	r3, r4
  38:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
  3c:	eafffffe 	b	0 <vexDeviceAdiAddrLedSet>

Disassembly of section .text.vexBumperGet:

00000000 <vexBumperGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e8bd4008 	pop	{r3, lr}
   c:	eafffffe 	b	0 <vexDeviceBumperGet>

Disassembly of section .text.vexGyroReset:

00000000 <vexGyroReset>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e8bd4008 	pop	{r3, lr}
   c:	eafffffe 	b	0 <vexDeviceGyroReset>

Disassembly of section .text.vexGyroHeadingGet:

00000000 <vexGyroHeadingGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e8bd4008 	pop	{r3, lr}
   c:	eafffffe 	b	0 <vexDeviceGyroHeadingGet>

Disassembly of section .text.vexGyroDegreesGet:

00000000 <vexGyroDegreesGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e8bd4008 	pop	{r3, lr}
   c:	eafffffe 	b	0 <vexDeviceGyroDegreesGet>

Disassembly of section .text.vexSonarValueGet:

00000000 <vexSonarValueGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e8bd4008 	pop	{r3, lr}
   c:	eafffffe 	b	0 <vexDeviceSonarValueGet>

Disassembly of section .text.vexGenericValueGet:

00000000 <vexGenericValueGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e8bd4008 	pop	{r3, lr}
   c:	eafffffe 	b	0 <vexDeviceGenericValueGet>

Disassembly of section .text.vexMotorVelocitySet:

00000000 <vexMotorVelocitySet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e3500000 	cmp	r0, #0
  10:	08bd8010 	popeq	{r4, pc}
  14:	e1a01004 	mov	r1, r4
  18:	e8bd4010 	pop	{r4, lr}
  1c:	eafffffe 	b	0 <vexDeviceMotorVelocitySet>

Disassembly of section .text.vexMotorVelocityUpdate:

00000000 <vexMotorVelocityUpdate>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e3500000 	cmp	r0, #0
  10:	08bd8010 	popeq	{r4, pc}
  14:	e1a01004 	mov	r1, r4
  18:	e8bd4010 	pop	{r4, lr}
  1c:	eafffffe 	b	0 <vexDeviceMotorVelocityUpdate>

Disassembly of section .text.vexMotorVoltageSet:

00000000 <vexMotorVoltageSet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e3500000 	cmp	r0, #0
  10:	08bd8010 	popeq	{r4, pc}
  14:	e1a01004 	mov	r1, r4
  18:	e8bd4010 	pop	{r4, lr}
  1c:	eafffffe 	b	0 <vexDeviceMotorVoltageSet>

Disassembly of section .text.vexMotorVelocityGet:

00000000 <vexMotorVelocityGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e3500000 	cmp	r0, #0
   c:	08bd8008 	popeq	{r3, pc}
  10:	e8bd4008 	pop	{r3, lr}
  14:	eafffffe 	b	0 <vexDeviceMotorVelocityGet>

Disassembly of section .text.vexMotorActualVelocityGet:

00000000 <vexMotorActualVelocityGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e3500000 	cmp	r0, #0
   c:	0a000001 	beq	18 <vexMotorActualVelocityGet+0x18>
  10:	e8bd4008 	pop	{r3, lr}
  14:	eafffffe 	b	0 <vexDeviceMotorActualVelocityGet>
  18:	e3a00000 	mov	r0, #0
  1c:	e3a01000 	mov	r1, #0
  20:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text.vexMotorDirectionGet:

00000000 <vexMotorDirectionGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e3500000 	cmp	r0, #0
   c:	08bd8008 	popeq	{r3, pc}
  10:	e8bd4008 	pop	{r3, lr}
  14:	eafffffe 	b	0 <vexDeviceMotorDirectionGet>

Disassembly of section .text.vexMotorModeSet:

00000000 <vexMotorModeSet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e3500000 	cmp	r0, #0
  10:	08bd8010 	popeq	{r4, pc}
  14:	e1a01004 	mov	r1, r4
  18:	e8bd4010 	pop	{r4, lr}
  1c:	eafffffe 	b	0 <vexDeviceMotorModeSet>

Disassembly of section .text.vexMotorModeGet:

00000000 <vexMotorModeGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e3500000 	cmp	r0, #0
   c:	08bd8008 	popeq	{r3, pc}
  10:	e8bd4008 	pop	{r3, lr}
  14:	eafffffe 	b	0 <vexDeviceMotorModeGet>

Disassembly of section .text.vexMotorPwmSet:

00000000 <vexMotorPwmSet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e3500000 	cmp	r0, #0
  10:	08bd8010 	popeq	{r4, pc}
  14:	e1a01004 	mov	r1, r4
  18:	e8bd4010 	pop	{r4, lr}
  1c:	eafffffe 	b	0 <vexDeviceMotorPwmSet>

Disassembly of section .text.vexMotorPwmGet:

00000000 <vexMotorPwmGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e3500000 	cmp	r0, #0
   c:	08bd8008 	popeq	{r3, pc}
  10:	e8bd4008 	pop	{r3, lr}
  14:	eafffffe 	b	0 <vexDeviceMotorPwmGet>

Disassembly of section .text.vexMotorCurrentLimitSet:

00000000 <vexMotorCurrentLimitSet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e3500000 	cmp	r0, #0
  10:	08bd8010 	popeq	{r4, pc}
  14:	e1a01004 	mov	r1, r4
  18:	e8bd4010 	pop	{r4, lr}
  1c:	eafffffe 	b	0 <vexDeviceMotorCurrentLimitSet>

Disassembly of section .text.vexMotorCurrentLimitGet:

00000000 <vexMotorCurrentLimitGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e3500000 	cmp	r0, #0
   c:	08bd8008 	popeq	{r3, pc}
  10:	e8bd4008 	pop	{r3, lr}
  14:	eafffffe 	b	0 <vexDeviceMotorCurrentLimitGet>

Disassembly of section .text.vexMotorVoltageLimitSet:

00000000 <vexMotorVoltageLimitSet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e3500000 	cmp	r0, #0
  10:	08bd8010 	popeq	{r4, pc}
  14:	e1a01004 	mov	r1, r4
  18:	e8bd4010 	pop	{r4, lr}
  1c:	eafffffe 	b	0 <vexDeviceMotorVoltageLimitSet>

Disassembly of section .text.vexMotorVoltageLimitGet:

00000000 <vexMotorVoltageLimitGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e3500000 	cmp	r0, #0
   c:	08bd8008 	popeq	{r3, pc}
  10:	e8bd4008 	pop	{r3, lr}
  14:	eafffffe 	b	0 <vexDeviceMotorVoltageLimitGet>

Disassembly of section .text.vexMotorPositionPidSet:

00000000 <vexMotorPositionPidSet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e3500000 	cmp	r0, #0
  10:	08bd8010 	popeq	{r4, pc}
  14:	e1a01004 	mov	r1, r4
  18:	e8bd4010 	pop	{r4, lr}
  1c:	eafffffe 	b	0 <vexDeviceMotorPositionPidSet>

Disassembly of section .text.vexMotorVelocityPidSet:

00000000 <vexMotorVelocityPidSet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e3500000 	cmp	r0, #0
  10:	08bd8010 	popeq	{r4, pc}
  14:	e1a01004 	mov	r1, r4
  18:	e8bd4010 	pop	{r4, lr}
  1c:	eafffffe 	b	0 <vexDeviceMotorVelocityPidSet>

Disassembly of section .text.vexMotorCurrentGet:

00000000 <vexMotorCurrentGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e3500000 	cmp	r0, #0
   c:	08bd8008 	popeq	{r3, pc}
  10:	e8bd4008 	pop	{r3, lr}
  14:	eafffffe 	b	0 <vexDeviceMotorCurrentGet>

Disassembly of section .text.vexMotorVoltageGet:

00000000 <vexMotorVoltageGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e3500000 	cmp	r0, #0
   c:	08bd8008 	popeq	{r3, pc}
  10:	e8bd4008 	pop	{r3, lr}
  14:	eafffffe 	b	0 <vexDeviceMotorVoltageGet>

Disassembly of section .text.vexMotorPowerGet:

00000000 <vexMotorPowerGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e3500000 	cmp	r0, #0
   c:	0a000001 	beq	18 <vexMotorPowerGet+0x18>
  10:	e8bd4008 	pop	{r3, lr}
  14:	eafffffe 	b	0 <vexDeviceMotorPowerGet>
  18:	e3a00000 	mov	r0, #0
  1c:	e3a01000 	mov	r1, #0
  20:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text.vexMotorTorqueGet:

00000000 <vexMotorTorqueGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e3500000 	cmp	r0, #0
   c:	0a000001 	beq	18 <vexMotorTorqueGet+0x18>
  10:	e8bd4008 	pop	{r3, lr}
  14:	eafffffe 	b	0 <vexDeviceMotorTorqueGet>
  18:	e3a00000 	mov	r0, #0
  1c:	e3a01000 	mov	r1, #0
  20:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text.vexMotorEfficiencyGet:

00000000 <vexMotorEfficiencyGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e3500000 	cmp	r0, #0
   c:	0a000001 	beq	18 <vexMotorEfficiencyGet+0x18>
  10:	e8bd4008 	pop	{r3, lr}
  14:	eafffffe 	b	0 <vexDeviceMotorEfficiencyGet>
  18:	e3a00000 	mov	r0, #0
  1c:	e3a01000 	mov	r1, #0
  20:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text.vexMotorTemperatureGet:

00000000 <vexMotorTemperatureGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e3500000 	cmp	r0, #0
   c:	0a000001 	beq	18 <vexMotorTemperatureGet+0x18>
  10:	e8bd4008 	pop	{r3, lr}
  14:	eafffffe 	b	0 <vexDeviceMotorTemperatureGet>
  18:	e3a00000 	mov	r0, #0
  1c:	e3a01000 	mov	r1, #0
  20:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text.vexMotorOverTempFlagGet:

00000000 <vexMotorOverTempFlagGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e3500000 	cmp	r0, #0
   c:	08bd8008 	popeq	{r3, pc}
  10:	e8bd4008 	pop	{r3, lr}
  14:	eafffffe 	b	0 <vexDeviceMotorOverTempFlagGet>

Disassembly of section .text.vexMotorCurrentLimitFlagGet:

00000000 <vexMotorCurrentLimitFlagGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e3500000 	cmp	r0, #0
   c:	08bd8008 	popeq	{r3, pc}
  10:	e8bd4008 	pop	{r3, lr}
  14:	eafffffe 	b	0 <vexDeviceMotorCurrentLimitFlagGet>

Disassembly of section .text.vexMotorFaultsGet:

00000000 <vexMotorFaultsGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e3500000 	cmp	r0, #0
   c:	08bd8008 	popeq	{r3, pc}
  10:	e8bd4008 	pop	{r3, lr}
  14:	eafffffe 	b	0 <vexDeviceMotorFaultsGet>

Disassembly of section .text.vexMotorZeroVelocityFlagGet:

00000000 <vexMotorZeroVelocityFlagGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e3500000 	cmp	r0, #0
   c:	08bd8008 	popeq	{r3, pc}
  10:	e8bd4008 	pop	{r3, lr}
  14:	eafffffe 	b	0 <vexDeviceMotorZeroVelocityFlagGet>

Disassembly of section .text.vexMotorZeroPositionFlagGet:

00000000 <vexMotorZeroPositionFlagGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e3500000 	cmp	r0, #0
   c:	08bd8008 	popeq	{r3, pc}
  10:	e8bd4008 	pop	{r3, lr}
  14:	eafffffe 	b	0 <vexDeviceMotorZeroPositionFlagGet>

Disassembly of section .text.vexMotorFlagsGet:

00000000 <vexMotorFlagsGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e3500000 	cmp	r0, #0
   c:	08bd8008 	popeq	{r3, pc}
  10:	e8bd4008 	pop	{r3, lr}
  14:	eafffffe 	b	0 <vexDeviceMotorFlagsGet>

Disassembly of section .text.vexMotorReverseFlagSet:

00000000 <vexMotorReverseFlagSet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e3500000 	cmp	r0, #0
  10:	08bd8010 	popeq	{r4, pc}
  14:	e1a01004 	mov	r1, r4
  18:	e8bd4010 	pop	{r4, lr}
  1c:	eafffffe 	b	0 <vexDeviceMotorReverseFlagSet>

Disassembly of section .text.vexMotorReverseFlagGet:

00000000 <vexMotorReverseFlagGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e3500000 	cmp	r0, #0
   c:	08bd8008 	popeq	{r3, pc}
  10:	e8bd4008 	pop	{r3, lr}
  14:	eafffffe 	b	0 <vexDeviceMotorReverseFlagGet>

Disassembly of section .text.vexMotorEncoderUnitsSet:

00000000 <vexMotorEncoderUnitsSet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e3500000 	cmp	r0, #0
  10:	08bd8010 	popeq	{r4, pc}
  14:	e1a01004 	mov	r1, r4
  18:	e8bd4010 	pop	{r4, lr}
  1c:	eafffffe 	b	0 <vexDeviceMotorEncoderUnitsSet>

Disassembly of section .text.vexMotorEncoderUnitsGet:

00000000 <vexMotorEncoderUnitsGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e3500000 	cmp	r0, #0
   c:	08bd8008 	popeq	{r3, pc}
  10:	e8bd4008 	pop	{r3, lr}
  14:	eafffffe 	b	0 <vexDeviceMotorEncoderUnitsGet>

Disassembly of section .text.vexMotorBrakeModeSet:

00000000 <vexMotorBrakeModeSet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e3500000 	cmp	r0, #0
  10:	08bd8010 	popeq	{r4, pc}
  14:	e1a01004 	mov	r1, r4
  18:	e8bd4010 	pop	{r4, lr}
  1c:	eafffffe 	b	0 <vexDeviceMotorBrakeModeSet>

Disassembly of section .text.vexMotorBrakeModeGet:

00000000 <vexMotorBrakeModeGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e3500000 	cmp	r0, #0
   c:	08bd8008 	popeq	{r3, pc}
  10:	e8bd4008 	pop	{r3, lr}
  14:	eafffffe 	b	0 <vexDeviceMotorBrakeModeGet>

Disassembly of section .text.vexMotorPositionSet:

00000000 <vexMotorPositionSet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a04002 	mov	r4, r2
   8:	e1a05003 	mov	r5, r3
   c:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
  10:	e3500000 	cmp	r0, #0
  14:	08bd8070 	popeq	{r4, r5, r6, pc}
  18:	e1a02004 	mov	r2, r4
  1c:	e1a03005 	mov	r3, r5
  20:	e8bd4070 	pop	{r4, r5, r6, lr}
  24:	eafffffe 	b	0 <vexDeviceMotorPositionSet>

Disassembly of section .text.vexMotorPositionGet:

00000000 <vexMotorPositionGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e3500000 	cmp	r0, #0
   c:	0a000001 	beq	18 <vexMotorPositionGet+0x18>
  10:	e8bd4008 	pop	{r3, lr}
  14:	eafffffe 	b	0 <vexDeviceMotorPositionGet>
  18:	e3a00000 	mov	r0, #0
  1c:	e3a01000 	mov	r1, #0
  20:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text.vexMotorPositionRawGet:

00000000 <vexMotorPositionRawGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e3500000 	cmp	r0, #0
  10:	08bd8010 	popeq	{r4, pc}
  14:	e1a01004 	mov	r1, r4
  18:	e8bd4010 	pop	{r4, lr}
  1c:	eafffffe 	b	0 <vexDeviceMotorPositionRawGet>

Disassembly of section .text.vexMotorPositionReset:

00000000 <vexMotorPositionReset>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e3500000 	cmp	r0, #0
   c:	08bd8008 	popeq	{r3, pc}
  10:	e8bd4008 	pop	{r3, lr}
  14:	eafffffe 	b	0 <vexDeviceMotorPositionReset>

Disassembly of section .text.vexMotorTargetGet:

00000000 <vexMotorTargetGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e3500000 	cmp	r0, #0
   c:	0a000001 	beq	18 <vexMotorTargetGet+0x18>
  10:	e8bd4008 	pop	{r3, lr}
  14:	eafffffe 	b	0 <vexDeviceMotorTargetGet>
  18:	e3a00000 	mov	r0, #0
  1c:	e3a01000 	mov	r1, #0
  20:	e8bd8008 	pop	{r3, pc}

Disassembly of section .text.vexMotorServoTargetSet:

00000000 <vexMotorServoTargetSet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a04002 	mov	r4, r2
   8:	e1a05003 	mov	r5, r3
   c:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
  10:	e3500000 	cmp	r0, #0
  14:	08bd8070 	popeq	{r4, r5, r6, pc}
  18:	e1a02004 	mov	r2, r4
  1c:	e1a03005 	mov	r3, r5
  20:	e8bd4070 	pop	{r4, r5, r6, lr}
  24:	eafffffe 	b	0 <vexDeviceMotorServoTargetSet>

Disassembly of section .text.vexMotorAbsoluteTargetSet:

00000000 <vexMotorAbsoluteTargetSet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a04002 	mov	r4, r2
   8:	e1a05003 	mov	r5, r3
   c:	e59d6010 	ldr	r6, [sp, #16]
  10:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
  14:	e3500000 	cmp	r0, #0
  18:	08bd8070 	popeq	{r4, r5, r6, pc}
  1c:	e58d6010 	str	r6, [sp, #16]
  20:	e1a02004 	mov	r2, r4
  24:	e1a03005 	mov	r3, r5
  28:	e8bd4070 	pop	{r4, r5, r6, lr}
  2c:	eafffffe 	b	0 <vexDeviceMotorAbsoluteTargetSet>

Disassembly of section .text.vexMotorRelativeTargetSet:

00000000 <vexMotorRelativeTargetSet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a04002 	mov	r4, r2
   8:	e1a05003 	mov	r5, r3
   c:	e59d6010 	ldr	r6, [sp, #16]
  10:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
  14:	e3500000 	cmp	r0, #0
  18:	08bd8070 	popeq	{r4, r5, r6, pc}
  1c:	e58d6010 	str	r6, [sp, #16]
  20:	e1a02004 	mov	r2, r4
  24:	e1a03005 	mov	r3, r5
  28:	e8bd4070 	pop	{r4, r5, r6, lr}
  2c:	eafffffe 	b	0 <vexDeviceMotorRelativeTargetSet>

Disassembly of section .text.vexMotorGearingSet:

00000000 <vexMotorGearingSet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e3500000 	cmp	r0, #0
  10:	08bd8010 	popeq	{r4, pc}
  14:	e1a01004 	mov	r1, r4
  18:	e8bd4010 	pop	{r4, lr}
  1c:	eafffffe 	b	0 <vexDeviceMotorGearingSet>

Disassembly of section .text.vexMotorGearingGet:

00000000 <vexMotorGearingGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e3500000 	cmp	r0, #0
   c:	08bd8008 	popeq	{r3, pc}
  10:	e8bd4008 	pop	{r3, lr}
  14:	eafffffe 	b	0 <vexDeviceMotorGearingGet>

Disassembly of section .text.vexMotorExternalProfileSet:

00000000 <vexMotorExternalProfileSet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a04002 	mov	r4, r2
   8:	e1a05003 	mov	r5, r3
   c:	e59d6010 	ldr	r6, [sp, #16]
  10:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
  14:	e3500000 	cmp	r0, #0
  18:	08bd8070 	popeq	{r4, r5, r6, pc}
  1c:	e58d6010 	str	r6, [sp, #16]
  20:	e1a02004 	mov	r2, r4
  24:	e1a03005 	mov	r3, r5
  28:	e8bd4070 	pop	{r4, r5, r6, lr}
  2c:	eafffffe 	b	0 <vexDeviceMotorExternalProfileSet>

Disassembly of section .text.vexVisionModeSet:

00000000 <vexVisionModeSet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e3500000 	cmp	r0, #0
  10:	08bd8010 	popeq	{r4, pc}
  14:	e1a01004 	mov	r1, r4
  18:	e8bd4010 	pop	{r4, lr}
  1c:	eafffffe 	b	0 <vexDeviceVisionModeSet>

Disassembly of section .text.vexVisionModeGet:

00000000 <vexVisionModeGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e3500000 	cmp	r0, #0
   c:	08bd8008 	popeq	{r3, pc}
  10:	e8bd4008 	pop	{r3, lr}
  14:	eafffffe 	b	0 <vexDeviceVisionModeGet>

Disassembly of section .text.vexVisionObjectCountGet:

00000000 <vexVisionObjectCountGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e3500000 	cmp	r0, #0
   c:	08bd8008 	popeq	{r3, pc}
  10:	e8bd4008 	pop	{r3, lr}
  14:	eafffffe 	b	0 <vexDeviceVisionObjectCountGet>

Disassembly of section .text.vexVisionObjectGet:

00000000 <vexVisionObjectGet>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a05001 	mov	r5, r1
   8:	e1a04002 	mov	r4, r2
   c:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
  10:	e3500000 	cmp	r0, #0
  14:	08bd8038 	popeq	{r3, r4, r5, pc}
  18:	e1a01005 	mov	r1, r5
  1c:	e1a02004 	mov	r2, r4
  20:	e8bd4038 	pop	{r3, r4, r5, lr}
  24:	eafffffe 	b	0 <vexDeviceVisionObjectGet>

Disassembly of section .text.vexVisionSignatureSet:

00000000 <vexVisionSignatureSet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e3500000 	cmp	r0, #0
  10:	08bd8010 	popeq	{r4, pc}
  14:	e1a01004 	mov	r1, r4
  18:	e8bd4010 	pop	{r4, lr}
  1c:	eafffffe 	b	0 <vexDeviceVisionSignatureSet>

Disassembly of section .text.vexVisionSignatureGet:

00000000 <vexVisionSignatureGet>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a05001 	mov	r5, r1
   8:	e1a04002 	mov	r4, r2
   c:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
  10:	e3500000 	cmp	r0, #0
  14:	08bd8038 	popeq	{r3, r4, r5, pc}
  18:	e1a01005 	mov	r1, r5
  1c:	e1a02004 	mov	r2, r4
  20:	e8bd4038 	pop	{r3, r4, r5, lr}
  24:	eafffffe 	b	0 <vexDeviceVisionSignatureGet>

Disassembly of section .text.vexVisionBrightnessSet:

00000000 <vexVisionBrightnessSet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e3500000 	cmp	r0, #0
  10:	08bd8010 	popeq	{r4, pc}
  14:	e1a01004 	mov	r1, r4
  18:	e8bd4010 	pop	{r4, lr}
  1c:	eafffffe 	b	0 <vexDeviceVisionBrightnessSet>

Disassembly of section .text.vexVisionBrightnessGet:

00000000 <vexVisionBrightnessGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e3500000 	cmp	r0, #0
   c:	08bd8008 	popeq	{r3, pc}
  10:	e8bd4008 	pop	{r3, lr}
  14:	eafffffe 	b	0 <vexDeviceVisionBrightnessGet>

Disassembly of section .text.vexVisionWhiteBalanceModeSet:

00000000 <vexVisionWhiteBalanceModeSet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e3500000 	cmp	r0, #0
  10:	08bd8010 	popeq	{r4, pc}
  14:	e1a01004 	mov	r1, r4
  18:	e8bd4010 	pop	{r4, lr}
  1c:	eafffffe 	b	0 <vexDeviceVisionWhiteBalanceModeSet>

Disassembly of section .text.vexVisionWhiteBalanceModeGet:

00000000 <vexVisionWhiteBalanceModeGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e3500000 	cmp	r0, #0
   c:	08bd8008 	popeq	{r3, pc}
  10:	e8bd4008 	pop	{r3, lr}
  14:	eafffffe 	b	0 <vexDeviceVisionWhiteBalanceModeGet>

Disassembly of section .text.vexVisionWhiteBalanceSet:

00000000 <vexVisionWhiteBalanceSet>:
   0:	e92d4007 	push	{r0, r1, r2, lr}
   4:	e58d1004 	str	r1, [sp, #4]
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e3500000 	cmp	r0, #0
  10:	0a000003 	beq	24 <vexVisionWhiteBalanceSet+0x24>
  14:	e59d1004 	ldr	r1, [sp, #4]
  18:	e28dd00c 	add	sp, sp, #12
  1c:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
  20:	eafffffe 	b	0 <vexDeviceVisionWhiteBalanceSet>
  24:	e28dd00c 	add	sp, sp, #12
  28:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

Disassembly of section .text.vexVisionWhiteBalanceGet:

00000000 <vexVisionWhiteBalanceGet>:
   0:	e92d4007 	push	{r0, r1, r2, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e2503000 	subs	r3, r0, #0
   c:	0a000002 	beq	1c <vexVisionWhiteBalanceGet+0x1c>
  10:	ebfffffe 	bl	0 <vexDeviceVisionWhiteBalanceGet>
  14:	e58d0004 	str	r0, [sp, #4]
  18:	ea000003 	b	2c <vexVisionWhiteBalanceGet+0x2c>
  1c:	e5cd3004 	strb	r3, [sp, #4]
  20:	e5cd3005 	strb	r3, [sp, #5]
  24:	e5cd3006 	strb	r3, [sp, #6]
  28:	e5cd3007 	strb	r3, [sp, #7]
  2c:	e5dd3004 	ldrb	r3, [sp, #4]
  30:	e3a00000 	mov	r0, #0
  34:	e7c70013 	bfi	r0, r3, #0, #8
  38:	e5dd3005 	ldrb	r3, [sp, #5]
  3c:	e7cf0413 	bfi	r0, r3, #8, #8
  40:	e5dd3006 	ldrb	r3, [sp, #6]
  44:	e7d70813 	bfi	r0, r3, #16, #8
  48:	e5dd3007 	ldrb	r3, [sp, #7]
  4c:	e7df0c13 	bfi	r0, r3, #24, #8
  50:	e28dd00c 	add	sp, sp, #12
  54:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

Disassembly of section .text.vexVisionLedModeSet:

00000000 <vexVisionLedModeSet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e3500000 	cmp	r0, #0
  10:	08bd8010 	popeq	{r4, pc}
  14:	e1a01004 	mov	r1, r4
  18:	e8bd4010 	pop	{r4, lr}
  1c:	eafffffe 	b	0 <vexDeviceVisionLedModeSet>

Disassembly of section .text.vexVisionLedModeGet:

00000000 <vexVisionLedModeGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e3500000 	cmp	r0, #0
   c:	08bd8008 	popeq	{r3, pc}
  10:	e8bd4008 	pop	{r3, lr}
  14:	eafffffe 	b	0 <vexDeviceVisionLedModeGet>

Disassembly of section .text.vexVisionLedBrigntnessSet:

00000000 <vexVisionLedBrigntnessSet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e3500000 	cmp	r0, #0
  10:	08bd8010 	popeq	{r4, pc}
  14:	e1a01004 	mov	r1, r4
  18:	e8bd4010 	pop	{r4, lr}
  1c:	eafffffe 	b	0 <vexDeviceVisionLedBrigntnessSet>

Disassembly of section .text.vexVisionLedBrigntnessGet:

00000000 <vexVisionLedBrigntnessGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e3500000 	cmp	r0, #0
   c:	08bd8008 	popeq	{r3, pc}
  10:	e8bd4008 	pop	{r3, lr}
  14:	eafffffe 	b	0 <vexDeviceVisionLedBrigntnessGet>

Disassembly of section .text.vexVisionLedColorSet:

00000000 <vexVisionLedColorSet>:
   0:	e92d4007 	push	{r0, r1, r2, lr}
   4:	e58d1004 	str	r1, [sp, #4]
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e3500000 	cmp	r0, #0
  10:	0a000003 	beq	24 <vexVisionLedColorSet+0x24>
  14:	e59d1004 	ldr	r1, [sp, #4]
  18:	e28dd00c 	add	sp, sp, #12
  1c:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
  20:	eafffffe 	b	0 <vexDeviceVisionLedColorSet>
  24:	e28dd00c 	add	sp, sp, #12
  28:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

Disassembly of section .text.vexVisionLedColorGet:

00000000 <vexVisionLedColorGet>:
   0:	e92d4007 	push	{r0, r1, r2, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e2503000 	subs	r3, r0, #0
   c:	0a000002 	beq	1c <vexVisionLedColorGet+0x1c>
  10:	ebfffffe 	bl	0 <vexDeviceVisionLedColorGet>
  14:	e58d0004 	str	r0, [sp, #4]
  18:	ea000003 	b	2c <vexVisionLedColorGet+0x2c>
  1c:	e5cd3004 	strb	r3, [sp, #4]
  20:	e5cd3005 	strb	r3, [sp, #5]
  24:	e5cd3006 	strb	r3, [sp, #6]
  28:	e5cd3007 	strb	r3, [sp, #7]
  2c:	e5dd3004 	ldrb	r3, [sp, #4]
  30:	e3a00000 	mov	r0, #0
  34:	e7c70013 	bfi	r0, r3, #0, #8
  38:	e5dd3005 	ldrb	r3, [sp, #5]
  3c:	e7cf0413 	bfi	r0, r3, #8, #8
  40:	e5dd3006 	ldrb	r3, [sp, #6]
  44:	e7d70813 	bfi	r0, r3, #16, #8
  48:	e5dd3007 	ldrb	r3, [sp, #7]
  4c:	e7df0c13 	bfi	r0, r3, #24, #8
  50:	e28dd00c 	add	sp, sp, #12
  54:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

Disassembly of section .text.vexVisionWifiModeSet:

00000000 <vexVisionWifiModeSet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e3500000 	cmp	r0, #0
  10:	08bd8010 	popeq	{r4, pc}
  14:	e1a01004 	mov	r1, r4
  18:	e8bd4010 	pop	{r4, lr}
  1c:	eafffffe 	b	0 <vexDeviceVisionWifiModeSet>

Disassembly of section .text.vexVisionWifiModeGet:

00000000 <vexVisionWifiModeGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e3500000 	cmp	r0, #0
   c:	08bd8008 	popeq	{r3, pc}
  10:	e8bd4008 	pop	{r3, lr}
  14:	eafffffe 	b	0 <vexDeviceVisionWifiModeGet>

Disassembly of section .text.vexImuReset:

00000000 <vexImuReset>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e8bd4008 	pop	{r3, lr}
   c:	eafffffe 	b	0 <vexDeviceImuReset>

Disassembly of section .text.vexImuHeadingGet:

00000000 <vexImuHeadingGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e8bd4008 	pop	{r3, lr}
   c:	eafffffe 	b	0 <vexDeviceImuHeadingGet>

Disassembly of section .text.vexImuDegreesGet:

00000000 <vexImuDegreesGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e8bd4008 	pop	{r3, lr}
   c:	eafffffe 	b	0 <vexDeviceImuDegreesGet>

Disassembly of section .text.vexImuQuaternionGet:

00000000 <vexImuQuaternionGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e1a01004 	mov	r1, r4
  10:	e8bd4010 	pop	{r4, lr}
  14:	eafffffe 	b	0 <vexDeviceImuQuaternionGet>

Disassembly of section .text.vexImuAttitudeGet:

00000000 <vexImuAttitudeGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e1a01004 	mov	r1, r4
  10:	e8bd4010 	pop	{r4, lr}
  14:	eafffffe 	b	0 <vexDeviceImuAttitudeGet>

Disassembly of section .text.vexImuRawGyroGet:

00000000 <vexImuRawGyroGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e1a01004 	mov	r1, r4
  10:	e8bd4010 	pop	{r4, lr}
  14:	eafffffe 	b	0 <vexDeviceImuRawGyroGet>

Disassembly of section .text.vexImuRawAccelGet:

00000000 <vexImuRawAccelGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e1a01004 	mov	r1, r4
  10:	e8bd4010 	pop	{r4, lr}
  14:	eafffffe 	b	0 <vexDeviceImuRawAccelGet>

Disassembly of section .text.vexImuStatusGet:

00000000 <vexImuStatusGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e8bd4008 	pop	{r3, lr}
   c:	eafffffe 	b	0 <vexDeviceImuStatusGet>

Disassembly of section .text.vexImuTemperatureGet:

00000000 <vexImuTemperatureGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e8bd4008 	pop	{r3, lr}
   c:	eafffffe 	b	0 <vexDeviceImuTemperatureGet>

Disassembly of section .text.vexImuDebugGet:

00000000 <vexImuDebugGet>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a05001 	mov	r5, r1
   8:	e1a04002 	mov	r4, r2
   c:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
  10:	e1a01005 	mov	r1, r5
  14:	e1a02004 	mov	r2, r4
  18:	e8bd4038 	pop	{r3, r4, r5, lr}
  1c:	eafffffe 	b	0 <vexDeviceImuDebugGet>

Disassembly of section .text.vexImuModeSet:

00000000 <vexImuModeSet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e1a01004 	mov	r1, r4
  10:	e8bd4010 	pop	{r4, lr}
  14:	eafffffe 	b	0 <vexDeviceImuModeSet>

Disassembly of section .text.vexImuModeGet:

00000000 <vexImuModeGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e8bd4008 	pop	{r3, lr}
   c:	eafffffe 	b	0 <vexDeviceImuModeGet>

Disassembly of section .text.vexImuCollisionDataGet:

00000000 <vexImuCollisionDataGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e1a01004 	mov	r1, r4
  10:	e8bd4010 	pop	{r4, lr}
  14:	eafffffe 	b	0 <vexDeviceImuCollisionDataGet>

Disassembly of section .text.vexImuDataRateSet:

00000000 <vexImuDataRateSet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e1a01004 	mov	r1, r4
  10:	e8bd4010 	pop	{r4, lr}
  14:	eafffffe 	b	0 <vexDeviceImuDataRateSet>

Disassembly of section .text.vexRangeValueGet:

00000000 <vexRangeValueGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e8bd4008 	pop	{r3, lr}
   c:	eafffffe 	b	0 <vexDeviceRangeValueGet>

Disassembly of section .text.vexRadioUserDataReceive:

00000000 <vexRadioUserDataReceive>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a05001 	mov	r5, r1
   8:	e1a04002 	mov	r4, r2
   c:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
  10:	e1a01005 	mov	r1, r5
  14:	e1a02004 	mov	r2, r4
  18:	e8bd4038 	pop	{r3, r4, r5, lr}
  1c:	eafffffe 	b	0 <vexDeviceRadioUserDataReceive>

Disassembly of section .text.vexRadioModeSet:

00000000 <vexRadioModeSet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e1a01004 	mov	r1, r4
  10:	e8bd4010 	pop	{r4, lr}
  14:	eafffffe 	b	0 <vexDeviceRadioModeSet>

Disassembly of section .text.vexAbsEncReset:

00000000 <vexAbsEncReset>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e8bd4008 	pop	{r3, lr}
   c:	eafffffe 	b	0 <vexDeviceAbsEncReset>

Disassembly of section .text.vexAbsEncPositionSet:

00000000 <vexAbsEncPositionSet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e1a01004 	mov	r1, r4
  10:	e8bd4010 	pop	{r4, lr}
  14:	eafffffe 	b	0 <vexDeviceAbsEncPositionSet>

Disassembly of section .text.vexAbsEncPositionGet:

00000000 <vexAbsEncPositionGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e8bd4008 	pop	{r3, lr}
   c:	eafffffe 	b	0 <vexDeviceAbsEncPositionGet>

Disassembly of section .text.vexAbsEncVelocityGet:

00000000 <vexAbsEncVelocityGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e8bd4008 	pop	{r3, lr}
   c:	eafffffe 	b	0 <vexDeviceAbsEncVelocityGet>

Disassembly of section .text.vexAbsEncAngleGet:

00000000 <vexAbsEncAngleGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e8bd4008 	pop	{r3, lr}
   c:	eafffffe 	b	0 <vexDeviceAbsEncAngleGet>

Disassembly of section .text.vexAbsEncReverseFlagSet:

00000000 <vexAbsEncReverseFlagSet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e1a01004 	mov	r1, r4
  10:	e8bd4010 	pop	{r4, lr}
  14:	eafffffe 	b	0 <vexDeviceAbsEncReverseFlagSet>

Disassembly of section .text.vexAbsEncReverseFlagGet:

00000000 <vexAbsEncReverseFlagGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e8bd4008 	pop	{r3, lr}
   c:	eafffffe 	b	0 <vexDeviceAbsEncReverseFlagGet>

Disassembly of section .text.vexAbsEncStatusGet:

00000000 <vexAbsEncStatusGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e8bd4008 	pop	{r3, lr}
   c:	eafffffe 	b	0 <vexDeviceAbsEncStatusGet>

Disassembly of section .text.vexAbsEncTemperatureGet:

00000000 <vexAbsEncTemperatureGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e8bd4008 	pop	{r3, lr}
   c:	eafffffe 	b	0 <vexDeviceAbsEncTemperatureGet>

Disassembly of section .text.vexAbsEncDebugGet:

00000000 <vexAbsEncDebugGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e1a01004 	mov	r1, r4
  10:	e8bd4010 	pop	{r4, lr}
  14:	eafffffe 	b	0 <vexDeviceAbsEncDebugGet>

Disassembly of section .text.vexAbsEncModeSet:

00000000 <vexAbsEncModeSet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e1a01004 	mov	r1, r4
  10:	e8bd4010 	pop	{r4, lr}
  14:	eafffffe 	b	0 <vexDeviceAbsEncModeSet>

Disassembly of section .text.vexAbsEncModeGet:

00000000 <vexAbsEncModeGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e8bd4008 	pop	{r3, lr}
   c:	eafffffe 	b	0 <vexDeviceAbsEncModeGet>

Disassembly of section .text.vexAbsEncOffsetSet:

00000000 <vexAbsEncOffsetSet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e1a01004 	mov	r1, r4
  10:	e8bd4010 	pop	{r4, lr}
  14:	eafffffe 	b	0 <vexDeviceAbsEncOffsetSet>

Disassembly of section .text.vexAbsEncOffsetGet:

00000000 <vexAbsEncOffsetGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e8bd4008 	pop	{r3, lr}
   c:	eafffffe 	b	0 <vexDeviceAbsEncOffsetGet>

Disassembly of section .text.vexAbsEncDataRateSet:

00000000 <vexAbsEncDataRateSet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e1a01004 	mov	r1, r4
  10:	e8bd4010 	pop	{r4, lr}
  14:	eafffffe 	b	0 <vexDeviceAbsEncDataRateSet>

Disassembly of section .text.vexOpticalHueGet:

00000000 <vexOpticalHueGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e8bd4008 	pop	{r3, lr}
   c:	eafffffe 	b	0 <vexDeviceOpticalHueGet>

Disassembly of section .text.vexOpticalSatGet:

00000000 <vexOpticalSatGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e8bd4008 	pop	{r3, lr}
   c:	eafffffe 	b	0 <vexDeviceOpticalSatGet>

Disassembly of section .text.vexOpticalBrightnessGet:

00000000 <vexOpticalBrightnessGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e8bd4008 	pop	{r3, lr}
   c:	eafffffe 	b	0 <vexDeviceOpticalBrightnessGet>

Disassembly of section .text.vexOpticalProximityGet:

00000000 <vexOpticalProximityGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e8bd4008 	pop	{r3, lr}
   c:	eafffffe 	b	0 <vexDeviceOpticalProximityGet>

Disassembly of section .text.vexOpticalRgbGet:

00000000 <vexOpticalRgbGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e1a01004 	mov	r1, r4
  10:	e8bd4010 	pop	{r4, lr}
  14:	eafffffe 	b	0 <vexDeviceOpticalRgbGet>

Disassembly of section .text.vexOpticalLedPwmSet:

00000000 <vexOpticalLedPwmSet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e1a01004 	mov	r1, r4
  10:	e8bd4010 	pop	{r4, lr}
  14:	eafffffe 	b	0 <vexDeviceOpticalLedPwmSet>

Disassembly of section .text.vexOpticalLedPwmGet:

00000000 <vexOpticalLedPwmGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e8bd4008 	pop	{r3, lr}
   c:	eafffffe 	b	0 <vexDeviceOpticalLedPwmGet>

Disassembly of section .text.vexOpticalStatusGet:

00000000 <vexOpticalStatusGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e8bd4008 	pop	{r3, lr}
   c:	eafffffe 	b	0 <vexDeviceOpticalStatusGet>

Disassembly of section .text.vexOpticalRawGet:

00000000 <vexOpticalRawGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e1a01004 	mov	r1, r4
  10:	e8bd4010 	pop	{r4, lr}
  14:	eafffffe 	b	0 <vexDeviceOpticalRawGet>

Disassembly of section .text.vexOpticalDebugGet:

00000000 <vexOpticalDebugGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e1a01004 	mov	r1, r4
  10:	e8bd4010 	pop	{r4, lr}
  14:	eafffffe 	b	0 <vexDeviceOpticalDebugGet>

Disassembly of section .text.vexOpticalModeSet:

00000000 <vexOpticalModeSet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e1a01004 	mov	r1, r4
  10:	e8bd4010 	pop	{r4, lr}
  14:	eafffffe 	b	0 <vexDeviceOpticalModeSet>

Disassembly of section .text.vexOpticalModeGet:

00000000 <vexOpticalModeGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e8bd4008 	pop	{r3, lr}
   c:	eafffffe 	b	0 <vexDeviceOpticalModeGet>

Disassembly of section .text.vexOpticalGestureGet:

00000000 <vexOpticalGestureGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e1a01004 	mov	r1, r4
  10:	e8bd4010 	pop	{r4, lr}
  14:	eafffffe 	b	0 <vexDeviceOpticalGestureGet>

Disassembly of section .text.vexOpticalGestureEnable:

00000000 <vexOpticalGestureEnable>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e8bd4008 	pop	{r3, lr}
   c:	eafffffe 	b	0 <vexDeviceOpticalGestureEnable>

Disassembly of section .text.vexOpticalGestureDisable:

00000000 <vexOpticalGestureDisable>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e8bd4008 	pop	{r3, lr}
   c:	eafffffe 	b	0 <vexDeviceOpticalGestureDisable>

Disassembly of section .text.vexOpticalProximityThreshold:

00000000 <vexOpticalProximityThreshold>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e1a01004 	mov	r1, r4
  10:	e8bd4010 	pop	{r4, lr}
  14:	eafffffe 	b	0 <vexDeviceOpticalProximityThreshold>

Disassembly of section .text.vexOpticalGainSet:

00000000 <vexOpticalGainSet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e1a01004 	mov	r1, r4
  10:	e8bd4010 	pop	{r4, lr}
  14:	eafffffe 	b	0 <vexDeviceOpticalGainSet>

Disassembly of section .text.vexOpticalMatrixSet:

00000000 <vexOpticalMatrixSet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e1a01004 	mov	r1, r4
  10:	e8bd4010 	pop	{r4, lr}
  14:	eafffffe 	b	0 <vexDeviceOpticalMatrixSet>

Disassembly of section .text.vexOpticalMatrixGet:

00000000 <vexOpticalMatrixGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e1a01004 	mov	r1, r4
  10:	e8bd4010 	pop	{r4, lr}
  14:	eafffffe 	b	0 <vexDeviceOpticalMatrixGet>

Disassembly of section .text.vexOpticalIntegrationTimeSet:

00000000 <vexOpticalIntegrationTimeSet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a04002 	mov	r4, r2
   8:	e1a05003 	mov	r5, r3
   c:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
  10:	e1a02004 	mov	r2, r4
  14:	e1a03005 	mov	r3, r5
  18:	e8bd4070 	pop	{r4, r5, r6, lr}
  1c:	eafffffe 	b	0 <vexDeviceOpticalIntegrationTimeSet>

Disassembly of section .text.vexOpticalIntegrationTimeGet:

00000000 <vexOpticalIntegrationTimeGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e8bd4008 	pop	{r3, lr}
   c:	eafffffe 	b	0 <vexDeviceOpticalIntegrationTimeGet>

Disassembly of section .text.vexMagnetPowerSet:

00000000 <vexMagnetPowerSet>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a05001 	mov	r5, r1
   8:	e1a04002 	mov	r4, r2
   c:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
  10:	e1a01005 	mov	r1, r5
  14:	e1a02004 	mov	r2, r4
  18:	e8bd4038 	pop	{r3, r4, r5, lr}
  1c:	eafffffe 	b	0 <vexDeviceMagnetPowerSet>

Disassembly of section .text.vexMagnetPowerGet:

00000000 <vexMagnetPowerGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e8bd4008 	pop	{r3, lr}
   c:	eafffffe 	b	0 <vexDeviceMagnetPowerGet>

Disassembly of section .text.vexMagnetPickup:

00000000 <vexMagnetPickup>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e1a01004 	mov	r1, r4
  10:	e8bd4010 	pop	{r4, lr}
  14:	eafffffe 	b	0 <vexDeviceMagnetPickup>

Disassembly of section .text.vexMagnetDrop:

00000000 <vexMagnetDrop>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e1a01004 	mov	r1, r4
  10:	e8bd4010 	pop	{r4, lr}
  14:	eafffffe 	b	0 <vexDeviceMagnetDrop>

Disassembly of section .text.vexMagnetTemperatureGet:

00000000 <vexMagnetTemperatureGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e8bd4008 	pop	{r3, lr}
   c:	eafffffe 	b	0 <vexDeviceMagnetTemperatureGet>

Disassembly of section .text.vexMagnetCurrentGet:

00000000 <vexMagnetCurrentGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e8bd4008 	pop	{r3, lr}
   c:	eafffffe 	b	0 <vexDeviceMagnetCurrentGet>

Disassembly of section .text.vexMagnetStatusGet:

00000000 <vexMagnetStatusGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e8bd4008 	pop	{r3, lr}
   c:	eafffffe 	b	0 <vexDeviceMagnetStatusGet>

Disassembly of section .text.vexMagnetDebugGet:

00000000 <vexMagnetDebugGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e1a01004 	mov	r1, r4
  10:	e8bd4010 	pop	{r4, lr}
  14:	eafffffe 	b	0 <vexDeviceMagnetDebugGet>

Disassembly of section .text.vexMagnetModeSet:

00000000 <vexMagnetModeSet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e1a01004 	mov	r1, r4
  10:	e8bd4010 	pop	{r4, lr}
  14:	eafffffe 	b	0 <vexDeviceMagnetModeSet>

Disassembly of section .text.vexMagnetModeGet:

00000000 <vexMagnetModeGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e8bd4008 	pop	{r3, lr}
   c:	eafffffe 	b	0 <vexDeviceMagnetModeGet>

Disassembly of section .text.vexDistanceDistanceGet:

00000000 <vexDistanceDistanceGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e8bd4008 	pop	{r3, lr}
   c:	eafffffe 	b	0 <vexDeviceDistanceDistanceGet>

Disassembly of section .text.vexDistanceConfidenceGet:

00000000 <vexDistanceConfidenceGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e8bd4008 	pop	{r3, lr}
   c:	eafffffe 	b	0 <vexDeviceDistanceConfidenceGet>

Disassembly of section .text.vexDistanceObjectSizeGet:

00000000 <vexDistanceObjectSizeGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e8bd4008 	pop	{r3, lr}
   c:	eafffffe 	b	0 <vexDeviceDistanceObjectSizeGet>

Disassembly of section .text.vexDistanceObjectVelocityGet:

00000000 <vexDistanceObjectVelocityGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e8bd4008 	pop	{r3, lr}
   c:	eafffffe 	b	0 <vexDeviceDistanceObjectVelocityGet>

Disassembly of section .text.vexDistanceStatusGet:

00000000 <vexDistanceStatusGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e8bd4008 	pop	{r3, lr}
   c:	eafffffe 	b	0 <vexDeviceDistanceStatusGet>

Disassembly of section .text.vexDistanceDebugGet:

00000000 <vexDistanceDebugGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e1a01004 	mov	r1, r4
  10:	e8bd4010 	pop	{r4, lr}
  14:	eafffffe 	b	0 <vexDeviceDistanceDebugGet>

Disassembly of section .text.vexDistanceModeSet:

00000000 <vexDistanceModeSet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e1a01004 	mov	r1, r4
  10:	e8bd4010 	pop	{r4, lr}
  14:	eafffffe 	b	0 <vexDeviceDistanceModeSet>

Disassembly of section .text.vexDistanceModeGet:

00000000 <vexDistanceModeGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e8bd4008 	pop	{r3, lr}
   c:	eafffffe 	b	0 <vexDeviceDistanceModeGet>

Disassembly of section .text.vexGpsReset:

00000000 <vexGpsReset>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e8bd4008 	pop	{r3, lr}
   c:	eafffffe 	b	0 <vexDeviceGpsReset>

Disassembly of section .text.vexGpsHeadingGet:

00000000 <vexGpsHeadingGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e8bd4008 	pop	{r3, lr}
   c:	eafffffe 	b	0 <vexDeviceGpsHeadingGet>

Disassembly of section .text.vexGpsDegreesGet:

00000000 <vexGpsDegreesGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e8bd4008 	pop	{r3, lr}
   c:	eafffffe 	b	0 <vexDeviceGpsDegreesGet>

Disassembly of section .text.vexGpsQuaternionGet:

00000000 <vexGpsQuaternionGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e1a01004 	mov	r1, r4
  10:	e8bd4010 	pop	{r4, lr}
  14:	eafffffe 	b	0 <vexDeviceGpsQuaternionGet>

Disassembly of section .text.vexGpsAttitudeGet:

00000000 <vexGpsAttitudeGet>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a05001 	mov	r5, r1
   8:	e1a04002 	mov	r4, r2
   c:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
  10:	e1a01005 	mov	r1, r5
  14:	e1a02004 	mov	r2, r4
  18:	e8bd4038 	pop	{r3, r4, r5, lr}
  1c:	eafffffe 	b	0 <vexDeviceGpsAttitudeGet>

Disassembly of section .text.vexGpsRawGyroGet:

00000000 <vexGpsRawGyroGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e1a01004 	mov	r1, r4
  10:	e8bd4010 	pop	{r4, lr}
  14:	eafffffe 	b	0 <vexDeviceGpsRawGyroGet>

Disassembly of section .text.vexGpsRawAccelGet:

00000000 <vexGpsRawAccelGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e1a01004 	mov	r1, r4
  10:	e8bd4010 	pop	{r4, lr}
  14:	eafffffe 	b	0 <vexDeviceGpsRawAccelGet>

Disassembly of section .text.vexGpsStatusGet:

00000000 <vexGpsStatusGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e8bd4008 	pop	{r3, lr}
   c:	eafffffe 	b	0 <vexDeviceGpsStatusGet>

Disassembly of section .text.vexGpsTemperatureGet:

00000000 <vexGpsTemperatureGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e8bd4008 	pop	{r3, lr}
   c:	eafffffe 	b	0 <vexDeviceGpsTemperatureGet>

Disassembly of section .text.vexGpsDebugGet:

00000000 <vexGpsDebugGet>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a05001 	mov	r5, r1
   8:	e1a04002 	mov	r4, r2
   c:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
  10:	e1a01005 	mov	r1, r5
  14:	e1a02004 	mov	r2, r4
  18:	e8bd4038 	pop	{r3, r4, r5, lr}
  1c:	eafffffe 	b	0 <vexDeviceGpsDebugGet>

Disassembly of section .text.vexGpsModeSet:

00000000 <vexGpsModeSet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e1a01004 	mov	r1, r4
  10:	e8bd4010 	pop	{r4, lr}
  14:	eafffffe 	b	0 <vexDeviceGpsModeSet>

Disassembly of section .text.vexGpsModeGet:

00000000 <vexGpsModeGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e8bd4008 	pop	{r3, lr}
   c:	eafffffe 	b	0 <vexDeviceGpsModeGet>

Disassembly of section .text.vexGpsDataRateSet:

00000000 <vexGpsDataRateSet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e1a01004 	mov	r1, r4
  10:	e8bd4010 	pop	{r4, lr}
  14:	eafffffe 	b	0 <vexDeviceGpsDataRateSet>

Disassembly of section .text.vexGpsOriginSet:

00000000 <vexGpsOriginSet>:
   0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   4:	e1a04002 	mov	r4, r2
   8:	e1cd61d8 	ldrd	r6, [sp, #24]
   c:	e1a05003 	mov	r5, r3
  10:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
  14:	e1a02004 	mov	r2, r4
  18:	e1a03005 	mov	r3, r5
  1c:	e1cd61f8 	strd	r6, [sp, #24]
  20:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
  24:	eafffffe 	b	0 <vexDeviceGpsOriginSet>

Disassembly of section .text.vexGpsOriginGet:

00000000 <vexGpsOriginGet>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a05001 	mov	r5, r1
   8:	e1a04002 	mov	r4, r2
   c:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
  10:	e1a01005 	mov	r1, r5
  14:	e1a02004 	mov	r2, r4
  18:	e8bd4038 	pop	{r3, r4, r5, lr}
  1c:	eafffffe 	b	0 <vexDeviceGpsOriginGet>

Disassembly of section .text.vexGpsRotationSet:

00000000 <vexGpsRotationSet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a04002 	mov	r4, r2
   8:	e1a05003 	mov	r5, r3
   c:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
  10:	e1a02004 	mov	r2, r4
  14:	e1a03005 	mov	r3, r5
  18:	e8bd4070 	pop	{r4, r5, r6, lr}
  1c:	eafffffe 	b	0 <vexDeviceGpsRotationSet>

Disassembly of section .text.vexGpsRotationGet:

00000000 <vexGpsRotationGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e8bd4008 	pop	{r3, lr}
   c:	eafffffe 	b	0 <vexDeviceGpsRotationGet>

Disassembly of section .text.vexGpsInitialPositionSet:

00000000 <vexGpsInitialPositionSet>:
   0:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
   4:	e1a04002 	mov	r4, r2
   8:	e1cd82d0 	ldrd	r8, [sp, #32]
   c:	e1a05003 	mov	r5, r3
  10:	e1cd62d8 	ldrd	r6, [sp, #40]	; 0x28
  14:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
  18:	e1a02004 	mov	r2, r4
  1c:	e1a03005 	mov	r3, r5
  20:	e1cd82f0 	strd	r8, [sp, #32]
  24:	e1cd62f8 	strd	r6, [sp, #40]	; 0x28
  28:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
  2c:	eafffffe 	b	0 <vexDeviceGpsInitialPositionSet>

Disassembly of section .text.vexGpsErrorGet:

00000000 <vexGpsErrorGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e8bd4008 	pop	{r3, lr}
   c:	eafffffe 	b	0 <vexDeviceGpsErrorGet>

Disassembly of section .text.vexGpsTestDataSet:

00000000 <vexGpsTestDataSet>:
   0:	e92d4f70 	push	{r4, r5, r6, r8, r9, sl, fp, lr}
   4:	e1a04002 	mov	r4, r2
   8:	e1cda2d0 	ldrd	sl, [sp, #32]
   c:	e1a05003 	mov	r5, r3
  10:	e1cd82d8 	ldrd	r8, [sp, #40]	; 0x28
  14:	e5dd6030 	ldrb	r6, [sp, #48]	; 0x30
  18:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
  1c:	e1cda2f0 	strd	sl, [sp, #32]
  20:	e1a02004 	mov	r2, r4
  24:	e1cd82f8 	strd	r8, [sp, #40]	; 0x28
  28:	e1a03005 	mov	r3, r5
  2c:	e58d6030 	str	r6, [sp, #48]	; 0x30
  30:	e8bd4f70 	pop	{r4, r5, r6, r8, r9, sl, fp, lr}
  34:	eafffffe 	b	0 <vexDeviceGpsTestDataSet>

Disassembly of section .text.vexAicamReset:

00000000 <vexAicamReset>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e8bd4008 	pop	{r3, lr}
   c:	eafffffe 	b	0 <vexDeviceAicamReset>

Disassembly of section .text.vexAicamHeadingGet:

00000000 <vexAicamHeadingGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e8bd4008 	pop	{r3, lr}
   c:	eafffffe 	b	0 <vexDeviceAicamHeadingGet>

Disassembly of section .text.vexAicamDegreesGet:

00000000 <vexAicamDegreesGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e8bd4008 	pop	{r3, lr}
   c:	eafffffe 	b	0 <vexDeviceAicamDegreesGet>

Disassembly of section .text.vexAicamAttitudeGet:

00000000 <vexAicamAttitudeGet>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a05001 	mov	r5, r1
   8:	e1a04002 	mov	r4, r2
   c:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
  10:	e1a01005 	mov	r1, r5
  14:	e1a02004 	mov	r2, r4
  18:	e8bd4038 	pop	{r3, r4, r5, lr}
  1c:	eafffffe 	b	0 <vexDeviceAicamAttitudeGet>

Disassembly of section .text.vexAicamRawGyroGet:

00000000 <vexAicamRawGyroGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e1a01004 	mov	r1, r4
  10:	e8bd4010 	pop	{r4, lr}
  14:	eafffffe 	b	0 <vexDeviceAicamRawGyroGet>

Disassembly of section .text.vexAicamRawAccelGet:

00000000 <vexAicamRawAccelGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e1a01004 	mov	r1, r4
  10:	e8bd4010 	pop	{r4, lr}
  14:	eafffffe 	b	0 <vexDeviceAicamRawAccelGet>

Disassembly of section .text.vexAicamStatusGet:

00000000 <vexAicamStatusGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e8bd4008 	pop	{r3, lr}
   c:	eafffffe 	b	0 <vexDeviceAicamStatusGet>

Disassembly of section .text.vexAicamTemperatureGet:

00000000 <vexAicamTemperatureGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e8bd4008 	pop	{r3, lr}
   c:	eafffffe 	b	0 <vexDeviceAicamTemperatureGet>

Disassembly of section .text.vexAicamDebugGet:

00000000 <vexAicamDebugGet>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a05001 	mov	r5, r1
   8:	e1a04002 	mov	r4, r2
   c:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
  10:	e1a01005 	mov	r1, r5
  14:	e1a02004 	mov	r2, r4
  18:	e8bd4038 	pop	{r3, r4, r5, lr}
  1c:	eafffffe 	b	0 <vexDeviceAicamDebugGet>

Disassembly of section .text.vexAicamModeSet:

00000000 <vexAicamModeSet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e1a01004 	mov	r1, r4
  10:	e8bd4010 	pop	{r4, lr}
  14:	eafffffe 	b	0 <vexDeviceAicamModeSet>

Disassembly of section .text.vexAicamModeGet:

00000000 <vexAicamModeGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e8bd4008 	pop	{r3, lr}
   c:	eafffffe 	b	0 <vexDeviceAicamModeGet>

Disassembly of section .text.vexAicamDataRateSet:

00000000 <vexAicamDataRateSet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e1a01004 	mov	r1, r4
  10:	e8bd4010 	pop	{r4, lr}
  14:	eafffffe 	b	0 <vexDeviceAicamDataRateSet>

Disassembly of section .text.vexAicamObjectCountGet:

00000000 <vexAicamObjectCountGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e8bd4008 	pop	{r3, lr}
   c:	eafffffe 	b	0 <vexDeviceAicamObjectCountGet>

Disassembly of section .text.vexAicamObjectGet:

00000000 <vexAicamObjectGet>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a05001 	mov	r5, r1
   8:	e1a04002 	mov	r4, r2
   c:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
  10:	e1a01005 	mov	r1, r5
  14:	e1a02004 	mov	r2, r4
  18:	e8bd4038 	pop	{r3, r4, r5, lr}
  1c:	eafffffe 	b	0 <vexDeviceAicamObjectGet>

Disassembly of section .text.vexAicamWriteChar:

00000000 <vexAicamWriteChar>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e3500000 	cmp	r0, #0
  10:	08bd8010 	popeq	{r4, pc}
  14:	e1a01004 	mov	r1, r4
  18:	e8bd4010 	pop	{r4, lr}
  1c:	eafffffe 	b	0 <vexDeviceAicamWriteChar>

Disassembly of section .text.vexAicamWriteFree:

00000000 <vexAicamWriteFree>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e3500000 	cmp	r0, #0
   c:	08bd8008 	popeq	{r3, pc}
  10:	e8bd4008 	pop	{r3, lr}
  14:	eafffffe 	b	0 <vexDeviceAicamWriteFree>

Disassembly of section .text.vexAicamTransmit:

00000000 <vexAicamTransmit>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a05001 	mov	r5, r1
   8:	e1a04002 	mov	r4, r2
   c:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
  10:	e3500000 	cmp	r0, #0
  14:	08bd8038 	popeq	{r3, r4, r5, pc}
  18:	e1a01005 	mov	r1, r5
  1c:	e1a02004 	mov	r2, r4
  20:	e8bd4038 	pop	{r3, r4, r5, lr}
  24:	eafffffe 	b	0 <vexDeviceAicamTransmit>

Disassembly of section .text.vexAicamReadChar:

00000000 <vexAicamReadChar>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e3500000 	cmp	r0, #0
   c:	08bd8008 	popeq	{r3, pc}
  10:	e8bd4008 	pop	{r3, lr}
  14:	eafffffe 	b	0 <vexDeviceAicamReadChar>

Disassembly of section .text.vexAicamPeekChar:

00000000 <vexAicamPeekChar>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e3500000 	cmp	r0, #0
   c:	08bd8008 	popeq	{r3, pc}
  10:	e8bd4008 	pop	{r3, lr}
  14:	eafffffe 	b	0 <vexDeviceAicamPeekChar>

Disassembly of section .text.vexAicamReceiveAvail:

00000000 <vexAicamReceiveAvail>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e3500000 	cmp	r0, #0
   c:	08bd8008 	popeq	{r3, pc}
  10:	e8bd4008 	pop	{r3, lr}
  14:	eafffffe 	b	0 <vexDeviceAicamReceiveAvail>

Disassembly of section .text.vexAicamReceive:

00000000 <vexAicamReceive>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a05001 	mov	r5, r1
   8:	e1a04002 	mov	r4, r2
   c:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
  10:	e3500000 	cmp	r0, #0
  14:	08bd8038 	popeq	{r3, r4, r5, pc}
  18:	e1a01005 	mov	r1, r5
  1c:	e1a02004 	mov	r2, r4
  20:	e8bd4038 	pop	{r3, r4, r5, lr}
  24:	eafffffe 	b	0 <vexDeviceAicamReceive>

Disassembly of section .text.vexAicamFlush:

00000000 <vexAicamFlush>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e3500000 	cmp	r0, #0
   c:	08bd8008 	popeq	{r3, pc}
  10:	e8bd4008 	pop	{r3, lr}
  14:	eafffffe 	b	0 <vexDeviceAicamFlush>

Disassembly of section .text.vexEventMaskSet:

00000000 <vexEventMaskSet>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a05001 	mov	r5, r1
   8:	e1a04002 	mov	r4, r2
   c:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
  10:	e3500000 	cmp	r0, #0
  14:	08bd8038 	popeq	{r3, r4, r5, pc}
  18:	e1a01005 	mov	r1, r5
  1c:	e1a02004 	mov	r2, r4
  20:	e8bd4038 	pop	{r3, r4, r5, lr}
  24:	eafffffe 	b	0 <vexDeviceEventMaskSet>

Disassembly of section .text.vexEventMaskGet:

00000000 <vexEventMaskGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e3500000 	cmp	r0, #0
   c:	08bd8008 	popeq	{r3, pc}
  10:	e8bd4008 	pop	{r3, lr}
  14:	eafffffe 	b	0 <vexDeviceEventMaskGet>

Disassembly of section .text.vexEventDataSet:

00000000 <vexEventDataSet>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a05001 	mov	r5, r1
   8:	e1a04002 	mov	r4, r2
   c:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
  10:	e3500000 	cmp	r0, #0
  14:	08bd8038 	popeq	{r3, r4, r5, pc}
  18:	e1a01005 	mov	r1, r5
  1c:	e1a02004 	mov	r2, r4
  20:	e8bd4038 	pop	{r3, r4, r5, lr}
  24:	eafffffe 	b	0 <vexDeviceEventDataSet>

Disassembly of section .text.vexEventDataGet:

00000000 <vexEventDataGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e3500000 	cmp	r0, #0
   c:	08bd8008 	popeq	{r3, pc}
  10:	e8bd4008 	pop	{r3, lr}
  14:	eafffffe 	b	0 <vexDeviceEventDataGet>

Disassembly of section .text.vexEventBitsSet:

00000000 <vexEventBitsSet>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a05001 	mov	r5, r1
   8:	e1a04002 	mov	r4, r2
   c:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
  10:	e3500000 	cmp	r0, #0
  14:	08bd8038 	popeq	{r3, r4, r5, pc}
  18:	e1a01005 	mov	r1, r5
  1c:	e1a02004 	mov	r2, r4
  20:	e8bd4038 	pop	{r3, r4, r5, lr}
  24:	eafffffe 	b	0 <vexDeviceEventBitsSet>

Disassembly of section .text.vexEventBitsGet:

00000000 <vexEventBitsGet>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e3500000 	cmp	r0, #0
   c:	08bd8008 	popeq	{r3, pc}
  10:	e8bd4008 	pop	{r3, lr}
  14:	eafffffe 	b	0 <vexDeviceEventBitsGet>

Disassembly of section .text.vexGenericSerialEnable:

00000000 <vexGenericSerialEnable>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e3500000 	cmp	r0, #0
  10:	08bd8010 	popeq	{r4, pc}
  14:	e1a01004 	mov	r1, r4
  18:	e8bd4010 	pop	{r4, lr}
  1c:	eafffffe 	b	0 <vexDeviceGenericSerialEnable>

Disassembly of section .text.vexGenericSerialBaudrate:

00000000 <vexGenericSerialBaudrate>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e3500000 	cmp	r0, #0
  10:	08bd8010 	popeq	{r4, pc}
  14:	e1a01004 	mov	r1, r4
  18:	e8bd4010 	pop	{r4, lr}
  1c:	eafffffe 	b	0 <vexDeviceGenericSerialBaudrate>

Disassembly of section .text.vexGenericSerialWriteChar:

00000000 <vexGenericSerialWriteChar>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e3500000 	cmp	r0, #0
  10:	08bd8010 	popeq	{r4, pc}
  14:	e1a01004 	mov	r1, r4
  18:	e8bd4010 	pop	{r4, lr}
  1c:	eafffffe 	b	0 <vexDeviceGenericSerialWriteChar>

Disassembly of section .text.vexGenericSerialWriteFree:

00000000 <vexGenericSerialWriteFree>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e3500000 	cmp	r0, #0
   c:	08bd8008 	popeq	{r3, pc}
  10:	e8bd4008 	pop	{r3, lr}
  14:	eafffffe 	b	0 <vexDeviceGenericSerialWriteFree>

Disassembly of section .text.vexGenericSerialTransmit:

00000000 <vexGenericSerialTransmit>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a05001 	mov	r5, r1
   8:	e1a04002 	mov	r4, r2
   c:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
  10:	e3500000 	cmp	r0, #0
  14:	08bd8038 	popeq	{r3, r4, r5, pc}
  18:	e1a01005 	mov	r1, r5
  1c:	e1a02004 	mov	r2, r4
  20:	e8bd4038 	pop	{r3, r4, r5, lr}
  24:	eafffffe 	b	0 <vexDeviceGenericSerialTransmit>

Disassembly of section .text.vexGenericSerialReadChar:

00000000 <vexGenericSerialReadChar>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e3500000 	cmp	r0, #0
   c:	08bd8008 	popeq	{r3, pc}
  10:	e8bd4008 	pop	{r3, lr}
  14:	eafffffe 	b	0 <vexDeviceGenericSerialReadChar>

Disassembly of section .text.vexGenericSerialPeekChar:

00000000 <vexGenericSerialPeekChar>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e3500000 	cmp	r0, #0
   c:	08bd8008 	popeq	{r3, pc}
  10:	e8bd4008 	pop	{r3, lr}
  14:	eafffffe 	b	0 <vexDeviceGenericSerialPeekChar>

Disassembly of section .text.vexGenericSerialReceiveAvail:

00000000 <vexGenericSerialReceiveAvail>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e3500000 	cmp	r0, #0
   c:	08bd8008 	popeq	{r3, pc}
  10:	e8bd4008 	pop	{r3, lr}
  14:	eafffffe 	b	0 <vexDeviceGenericSerialReceiveAvail>

Disassembly of section .text.vexGenericSerialReceive:

00000000 <vexGenericSerialReceive>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a05001 	mov	r5, r1
   8:	e1a04002 	mov	r4, r2
   c:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
  10:	e3500000 	cmp	r0, #0
  14:	08bd8038 	popeq	{r3, r4, r5, pc}
  18:	e1a01005 	mov	r1, r5
  1c:	e1a02004 	mov	r2, r4
  20:	e8bd4038 	pop	{r3, r4, r5, lr}
  24:	eafffffe 	b	0 <vexDeviceGenericSerialReceive>

Disassembly of section .text.vexGenericSerialFlush:

00000000 <vexGenericSerialFlush>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e3500000 	cmp	r0, #0
   c:	08bd8008 	popeq	{r3, pc}
  10:	e8bd4008 	pop	{r3, lr}
  14:	eafffffe 	b	0 <vexDeviceGenericSerialFlush>

Disassembly of section .text.vexGenericSerialDisableAll:

00000000 <vexGenericSerialDisableAll>:
   0:	eafffffe 	b	0 <vexDeviceGenericSerialDisableAll>

Disassembly of section .text.vexGenericRadioEnable:

00000000 <vexGenericRadioEnable>:
   0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   4:	e1a06001 	mov	r6, r1
   8:	e1a05002 	mov	r5, r2
   c:	e1a04003 	mov	r4, r3
  10:	e5dd7018 	ldrb	r7, [sp, #24]
  14:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
  18:	e3500000 	cmp	r0, #0
  1c:	08bd81f0 	popeq	{r4, r5, r6, r7, r8, pc}
  20:	e58d7018 	str	r7, [sp, #24]
  24:	e1a01006 	mov	r1, r6
  28:	e1a02005 	mov	r2, r5
  2c:	e1a03004 	mov	r3, r4
  30:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
  34:	eafffffe 	b	0 <vexDeviceGenericRadioEnable>

Disassembly of section .text.vexGenericRadioDebugGet:

00000000 <vexGenericRadioDebugGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e3500000 	cmp	r0, #0
  10:	08bd8010 	popeq	{r4, pc}
  14:	e1a01004 	mov	r1, r4
  18:	e8bd4010 	pop	{r4, lr}
  1c:	eafffffe 	b	0 <vexDeviceGenericRadioDebugGet>

Disassembly of section .text.vexGenericRadioConnection:

00000000 <vexGenericRadioConnection>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a06001 	mov	r6, r1
   8:	e1a05002 	mov	r5, r2
   c:	e1a04003 	mov	r4, r3
  10:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
  14:	e3500000 	cmp	r0, #0
  18:	08bd8070 	popeq	{r4, r5, r6, pc}
  1c:	e1a01006 	mov	r1, r6
  20:	e1a02005 	mov	r2, r5
  24:	e1a03004 	mov	r3, r4
  28:	e8bd4070 	pop	{r4, r5, r6, lr}
  2c:	eafffffe 	b	0 <vexDeviceGenericRadioConnection>

Disassembly of section .text.vexGenericRadioWriteChar:

00000000 <vexGenericRadioWriteChar>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e3500000 	cmp	r0, #0
  10:	08bd8010 	popeq	{r4, pc}
  14:	e1a01004 	mov	r1, r4
  18:	e8bd4010 	pop	{r4, lr}
  1c:	eafffffe 	b	0 <vexDeviceGenericRadioWriteChar>

Disassembly of section .text.vexGenericRadioWriteFree:

00000000 <vexGenericRadioWriteFree>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e3500000 	cmp	r0, #0
   c:	08bd8008 	popeq	{r3, pc}
  10:	e8bd4008 	pop	{r3, lr}
  14:	eafffffe 	b	0 <vexDeviceGenericRadioWriteFree>

Disassembly of section .text.vexGenericRadioTransmit:

00000000 <vexGenericRadioTransmit>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a05001 	mov	r5, r1
   8:	e1a04002 	mov	r4, r2
   c:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
  10:	e3500000 	cmp	r0, #0
  14:	08bd8038 	popeq	{r3, r4, r5, pc}
  18:	e1a01005 	mov	r1, r5
  1c:	e1a02004 	mov	r2, r4
  20:	e8bd4038 	pop	{r3, r4, r5, lr}
  24:	eafffffe 	b	0 <vexDeviceGenericRadioTransmit>

Disassembly of section .text.vexGenericRadioReadChar:

00000000 <vexGenericRadioReadChar>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e3500000 	cmp	r0, #0
   c:	08bd8008 	popeq	{r3, pc}
  10:	e8bd4008 	pop	{r3, lr}
  14:	eafffffe 	b	0 <vexDeviceGenericRadioReadChar>

Disassembly of section .text.vexGenericRadioPeekChar:

00000000 <vexGenericRadioPeekChar>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e3500000 	cmp	r0, #0
   c:	08bd8008 	popeq	{r3, pc}
  10:	e8bd4008 	pop	{r3, lr}
  14:	eafffffe 	b	0 <vexDeviceGenericRadioPeekChar>

Disassembly of section .text.vexGenericRadioReceiveAvail:

00000000 <vexGenericRadioReceiveAvail>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e3500000 	cmp	r0, #0
   c:	08bd8008 	popeq	{r3, pc}
  10:	e8bd4008 	pop	{r3, lr}
  14:	eafffffe 	b	0 <vexDeviceGenericRadioReceiveAvail>

Disassembly of section .text.vexGenericRadioReceive:

00000000 <vexGenericRadioReceive>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a05001 	mov	r5, r1
   8:	e1a04002 	mov	r4, r2
   c:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
  10:	e3500000 	cmp	r0, #0
  14:	08bd8038 	popeq	{r3, r4, r5, pc}
  18:	e1a01005 	mov	r1, r5
  1c:	e1a02004 	mov	r2, r4
  20:	e8bd4038 	pop	{r3, r4, r5, lr}
  24:	eafffffe 	b	0 <vexDeviceGenericRadioReceive>

Disassembly of section .text.vexGenericRadioFlush:

00000000 <vexGenericRadioFlush>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e3500000 	cmp	r0, #0
   c:	08bd8008 	popeq	{r3, pc}
  10:	e8bd4008 	pop	{r3, lr}
  14:	eafffffe 	b	0 <vexDeviceGenericRadioFlush>

Disassembly of section .text.vexGenericRadioLinkStatus:

00000000 <vexGenericRadioLinkStatus>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e3500000 	cmp	r0, #0
   c:	08bd8008 	popeq	{r3, pc}
  10:	e8bd4008 	pop	{r3, lr}
  14:	eafffffe 	b	0 <vexDeviceGenericRadioLinkStatus>

Disassembly of section .text.vexGenericCdcEnable:

00000000 <vexGenericCdcEnable>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e3500000 	cmp	r0, #0
  10:	08bd8010 	popeq	{r4, pc}
  14:	e1a01004 	mov	r1, r4
  18:	e8bd4010 	pop	{r4, lr}
  1c:	eafffffe 	b	0 <vexDeviceGenericCdcEnable>

Disassembly of section .text.vexGenericCdcDebugGet:

00000000 <vexGenericCdcDebugGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e3500000 	cmp	r0, #0
  10:	08bd8010 	popeq	{r4, pc}
  14:	e1a01004 	mov	r1, r4
  18:	e8bd4010 	pop	{r4, lr}
  1c:	eafffffe 	b	0 <vexDeviceGenericCdcDebugGet>

Disassembly of section .text.vexGenericCdcConnection:

00000000 <vexGenericCdcConnection>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e3500000 	cmp	r0, #0
  10:	08bd8010 	popeq	{r4, pc}
  14:	e1a01004 	mov	r1, r4
  18:	e8bd4010 	pop	{r4, lr}
  1c:	eafffffe 	b	0 <vexDeviceGenericCdcConnection>

Disassembly of section .text.vexGenericCdcWriteChar:

00000000 <vexGenericCdcWriteChar>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04001 	mov	r4, r1
   8:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   c:	e3500000 	cmp	r0, #0
  10:	08bd8010 	popeq	{r4, pc}
  14:	e1a01004 	mov	r1, r4
  18:	e8bd4010 	pop	{r4, lr}
  1c:	eafffffe 	b	0 <vexDeviceGenericCdcWriteChar>

Disassembly of section .text.vexGenericCdcWriteFree:

00000000 <vexGenericCdcWriteFree>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e3500000 	cmp	r0, #0
   c:	08bd8008 	popeq	{r3, pc}
  10:	e8bd4008 	pop	{r3, lr}
  14:	eafffffe 	b	0 <vexDeviceGenericCdcWriteFree>

Disassembly of section .text.vexGenericCdcTransmit:

00000000 <vexGenericCdcTransmit>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a05001 	mov	r5, r1
   8:	e1a04002 	mov	r4, r2
   c:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
  10:	e3500000 	cmp	r0, #0
  14:	08bd8038 	popeq	{r3, r4, r5, pc}
  18:	e1a01005 	mov	r1, r5
  1c:	e1a02004 	mov	r2, r4
  20:	e8bd4038 	pop	{r3, r4, r5, lr}
  24:	eafffffe 	b	0 <vexDeviceGenericCdcTransmit>

Disassembly of section .text.vexGenericCdcReadChar:

00000000 <vexGenericCdcReadChar>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e3500000 	cmp	r0, #0
   c:	08bd8008 	popeq	{r3, pc}
  10:	e8bd4008 	pop	{r3, lr}
  14:	eafffffe 	b	0 <vexDeviceGenericCdcReadChar>

Disassembly of section .text.vexGenericCdcPeekChar:

00000000 <vexGenericCdcPeekChar>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e3500000 	cmp	r0, #0
   c:	08bd8008 	popeq	{r3, pc}
  10:	e8bd4008 	pop	{r3, lr}
  14:	eafffffe 	b	0 <vexDeviceGenericCdcPeekChar>

Disassembly of section .text.vexGenericCdcReceiveAvail:

00000000 <vexGenericCdcReceiveAvail>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e3500000 	cmp	r0, #0
   c:	08bd8008 	popeq	{r3, pc}
  10:	e8bd4008 	pop	{r3, lr}
  14:	eafffffe 	b	0 <vexDeviceGenericCdcReceiveAvail>

Disassembly of section .text.vexGenericCdcReceive:

00000000 <vexGenericCdcReceive>:
   0:	e92d4038 	push	{r3, r4, r5, lr}
   4:	e1a05001 	mov	r5, r1
   8:	e1a04002 	mov	r4, r2
   c:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
  10:	e3500000 	cmp	r0, #0
  14:	08bd8038 	popeq	{r3, r4, r5, pc}
  18:	e1a01005 	mov	r1, r5
  1c:	e1a02004 	mov	r2, r4
  20:	e8bd4038 	pop	{r3, r4, r5, lr}
  24:	eafffffe 	b	0 <vexDeviceGenericCdcReceive>

Disassembly of section .text.vexGenericCdcFlush:

00000000 <vexGenericCdcFlush>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e3500000 	cmp	r0, #0
   c:	08bd8008 	popeq	{r3, pc}
  10:	e8bd4008 	pop	{r3, lr}
  14:	eafffffe 	b	0 <vexDeviceGenericCdcFlush>

Disassembly of section .text.vexGenericCdcLinkStatus:

00000000 <vexGenericCdcLinkStatus>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetByIndex>
   8:	e3500000 	cmp	r0, #0
   c:	08bd8008 	popeq	{r3, pc}
  10:	e8bd4008 	pop	{r3, lr}
  14:	eafffffe 	b	0 <vexDeviceGenericCdcLinkStatus>

Disassembly of section .text.vexCodeSigOptions:

00000000 <vexCodeSigOptions>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexCodeSigOptions+0xc>
   4:	e593000c 	ldr	r0, [r3, #12]
   8:	e12fff1e 	bx	lr
   c:	00000000 	andeq	r0, r0, r0

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
  44:	5b202965 	blpl	80a5e0 <vexVisionLedColorGet+0x80a5e0>
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

