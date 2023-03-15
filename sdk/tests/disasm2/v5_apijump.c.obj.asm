
v5_apijump.c.obj:     file format elf32-littlearm


Disassembly of section .text.vexPrivateApiDisable:

00000000 <vexPrivateApiDisable>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexPrivateApiDisable+0xc>
   4:	e5933020 	ldr	r3, [r3, #32]
   8:	e12fff13 	bx	r3
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexPrivateApiEnable:

00000000 <vexPrivateApiEnable>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexPrivateApiEnable+0xc>
   4:	e5933024 	ldr	r3, [r3, #36]	; 0x24
   8:	e12fff13 	bx	r3
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexIntegrityCheck:

00000000 <vexIntegrityCheck>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a06000 	mov	r6, r0
   8:	e1a05001 	mov	r5, r1
   c:	e1a04002 	mov	r4, r2
  10:	ebfffffe 	bl	0 <vexSystemVersion>
  14:	e59f3028 	ldr	r3, [pc, #40]	; 44 <vexIntegrityCheck+0x44>
  18:	e1500003 	cmp	r0, r3
  1c:	9a000006 	bls	3c <vexIntegrityCheck+0x3c>
  20:	e59f3020 	ldr	r3, [pc, #32]	; 48 <vexIntegrityCheck+0x48>
  24:	e1a00006 	mov	r0, r6
  28:	e1a01005 	mov	r1, r5
  2c:	e1a02004 	mov	r2, r4
  30:	e8bd4070 	pop	{r4, r5, r6, lr}
  34:	e5933f9c 	ldr	r3, [r3, #3996]	; 0xf9c
  38:	e12fff13 	bx	r3
  3c:	e3e00000 	mvn	r0, #0
  40:	e8bd8070 	pop	{r4, r5, r6, pc}
  44:	01000413 	tsteq	r0, r3, lsl r4
  48:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexGzipInflateBuffer:

00000000 <vexGzipInflateBuffer>:
   0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   4:	e1a04003 	mov	r4, r3
   8:	e1a07000 	mov	r7, r0
   c:	e1a06001 	mov	r6, r1
  10:	e1a05002 	mov	r5, r2
  14:	e59d8018 	ldr	r8, [sp, #24]
  18:	ebfffffe 	bl	0 <vexSystemVersion>
  1c:	e59f3030 	ldr	r3, [pc, #48]	; 54 <vexGzipInflateBuffer+0x54>
  20:	e1500003 	cmp	r0, r3
  24:	9a000008 	bls	4c <vexGzipInflateBuffer+0x4c>
  28:	e59f3028 	ldr	r3, [pc, #40]	; 58 <vexGzipInflateBuffer+0x58>
  2c:	e1a00007 	mov	r0, r7
  30:	e58d8018 	str	r8, [sp, #24]
  34:	e1a01006 	mov	r1, r6
  38:	e1a02005 	mov	r2, r5
  3c:	e593cf00 	ldr	ip, [r3, #3840]	; 0xf00
  40:	e1a03004 	mov	r3, r4
  44:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
  48:	e12fff1c 	bx	ip
  4c:	e3a00000 	mov	r0, #0
  50:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
  54:	01000a00 	tsteq	r0, r0, lsl #20
  58:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexGzipInflateBufferRaw:

00000000 <vexGzipInflateBufferRaw>:
   0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   4:	e1a04003 	mov	r4, r3
   8:	e1a07000 	mov	r7, r0
   c:	e1a06001 	mov	r6, r1
  10:	e1a05002 	mov	r5, r2
  14:	e59d8018 	ldr	r8, [sp, #24]
  18:	ebfffffe 	bl	0 <vexSystemVersion>
  1c:	e59f3030 	ldr	r3, [pc, #48]	; 54 <vexGzipInflateBufferRaw+0x54>
  20:	e1500003 	cmp	r0, r3
  24:	9a000008 	bls	4c <vexGzipInflateBufferRaw+0x4c>
  28:	e59f3028 	ldr	r3, [pc, #40]	; 58 <vexGzipInflateBufferRaw+0x58>
  2c:	e1a00007 	mov	r0, r7
  30:	e58d8018 	str	r8, [sp, #24]
  34:	e1a01006 	mov	r1, r6
  38:	e1a02005 	mov	r2, r5
  3c:	e593cf04 	ldr	ip, [r3, #3844]	; 0xf04
  40:	e1a03004 	mov	r3, r4
  44:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
  48:	e12fff1c 	bx	ip
  4c:	e3a00000 	mov	r0, #0
  50:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
  54:	01000a00 	tsteq	r0, r0, lsl #20
  58:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexSystemFwUpdateRequest:

00000000 <vexSystemFwUpdateRequest>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a06000 	mov	r6, r0
   8:	e1a05001 	mov	r5, r1
   c:	e1a04002 	mov	r4, r2
  10:	ebfffffe 	bl	0 <vexSystemVersion>
  14:	e59f3028 	ldr	r3, [pc, #40]	; 44 <vexSystemFwUpdateRequest+0x44>
  18:	e1500003 	cmp	r0, r3
  1c:	9a000006 	bls	3c <vexSystemFwUpdateRequest+0x3c>
  20:	e59f3020 	ldr	r3, [pc, #32]	; 48 <vexSystemFwUpdateRequest+0x48>
  24:	e1a00006 	mov	r0, r6
  28:	e1a01005 	mov	r1, r5
  2c:	e1a02004 	mov	r2, r4
  30:	e8bd4070 	pop	{r4, r5, r6, lr}
  34:	e5933f98 	ldr	r3, [r3, #3992]	; 0xf98
  38:	e12fff13 	bx	r3
  3c:	e3e00000 	mvn	r0, #0
  40:	e8bd8070 	pop	{r4, r5, r6, pc}
  44:	01000a00 	tsteq	r0, r0, lsl #20
  48:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexSystemErrorMessageSet:

00000000 <vexSystemErrorMessageSet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <vexSystemVersion>
  10:	e59f3024 	ldr	r3, [pc, #36]	; 3c <vexSystemErrorMessageSet+0x3c>
  14:	e1500003 	cmp	r0, r3
  18:	9a000005 	bls	34 <vexSystemErrorMessageSet+0x34>
  1c:	e59f301c 	ldr	r3, [pc, #28]	; 40 <vexSystemErrorMessageSet+0x40>
  20:	e1a00005 	mov	r0, r5
  24:	e1a01004 	mov	r1, r4
  28:	e8bd4070 	pop	{r4, r5, r6, lr}
  2c:	e5933f94 	ldr	r3, [r3, #3988]	; 0xf94
  30:	e12fff13 	bx	r3
  34:	e3a00000 	mov	r0, #0
  38:	e8bd8070 	pop	{r4, r5, r6, pc}
  3c:	01000a31 	tsteq	r0, r1, lsr sl
  40:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexStdlibMismatchError:

00000000 <vexStdlibMismatchError>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <vexSystemVersion>
  10:	e59f301c 	ldr	r3, [pc, #28]	; 34 <vexStdlibMismatchError+0x34>
  14:	e1500003 	cmp	r0, r3
  18:	98bd8070 	popls	{r4, r5, r6, pc}
  1c:	e59f3014 	ldr	r3, [pc, #20]	; 38 <vexStdlibMismatchError+0x38>
  20:	e1a00005 	mov	r0, r5
  24:	e1a01004 	mov	r1, r4
  28:	e8bd4070 	pop	{r4, r5, r6, lr}
  2c:	e5933010 	ldr	r3, [r3, #16]
  30:	e12fff13 	bx	r3
  34:	00070300 	andeq	r0, r7, r0, lsl #6
  38:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexScratchMemoryPtr:

00000000 <vexScratchMemoryPtr>:
   0:	e2503000 	subs	r3, r0, #0
   4:	0a000006 	beq	24 <vexScratchMemoryPtr+0x24>
   8:	e59f201c 	ldr	r2, [pc, #28]	; 2c <vexScratchMemoryPtr+0x2c>
   c:	e592001c 	ldr	r0, [r2, #28]
  10:	e3500000 	cmp	r0, #0
  14:	c5922018 	ldrgt	r2, [r2, #24]
  18:	d3a02000 	movle	r2, #0
  1c:	e5832000 	str	r2, [r3]
  20:	e12fff1e 	bx	lr
  24:	e1a00003 	mov	r0, r3
  28:	e12fff1e 	bx	lr
  2c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexScratchMemoryLock:

00000000 <vexScratchMemoryLock>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexScratchMemoryLock+0xc>
   4:	e5933998 	ldr	r3, [r3, #2456]	; 0x998
   8:	e12fff13 	bx	r3
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexScratchMemoryUnlock:

00000000 <vexScratchMemoryUnlock>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexScratchMemoryUnlock+0xc>
   4:	e593399c 	ldr	r3, [r3, #2460]	; 0x99c
   8:	e12fff13 	bx	r3
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexTaskAdd:

00000000 <vexTaskAdd>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexTaskAdd+0xc>
   4:	e5933028 	ldr	r3, [r3, #40]	; 0x28
   8:	e12fff13 	bx	r3
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexTaskAddWithPriority:

00000000 <vexTaskAddWithPriority>:
   0:	e59fc004 	ldr	ip, [pc, #4]	; c <vexTaskAddWithPriority+0xc>
   4:	e59cc02c 	ldr	ip, [ip, #44]	; 0x2c
   8:	e12fff1c 	bx	ip
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexTaskAddSimple:

00000000 <vexTaskAddSimple>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexTaskAddSimple+0xc>
   4:	e5933030 	ldr	r3, [r3, #48]	; 0x30
   8:	e12fff13 	bx	r3
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexTaskAddSimpleWithPriority:

00000000 <vexTaskAddSimpleWithPriority>:
   0:	e59fc004 	ldr	ip, [pc, #4]	; c <vexTaskAddSimpleWithPriority+0xc>
   4:	e59cc034 	ldr	ip, [ip, #52]	; 0x34
   8:	e12fff1c 	bx	ip
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexTaskStop:

00000000 <vexTaskStop>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexTaskStop+0xc>
   4:	e5933038 	ldr	r3, [r3, #56]	; 0x38
   8:	e12fff13 	bx	r3
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexTaskSuspend:

00000000 <vexTaskSuspend>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexTaskSuspend+0xc>
   4:	e593303c 	ldr	r3, [r3, #60]	; 0x3c
   8:	e12fff13 	bx	r3
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexTaskResume:

00000000 <vexTaskResume>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexTaskResume+0xc>
   4:	e5933040 	ldr	r3, [r3, #64]	; 0x40
   8:	e12fff13 	bx	r3
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexTaskSuspendCurrent:

00000000 <vexTaskSuspendCurrent>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexTaskSuspendCurrent+0xc>
   4:	e5933044 	ldr	r3, [r3, #68]	; 0x44
   8:	e12fff13 	bx	r3
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexTaskResumeCurrent:

00000000 <vexTaskResumeCurrent>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexTaskResumeCurrent+0xc>
   4:	e5933048 	ldr	r3, [r3, #72]	; 0x48
   8:	e12fff13 	bx	r3
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexTaskProgramSuspend:

00000000 <vexTaskProgramSuspend>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexTaskProgramSuspend+0xc>
   4:	e593304c 	ldr	r3, [r3, #76]	; 0x4c
   8:	e12fff13 	bx	r3
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexTaskProgramResume:

00000000 <vexTaskProgramResume>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexTaskProgramResume+0xc>
   4:	e5933050 	ldr	r3, [r3, #80]	; 0x50
   8:	e12fff13 	bx	r3
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexTaskPriorityGet:

00000000 <vexTaskPriorityGet>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexTaskPriorityGet+0xc>
   4:	e5933054 	ldr	r3, [r3, #84]	; 0x54
   8:	e12fff13 	bx	r3
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexTaskPrioritySet:

00000000 <vexTaskPrioritySet>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexTaskPrioritySet+0xc>
   4:	e5933058 	ldr	r3, [r3, #88]	; 0x58
   8:	e12fff13 	bx	r3
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexTasksRun:

00000000 <vexTasksRun>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexTasksRun+0xc>
   4:	e593305c 	ldr	r3, [r3, #92]	; 0x5c
   8:	e12fff13 	bx	r3
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexTaskYield:

00000000 <vexTaskYield>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexTaskYield+0xc>
   4:	e5933060 	ldr	r3, [r3, #96]	; 0x60
   8:	e12fff13 	bx	r3
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexTaskCheckTimeslice:

00000000 <vexTaskCheckTimeslice>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexTaskCheckTimeslice+0xc>
   4:	e5933064 	ldr	r3, [r3, #100]	; 0x64
   8:	e12fff13 	bx	r3
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexTaskGetIndex:

00000000 <vexTaskGetIndex>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexTaskGetIndex+0xc>
   4:	e5933068 	ldr	r3, [r3, #104]	; 0x68
   8:	e12fff13 	bx	r3
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexTaskSleep:

00000000 <vexTaskSleep>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexTaskSleep+0xc>
   4:	e593306c 	ldr	r3, [r3, #108]	; 0x6c
   8:	e12fff13 	bx	r3
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexSemaphoreInit:

00000000 <vexSemaphoreInit>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexSemaphoreInit+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933070 	ldr	r3, [r3, #112]	; 0x70
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexSemaphoreLock:

00000000 <vexSemaphoreLock>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexSemaphoreLock+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e5933074 	ldr	r3, [r3, #116]	; 0x74
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexSemaphoreUnlock:

00000000 <vexSemaphoreUnlock>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexSemaphoreUnlock+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933078 	ldr	r3, [r3, #120]	; 0x78
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexSemaphoreGetOwner:

00000000 <vexSemaphoreGetOwner>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexSemaphoreGetOwner+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e593307c 	ldr	r3, [r3, #124]	; 0x7c
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexTasksDump:

00000000 <vexTasksDump>:
   0:	e92d4010 	push	{r4, lr}
   4:	ebfffffe 	bl	0 <__vex_function_prolog>
   8:	e59f3008 	ldr	r3, [pc, #8]	; 18 <vexTasksDump+0x18>
   c:	e8bd4010 	pop	{r4, lr}
  10:	e5933080 	ldr	r3, [r3, #128]	; 0x80
  14:	e12fff13 	bx	r3
  18:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexTaskGetCallback:

00000000 <vexTaskGetCallback>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexTaskGetCallback+0xc>
   4:	e5933084 	ldr	r3, [r3, #132]	; 0x84
   8:	e12fff13 	bx	r3
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexTaskWaitForExit:

00000000 <vexTaskWaitForExit>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexTaskWaitForExit+0xc>
   4:	e5933088 	ldr	r3, [r3, #136]	; 0x88
   8:	e12fff13 	bx	r3
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexTaskStateGet:

00000000 <vexTaskStateGet>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexTaskStateGet+0xc>
   4:	e593308c 	ldr	r3, [r3, #140]	; 0x8c
   8:	e12fff13 	bx	r3
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexTaskGetTaskIndex:

00000000 <vexTaskGetTaskIndex>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexTaskGetTaskIndex+0xc>
   4:	e5933090 	ldr	r3, [r3, #144]	; 0x90
   8:	e12fff13 	bx	r3
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexTaskStopAll:

00000000 <vexTaskStopAll>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexTaskStopAll+0xc>
   4:	e5933094 	ldr	r3, [r3, #148]	; 0x94
   8:	e12fff13 	bx	r3
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexTaskStopAllUser:

00000000 <vexTaskStopAllUser>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <vexSystemVersion>
   c:	e59f3018 	ldr	r3, [pc, #24]	; 2c <vexTaskStopAllUser+0x2c>
  10:	e1500003 	cmp	r0, r3
  14:	98bd8010 	popls	{r4, pc}
  18:	e59f3010 	ldr	r3, [pc, #16]	; 30 <vexTaskStopAllUser+0x30>
  1c:	e1a00004 	mov	r0, r4
  20:	e8bd4010 	pop	{r4, lr}
  24:	e5933098 	ldr	r3, [r3, #152]	; 0x98
  28:	e12fff13 	bx	r3
  2c:	01000312 	tsteq	r0, r2, lsl r3
  30:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexTaskRemoveAllUser:

00000000 <vexTaskRemoveAllUser>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <vexSystemVersion>
   c:	e59f3018 	ldr	r3, [pc, #24]	; 2c <vexTaskRemoveAllUser+0x2c>
  10:	e1500003 	cmp	r0, r3
  14:	98bd8010 	popls	{r4, pc}
  18:	e59f3010 	ldr	r3, [pc, #16]	; 30 <vexTaskRemoveAllUser+0x30>
  1c:	e1a00004 	mov	r0, r4
  20:	e8bd4010 	pop	{r4, lr}
  24:	e593309c 	ldr	r3, [r3, #156]	; 0x9c
  28:	e12fff13 	bx	r3
  2c:	01000312 	tsteq	r0, r2, lsl r3
  30:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexTaskHardwareConcurrency:

00000000 <vexTaskHardwareConcurrency>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexTaskHardwareConcurrency+0xc>
   4:	e5933140 	ldr	r3, [r3, #320]	; 0x140
   8:	e12fff13 	bx	r3
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexTaskCompletionIdSet:

00000000 <vexTaskCompletionIdSet>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexTaskCompletionIdSet+0xc>
   4:	e5933144 	ldr	r3, [r3, #324]	; 0x144
   8:	e12fff13 	bx	r3
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexTaskAddWithArg:

00000000 <vexTaskAddWithArg>:
   0:	e59fc004 	ldr	ip, [pc, #4]	; c <vexTaskAddWithArg+0xc>
   4:	e59ccf50 	ldr	ip, [ip, #3920]	; 0xf50
   8:	e12fff1c 	bx	ip
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexTaskAddWithPriorityWithArg:

00000000 <vexTaskAddWithPriorityWithArg>:
   0:	e59fc004 	ldr	ip, [pc, #4]	; c <vexTaskAddWithPriorityWithArg+0xc>
   4:	e59ccf54 	ldr	ip, [ip, #3924]	; 0xf54
   8:	e12fff1c 	bx	ip
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexTaskStopWithId:

00000000 <vexTaskStopWithId>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexTaskStopWithId+0xc>
   4:	e5933f58 	ldr	r3, [r3, #3928]	; 0xf58
   8:	e12fff13 	bx	r3
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexTaskSuspendWithId:

00000000 <vexTaskSuspendWithId>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexTaskSuspendWithId+0xc>
   4:	e5933f5c 	ldr	r3, [r3, #3932]	; 0xf5c
   8:	e12fff13 	bx	r3
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexTaskResumeWithId:

00000000 <vexTaskResumeWithId>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexTaskResumeWithId+0xc>
   4:	e5933f60 	ldr	r3, [r3, #3936]	; 0xf60
   8:	e12fff13 	bx	r3
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexTaskPriorityGetWithId:

00000000 <vexTaskPriorityGetWithId>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexTaskPriorityGetWithId+0xc>
   4:	e5933f64 	ldr	r3, [r3, #3940]	; 0xf64
   8:	e12fff13 	bx	r3
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexTaskPrioritySetWithId:

00000000 <vexTaskPrioritySetWithId>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexTaskPrioritySetWithId+0xc>
   4:	e5933f68 	ldr	r3, [r3, #3944]	; 0xf68
   8:	e12fff13 	bx	r3
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexTaskStateGetWithId:

00000000 <vexTaskStateGetWithId>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexTaskStateGetWithId+0xc>
   4:	e5933f6c 	ldr	r3, [r3, #3948]	; 0xf6c
   8:	e12fff13 	bx	r3
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexTaskGetTaskIndexWithId:

00000000 <vexTaskGetTaskIndexWithId>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexTaskGetTaskIndexWithId+0xc>
   4:	e5933f70 	ldr	r3, [r3, #3952]	; 0xf70
   8:	e12fff13 	bx	r3
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexTaskWaitForExitWithId:

00000000 <vexTaskWaitForExitWithId>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e1a05001 	mov	r5, r1
   c:	ebfffffe 	bl	0 <vexSystemVersion>
  10:	e59f302c 	ldr	r3, [pc, #44]	; 44 <vexTaskWaitForExitWithId+0x44>
  14:	e1500003 	cmp	r0, r3
  18:	e59f3028 	ldr	r3, [pc, #40]	; 48 <vexTaskWaitForExitWithId+0x48>
  1c:	8a000003 	bhi	30 <vexTaskWaitForExitWithId+0x30>
  20:	e1a00004 	mov	r0, r4
  24:	e5933088 	ldr	r3, [r3, #136]	; 0x88
  28:	e8bd4070 	pop	{r4, r5, r6, lr}
  2c:	e12fff13 	bx	r3
  30:	e1a00004 	mov	r0, r4
  34:	e1a01005 	mov	r1, r5
  38:	e5933f78 	ldr	r3, [r3, #3960]	; 0xf78
  3c:	e8bd4070 	pop	{r4, r5, r6, lr}
  40:	e12fff13 	bx	r3
  44:	01000a00 	tsteq	r0, r0, lsl #20
  48:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexTaskGet:

00000000 <vexTaskGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <vexSystemVersion>
   c:	e59f3020 	ldr	r3, [pc, #32]	; 34 <vexTaskGet+0x34>
  10:	e1500003 	cmp	r0, r3
  14:	9a000004 	bls	2c <vexTaskGet+0x2c>
  18:	e59f3018 	ldr	r3, [pc, #24]	; 38 <vexTaskGet+0x38>
  1c:	e1a00004 	mov	r0, r4
  20:	e8bd4010 	pop	{r4, lr}
  24:	e5933f7c 	ldr	r3, [r3, #3964]	; 0xf7c
  28:	e12fff13 	bx	r3
  2c:	e3a00000 	mov	r0, #0
  30:	e8bd8010 	pop	{r4, pc}
  34:	01000a00 	tsteq	r0, r0, lsl #20
  38:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexTaskGetCallbackAndId:

00000000 <vexTaskGetCallbackAndId>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <vexSystemVersion>
  10:	e59f3034 	ldr	r3, [pc, #52]	; 4c <vexTaskGetCallbackAndId+0x4c>
  14:	e1500003 	cmp	r0, r3
  18:	e59f3030 	ldr	r3, [pc, #48]	; 50 <vexTaskGetCallbackAndId+0x50>
  1c:	8a000005 	bhi	38 <vexTaskGetCallbackAndId+0x38>
  20:	e3a02000 	mov	r2, #0
  24:	e1a00005 	mov	r0, r5
  28:	e5842000 	str	r2, [r4]
  2c:	e8bd4070 	pop	{r4, r5, r6, lr}
  30:	e5933084 	ldr	r3, [r3, #132]	; 0x84
  34:	e12fff13 	bx	r3
  38:	e1a00005 	mov	r0, r5
  3c:	e1a01004 	mov	r1, r4
  40:	e5933f80 	ldr	r3, [r3, #3968]	; 0xf80
  44:	e8bd4070 	pop	{r4, r5, r6, lr}
  48:	e12fff13 	bx	r3
  4c:	01000a00 	tsteq	r0, r0, lsl #20
  50:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexTaskStackSizeGet:

00000000 <vexTaskStackSizeGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	ebfffffe 	bl	0 <vexSystemVersion>
   8:	e59f301c 	ldr	r3, [pc, #28]	; 2c <vexTaskStackSizeGet+0x2c>
   c:	e1500003 	cmp	r0, r3
  10:	9a000003 	bls	24 <vexTaskStackSizeGet+0x24>
  14:	e59f3014 	ldr	r3, [pc, #20]	; 30 <vexTaskStackSizeGet+0x30>
  18:	e8bd4010 	pop	{r4, lr}
  1c:	e5933148 	ldr	r3, [r3, #328]	; 0x148
  20:	e12fff13 	bx	r3
  24:	e30007e4 	movw	r0, #2020	; 0x7e4
  28:	e8bd8010 	pop	{r4, pc}
  2c:	01000c26 	tsteq	r0, r6, lsr #24
  30:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexTaskStackDefaultSizeGet:

00000000 <vexTaskStackDefaultSizeGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	ebfffffe 	bl	0 <vexSystemVersion>
   8:	e59f301c 	ldr	r3, [pc, #28]	; 2c <vexTaskStackDefaultSizeGet+0x2c>
   c:	e1500003 	cmp	r0, r3
  10:	9a000003 	bls	24 <vexTaskStackDefaultSizeGet+0x24>
  14:	e59f3014 	ldr	r3, [pc, #20]	; 30 <vexTaskStackDefaultSizeGet+0x30>
  18:	e8bd4010 	pop	{r4, lr}
  1c:	e593314c 	ldr	r3, [r3, #332]	; 0x14c
  20:	e12fff13 	bx	r3
  24:	e30007e4 	movw	r0, #2020	; 0x7e4
  28:	e8bd8010 	pop	{r4, pc}
  2c:	01000c26 	tsteq	r0, r6, lsr #24
  30:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexTaskStackUseGet:

00000000 <vexTaskStackUseGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <vexSystemVersion>
   c:	e59f3020 	ldr	r3, [pc, #32]	; 34 <vexTaskStackUseGet+0x34>
  10:	e1500003 	cmp	r0, r3
  14:	9a000004 	bls	2c <vexTaskStackUseGet+0x2c>
  18:	e59f3018 	ldr	r3, [pc, #24]	; 38 <vexTaskStackUseGet+0x38>
  1c:	e1a00004 	mov	r0, r4
  20:	e8bd4010 	pop	{r4, lr}
  24:	e5933150 	ldr	r3, [r3, #336]	; 0x150
  28:	e12fff13 	bx	r3
  2c:	e3a00000 	mov	r0, #0
  30:	e8bd8010 	pop	{r4, pc}
  34:	01000c26 	tsteq	r0, r6, lsr #24
  38:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexTaskStackTopGet:

00000000 <vexTaskStackTopGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <vexSystemVersion>
   c:	e59f3024 	ldr	r3, [pc, #36]	; 38 <vexTaskStackTopGet+0x38>
  10:	e1500003 	cmp	r0, r3
  14:	8a000002 	bhi	24 <vexTaskStackTopGet+0x24>
  18:	e1a00004 	mov	r0, r4
  1c:	e8bd4010 	pop	{r4, lr}
  20:	eafffffe 	b	0 <vexTaskStackTopGet>
  24:	e59f3010 	ldr	r3, [pc, #16]	; 3c <vexTaskStackTopGet+0x3c>
  28:	e1a00004 	mov	r0, r4
  2c:	e8bd4010 	pop	{r4, lr}
  30:	e5933154 	ldr	r3, [r3, #340]	; 0x154
  34:	e12fff13 	bx	r3
  38:	01000c26 	tsteq	r0, r6, lsr #24
  3c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexTaskFree:

00000000 <vexTaskFree>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <vexSystemVersion>
   c:	e59f3040 	ldr	r3, [pc, #64]	; 54 <vexTaskFree+0x54>
  10:	e1500003 	cmp	r0, r3
  14:	8a000009 	bhi	40 <vexTaskFree+0x40>
  18:	e1a00004 	mov	r0, r4
  1c:	ebfffffe 	bl	0 <vexTaskFree>
  20:	e3a03000 	mov	r3, #0
  24:	e3500000 	cmp	r0, #0
  28:	08bd8010 	popeq	{r4, pc}
  2c:	e2800a01 	add	r0, r0, #4096	; 0x1000
  30:	e5803fd4 	str	r3, [r0, #4052]	; 0xfd4
  34:	e5803ffc 	str	r3, [r0, #4092]	; 0xffc
  38:	e3a00001 	mov	r0, #1
  3c:	e8bd8010 	pop	{r4, pc}
  40:	e59f3010 	ldr	r3, [pc, #16]	; 58 <vexTaskFree+0x58>
  44:	e1a00004 	mov	r0, r4
  48:	e8bd4010 	pop	{r4, lr}
  4c:	e5933158 	ldr	r3, [r3, #344]	; 0x158
  50:	e12fff13 	bx	r3
  54:	01000c26 	tsteq	r0, r6, lsr #24
  58:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexTaskSetArgs:

00000000 <vexTaskSetArgs>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e1a05001 	mov	r5, r1
   c:	ebfffffe 	bl	0 <vexSystemVersion>
  10:	e59f3038 	ldr	r3, [pc, #56]	; 50 <vexTaskSetArgs+0x50>
  14:	e1500003 	cmp	r0, r3
  18:	8a000006 	bhi	38 <vexTaskSetArgs+0x38>
  1c:	e1a00004 	mov	r0, r4
  20:	ebfffffe 	bl	0 <vexTaskSetArgs>
  24:	e3500000 	cmp	r0, #0
  28:	12800a01 	addne	r0, r0, #4096	; 0x1000
  2c:	13a03000 	movne	r3, #0
  30:	15803ffc 	strne	r3, [r0, #4092]	; 0xffc
  34:	e8bd8070 	pop	{r4, r5, r6, pc}
  38:	e59f3014 	ldr	r3, [pc, #20]	; 54 <vexTaskSetArgs+0x54>
  3c:	e1a00004 	mov	r0, r4
  40:	e1a01005 	mov	r1, r5
  44:	e8bd4070 	pop	{r4, r5, r6, lr}
  48:	e5933160 	ldr	r3, [r3, #352]	; 0x160
  4c:	e12fff13 	bx	r3
  50:	01000c26 	tsteq	r0, r6, lsr #24
  54:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexCriticalSection:

00000000 <vexCriticalSection>:
   0:	e59f301c 	ldr	r3, [pc, #28]	; 24 <vexCriticalSection+0x24>
   4:	e3500000 	cmp	r0, #0
   8:	e5c30000 	strb	r0, [r3]
   c:	e59f3014 	ldr	r3, [pc, #20]	; 28 <vexCriticalSection+0x28>
  10:	e513204f 	ldr	r2, [r3, #-79]	; 0xffffffb1
  14:	13822001 	orrne	r2, r2, #1
  18:	03c22001 	biceq	r2, r2, #1
  1c:	e503204f 	str	r2, [r3, #-79]	; 0xffffffb1
  20:	e12fff1e 	bx	lr
  24:	00000000 	andeq	r0, r0, r0
  28:	037fcfff 	cmneq	pc, #1020	; 0x3fc

Disassembly of section .text.vexBackgroundProcessing:

00000000 <vexBackgroundProcessing>:
   0:	e92d4010 	push	{r4, lr}
   4:	ebfffffe 	bl	0 <__vex_function_prolog>
   8:	e59f3008 	ldr	r3, [pc, #8]	; 18 <vexBackgroundProcessing+0x18>
   c:	e8bd4010 	pop	{r4, lr}
  10:	e5933f74 	ldr	r3, [r3, #3956]	; 0xf74
  14:	e12fff13 	bx	r3
  18:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexEventBroadcast:

00000000 <vexEventBroadcast>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexEventBroadcast+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e59330a4 	ldr	r3, [r3, #164]	; 0xa4
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexEventBroadcastAndWait:

00000000 <vexEventBroadcastAndWait>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexEventBroadcastAndWait+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e59330a0 	ldr	r3, [r3, #160]	; 0xa0
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexEventAdd:

00000000 <vexEventAdd>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a06000 	mov	r6, r0
   8:	e1a05001 	mov	r5, r1
   c:	e1a04002 	mov	r4, r2
  10:	ebfffffe 	bl	0 <__vex_function_prolog>
  14:	e59f3014 	ldr	r3, [pc, #20]	; 30 <vexEventAdd+0x30>
  18:	e1a00006 	mov	r0, r6
  1c:	e1a01005 	mov	r1, r5
  20:	e1a02004 	mov	r2, r4
  24:	e59330a8 	ldr	r3, [r3, #168]	; 0xa8
  28:	e8bd4070 	pop	{r4, r5, r6, lr}
  2c:	e12fff13 	bx	r3
  30:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexEventUserIndexGet:

00000000 <vexEventUserIndexGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	ebfffffe 	bl	0 <__vex_function_prolog>
   8:	e59f3008 	ldr	r3, [pc, #8]	; 18 <vexEventUserIndexGet+0x18>
   c:	e8bd4010 	pop	{r4, lr}
  10:	e59330ac 	ldr	r3, [r3, #172]	; 0xac
  14:	e12fff13 	bx	r3
  18:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexEventAddWithArg:

00000000 <vexEventAddWithArg>:
   0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   4:	e1a04003 	mov	r4, r3
   8:	e1a07000 	mov	r7, r0
   c:	e1a06001 	mov	r6, r1
  10:	e1a05002 	mov	r5, r2
  14:	ebfffffe 	bl	0 <__vex_function_prolog>
  18:	e59f3018 	ldr	r3, [pc, #24]	; 38 <vexEventAddWithArg+0x38>
  1c:	e1a00007 	mov	r0, r7
  20:	e1a01006 	mov	r1, r6
  24:	e1a02005 	mov	r2, r5
  28:	e593c0b0 	ldr	ip, [r3, #176]	; 0xb0
  2c:	e1a03004 	mov	r3, r4
  30:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
  34:	e12fff1c 	bx	ip
  38:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexEventsDump:

00000000 <vexEventsDump>:
   0:	e92d4010 	push	{r4, lr}
   4:	ebfffffe 	bl	0 <__vex_function_prolog>
   8:	ebfffffe 	bl	0 <vexSystemVersion>
   c:	e59f3014 	ldr	r3, [pc, #20]	; 28 <vexEventsDump+0x28>
  10:	e1500003 	cmp	r0, r3
  14:	98bd8010 	popls	{r4, pc}
  18:	e59f300c 	ldr	r3, [pc, #12]	; 2c <vexEventsDump+0x2c>
  1c:	e8bd4010 	pop	{r4, lr}
  20:	e59330b8 	ldr	r3, [r3, #184]	; 0xb8
  24:	e12fff13 	bx	r3
  28:	01000312 	tsteq	r0, r2, lsl r3
  2c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexEventsCleanup:

00000000 <vexEventsCleanup>:
   0:	e92d4010 	push	{r4, lr}
   4:	ebfffffe 	bl	0 <vexSystemVersion>
   8:	e59f3014 	ldr	r3, [pc, #20]	; 24 <vexEventsCleanup+0x24>
   c:	e1500003 	cmp	r0, r3
  10:	98bd8010 	popls	{r4, pc}
  14:	e59f300c 	ldr	r3, [pc, #12]	; 28 <vexEventsCleanup+0x28>
  18:	e8bd4010 	pop	{r4, lr}
  1c:	e59330b4 	ldr	r3, [r3, #180]	; 0xb4
  20:	e12fff13 	bx	r3
  24:	01000312 	tsteq	r0, r2, lsl r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexEventGetArg:

00000000 <vexEventGetArg>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <vexSystemVersion>
   c:	e59f3030 	ldr	r3, [pc, #48]	; 44 <vexEventGetArg+0x44>
  10:	e1500003 	cmp	r0, r3
  14:	8a000003 	bhi	28 <vexEventGetArg+0x28>
  18:	e3540000 	cmp	r4, #0
  1c:	0a000006 	beq	3c <vexEventGetArg+0x3c>
  20:	e5940014 	ldr	r0, [r4, #20]
  24:	e8bd8010 	pop	{r4, pc}
  28:	e59f3018 	ldr	r3, [pc, #24]	; 48 <vexEventGetArg+0x48>
  2c:	e1a00004 	mov	r0, r4
  30:	e8bd4010 	pop	{r4, lr}
  34:	e59330bc 	ldr	r3, [r3, #188]	; 0xbc
  38:	e12fff13 	bx	r3
  3c:	e1a00004 	mov	r0, r4
  40:	e8bd8010 	pop	{r4, pc}
  44:	01000c27 	tsteq	r0, r7, lsr #24
  48:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexEventsGetMax:

00000000 <vexEventsGetMax>:
   0:	e92d4010 	push	{r4, lr}
   4:	ebfffffe 	bl	0 <vexSystemVersion>
   8:	e59f301c 	ldr	r3, [pc, #28]	; 2c <vexEventsGetMax+0x2c>
   c:	e1500003 	cmp	r0, r3
  10:	9a000003 	bls	24 <vexEventsGetMax+0x24>
  14:	e59f3014 	ldr	r3, [pc, #20]	; 30 <vexEventsGetMax+0x30>
  18:	e8bd4010 	pop	{r4, lr}
  1c:	e59330c0 	ldr	r3, [r3, #192]	; 0xc0
  20:	e12fff13 	bx	r3
  24:	e3e00000 	mvn	r0, #0
  28:	e8bd8010 	pop	{r4, pc}
  2c:	01000d2a 	tsteq	r0, sl, lsr #26
  30:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexEventsGetCount:

00000000 <vexEventsGetCount>:
   0:	e92d4010 	push	{r4, lr}
   4:	ebfffffe 	bl	0 <vexSystemVersion>
   8:	e59f301c 	ldr	r3, [pc, #28]	; 2c <vexEventsGetCount+0x2c>
   c:	e1500003 	cmp	r0, r3
  10:	9a000003 	bls	24 <vexEventsGetCount+0x24>
  14:	e59f3014 	ldr	r3, [pc, #20]	; 30 <vexEventsGetCount+0x30>
  18:	e8bd4010 	pop	{r4, lr}
  1c:	e59330c4 	ldr	r3, [r3, #196]	; 0xc4
  20:	e12fff13 	bx	r3
  24:	e3e00000 	mvn	r0, #0
  28:	e8bd8010 	pop	{r4, pc}
  2c:	01000d2a 	tsteq	r0, sl, lsr #26
  30:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexBreak:

00000000 <vexBreak>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexBreak+0xc>
   4:	e59330c8 	ldr	r3, [r3, #200]	; 0xc8
   8:	e12fff13 	bx	r3
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexTaskBreakpointSet:

00000000 <vexTaskBreakpointSet>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexTaskBreakpointSet+0xc>
   4:	e59330cc 	ldr	r3, [r3, #204]	; 0xcc
   8:	e12fff13 	bx	r3
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexTaskBreakpointDump:

00000000 <vexTaskBreakpointDump>:
   0:	e92d4010 	push	{r4, lr}
   4:	ebfffffe 	bl	0 <__vex_function_prolog>
   8:	e59f3008 	ldr	r3, [pc, #8]	; 18 <vexTaskBreakpointDump+0x18>
   c:	e8bd4010 	pop	{r4, lr}
  10:	e59330d0 	ldr	r3, [r3, #208]	; 0xd0
  14:	e12fff13 	bx	r3
  18:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDebug:

00000000 <vexDebug>:
   0:	e92d000f 	push	{r0, r1, r2, r3}
   4:	e92d4007 	push	{r0, r1, r2, lr}
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e28d1014 	add	r1, sp, #20
  10:	e59f301c 	ldr	r3, [pc, #28]	; 34 <vexDebug+0x34>
  14:	e58d1004 	str	r1, [sp, #4]
  18:	e59d0010 	ldr	r0, [sp, #16]
  1c:	e59330f0 	ldr	r3, [r3, #240]	; 0xf0
  20:	e12fff33 	blx	r3
  24:	e28dd00c 	add	sp, sp, #12
  28:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
  2c:	e28dd010 	add	sp, sp, #16
  30:	e12fff1e 	bx	lr
  34:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexTaskGetArgs:

00000000 <vexTaskGetArgs>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <vexSystemVersion>
  10:	e59f305c 	ldr	r3, [pc, #92]	; 74 <vexTaskGetArgs+0x74>
  14:	e1500003 	cmp	r0, r3
  18:	8a00000f 	bhi	5c <vexTaskGetArgs+0x5c>
  1c:	e59f0054 	ldr	r0, [pc, #84]	; 78 <vexTaskGetArgs+0x78>
  20:	ebfffffe 	bl	0 <vexTaskGetArgs>
  24:	e1a00005 	mov	r0, r5
  28:	ebfffffe 	bl	0 <vexTaskGetArgs>
  2c:	e3500000 	cmp	r0, #0
  30:	08bd8070 	popeq	{r4, r5, r6, pc}
  34:	e2803a01 	add	r3, r0, #4096	; 0x1000
  38:	e5930fd4 	ldr	r0, [r3, #4052]	; 0xfd4
  3c:	e3500000 	cmp	r0, #0
  40:	08bd8070 	popeq	{r4, r5, r6, pc}
  44:	e3540000 	cmp	r4, #0
  48:	e5930ffc 	ldr	r0, [r3, #4092]	; 0xffc
  4c:	13002fda 	movwne	r2, #4058	; 0xfda
  50:	119320b2 	ldrhne	r2, [r3, r2]
  54:	11c420b0 	strhne	r2, [r4]
  58:	e8bd8070 	pop	{r4, r5, r6, pc}
  5c:	e59f3018 	ldr	r3, [pc, #24]	; 7c <vexTaskGetArgs+0x7c>
  60:	e1a00005 	mov	r0, r5
  64:	e1a01004 	mov	r1, r4
  68:	e8bd4070 	pop	{r4, r5, r6, lr}
  6c:	e593315c 	ldr	r3, [r3, #348]	; 0x15c
  70:	e12fff13 	bx	r3
  74:	01000c26 	tsteq	r0, r6, lsr #24
  78:	00000000 	andeq	r0, r0, r0
  7c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vex_printf:

00000000 <vex_printf>:
   0:	e92d000f 	push	{r0, r1, r2, r3}
   4:	e92d4007 	push	{r0, r1, r2, lr}
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e28d1014 	add	r1, sp, #20
  10:	e59f301c 	ldr	r3, [pc, #28]	; 34 <vex_printf+0x34>
  14:	e58d1004 	str	r1, [sp, #4]
  18:	e59d0010 	ldr	r0, [sp, #16]
  1c:	e59330f0 	ldr	r3, [r3, #240]	; 0xf0
  20:	e12fff33 	blx	r3
  24:	e28dd00c 	add	sp, sp, #12
  28:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
  2c:	e28dd010 	add	sp, sp, #16
  30:	e12fff1e 	bx	lr
  34:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vex_sprintf:

00000000 <vex_sprintf>:
   0:	e92d000e 	push	{r1, r2, r3}
   4:	e92d4017 	push	{r0, r1, r2, r4, lr}
   8:	e1a04000 	mov	r4, r0
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3024 	ldr	r3, [pc, #36]	; 3c <vex_sprintf+0x3c>
  14:	e28d2018 	add	r2, sp, #24
  18:	e1a00004 	mov	r0, r4
  1c:	e58d2004 	str	r2, [sp, #4]
  20:	e59d1014 	ldr	r1, [sp, #20]
  24:	e59330f4 	ldr	r3, [r3, #244]	; 0xf4
  28:	e12fff33 	blx	r3
  2c:	e28dd00c 	add	sp, sp, #12
  30:	e8bd4010 	pop	{r4, lr}
  34:	e28dd00c 	add	sp, sp, #12
  38:	e12fff1e 	bx	lr
  3c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vex_snprintf:

00000000 <vex_snprintf>:
   0:	e92d000c 	push	{r2, r3}
   4:	e92d4037 	push	{r0, r1, r2, r4, r5, lr}
   8:	e1a05000 	mov	r5, r0
   c:	e1a04001 	mov	r4, r1
  10:	ebfffffe 	bl	0 <__vex_function_prolog>
  14:	e59f2028 	ldr	r2, [pc, #40]	; 44 <vex_snprintf+0x44>
  18:	e28d301c 	add	r3, sp, #28
  1c:	e1a00005 	mov	r0, r5
  20:	e58d3004 	str	r3, [sp, #4]
  24:	e1a01004 	mov	r1, r4
  28:	e592c0f8 	ldr	ip, [r2, #248]	; 0xf8
  2c:	e59d2018 	ldr	r2, [sp, #24]
  30:	e12fff3c 	blx	ip
  34:	e28dd00c 	add	sp, sp, #12
  38:	e8bd4030 	pop	{r4, r5, lr}
  3c:	e28dd008 	add	sp, sp, #8
  40:	e12fff1e 	bx	lr
  44:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vex_vsprintf:

00000000 <vex_vsprintf>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a06000 	mov	r6, r0
   8:	e1a05001 	mov	r5, r1
   c:	e1a04002 	mov	r4, r2
  10:	ebfffffe 	bl	0 <__vex_function_prolog>
  14:	e59f3014 	ldr	r3, [pc, #20]	; 30 <vex_vsprintf+0x30>
  18:	e1a00006 	mov	r0, r6
  1c:	e1a01005 	mov	r1, r5
  20:	e1a02004 	mov	r2, r4
  24:	e59330f4 	ldr	r3, [r3, #244]	; 0xf4
  28:	e8bd4070 	pop	{r4, r5, r6, lr}
  2c:	e12fff13 	bx	r3
  30:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vex_vsnprintf:

00000000 <vex_vsnprintf>:
   0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   4:	e1a04003 	mov	r4, r3
   8:	e1a07000 	mov	r7, r0
   c:	e1a06001 	mov	r6, r1
  10:	e1a05002 	mov	r5, r2
  14:	ebfffffe 	bl	0 <__vex_function_prolog>
  18:	e59f3018 	ldr	r3, [pc, #24]	; 38 <vex_vsnprintf+0x38>
  1c:	e1a00007 	mov	r0, r7
  20:	e1a01006 	mov	r1, r6
  24:	e1a02005 	mov	r2, r5
  28:	e593c0f8 	ldr	ip, [r3, #248]	; 0xf8
  2c:	e1a03004 	mov	r3, r4
  30:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
  34:	e12fff1c 	bx	ip
  38:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexSystemTimeGet:

00000000 <vexSystemTimeGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	ebfffffe 	bl	0 <__vex_function_prolog>
   8:	e59f3008 	ldr	r3, [pc, #8]	; 18 <vexSystemTimeGet+0x18>
   c:	e8bd4010 	pop	{r4, lr}
  10:	e5933118 	ldr	r3, [r3, #280]	; 0x118
  14:	e12fff13 	bx	r3
  18:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexGettime:

00000000 <vexGettime>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexGettime+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e593311c 	ldr	r3, [r3, #284]	; 0x11c
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexGetdate:

00000000 <vexGetdate>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexGetdate+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933120 	ldr	r3, [r3, #288]	; 0x120
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexSystemMemoryDump:

00000000 <vexSystemMemoryDump>:
   0:	e92d4010 	push	{r4, lr}
   4:	ebfffffe 	bl	0 <__vex_function_prolog>
   8:	e59f3008 	ldr	r3, [pc, #8]	; 18 <vexSystemMemoryDump+0x18>
   c:	e8bd4010 	pop	{r4, lr}
  10:	e5933124 	ldr	r3, [r3, #292]	; 0x124
  14:	e12fff13 	bx	r3
  18:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexSystemDigitalIO:

00000000 <vexSystemDigitalIO>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexSystemDigitalIO+0xc>
   4:	e5933128 	ldr	r3, [r3, #296]	; 0x128
   8:	e12fff13 	bx	r3
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexSystemStartupOptions:

00000000 <vexSystemStartupOptions>:
   0:	e92d4010 	push	{r4, lr}
   4:	ebfffffe 	bl	0 <__vex_function_prolog>
   8:	e59f3008 	ldr	r3, [pc, #8]	; 18 <vexSystemStartupOptions+0x18>
   c:	e8bd4010 	pop	{r4, lr}
  10:	e593312c 	ldr	r3, [r3, #300]	; 0x12c
  14:	e12fff13 	bx	r3
  18:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexSystemExitRequest:

00000000 <vexSystemExitRequest>:
   0:	e59f2010 	ldr	r2, [pc, #16]	; 18 <vexSystemExitRequest+0x18>
   4:	e5923130 	ldr	r3, [r2, #304]	; 0x130
   8:	e5922ffc 	ldr	r2, [r2, #4092]	; 0xffc
   c:	e1530002 	cmp	r3, r2
  10:	012fff1e 	bxeq	lr
  14:	e12fff13 	bx	r3
  18:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexSystemHighResTimeGet:

00000000 <vexSystemHighResTimeGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	ebfffffe 	bl	0 <vexSystemVersion>
   8:	e59f3020 	ldr	r3, [pc, #32]	; 30 <vexSystemHighResTimeGet+0x30>
   c:	e1500003 	cmp	r0, r3
  10:	9a000003 	bls	24 <vexSystemHighResTimeGet+0x24>
  14:	e59f3018 	ldr	r3, [pc, #24]	; 34 <vexSystemHighResTimeGet+0x34>
  18:	e8bd4010 	pop	{r4, lr}
  1c:	e5933134 	ldr	r3, [r3, #308]	; 0x134
  20:	e12fff13 	bx	r3
  24:	e3a00000 	mov	r0, #0
  28:	e3a01000 	mov	r1, #0
  2c:	e8bd8010 	pop	{r4, pc}
  30:	00070300 	andeq	r0, r7, r0, lsl #6
  34:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexSystemPowerupTimeGet:

00000000 <vexSystemPowerupTimeGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	ebfffffe 	bl	0 <vexSystemVersion>
   8:	e59f3020 	ldr	r3, [pc, #32]	; 30 <vexSystemPowerupTimeGet+0x30>
   c:	e1500003 	cmp	r0, r3
  10:	9a000003 	bls	24 <vexSystemPowerupTimeGet+0x24>
  14:	e59f3018 	ldr	r3, [pc, #24]	; 34 <vexSystemPowerupTimeGet+0x34>
  18:	e8bd4010 	pop	{r4, lr}
  1c:	e5933138 	ldr	r3, [r3, #312]	; 0x138
  20:	e12fff13 	bx	r3
  24:	e3a00000 	mov	r0, #0
  28:	e3a01000 	mov	r1, #0
  2c:	e8bd8010 	pop	{r4, pc}
  30:	00070300 	andeq	r0, r7, r0, lsl #6
  34:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexSystemLinkAddrGet:

00000000 <vexSystemLinkAddrGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	ebfffffe 	bl	0 <vexSystemVersion>
   8:	e59f301c 	ldr	r3, [pc, #28]	; 2c <vexSystemLinkAddrGet+0x2c>
   c:	e1500003 	cmp	r0, r3
  10:	9a000003 	bls	24 <vexSystemLinkAddrGet+0x24>
  14:	e59f3014 	ldr	r3, [pc, #20]	; 30 <vexSystemLinkAddrGet+0x30>
  18:	e8bd4010 	pop	{r4, lr}
  1c:	e593313c 	ldr	r3, [r3, #316]	; 0x13c
  20:	e12fff13 	bx	r3
  24:	e3a00000 	mov	r0, #0
  28:	e8bd8010 	pop	{r4, pc}
  2c:	01000323 	tsteq	r0, r3, lsr #6
  30:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexSystemTimerGet:

00000000 <vexSystemTimerGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <vexSystemVersion>
   c:	e59f3020 	ldr	r3, [pc, #32]	; 34 <vexSystemTimerGet+0x34>
  10:	e1500003 	cmp	r0, r3
  14:	9a000004 	bls	2c <vexSystemTimerGet+0x2c>
  18:	e59f3018 	ldr	r3, [pc, #24]	; 38 <vexSystemTimerGet+0x38>
  1c:	e1a00004 	mov	r0, r4
  20:	e8bd4010 	pop	{r4, lr}
  24:	e5933168 	ldr	r3, [r3, #360]	; 0x168
  28:	e12fff13 	bx	r3
  2c:	e3a00000 	mov	r0, #0
  30:	e8bd8010 	pop	{r4, pc}
  34:	00070300 	andeq	r0, r7, r0, lsl #6
  38:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexSystemTimerEnable:

00000000 <vexSystemTimerEnable>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <vexSystemVersion>
   c:	e59f3018 	ldr	r3, [pc, #24]	; 2c <vexSystemTimerEnable+0x2c>
  10:	e1500003 	cmp	r0, r3
  14:	98bd8010 	popls	{r4, pc}
  18:	e59f3010 	ldr	r3, [pc, #16]	; 30 <vexSystemTimerEnable+0x30>
  1c:	e1a00004 	mov	r0, r4
  20:	e8bd4010 	pop	{r4, lr}
  24:	e593316c 	ldr	r3, [r3, #364]	; 0x16c
  28:	e12fff13 	bx	r3
  2c:	00070300 	andeq	r0, r7, r0, lsl #6
  30:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexSystemTimerDisable:

00000000 <vexSystemTimerDisable>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <vexSystemVersion>
   c:	e59f3018 	ldr	r3, [pc, #24]	; 2c <vexSystemTimerDisable+0x2c>
  10:	e1500003 	cmp	r0, r3
  14:	98bd8010 	popls	{r4, pc}
  18:	e59f3010 	ldr	r3, [pc, #16]	; 30 <vexSystemTimerDisable+0x30>
  1c:	e1a00004 	mov	r0, r4
  20:	e8bd4010 	pop	{r4, lr}
  24:	e5933170 	ldr	r3, [r3, #368]	; 0x170
  28:	e12fff13 	bx	r3
  2c:	00070300 	andeq	r0, r7, r0, lsl #6
  30:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexSystemUsbStatus:

00000000 <vexSystemUsbStatus>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexSystemUsbStatus+0xc>
   4:	e5933174 	ldr	r3, [r3, #372]	; 0x174
   8:	e12fff13 	bx	r3
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text._write_user:

00000000 <_write_user>:
   0:	e92d4010 	push	{r4, lr}
   4:	e59fe030 	ldr	lr, [pc, #48]	; 3c <_write_user+0x3c>
   8:	e59ee820 	ldr	lr, [lr, #2080]	; 0x820
   c:	e59e4000 	ldr	r4, [lr]
  10:	e3540000 	cmp	r4, #0
  14:	0a000002 	beq	24 <_write_user+0x24>
  18:	e1a0c00e 	mov	ip, lr
  1c:	e8bd4010 	pop	{r4, lr}
  20:	e12fff1c 	bx	ip
  24:	e3530000 	cmp	r3, #0
  28:	e1a0c003 	mov	ip, r3
  2c:	e3e00000 	mvn	r0, #0
  30:	13a03005 	movne	r3, #5
  34:	158c3000 	strne	r3, [ip]
  38:	e8bd8010 	pop	{r4, pc}
  3c:	037fc000 	cmneq	pc, #0

Disassembly of section .text._read_user:

00000000 <_read_user>:
   0:	e92d4010 	push	{r4, lr}
   4:	e59fe030 	ldr	lr, [pc, #48]	; 3c <_read_user+0x3c>
   8:	e59ee824 	ldr	lr, [lr, #2084]	; 0x824
   c:	e59e4000 	ldr	r4, [lr]
  10:	e3540000 	cmp	r4, #0
  14:	0a000002 	beq	24 <_read_user+0x24>
  18:	e1a0c00e 	mov	ip, lr
  1c:	e8bd4010 	pop	{r4, lr}
  20:	e12fff1c 	bx	ip
  24:	e3530000 	cmp	r3, #0
  28:	e1a0c003 	mov	ip, r3
  2c:	e3e00000 	mvn	r0, #0
  30:	13a03005 	movne	r3, #5
  34:	158c3000 	strne	r3, [ip]
  38:	e8bd8010 	pop	{r4, pc}
  3c:	037fc000 	cmneq	pc, #0

Disassembly of section .text._open_user:

00000000 <_open_user>:
   0:	e92d4010 	push	{r4, lr}
   4:	e59fe030 	ldr	lr, [pc, #48]	; 3c <_open_user+0x3c>
   8:	e59ee828 	ldr	lr, [lr, #2088]	; 0x828
   c:	e59e4000 	ldr	r4, [lr]
  10:	e3540000 	cmp	r4, #0
  14:	0a000002 	beq	24 <_open_user+0x24>
  18:	e1a0c00e 	mov	ip, lr
  1c:	e8bd4010 	pop	{r4, lr}
  20:	e12fff1c 	bx	ip
  24:	e3530000 	cmp	r3, #0
  28:	e1a0c003 	mov	ip, r3
  2c:	e3e00000 	mvn	r0, #0
  30:	13a03005 	movne	r3, #5
  34:	158c3000 	strne	r3, [ip]
  38:	e8bd8010 	pop	{r4, pc}
  3c:	037fc000 	cmneq	pc, #0

Disassembly of section .text._close_user:

00000000 <_close_user>:
   0:	e59f3018 	ldr	r3, [pc, #24]	; 20 <_close_user+0x20>
   4:	e593282c 	ldr	r2, [r3, #2092]	; 0x82c
   8:	e5923000 	ldr	r3, [r2]
   c:	e3530000 	cmp	r3, #0
  10:	0a000000 	beq	18 <_close_user+0x18>
  14:	e12fff12 	bx	r2
  18:	e1a00003 	mov	r0, r3
  1c:	e12fff1e 	bx	lr
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text._lseek_user:

00000000 <_lseek_user>:
   0:	e92d4010 	push	{r4, lr}
   4:	e59fe030 	ldr	lr, [pc, #48]	; 3c <_lseek_user+0x3c>
   8:	e59ee830 	ldr	lr, [lr, #2096]	; 0x830
   c:	e59e4000 	ldr	r4, [lr]
  10:	e3540000 	cmp	r4, #0
  14:	0a000002 	beq	24 <_lseek_user+0x24>
  18:	e1a0c00e 	mov	ip, lr
  1c:	e8bd4010 	pop	{r4, lr}
  20:	e12fff1c 	bx	ip
  24:	e3530000 	cmp	r3, #0
  28:	e1a0c003 	mov	ip, r3
  2c:	e3e00000 	mvn	r0, #0
  30:	13a0301d 	movne	r3, #29
  34:	158c3000 	strne	r3, [ip]
  38:	e8bd8010 	pop	{r4, pc}
  3c:	037fc000 	cmneq	pc, #0

Disassembly of section .text._fstat_user:

00000000 <_fstat_user>:
   0:	e59f3018 	ldr	r3, [pc, #24]	; 20 <_fstat_user+0x20>
   4:	e593c834 	ldr	ip, [r3, #2100]	; 0x834
   8:	e59c3000 	ldr	r3, [ip]
   c:	e3530000 	cmp	r3, #0
  10:	0a000000 	beq	18 <_fstat_user+0x18>
  14:	e12fff1c 	bx	ip
  18:	e1a00003 	mov	r0, r3
  1c:	e12fff1e 	bx	lr
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text._fcntl_user:

00000000 <_fcntl_user>:
   0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
   4:	e59fe020 	ldr	lr, [pc, #32]	; 2c <_fcntl_user+0x2c>
   8:	e59ec834 	ldr	ip, [lr, #2100]	; 0x834
   c:	e59cc000 	ldr	ip, [ip]
  10:	e35c0000 	cmp	ip, #0
  14:	0a000002 	beq	24 <_fcntl_user+0x24>
  18:	e59ec838 	ldr	ip, [lr, #2104]	; 0x838
  1c:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
  20:	e12fff1c 	bx	ip
  24:	e1a0000c 	mov	r0, ip
  28:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)
  2c:	037fc000 	cmneq	pc, #0

Disassembly of section .text._isatty_user:

00000000 <_isatty_user>:
   0:	e59f301c 	ldr	r3, [pc, #28]	; 24 <_isatty_user+0x24>
   4:	e5932834 	ldr	r2, [r3, #2100]	; 0x834
   8:	e5922000 	ldr	r2, [r2]
   c:	e3520000 	cmp	r2, #0
  10:	0a000001 	beq	1c <_isatty_user+0x1c>
  14:	e593383c 	ldr	r3, [r3, #2108]	; 0x83c
  18:	e12fff13 	bx	r3
  1c:	e3a00001 	mov	r0, #1
  20:	e12fff1e 	bx	lr
  24:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDevicesGetNumber:

00000000 <vexDevicesGetNumber>:
   0:	e92d4010 	push	{r4, lr}
   4:	ebfffffe 	bl	0 <__vex_function_prolog>
   8:	e59f3008 	ldr	r3, [pc, #8]	; 18 <vexDevicesGetNumber+0x18>
   c:	e8bd4010 	pop	{r4, lr}
  10:	e5933190 	ldr	r3, [r3, #400]	; 0x190
  14:	e12fff13 	bx	r3
  18:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDevicesGetNumberByType:

00000000 <vexDevicesGetNumberByType>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDevicesGetNumberByType+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933194 	ldr	r3, [r3, #404]	; 0x194
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDevicesGet:

00000000 <vexDevicesGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	ebfffffe 	bl	0 <__vex_function_prolog>
   8:	e59f3008 	ldr	r3, [pc, #8]	; 18 <vexDevicesGet+0x18>
   c:	e8bd4010 	pop	{r4, lr}
  10:	e5933198 	ldr	r3, [r3, #408]	; 0x198
  14:	e12fff13 	bx	r3
  18:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGetByIndex:

00000000 <vexDeviceGetByIndex>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceGetByIndex+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e593319c 	ldr	r3, [r3, #412]	; 0x19c
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGetStatus:

00000000 <vexDeviceGetStatus>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e2443001 	sub	r3, r4, #1
  10:	e284201f 	add	r2, r4, #31
  14:	e3a01000 	mov	r1, #0
  18:	e5e31001 	strb	r1, [r3, #1]!
  1c:	e1530002 	cmp	r3, r2
  20:	1afffffb 	bne	14 <vexDeviceGetStatus+0x14>
  24:	e59f300c 	ldr	r3, [pc, #12]	; 38 <vexDeviceGetStatus+0x38>
  28:	e1a00004 	mov	r0, r4
  2c:	e8bd4010 	pop	{r4, lr}
  30:	e59331a0 	ldr	r3, [r3, #416]	; 0x1a0
  34:	e12fff13 	bx	r3
  38:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGetTimestamp:

00000000 <vexDeviceGetTimestamp>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <vexSystemVersion>
   c:	e59f3020 	ldr	r3, [pc, #32]	; 34 <vexDeviceGetTimestamp+0x34>
  10:	e1500003 	cmp	r0, r3
  14:	9a000004 	bls	2c <vexDeviceGetTimestamp+0x2c>
  18:	e59f3018 	ldr	r3, [pc, #24]	; 38 <vexDeviceGetTimestamp+0x38>
  1c:	e1a00004 	mov	r0, r4
  20:	e8bd4010 	pop	{r4, lr}
  24:	e59331b0 	ldr	r3, [r3, #432]	; 0x1b0
  28:	e12fff13 	bx	r3
  2c:	e3a00000 	mov	r0, #0
  30:	e8bd8010 	pop	{r4, pc}
  34:	01000b16 	tsteq	r0, r6, lsl fp
  38:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGetTimestampByIndex:

00000000 <vexDeviceGetTimestampByIndex>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexDeviceGetTimestampByIndex>
   8:	e3500000 	cmp	r0, #0
   c:	08bd8008 	popeq	{r3, pc}
  10:	e8bd4008 	pop	{r3, lr}
  14:	eafffffe 	b	0 <vexDeviceGetTimestampByIndex>

Disassembly of section .text.vexDeviceButtonStateGet:

00000000 <vexDeviceButtonStateGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	ebfffffe 	bl	0 <__vex_function_prolog>
   8:	ebfffffe 	bl	0 <vexSystemVersion>
   c:	e59f301c 	ldr	r3, [pc, #28]	; 30 <vexDeviceButtonStateGet+0x30>
  10:	e1500003 	cmp	r0, r3
  14:	9a000003 	bls	28 <vexDeviceButtonStateGet+0x28>
  18:	e59f3014 	ldr	r3, [pc, #20]	; 34 <vexDeviceButtonStateGet+0x34>
  1c:	e8bd4010 	pop	{r4, lr}
  20:	e59331b4 	ldr	r3, [r3, #436]	; 0x1b4
  24:	e12fff13 	bx	r3
  28:	e3a00000 	mov	r0, #0
  2c:	e8bd8010 	pop	{r4, pc}
  30:	01000d13 	tsteq	r0, r3, lsl sp
  34:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceTypeGetByIndex:

00000000 <vexDeviceTypeGetByIndex>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceTypeGetByIndex+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e59331b8 	ldr	r3, [r3, #440]	; 0x1b8
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceTypeSetByIndex:

00000000 <vexDeviceTypeSetByIndex>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceTypeSetByIndex+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e59331bc 	ldr	r3, [r3, #444]	; 0x1bc
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceValueGetByIndex:

00000000 <vexDeviceValueGetByIndex>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceValueGetByIndex+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e59331c0 	ldr	r3, [r3, #448]	; 0x1c0
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceValueSetByIndex:

00000000 <vexDeviceValueSetByIndex>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceValueSetByIndex+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e59331c4 	ldr	r3, [r3, #452]	; 0x1c4
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceDatarateSet:

00000000 <vexDeviceDatarateSet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceDatarateSet+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e59331c8 	ldr	r3, [r3, #456]	; 0x1c8
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceTimerSet:

00000000 <vexDeviceTimerSet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a06000 	mov	r6, r0
   8:	e1a05001 	mov	r5, r1
   c:	e1a04002 	mov	r4, r2
  10:	ebfffffe 	bl	0 <__vex_function_prolog>
  14:	e59f3014 	ldr	r3, [pc, #20]	; 30 <vexDeviceTimerSet+0x30>
  18:	e1a00006 	mov	r0, r6
  1c:	e1a01005 	mov	r1, r5
  20:	e1a02004 	mov	r2, r4
  24:	e59331cc 	ldr	r3, [r3, #460]	; 0x1cc
  28:	e8bd4070 	pop	{r4, r5, r6, lr}
  2c:	e12fff13 	bx	r3
  30:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceTimerSetWithArg:

00000000 <vexDeviceTimerSetWithArg>:
   0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   4:	e1a04003 	mov	r4, r3
   8:	e1a07000 	mov	r7, r0
   c:	e1a06001 	mov	r6, r1
  10:	e1a05002 	mov	r5, r2
  14:	ebfffffe 	bl	0 <__vex_function_prolog>
  18:	ebfffffe 	bl	0 <vexSystemVersion>
  1c:	e59f302c 	ldr	r3, [pc, #44]	; 50 <vexDeviceTimerSetWithArg+0x50>
  20:	e1500003 	cmp	r0, r3
  24:	9a000007 	bls	48 <vexDeviceTimerSetWithArg+0x48>
  28:	e59f3024 	ldr	r3, [pc, #36]	; 54 <vexDeviceTimerSetWithArg+0x54>
  2c:	e1a00007 	mov	r0, r7
  30:	e1a01006 	mov	r1, r6
  34:	e1a02005 	mov	r2, r5
  38:	e593c1d0 	ldr	ip, [r3, #464]	; 0x1d0
  3c:	e1a03004 	mov	r3, r4
  40:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
  44:	e12fff1c 	bx	ip
  48:	e3a00000 	mov	r0, #0
  4c:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
  50:	01000a00 	tsteq	r0, r0, lsl #20
  54:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceTimerDump:

00000000 <vexDeviceTimerDump>:
   0:	e92d4010 	push	{r4, lr}
   4:	ebfffffe 	bl	0 <__vex_function_prolog>
   8:	ebfffffe 	bl	0 <vexSystemVersion>
   c:	e59f3014 	ldr	r3, [pc, #20]	; 28 <vexDeviceTimerDump+0x28>
  10:	e1500003 	cmp	r0, r3
  14:	98bd8010 	popls	{r4, pc}
  18:	e59f300c 	ldr	r3, [pc, #12]	; 2c <vexDeviceTimerDump+0x2c>
  1c:	e8bd4010 	pop	{r4, lr}
  20:	e59331d4 	ldr	r3, [r3, #468]	; 0x1d4
  24:	e12fff13 	bx	r3
  28:	01000a00 	tsteq	r0, r0, lsl #20
  2c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceFlagsGetByIndex:

00000000 <vexDeviceFlagsGetByIndex>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	ebfffffe 	bl	0 <vexSystemVersion>
  10:	e59f3020 	ldr	r3, [pc, #32]	; 38 <vexDeviceFlagsGetByIndex+0x38>
  14:	e1500003 	cmp	r0, r3
  18:	9a000004 	bls	30 <vexDeviceFlagsGetByIndex+0x30>
  1c:	e59f3018 	ldr	r3, [pc, #24]	; 3c <vexDeviceFlagsGetByIndex+0x3c>
  20:	e1a00004 	mov	r0, r4
  24:	e8bd4010 	pop	{r4, lr}
  28:	e59331d8 	ldr	r3, [r3, #472]	; 0x1d8
  2c:	e12fff13 	bx	r3
  30:	e3a00000 	mov	r0, #0
  34:	e8bd8010 	pop	{r4, pc}
  38:	01000d23 	tsteq	r0, r3, lsr #26
  3c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexControllerGet:

00000000 <vexControllerGet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexControllerGet+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e59331a4 	ldr	r3, [r3, #420]	; 0x1a4
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexControllerConnectionStatusGet:

00000000 <vexControllerConnectionStatusGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexControllerConnectionStatusGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e59331a8 	ldr	r3, [r3, #424]	; 0x1a8
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexControllerTextSet:

00000000 <vexControllerTextSet>:
   0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   4:	e1a06002 	mov	r6, r2
   8:	e1a05003 	mov	r5, r3
   c:	e1a08000 	mov	r8, r0
  10:	e1a07001 	mov	r7, r1
  14:	ebfffffe 	bl	0 <__vex_function_prolog>
  18:	ebfffffe 	bl	0 <vexControllerTextSet>
  1c:	e59f2048 	ldr	r2, [pc, #72]	; 6c <vexControllerTextSet+0x6c>
  20:	e5923000 	ldr	r3, [r2]
  24:	e1a04002 	mov	r4, r2
  28:	e0630000 	rsb	r0, r3, r0
  2c:	e3500031 	cmp	r0, #49	; 0x31
  30:	8a000001 	bhi	3c <vexControllerTextSet+0x3c>
  34:	e2600032 	rsb	r0, r0, #50	; 0x32
  38:	ebfffffe 	bl	0 <vexControllerTextSet>
  3c:	e59f302c 	ldr	r3, [pc, #44]	; 70 <vexControllerTextSet+0x70>
  40:	e1a01007 	mov	r1, r7
  44:	e1a02006 	mov	r2, r6
  48:	e1a00008 	mov	r0, r8
  4c:	e593c1ac 	ldr	ip, [r3, #428]	; 0x1ac
  50:	e1a03005 	mov	r3, r5
  54:	e12fff3c 	blx	ip
  58:	e1a05000 	mov	r5, r0
  5c:	ebfffffe 	bl	0 <vexControllerTextSet>
  60:	e5840000 	str	r0, [r4]
  64:	e1a00005 	mov	r0, r5
  68:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
  6c:	00000000 	andeq	r0, r0, r0
  70:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceLedSet:

00000000 <vexDeviceLedSet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceLedSet+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e59331e0 	ldr	r3, [r3, #480]	; 0x1e0
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceLedRgbSet:

00000000 <vexDeviceLedRgbSet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceLedRgbSet+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e59331e4 	ldr	r3, [r3, #484]	; 0x1e4
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceLedGet:

00000000 <vexDeviceLedGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceLedGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e59331e8 	ldr	r3, [r3, #488]	; 0x1e8
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceLedRgbGet:

00000000 <vexDeviceLedRgbGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceLedRgbGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e59331ec 	ldr	r3, [r3, #492]	; 0x1ec
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceAdiPortConfigSet:

00000000 <vexDeviceAdiPortConfigSet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a06000 	mov	r6, r0
   8:	e1a05001 	mov	r5, r1
   c:	e1a04002 	mov	r4, r2
  10:	ebfffffe 	bl	0 <__vex_function_prolog>
  14:	e59f3014 	ldr	r3, [pc, #20]	; 30 <vexDeviceAdiPortConfigSet+0x30>
  18:	e1a00006 	mov	r0, r6
  1c:	e1a01005 	mov	r1, r5
  20:	e1a02004 	mov	r2, r4
  24:	e5933208 	ldr	r3, [r3, #520]	; 0x208
  28:	e8bd4070 	pop	{r4, r5, r6, lr}
  2c:	e12fff13 	bx	r3
  30:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceAdiPortConfigGet:

00000000 <vexDeviceAdiPortConfigGet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceAdiPortConfigGet+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e593320c 	ldr	r3, [r3, #524]	; 0x20c
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceAdiValueSet:

00000000 <vexDeviceAdiValueSet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a06000 	mov	r6, r0
   8:	e1a05001 	mov	r5, r1
   c:	e1a04002 	mov	r4, r2
  10:	ebfffffe 	bl	0 <__vex_function_prolog>
  14:	e59f3014 	ldr	r3, [pc, #20]	; 30 <vexDeviceAdiValueSet+0x30>
  18:	e1a00006 	mov	r0, r6
  1c:	e1a01005 	mov	r1, r5
  20:	e1a02004 	mov	r2, r4
  24:	e5933210 	ldr	r3, [r3, #528]	; 0x210
  28:	e8bd4070 	pop	{r4, r5, r6, lr}
  2c:	e12fff13 	bx	r3
  30:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceAdiValueGet:

00000000 <vexDeviceAdiValueGet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceAdiValueGet+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e5933214 	ldr	r3, [r3, #532]	; 0x214
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceAdiVoltageGet:

00000000 <vexDeviceAdiVoltageGet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceAdiVoltageGet+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e5933218 	ldr	r3, [r3, #536]	; 0x218
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceAdiAddrLedSet:

00000000 <vexDeviceAdiAddrLedSet>:
   0:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
   4:	e1a04003 	mov	r4, r3
   8:	e1a07000 	mov	r7, r0
   c:	e1a06001 	mov	r6, r1
  10:	e1a05002 	mov	r5, r2
  14:	e59d9020 	ldr	r9, [sp, #32]
  18:	e59d8024 	ldr	r8, [sp, #36]	; 0x24
  1c:	ebfffffe 	bl	0 <__vex_function_prolog>
  20:	e59f3020 	ldr	r3, [pc, #32]	; 48 <vexDeviceAdiAddrLedSet+0x48>
  24:	e1a00007 	mov	r0, r7
  28:	e58d9020 	str	r9, [sp, #32]
  2c:	e1a01006 	mov	r1, r6
  30:	e58d8024 	str	r8, [sp, #36]	; 0x24
  34:	e1a02005 	mov	r2, r5
  38:	e593c21c 	ldr	ip, [r3, #540]	; 0x21c
  3c:	e1a03004 	mov	r3, r4
  40:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
  44:	e12fff1c 	bx	ip
  48:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceBumperGet:

00000000 <vexDeviceBumperGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceBumperGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933230 	ldr	r3, [r3, #560]	; 0x230
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGyroReset:

00000000 <vexDeviceGyroReset>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceGyroReset+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933258 	ldr	r3, [r3, #600]	; 0x258
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGyroHeadingGet:

00000000 <vexDeviceGyroHeadingGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceGyroHeadingGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e593325c 	ldr	r3, [r3, #604]	; 0x25c
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGyroDegreesGet:

00000000 <vexDeviceGyroDegreesGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceGyroDegreesGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933260 	ldr	r3, [r3, #608]	; 0x260
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceSonarValueGet:

00000000 <vexDeviceSonarValueGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceSonarValueGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933280 	ldr	r3, [r3, #640]	; 0x280
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGenericValueGet:

00000000 <vexDeviceGenericValueGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceGenericValueGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e59332a8 	ldr	r3, [r3, #680]	; 0x2a8
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceMotorVelocitySet:

00000000 <vexDeviceMotorVelocitySet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceMotorVelocitySet+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e59332d0 	ldr	r3, [r3, #720]	; 0x2d0
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceMotorVelocityUpdate:

00000000 <vexDeviceMotorVelocityUpdate>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <vexSystemVersion>
  10:	e59f3020 	ldr	r3, [pc, #32]	; 38 <vexDeviceMotorVelocityUpdate+0x38>
  14:	e1500003 	cmp	r0, r3
  18:	98bd8070 	popls	{r4, r5, r6, pc}
  1c:	ebfffffe 	bl	0 <__vex_function_prolog>
  20:	e59f3014 	ldr	r3, [pc, #20]	; 3c <vexDeviceMotorVelocityUpdate+0x3c>
  24:	e1a00005 	mov	r0, r5
  28:	e1a01004 	mov	r1, r4
  2c:	e8bd4070 	pop	{r4, r5, r6, lr}
  30:	e5933374 	ldr	r3, [r3, #884]	; 0x374
  34:	e12fff13 	bx	r3
  38:	00070400 	andeq	r0, r7, r0, lsl #8
  3c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceMotorVoltageSet:

00000000 <vexDeviceMotorVoltageSet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceMotorVoltageSet+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e593335c 	ldr	r3, [r3, #860]	; 0x35c
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceMotorVelocityGet:

00000000 <vexDeviceMotorVelocityGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceMotorVelocityGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e59332d4 	ldr	r3, [r3, #724]	; 0x2d4
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceMotorActualVelocityGet:

00000000 <vexDeviceMotorActualVelocityGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceMotorActualVelocityGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e59332d8 	ldr	r3, [r3, #728]	; 0x2d8
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceMotorDirectionGet:

00000000 <vexDeviceMotorDirectionGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceMotorDirectionGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e59332dc 	ldr	r3, [r3, #732]	; 0x2dc
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceMotorModeSet:

00000000 <vexDeviceMotorModeSet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceMotorModeSet+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e59332e0 	ldr	r3, [r3, #736]	; 0x2e0
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceMotorModeGet:

00000000 <vexDeviceMotorModeGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceMotorModeGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e59332e4 	ldr	r3, [r3, #740]	; 0x2e4
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceMotorPwmSet:

00000000 <vexDeviceMotorPwmSet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceMotorPwmSet+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e59332e8 	ldr	r3, [r3, #744]	; 0x2e8
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceMotorPwmGet:

00000000 <vexDeviceMotorPwmGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceMotorPwmGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e59332ec 	ldr	r3, [r3, #748]	; 0x2ec
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceMotorCurrentLimitSet:

00000000 <vexDeviceMotorCurrentLimitSet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceMotorCurrentLimitSet+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e59332f0 	ldr	r3, [r3, #752]	; 0x2f0
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceMotorCurrentLimitGet:

00000000 <vexDeviceMotorCurrentLimitGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceMotorCurrentLimitGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e59332f4 	ldr	r3, [r3, #756]	; 0x2f4
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceMotorVoltageLimitSet:

00000000 <vexDeviceMotorVoltageLimitSet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceMotorVoltageLimitSet+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e593336c 	ldr	r3, [r3, #876]	; 0x36c
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceMotorVoltageLimitGet:

00000000 <vexDeviceMotorVoltageLimitGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceMotorVoltageLimitGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933370 	ldr	r3, [r3, #880]	; 0x370
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceMotorPositionPidSet:

00000000 <vexDeviceMotorPositionPidSet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <vexSystemVersion>
  10:	e59f3020 	ldr	r3, [pc, #32]	; 38 <vexDeviceMotorPositionPidSet+0x38>
  14:	e1500003 	cmp	r0, r3
  18:	98bd8070 	popls	{r4, r5, r6, pc}
  1c:	ebfffffe 	bl	0 <__vex_function_prolog>
  20:	e59f3014 	ldr	r3, [pc, #20]	; 3c <vexDeviceMotorPositionPidSet+0x3c>
  24:	e1a00005 	mov	r0, r5
  28:	e1a01004 	mov	r1, r4
  2c:	e8bd4070 	pop	{r4, r5, r6, lr}
  30:	e5933378 	ldr	r3, [r3, #888]	; 0x378
  34:	e12fff13 	bx	r3
  38:	00070400 	andeq	r0, r7, r0, lsl #8
  3c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceMotorVelocityPidSet:

00000000 <vexDeviceMotorVelocityPidSet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <vexSystemVersion>
  10:	e59f3020 	ldr	r3, [pc, #32]	; 38 <vexDeviceMotorVelocityPidSet+0x38>
  14:	e1500003 	cmp	r0, r3
  18:	98bd8070 	popls	{r4, r5, r6, pc}
  1c:	ebfffffe 	bl	0 <__vex_function_prolog>
  20:	e59f3014 	ldr	r3, [pc, #20]	; 3c <vexDeviceMotorVelocityPidSet+0x3c>
  24:	e1a00005 	mov	r0, r5
  28:	e1a01004 	mov	r1, r4
  2c:	e8bd4070 	pop	{r4, r5, r6, lr}
  30:	e593337c 	ldr	r3, [r3, #892]	; 0x37c
  34:	e12fff13 	bx	r3
  38:	00070400 	andeq	r0, r7, r0, lsl #8
  3c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceMotorCurrentGet:

00000000 <vexDeviceMotorCurrentGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceMotorCurrentGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e59332f8 	ldr	r3, [r3, #760]	; 0x2f8
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceMotorVoltageGet:

00000000 <vexDeviceMotorVoltageGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceMotorVoltageGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933360 	ldr	r3, [r3, #864]	; 0x360
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceMotorPowerGet:

00000000 <vexDeviceMotorPowerGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceMotorPowerGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e59332fc 	ldr	r3, [r3, #764]	; 0x2fc
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceMotorTorqueGet:

00000000 <vexDeviceMotorTorqueGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceMotorTorqueGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933300 	ldr	r3, [r3, #768]	; 0x300
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceMotorEfficiencyGet:

00000000 <vexDeviceMotorEfficiencyGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceMotorEfficiencyGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933304 	ldr	r3, [r3, #772]	; 0x304
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceMotorTemperatureGet:

00000000 <vexDeviceMotorTemperatureGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceMotorTemperatureGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933308 	ldr	r3, [r3, #776]	; 0x308
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceMotorOverTempFlagGet:

00000000 <vexDeviceMotorOverTempFlagGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceMotorOverTempFlagGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e593330c 	ldr	r3, [r3, #780]	; 0x30c
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceMotorCurrentLimitFlagGet:

00000000 <vexDeviceMotorCurrentLimitFlagGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceMotorCurrentLimitFlagGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933310 	ldr	r3, [r3, #784]	; 0x310
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceMotorFaultsGet:

00000000 <vexDeviceMotorFaultsGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceMotorFaultsGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933354 	ldr	r3, [r3, #852]	; 0x354
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceMotorZeroVelocityFlagGet:

00000000 <vexDeviceMotorZeroVelocityFlagGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceMotorZeroVelocityFlagGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933314 	ldr	r3, [r3, #788]	; 0x314
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceMotorZeroPositionFlagGet:

00000000 <vexDeviceMotorZeroPositionFlagGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceMotorZeroPositionFlagGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933318 	ldr	r3, [r3, #792]	; 0x318
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceMotorFlagsGet:

00000000 <vexDeviceMotorFlagsGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceMotorFlagsGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933358 	ldr	r3, [r3, #856]	; 0x358
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceMotorReverseFlagSet:

00000000 <vexDeviceMotorReverseFlagSet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceMotorReverseFlagSet+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e593331c 	ldr	r3, [r3, #796]	; 0x31c
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceMotorReverseFlagGet:

00000000 <vexDeviceMotorReverseFlagGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceMotorReverseFlagGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933320 	ldr	r3, [r3, #800]	; 0x320
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceMotorEncoderUnitsSet:

00000000 <vexDeviceMotorEncoderUnitsSet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceMotorEncoderUnitsSet+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e5933324 	ldr	r3, [r3, #804]	; 0x324
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceMotorEncoderUnitsGet:

00000000 <vexDeviceMotorEncoderUnitsGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceMotorEncoderUnitsGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933328 	ldr	r3, [r3, #808]	; 0x328
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceMotorBrakeModeSet:

00000000 <vexDeviceMotorBrakeModeSet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceMotorBrakeModeSet+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e593332c 	ldr	r3, [r3, #812]	; 0x32c
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceMotorBrakeModeGet:

00000000 <vexDeviceMotorBrakeModeGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceMotorBrakeModeGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933330 	ldr	r3, [r3, #816]	; 0x330
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceMotorPositionSet:

00000000 <vexDeviceMotorPositionSet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05003 	mov	r5, r3
   8:	e1a06000 	mov	r6, r0
   c:	e1a04002 	mov	r4, r2
  10:	ebfffffe 	bl	0 <__vex_function_prolog>
  14:	e59f3014 	ldr	r3, [pc, #20]	; 30 <vexDeviceMotorPositionSet+0x30>
  18:	e1a00006 	mov	r0, r6
  1c:	e1a02004 	mov	r2, r4
  20:	e5931334 	ldr	r1, [r3, #820]	; 0x334
  24:	e1a03005 	mov	r3, r5
  28:	e8bd4070 	pop	{r4, r5, r6, lr}
  2c:	e12fff11 	bx	r1
  30:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceMotorPositionGet:

00000000 <vexDeviceMotorPositionGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceMotorPositionGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933338 	ldr	r3, [r3, #824]	; 0x338
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceMotorPositionRawGet:

00000000 <vexDeviceMotorPositionRawGet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceMotorPositionRawGet+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e593333c 	ldr	r3, [r3, #828]	; 0x33c
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceMotorPositionReset:

00000000 <vexDeviceMotorPositionReset>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceMotorPositionReset+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933340 	ldr	r3, [r3, #832]	; 0x340
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceMotorTargetGet:

00000000 <vexDeviceMotorTargetGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceMotorTargetGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933344 	ldr	r3, [r3, #836]	; 0x344
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceMotorServoTargetSet:

00000000 <vexDeviceMotorServoTargetSet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05003 	mov	r5, r3
   8:	e1a06000 	mov	r6, r0
   c:	e1a04002 	mov	r4, r2
  10:	ebfffffe 	bl	0 <__vex_function_prolog>
  14:	e59f3014 	ldr	r3, [pc, #20]	; 30 <vexDeviceMotorServoTargetSet+0x30>
  18:	e1a00006 	mov	r0, r6
  1c:	e1a02004 	mov	r2, r4
  20:	e5931348 	ldr	r1, [r3, #840]	; 0x348
  24:	e1a03005 	mov	r3, r5
  28:	e8bd4070 	pop	{r4, r5, r6, lr}
  2c:	e12fff11 	bx	r1
  30:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceMotorAbsoluteTargetSet:

00000000 <vexDeviceMotorAbsoluteTargetSet>:
   0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   4:	e1a05003 	mov	r5, r3
   8:	e1a06000 	mov	r6, r0
   c:	e1a04002 	mov	r4, r2
  10:	e59d7018 	ldr	r7, [sp, #24]
  14:	ebfffffe 	bl	0 <__vex_function_prolog>
  18:	e59f3018 	ldr	r3, [pc, #24]	; 38 <vexDeviceMotorAbsoluteTargetSet+0x38>
  1c:	e1a00006 	mov	r0, r6
  20:	e1a02004 	mov	r2, r4
  24:	e58d7018 	str	r7, [sp, #24]
  28:	e593134c 	ldr	r1, [r3, #844]	; 0x34c
  2c:	e1a03005 	mov	r3, r5
  30:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
  34:	e12fff11 	bx	r1
  38:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceMotorRelativeTargetSet:

00000000 <vexDeviceMotorRelativeTargetSet>:
   0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   4:	e1a05003 	mov	r5, r3
   8:	e1a06000 	mov	r6, r0
   c:	e1a04002 	mov	r4, r2
  10:	e59d7018 	ldr	r7, [sp, #24]
  14:	ebfffffe 	bl	0 <__vex_function_prolog>
  18:	e59f3018 	ldr	r3, [pc, #24]	; 38 <vexDeviceMotorRelativeTargetSet+0x38>
  1c:	e1a00006 	mov	r0, r6
  20:	e1a02004 	mov	r2, r4
  24:	e58d7018 	str	r7, [sp, #24]
  28:	e5931350 	ldr	r1, [r3, #848]	; 0x350
  2c:	e1a03005 	mov	r3, r5
  30:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
  34:	e12fff11 	bx	r1
  38:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceMotorGearingSet:

00000000 <vexDeviceMotorGearingSet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceMotorGearingSet+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e5933364 	ldr	r3, [r3, #868]	; 0x364
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceMotorGearingGet:

00000000 <vexDeviceMotorGearingGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceMotorGearingGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933368 	ldr	r3, [r3, #872]	; 0x368
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceMotorExternalProfileSet:

00000000 <vexDeviceMotorExternalProfileSet>:
   0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   4:	e1a05003 	mov	r5, r3
   8:	e1a06000 	mov	r6, r0
   c:	e1a04002 	mov	r4, r2
  10:	e59d7018 	ldr	r7, [sp, #24]
  14:	ebfffffe 	bl	0 <__vex_function_prolog>
  18:	e59f3018 	ldr	r3, [pc, #24]	; 38 <vexDeviceMotorExternalProfileSet+0x38>
  1c:	e1a00006 	mov	r0, r6
  20:	e1a02004 	mov	r2, r4
  24:	e58d7018 	str	r7, [sp, #24]
  28:	e5931380 	ldr	r1, [r3, #896]	; 0x380
  2c:	e1a03005 	mov	r3, r5
  30:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
  34:	e12fff11 	bx	r1
  38:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceVisionModeSet:

00000000 <vexDeviceVisionModeSet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceVisionModeSet+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e5933398 	ldr	r3, [r3, #920]	; 0x398
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceVisionModeGet:

00000000 <vexDeviceVisionModeGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceVisionModeGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e593339c 	ldr	r3, [r3, #924]	; 0x39c
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceVisionObjectCountGet:

00000000 <vexDeviceVisionObjectCountGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceVisionObjectCountGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e59333a0 	ldr	r3, [r3, #928]	; 0x3a0
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceVisionObjectGet:

00000000 <vexDeviceVisionObjectGet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a06000 	mov	r6, r0
   8:	e1a05001 	mov	r5, r1
   c:	e1a04002 	mov	r4, r2
  10:	ebfffffe 	bl	0 <__vex_function_prolog>
  14:	e59f3014 	ldr	r3, [pc, #20]	; 30 <vexDeviceVisionObjectGet+0x30>
  18:	e1a00006 	mov	r0, r6
  1c:	e1a01005 	mov	r1, r5
  20:	e1a02004 	mov	r2, r4
  24:	e59333a4 	ldr	r3, [r3, #932]	; 0x3a4
  28:	e8bd4070 	pop	{r4, r5, r6, lr}
  2c:	e12fff13 	bx	r3
  30:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceVisionSignatureSet:

00000000 <vexDeviceVisionSignatureSet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceVisionSignatureSet+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e59333a8 	ldr	r3, [r3, #936]	; 0x3a8
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceVisionSignatureGet:

00000000 <vexDeviceVisionSignatureGet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a06000 	mov	r6, r0
   8:	e1a05001 	mov	r5, r1
   c:	e1a04002 	mov	r4, r2
  10:	ebfffffe 	bl	0 <__vex_function_prolog>
  14:	e59f3014 	ldr	r3, [pc, #20]	; 30 <vexDeviceVisionSignatureGet+0x30>
  18:	e1a00006 	mov	r0, r6
  1c:	e1a01005 	mov	r1, r5
  20:	e1a02004 	mov	r2, r4
  24:	e59333ac 	ldr	r3, [r3, #940]	; 0x3ac
  28:	e8bd4070 	pop	{r4, r5, r6, lr}
  2c:	e12fff13 	bx	r3
  30:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceVisionBrightnessSet:

00000000 <vexDeviceVisionBrightnessSet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceVisionBrightnessSet+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e59333b0 	ldr	r3, [r3, #944]	; 0x3b0
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceVisionBrightnessGet:

00000000 <vexDeviceVisionBrightnessGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceVisionBrightnessGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e59333b4 	ldr	r3, [r3, #948]	; 0x3b4
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceVisionWhiteBalanceModeSet:

00000000 <vexDeviceVisionWhiteBalanceModeSet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceVisionWhiteBalanceModeSet+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e59333b8 	ldr	r3, [r3, #952]	; 0x3b8
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceVisionWhiteBalanceModeGet:

00000000 <vexDeviceVisionWhiteBalanceModeGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceVisionWhiteBalanceModeGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e59333bc 	ldr	r3, [r3, #956]	; 0x3bc
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceVisionWhiteBalanceSet:

00000000 <vexDeviceVisionWhiteBalanceSet>:
   0:	e92d4013 	push	{r0, r1, r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e58d1004 	str	r1, [sp, #4]
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3014 	ldr	r3, [pc, #20]	; 2c <vexDeviceVisionWhiteBalanceSet+0x2c>
  14:	e1a00004 	mov	r0, r4
  18:	e59d1004 	ldr	r1, [sp, #4]
  1c:	e59333c0 	ldr	r3, [r3, #960]	; 0x3c0
  20:	e28dd008 	add	sp, sp, #8
  24:	e8bd4010 	pop	{r4, lr}
  28:	e12fff13 	bx	r3
  2c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceVisionWhiteBalanceGet:

00000000 <vexDeviceVisionWhiteBalanceGet>:
   0:	e92d4013 	push	{r0, r1, r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f3038 	ldr	r3, [pc, #56]	; 4c <vexDeviceVisionWhiteBalanceGet+0x4c>
  10:	e1a00004 	mov	r0, r4
  14:	e59333c4 	ldr	r3, [r3, #964]	; 0x3c4
  18:	e12fff33 	blx	r3
  1c:	e1a03000 	mov	r3, r0
  20:	e3a00000 	mov	r0, #0
  24:	e6ef2073 	uxtb	r2, r3
  28:	e7c70012 	bfi	r0, r2, #0, #8
  2c:	e7e72453 	ubfx	r2, r3, #8, #8
  30:	e7cf0412 	bfi	r0, r2, #8, #8
  34:	e7e72853 	ubfx	r2, r3, #16, #8
  38:	e7d70812 	bfi	r0, r2, #16, #8
  3c:	e1a03c23 	lsr	r3, r3, #24
  40:	e7df0c13 	bfi	r0, r3, #24, #8
  44:	e28dd008 	add	sp, sp, #8
  48:	e8bd8010 	pop	{r4, pc}
  4c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceVisionLedModeSet:

00000000 <vexDeviceVisionLedModeSet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceVisionLedModeSet+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e59333c8 	ldr	r3, [r3, #968]	; 0x3c8
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceVisionLedModeGet:

00000000 <vexDeviceVisionLedModeGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceVisionLedModeGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e59333cc 	ldr	r3, [r3, #972]	; 0x3cc
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceVisionLedBrigntnessSet:

00000000 <vexDeviceVisionLedBrigntnessSet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceVisionLedBrigntnessSet+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e59333d0 	ldr	r3, [r3, #976]	; 0x3d0
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceVisionLedBrigntnessGet:

00000000 <vexDeviceVisionLedBrigntnessGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceVisionLedBrigntnessGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e59333d4 	ldr	r3, [r3, #980]	; 0x3d4
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceVisionLedColorSet:

00000000 <vexDeviceVisionLedColorSet>:
   0:	e92d4013 	push	{r0, r1, r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	e58d1004 	str	r1, [sp, #4]
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3014 	ldr	r3, [pc, #20]	; 2c <vexDeviceVisionLedColorSet+0x2c>
  14:	e1a00004 	mov	r0, r4
  18:	e59d1004 	ldr	r1, [sp, #4]
  1c:	e59333d8 	ldr	r3, [r3, #984]	; 0x3d8
  20:	e28dd008 	add	sp, sp, #8
  24:	e8bd4010 	pop	{r4, lr}
  28:	e12fff13 	bx	r3
  2c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceVisionLedColorGet:

00000000 <vexDeviceVisionLedColorGet>:
   0:	e92d4013 	push	{r0, r1, r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f3038 	ldr	r3, [pc, #56]	; 4c <vexDeviceVisionLedColorGet+0x4c>
  10:	e1a00004 	mov	r0, r4
  14:	e59333dc 	ldr	r3, [r3, #988]	; 0x3dc
  18:	e12fff33 	blx	r3
  1c:	e1a03000 	mov	r3, r0
  20:	e3a00000 	mov	r0, #0
  24:	e6ef2073 	uxtb	r2, r3
  28:	e7c70012 	bfi	r0, r2, #0, #8
  2c:	e7e72453 	ubfx	r2, r3, #8, #8
  30:	e7cf0412 	bfi	r0, r2, #8, #8
  34:	e7e72853 	ubfx	r2, r3, #16, #8
  38:	e7d70812 	bfi	r0, r2, #16, #8
  3c:	e1a03c23 	lsr	r3, r3, #24
  40:	e7df0c13 	bfi	r0, r3, #24, #8
  44:	e28dd008 	add	sp, sp, #8
  48:	e8bd8010 	pop	{r4, pc}
  4c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceVisionWifiModeSet:

00000000 <vexDeviceVisionWifiModeSet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceVisionWifiModeSet+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e59333e0 	ldr	r3, [r3, #992]	; 0x3e0
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceVisionWifiModeGet:

00000000 <vexDeviceVisionWifiModeGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceVisionWifiModeGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e59333e4 	ldr	r3, [r3, #996]	; 0x3e4
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceImuReset:

00000000 <vexDeviceImuReset>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceImuReset+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933410 	ldr	r3, [r3, #1040]	; 0x410
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceImuHeadingGet:

00000000 <vexDeviceImuHeadingGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceImuHeadingGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933414 	ldr	r3, [r3, #1044]	; 0x414
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceImuDegreesGet:

00000000 <vexDeviceImuDegreesGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceImuDegreesGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933418 	ldr	r3, [r3, #1048]	; 0x418
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceImuQuaternionGet:

00000000 <vexDeviceImuQuaternionGet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceImuQuaternionGet+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e593341c 	ldr	r3, [r3, #1052]	; 0x41c
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceImuAttitudeGet:

00000000 <vexDeviceImuAttitudeGet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceImuAttitudeGet+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e5933420 	ldr	r3, [r3, #1056]	; 0x420
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceImuRawGyroGet:

00000000 <vexDeviceImuRawGyroGet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceImuRawGyroGet+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e5933424 	ldr	r3, [r3, #1060]	; 0x424
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceImuRawAccelGet:

00000000 <vexDeviceImuRawAccelGet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceImuRawAccelGet+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e5933428 	ldr	r3, [r3, #1064]	; 0x428
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceImuStatusGet:

00000000 <vexDeviceImuStatusGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceImuStatusGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e593342c 	ldr	r3, [r3, #1068]	; 0x42c
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceImuTemperatureGet:

00000000 <vexDeviceImuTemperatureGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceImuTemperatureGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933430 	ldr	r3, [r3, #1072]	; 0x430
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceImuDebugGet:

00000000 <vexDeviceImuDebugGet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a06000 	mov	r6, r0
   8:	e1a05001 	mov	r5, r1
   c:	e1a04002 	mov	r4, r2
  10:	ebfffffe 	bl	0 <__vex_function_prolog>
  14:	e59f3014 	ldr	r3, [pc, #20]	; 30 <vexDeviceImuDebugGet+0x30>
  18:	e1a00006 	mov	r0, r6
  1c:	e1a01005 	mov	r1, r5
  20:	e1a02004 	mov	r2, r4
  24:	e5933434 	ldr	r3, [r3, #1076]	; 0x434
  28:	e8bd4070 	pop	{r4, r5, r6, lr}
  2c:	e12fff13 	bx	r3
  30:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceImuModeSet:

00000000 <vexDeviceImuModeSet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceImuModeSet+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e5933438 	ldr	r3, [r3, #1080]	; 0x438
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceImuModeGet:

00000000 <vexDeviceImuModeGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceImuModeGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e593343c 	ldr	r3, [r3, #1084]	; 0x43c
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceImuCollisionDataGet:

00000000 <vexDeviceImuCollisionDataGet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceImuCollisionDataGet+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e5933440 	ldr	r3, [r3, #1088]	; 0x440
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceImuDataRateSet:

00000000 <vexDeviceImuDataRateSet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <vexSystemVersion>
  10:	e59f3020 	ldr	r3, [pc, #32]	; 38 <vexDeviceImuDataRateSet+0x38>
  14:	e1500003 	cmp	r0, r3
  18:	98bd8070 	popls	{r4, r5, r6, pc}
  1c:	ebfffffe 	bl	0 <__vex_function_prolog>
  20:	e59f3014 	ldr	r3, [pc, #20]	; 3c <vexDeviceImuDataRateSet+0x3c>
  24:	e1a00005 	mov	r0, r5
  28:	e1a01004 	mov	r1, r4
  2c:	e8bd4070 	pop	{r4, r5, r6, lr}
  30:	e5933444 	ldr	r3, [r3, #1092]	; 0x444
  34:	e12fff13 	bx	r3
  38:	01000b16 	tsteq	r0, r6, lsl fp
  3c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceRangeValueGet:

00000000 <vexDeviceRangeValueGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceRangeValueGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e59334d8 	ldr	r3, [r3, #1240]	; 0x4d8
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceRadioUserDataReceive:

00000000 <vexDeviceRadioUserDataReceive>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a06000 	mov	r6, r0
   8:	e1a05001 	mov	r5, r1
   c:	e1a04002 	mov	r4, r2
  10:	ebfffffe 	bl	0 <__vex_function_prolog>
  14:	e59f3014 	ldr	r3, [pc, #20]	; 30 <vexDeviceRadioUserDataReceive+0x30>
  18:	e1a00006 	mov	r0, r6
  1c:	e1a01005 	mov	r1, r5
  20:	e1a02004 	mov	r2, r4
  24:	e5933460 	ldr	r3, [r3, #1120]	; 0x460
  28:	e8bd4070 	pop	{r4, r5, r6, lr}
  2c:	e12fff13 	bx	r3
  30:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceRadioModeSet:

00000000 <vexDeviceRadioModeSet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceRadioModeSet+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e5933464 	ldr	r3, [r3, #1124]	; 0x464
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceAbsEncReset:

00000000 <vexDeviceAbsEncReset>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceAbsEncReset+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933488 	ldr	r3, [r3, #1160]	; 0x488
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceAbsEncPositionSet:

00000000 <vexDeviceAbsEncPositionSet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceAbsEncPositionSet+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e593348c 	ldr	r3, [r3, #1164]	; 0x48c
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceAbsEncPositionGet:

00000000 <vexDeviceAbsEncPositionGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceAbsEncPositionGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933490 	ldr	r3, [r3, #1168]	; 0x490
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceAbsEncVelocityGet:

00000000 <vexDeviceAbsEncVelocityGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceAbsEncVelocityGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933494 	ldr	r3, [r3, #1172]	; 0x494
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceAbsEncAngleGet:

00000000 <vexDeviceAbsEncAngleGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceAbsEncAngleGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933498 	ldr	r3, [r3, #1176]	; 0x498
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceAbsEncReverseFlagSet:

00000000 <vexDeviceAbsEncReverseFlagSet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceAbsEncReverseFlagSet+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e593349c 	ldr	r3, [r3, #1180]	; 0x49c
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceAbsEncReverseFlagGet:

00000000 <vexDeviceAbsEncReverseFlagGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceAbsEncReverseFlagGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e59334a0 	ldr	r3, [r3, #1184]	; 0x4a0
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceAbsEncStatusGet:

00000000 <vexDeviceAbsEncStatusGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceAbsEncStatusGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e59334a4 	ldr	r3, [r3, #1188]	; 0x4a4
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceAbsEncTemperatureGet:

00000000 <vexDeviceAbsEncTemperatureGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceAbsEncTemperatureGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e59334a8 	ldr	r3, [r3, #1192]	; 0x4a8
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceAbsEncDebugGet:

00000000 <vexDeviceAbsEncDebugGet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceAbsEncDebugGet+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e59334ac 	ldr	r3, [r3, #1196]	; 0x4ac
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceAbsEncModeSet:

00000000 <vexDeviceAbsEncModeSet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceAbsEncModeSet+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e59334b0 	ldr	r3, [r3, #1200]	; 0x4b0
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceAbsEncModeGet:

00000000 <vexDeviceAbsEncModeGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceAbsEncModeGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e59334b4 	ldr	r3, [r3, #1204]	; 0x4b4
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceAbsEncOffsetSet:

00000000 <vexDeviceAbsEncOffsetSet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceAbsEncOffsetSet+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e59334b8 	ldr	r3, [r3, #1208]	; 0x4b8
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceAbsEncOffsetGet:

00000000 <vexDeviceAbsEncOffsetGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceAbsEncOffsetGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e59334bc 	ldr	r3, [r3, #1212]	; 0x4bc
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceAbsEncDataRateSet:

00000000 <vexDeviceAbsEncDataRateSet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <vexSystemVersion>
  10:	e59f3020 	ldr	r3, [pc, #32]	; 38 <vexDeviceAbsEncDataRateSet+0x38>
  14:	e1500003 	cmp	r0, r3
  18:	98bd8070 	popls	{r4, r5, r6, pc}
  1c:	ebfffffe 	bl	0 <__vex_function_prolog>
  20:	e59f3014 	ldr	r3, [pc, #20]	; 3c <vexDeviceAbsEncDataRateSet+0x3c>
  24:	e1a00005 	mov	r0, r5
  28:	e1a01004 	mov	r1, r4
  2c:	e8bd4070 	pop	{r4, r5, r6, lr}
  30:	e59334c0 	ldr	r3, [r3, #1216]	; 0x4c0
  34:	e12fff13 	bx	r3
  38:	01000d0e 	tsteq	r0, lr, lsl #26
  3c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceOpticalHueGet:

00000000 <vexDeviceOpticalHueGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceOpticalHueGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933528 	ldr	r3, [r3, #1320]	; 0x528
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceOpticalSatGet:

00000000 <vexDeviceOpticalSatGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceOpticalSatGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e593352c 	ldr	r3, [r3, #1324]	; 0x52c
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceOpticalBrightnessGet:

00000000 <vexDeviceOpticalBrightnessGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceOpticalBrightnessGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933530 	ldr	r3, [r3, #1328]	; 0x530
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceOpticalProximityGet:

00000000 <vexDeviceOpticalProximityGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceOpticalProximityGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933534 	ldr	r3, [r3, #1332]	; 0x534
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceOpticalRgbGet:

00000000 <vexDeviceOpticalRgbGet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceOpticalRgbGet+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e5933538 	ldr	r3, [r3, #1336]	; 0x538
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceOpticalLedPwmSet:

00000000 <vexDeviceOpticalLedPwmSet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceOpticalLedPwmSet+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e593353c 	ldr	r3, [r3, #1340]	; 0x53c
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceOpticalLedPwmGet:

00000000 <vexDeviceOpticalLedPwmGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceOpticalLedPwmGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933540 	ldr	r3, [r3, #1344]	; 0x540
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceOpticalStatusGet:

00000000 <vexDeviceOpticalStatusGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceOpticalStatusGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933544 	ldr	r3, [r3, #1348]	; 0x544
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceOpticalRawGet:

00000000 <vexDeviceOpticalRawGet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceOpticalRawGet+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e5933548 	ldr	r3, [r3, #1352]	; 0x548
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceOpticalDebugGet:

00000000 <vexDeviceOpticalDebugGet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceOpticalDebugGet+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e593354c 	ldr	r3, [r3, #1356]	; 0x54c
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceOpticalModeSet:

00000000 <vexDeviceOpticalModeSet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceOpticalModeSet+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e5933550 	ldr	r3, [r3, #1360]	; 0x550
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceOpticalModeGet:

00000000 <vexDeviceOpticalModeGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceOpticalModeGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933554 	ldr	r3, [r3, #1364]	; 0x554
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceOpticalGestureGet:

00000000 <vexDeviceOpticalGestureGet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceOpticalGestureGet+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e5933558 	ldr	r3, [r3, #1368]	; 0x558
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceOpticalGestureEnable:

00000000 <vexDeviceOpticalGestureEnable>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceOpticalGestureEnable+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e593355c 	ldr	r3, [r3, #1372]	; 0x55c
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceOpticalGestureDisable:

00000000 <vexDeviceOpticalGestureDisable>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceOpticalGestureDisable+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933560 	ldr	r3, [r3, #1376]	; 0x560
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceOpticalProximityThreshold:

00000000 <vexDeviceOpticalProximityThreshold>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceOpticalProximityThreshold+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e5933564 	ldr	r3, [r3, #1380]	; 0x564
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceOpticalGainSet:

00000000 <vexDeviceOpticalGainSet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceOpticalGainSet+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e5933568 	ldr	r3, [r3, #1384]	; 0x568
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceOpticalMatrixSet:

00000000 <vexDeviceOpticalMatrixSet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceOpticalMatrixSet+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e593356c 	ldr	r3, [r3, #1388]	; 0x56c
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceOpticalMatrixGet:

00000000 <vexDeviceOpticalMatrixGet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceOpticalMatrixGet+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e5933570 	ldr	r3, [r3, #1392]	; 0x570
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceOpticalIntegrationTimeSet:

00000000 <vexDeviceOpticalIntegrationTimeSet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05003 	mov	r5, r3
   8:	e1a06000 	mov	r6, r0
   c:	e1a04002 	mov	r4, r2
  10:	ebfffffe 	bl	0 <__vex_function_prolog>
  14:	e59f3014 	ldr	r3, [pc, #20]	; 30 <vexDeviceOpticalIntegrationTimeSet+0x30>
  18:	e1a00006 	mov	r0, r6
  1c:	e1a02004 	mov	r2, r4
  20:	e5931b40 	ldr	r1, [r3, #2880]	; 0xb40
  24:	e1a03005 	mov	r3, r5
  28:	e8bd4070 	pop	{r4, r5, r6, lr}
  2c:	e12fff11 	bx	r1
  30:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceOpticalIntegrationTimeGet:

00000000 <vexDeviceOpticalIntegrationTimeGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceOpticalIntegrationTimeGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933b44 	ldr	r3, [r3, #2884]	; 0xb44
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceMagnetPowerSet:

00000000 <vexDeviceMagnetPowerSet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a06000 	mov	r6, r0
   8:	e1a05001 	mov	r5, r1
   c:	e1a04002 	mov	r4, r2
  10:	ebfffffe 	bl	0 <__vex_function_prolog>
  14:	e59f3014 	ldr	r3, [pc, #20]	; 30 <vexDeviceMagnetPowerSet+0x30>
  18:	e1a00006 	mov	r0, r6
  1c:	e1a01005 	mov	r1, r5
  20:	e1a02004 	mov	r2, r4
  24:	e5933578 	ldr	r3, [r3, #1400]	; 0x578
  28:	e8bd4070 	pop	{r4, r5, r6, lr}
  2c:	e12fff13 	bx	r3
  30:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceMagnetPowerGet:

00000000 <vexDeviceMagnetPowerGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceMagnetPowerGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e593357c 	ldr	r3, [r3, #1404]	; 0x57c
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceMagnetPickup:

00000000 <vexDeviceMagnetPickup>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceMagnetPickup+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e5933580 	ldr	r3, [r3, #1408]	; 0x580
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceMagnetDrop:

00000000 <vexDeviceMagnetDrop>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceMagnetDrop+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e5933584 	ldr	r3, [r3, #1412]	; 0x584
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceMagnetTemperatureGet:

00000000 <vexDeviceMagnetTemperatureGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceMagnetTemperatureGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933588 	ldr	r3, [r3, #1416]	; 0x588
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceMagnetCurrentGet:

00000000 <vexDeviceMagnetCurrentGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceMagnetCurrentGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e593358c 	ldr	r3, [r3, #1420]	; 0x58c
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceMagnetStatusGet:

00000000 <vexDeviceMagnetStatusGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceMagnetStatusGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933590 	ldr	r3, [r3, #1424]	; 0x590
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceMagnetDebugGet:

00000000 <vexDeviceMagnetDebugGet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceMagnetDebugGet+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e5933594 	ldr	r3, [r3, #1428]	; 0x594
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceMagnetModeSet:

00000000 <vexDeviceMagnetModeSet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceMagnetModeSet+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e5933598 	ldr	r3, [r3, #1432]	; 0x598
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceMagnetModeGet:

00000000 <vexDeviceMagnetModeGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceMagnetModeGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e593359c 	ldr	r3, [r3, #1436]	; 0x59c
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceDistanceDistanceGet:

00000000 <vexDeviceDistanceDistanceGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceDistanceDistanceGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933500 	ldr	r3, [r3, #1280]	; 0x500
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceDistanceConfidenceGet:

00000000 <vexDeviceDistanceConfidenceGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceDistanceConfidenceGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933504 	ldr	r3, [r3, #1284]	; 0x504
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceDistanceObjectSizeGet:

00000000 <vexDeviceDistanceObjectSizeGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceDistanceObjectSizeGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933518 	ldr	r3, [r3, #1304]	; 0x518
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceDistanceObjectVelocityGet:

00000000 <vexDeviceDistanceObjectVelocityGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceDistanceObjectVelocityGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e593351c 	ldr	r3, [r3, #1308]	; 0x51c
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceDistanceStatusGet:

00000000 <vexDeviceDistanceStatusGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceDistanceStatusGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933508 	ldr	r3, [r3, #1288]	; 0x508
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceDistanceDebugGet:

00000000 <vexDeviceDistanceDebugGet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceDistanceDebugGet+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e593350c 	ldr	r3, [r3, #1292]	; 0x50c
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceDistanceModeSet:

00000000 <vexDeviceDistanceModeSet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceDistanceModeSet+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e5933510 	ldr	r3, [r3, #1296]	; 0x510
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceDistanceModeGet:

00000000 <vexDeviceDistanceModeGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceDistanceModeGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933514 	ldr	r3, [r3, #1300]	; 0x514
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGpsReset:

00000000 <vexDeviceGpsReset>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	ebfffffe 	bl	0 <vexSystemVersion>
  10:	e59f3018 	ldr	r3, [pc, #24]	; 30 <vexDeviceGpsReset+0x30>
  14:	e1500003 	cmp	r0, r3
  18:	98bd8010 	popls	{r4, pc}
  1c:	e59f3010 	ldr	r3, [pc, #16]	; 34 <vexDeviceGpsReset+0x34>
  20:	e1a00004 	mov	r0, r4
  24:	e8bd4010 	pop	{r4, lr}
  28:	e59335c8 	ldr	r3, [r3, #1480]	; 0x5c8
  2c:	e12fff13 	bx	r3
  30:	01000e43 	tsteq	r0, r3, asr #28
  34:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGpsHeadingGet:

00000000 <vexDeviceGpsHeadingGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	ebfffffe 	bl	0 <vexSystemVersion>
  10:	e59f3024 	ldr	r3, [pc, #36]	; 3c <vexDeviceGpsHeadingGet+0x3c>
  14:	e1500003 	cmp	r0, r3
  18:	9a000004 	bls	30 <vexDeviceGpsHeadingGet+0x30>
  1c:	e59f301c 	ldr	r3, [pc, #28]	; 40 <vexDeviceGpsHeadingGet+0x40>
  20:	e1a00004 	mov	r0, r4
  24:	e8bd4010 	pop	{r4, lr}
  28:	e59335cc 	ldr	r3, [r3, #1484]	; 0x5cc
  2c:	e12fff13 	bx	r3
  30:	e3a00000 	mov	r0, #0
  34:	e3a01000 	mov	r1, #0
  38:	e8bd8010 	pop	{r4, pc}
  3c:	01000e43 	tsteq	r0, r3, asr #28
  40:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGpsDegreesGet:

00000000 <vexDeviceGpsDegreesGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	ebfffffe 	bl	0 <vexSystemVersion>
  10:	e59f3024 	ldr	r3, [pc, #36]	; 3c <vexDeviceGpsDegreesGet+0x3c>
  14:	e1500003 	cmp	r0, r3
  18:	9a000004 	bls	30 <vexDeviceGpsDegreesGet+0x30>
  1c:	e59f301c 	ldr	r3, [pc, #28]	; 40 <vexDeviceGpsDegreesGet+0x40>
  20:	e1a00004 	mov	r0, r4
  24:	e8bd4010 	pop	{r4, lr}
  28:	e59335d0 	ldr	r3, [r3, #1488]	; 0x5d0
  2c:	e12fff13 	bx	r3
  30:	e3a00000 	mov	r0, #0
  34:	e3a01000 	mov	r1, #0
  38:	e8bd8010 	pop	{r4, pc}
  3c:	01000e43 	tsteq	r0, r3, asr #28
  40:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGpsQuaternionGet:

00000000 <vexDeviceGpsQuaternionGet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	ebfffffe 	bl	0 <vexSystemVersion>
  14:	e59f30b4 	ldr	r3, [pc, #180]	; d0 <vexDeviceGpsQuaternionGet+0xd0>
  18:	e1500003 	cmp	r0, r3
  1c:	8a000025 	bhi	b8 <vexDeviceGpsQuaternionGet+0xb8>
  20:	e3540000 	cmp	r4, #0
  24:	08bd8070 	popeq	{r4, r5, r6, pc}
  28:	e3a03000 	mov	r3, #0
  2c:	e3e0200f 	mvn	r2, #15
  30:	e5c43000 	strb	r3, [r4]
  34:	e5c42006 	strb	r2, [r4, #6]
  38:	e3a0203f 	mov	r2, #63	; 0x3f
  3c:	e5c43001 	strb	r3, [r4, #1]
  40:	e5c43002 	strb	r3, [r4, #2]
  44:	e5c43003 	strb	r3, [r4, #3]
  48:	e5c43004 	strb	r3, [r4, #4]
  4c:	e5c43005 	strb	r3, [r4, #5]
  50:	e5c42007 	strb	r2, [r4, #7]
  54:	e5c43008 	strb	r3, [r4, #8]
  58:	e5c43009 	strb	r3, [r4, #9]
  5c:	e5c4300a 	strb	r3, [r4, #10]
  60:	e5c4300b 	strb	r3, [r4, #11]
  64:	e5c4300c 	strb	r3, [r4, #12]
  68:	e5c4300d 	strb	r3, [r4, #13]
  6c:	e5c4300e 	strb	r3, [r4, #14]
  70:	e5c4300f 	strb	r3, [r4, #15]
  74:	e5c43010 	strb	r3, [r4, #16]
  78:	e5c43011 	strb	r3, [r4, #17]
  7c:	e5c43012 	strb	r3, [r4, #18]
  80:	e5c43013 	strb	r3, [r4, #19]
  84:	e5c43014 	strb	r3, [r4, #20]
  88:	e5c43015 	strb	r3, [r4, #21]
  8c:	e5c43016 	strb	r3, [r4, #22]
  90:	e5c43017 	strb	r3, [r4, #23]
  94:	e5c43018 	strb	r3, [r4, #24]
  98:	e5c43019 	strb	r3, [r4, #25]
  9c:	e5c4301a 	strb	r3, [r4, #26]
  a0:	e5c4301b 	strb	r3, [r4, #27]
  a4:	e5c4301c 	strb	r3, [r4, #28]
  a8:	e5c4301d 	strb	r3, [r4, #29]
  ac:	e5c4301e 	strb	r3, [r4, #30]
  b0:	e5c4301f 	strb	r3, [r4, #31]
  b4:	e8bd8070 	pop	{r4, r5, r6, pc}
  b8:	e59f3014 	ldr	r3, [pc, #20]	; d4 <vexDeviceGpsQuaternionGet+0xd4>
  bc:	e1a00005 	mov	r0, r5
  c0:	e1a01004 	mov	r1, r4
  c4:	e8bd4070 	pop	{r4, r5, r6, lr}
  c8:	e59335d4 	ldr	r3, [r3, #1492]	; 0x5d4
  cc:	e12fff13 	bx	r3
  d0:	01000e43 	tsteq	r0, r3, asr #28
  d4:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGpsAttitudeGet:

00000000 <vexDeviceGpsAttitudeGet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a06000 	mov	r6, r0
   8:	e1a04001 	mov	r4, r1
   c:	e1a05002 	mov	r5, r2
  10:	ebfffffe 	bl	0 <__vex_function_prolog>
  14:	ebfffffe 	bl	0 <vexSystemVersion>
  18:	e59f3170 	ldr	r3, [pc, #368]	; 190 <vexDeviceGpsAttitudeGet+0x190>
  1c:	e1500003 	cmp	r0, r3
  20:	8a000053 	bhi	174 <vexDeviceGpsAttitudeGet+0x174>
  24:	e3540000 	cmp	r4, #0
  28:	08bd8070 	popeq	{r4, r5, r6, pc}
  2c:	e3a03000 	mov	r3, #0
  30:	e3e02057 	mvn	r2, #87	; 0x57
  34:	e5c43000 	strb	r3, [r4]
  38:	e5c43001 	strb	r3, [r4, #1]
  3c:	e5c43002 	strb	r3, [r4, #2]
  40:	e5c43003 	strb	r3, [r4, #3]
  44:	e5c43004 	strb	r3, [r4, #4]
  48:	e5c43005 	strb	r3, [r4, #5]
  4c:	e5c43006 	strb	r3, [r4, #6]
  50:	e5c43007 	strb	r3, [r4, #7]
  54:	e5c43008 	strb	r3, [r4, #8]
  58:	e5c43009 	strb	r3, [r4, #9]
  5c:	e5c4300a 	strb	r3, [r4, #10]
  60:	e5c4300b 	strb	r3, [r4, #11]
  64:	e5c4300c 	strb	r3, [r4, #12]
  68:	e5c4300d 	strb	r3, [r4, #13]
  6c:	e5c4300e 	strb	r3, [r4, #14]
  70:	e5c4300f 	strb	r3, [r4, #15]
  74:	e5c43010 	strb	r3, [r4, #16]
  78:	e5c43011 	strb	r3, [r4, #17]
  7c:	e5c43012 	strb	r3, [r4, #18]
  80:	e5c43013 	strb	r3, [r4, #19]
  84:	e5c43014 	strb	r3, [r4, #20]
  88:	e5c43015 	strb	r3, [r4, #21]
  8c:	e5c43016 	strb	r3, [r4, #22]
  90:	e5c43017 	strb	r3, [r4, #23]
  94:	e5c43018 	strb	r3, [r4, #24]
  98:	e5c43019 	strb	r3, [r4, #25]
  9c:	e5c4301a 	strb	r3, [r4, #26]
  a0:	e5c4301b 	strb	r3, [r4, #27]
  a4:	e5c4301c 	strb	r3, [r4, #28]
  a8:	e5c4301d 	strb	r3, [r4, #29]
  ac:	e5c4301e 	strb	r3, [r4, #30]
  b0:	e5c4301f 	strb	r3, [r4, #31]
  b4:	e5c43020 	strb	r3, [r4, #32]
  b8:	e5c43021 	strb	r3, [r4, #33]	; 0x21
  bc:	e5c42028 	strb	r2, [r4, #40]	; 0x28
  c0:	e3e02039 	mvn	r2, #57	; 0x39
  c4:	e5c43022 	strb	r3, [r4, #34]	; 0x22
  c8:	e5c42029 	strb	r2, [r4, #41]	; 0x29
  cc:	e3a0204b 	mov	r2, #75	; 0x4b
  d0:	e5c43023 	strb	r3, [r4, #35]	; 0x23
  d4:	e5c4202a 	strb	r2, [r4, #42]	; 0x2a
  d8:	e3a02037 	mov	r2, #55	; 0x37
  dc:	e5c43024 	strb	r3, [r4, #36]	; 0x24
  e0:	e5c4202b 	strb	r2, [r4, #43]	; 0x2b
  e4:	e3e02076 	mvn	r2, #118	; 0x76
  e8:	e5c43025 	strb	r3, [r4, #37]	; 0x25
  ec:	e5c4202c 	strb	r2, [r4, #44]	; 0x2c
  f0:	e3a02041 	mov	r2, #65	; 0x41
  f4:	e5c43026 	strb	r3, [r4, #38]	; 0x26
  f8:	e5c4202d 	strb	r2, [r4, #45]	; 0x2d
  fc:	e3e0202f 	mvn	r2, #47	; 0x2f
 100:	e5c43027 	strb	r3, [r4, #39]	; 0x27
 104:	e5c4202e 	strb	r2, [r4, #46]	; 0x2e
 108:	e3a0203f 	mov	r2, #63	; 0x3f
 10c:	e5c43030 	strb	r3, [r4, #48]	; 0x30
 110:	e5c4202f 	strb	r2, [r4, #47]	; 0x2f
 114:	e5c43031 	strb	r3, [r4, #49]	; 0x31
 118:	e5c43032 	strb	r3, [r4, #50]	; 0x32
 11c:	e5c43033 	strb	r3, [r4, #51]	; 0x33
 120:	e5c43034 	strb	r3, [r4, #52]	; 0x34
 124:	e5c43035 	strb	r3, [r4, #53]	; 0x35
 128:	e5c43036 	strb	r3, [r4, #54]	; 0x36
 12c:	e5c43037 	strb	r3, [r4, #55]	; 0x37
 130:	e5c43038 	strb	r3, [r4, #56]	; 0x38
 134:	e5c43039 	strb	r3, [r4, #57]	; 0x39
 138:	e5c4303a 	strb	r3, [r4, #58]	; 0x3a
 13c:	e5c4303b 	strb	r3, [r4, #59]	; 0x3b
 140:	e5c4303c 	strb	r3, [r4, #60]	; 0x3c
 144:	e5c4303d 	strb	r3, [r4, #61]	; 0x3d
 148:	e5c4303e 	strb	r3, [r4, #62]	; 0x3e
 14c:	e5c4303f 	strb	r3, [r4, #63]	; 0x3f
 150:	e5c43040 	strb	r3, [r4, #64]	; 0x40
 154:	e5c43041 	strb	r3, [r4, #65]	; 0x41
 158:	e5c43042 	strb	r3, [r4, #66]	; 0x42
 15c:	e5c43043 	strb	r3, [r4, #67]	; 0x43
 160:	e5c43044 	strb	r3, [r4, #68]	; 0x44
 164:	e5c43045 	strb	r3, [r4, #69]	; 0x45
 168:	e5c43046 	strb	r3, [r4, #70]	; 0x46
 16c:	e5c43047 	strb	r3, [r4, #71]	; 0x47
 170:	e8bd8070 	pop	{r4, r5, r6, pc}
 174:	e59f3018 	ldr	r3, [pc, #24]	; 194 <vexDeviceGpsAttitudeGet+0x194>
 178:	e1a00006 	mov	r0, r6
 17c:	e1a01004 	mov	r1, r4
 180:	e1a02005 	mov	r2, r5
 184:	e8bd4070 	pop	{r4, r5, r6, lr}
 188:	e59335d8 	ldr	r3, [r3, #1496]	; 0x5d8
 18c:	e12fff13 	bx	r3
 190:	01000e43 	tsteq	r0, r3, asr #28
 194:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGpsRawGyroGet:

00000000 <vexDeviceGpsRawGyroGet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	ebfffffe 	bl	0 <vexSystemVersion>
  14:	e59f30ac 	ldr	r3, [pc, #172]	; c8 <vexDeviceGpsRawGyroGet+0xc8>
  18:	e1500003 	cmp	r0, r3
  1c:	8a000023 	bhi	b0 <vexDeviceGpsRawGyroGet+0xb0>
  20:	e3540000 	cmp	r4, #0
  24:	08bd8070 	popeq	{r4, r5, r6, pc}
  28:	e3a03000 	mov	r3, #0
  2c:	e5c43000 	strb	r3, [r4]
  30:	e5c43001 	strb	r3, [r4, #1]
  34:	e5c43002 	strb	r3, [r4, #2]
  38:	e5c43003 	strb	r3, [r4, #3]
  3c:	e5c43004 	strb	r3, [r4, #4]
  40:	e5c43005 	strb	r3, [r4, #5]
  44:	e5c43006 	strb	r3, [r4, #6]
  48:	e5c43007 	strb	r3, [r4, #7]
  4c:	e5c43008 	strb	r3, [r4, #8]
  50:	e5c43009 	strb	r3, [r4, #9]
  54:	e5c4300a 	strb	r3, [r4, #10]
  58:	e5c4300b 	strb	r3, [r4, #11]
  5c:	e5c4300c 	strb	r3, [r4, #12]
  60:	e5c4300d 	strb	r3, [r4, #13]
  64:	e5c4300e 	strb	r3, [r4, #14]
  68:	e5c4300f 	strb	r3, [r4, #15]
  6c:	e5c43010 	strb	r3, [r4, #16]
  70:	e5c43011 	strb	r3, [r4, #17]
  74:	e5c43012 	strb	r3, [r4, #18]
  78:	e5c43013 	strb	r3, [r4, #19]
  7c:	e5c43014 	strb	r3, [r4, #20]
  80:	e5c43015 	strb	r3, [r4, #21]
  84:	e5c43016 	strb	r3, [r4, #22]
  88:	e5c43017 	strb	r3, [r4, #23]
  8c:	e5c43018 	strb	r3, [r4, #24]
  90:	e5c43019 	strb	r3, [r4, #25]
  94:	e5c4301a 	strb	r3, [r4, #26]
  98:	e5c4301b 	strb	r3, [r4, #27]
  9c:	e5c4301c 	strb	r3, [r4, #28]
  a0:	e5c4301d 	strb	r3, [r4, #29]
  a4:	e5c4301e 	strb	r3, [r4, #30]
  a8:	e5c4301f 	strb	r3, [r4, #31]
  ac:	e8bd8070 	pop	{r4, r5, r6, pc}
  b0:	e59f3014 	ldr	r3, [pc, #20]	; cc <vexDeviceGpsRawGyroGet+0xcc>
  b4:	e1a00005 	mov	r0, r5
  b8:	e1a01004 	mov	r1, r4
  bc:	e8bd4070 	pop	{r4, r5, r6, lr}
  c0:	e59335dc 	ldr	r3, [r3, #1500]	; 0x5dc
  c4:	e12fff13 	bx	r3
  c8:	01000e43 	tsteq	r0, r3, asr #28
  cc:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGpsRawAccelGet:

00000000 <vexDeviceGpsRawAccelGet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	ebfffffe 	bl	0 <vexSystemVersion>
  14:	e59f30ac 	ldr	r3, [pc, #172]	; c8 <vexDeviceGpsRawAccelGet+0xc8>
  18:	e1500003 	cmp	r0, r3
  1c:	8a000023 	bhi	b0 <vexDeviceGpsRawAccelGet+0xb0>
  20:	e3540000 	cmp	r4, #0
  24:	08bd8070 	popeq	{r4, r5, r6, pc}
  28:	e3a03000 	mov	r3, #0
  2c:	e5c43000 	strb	r3, [r4]
  30:	e5c43001 	strb	r3, [r4, #1]
  34:	e5c43002 	strb	r3, [r4, #2]
  38:	e5c43003 	strb	r3, [r4, #3]
  3c:	e5c43004 	strb	r3, [r4, #4]
  40:	e5c43005 	strb	r3, [r4, #5]
  44:	e5c43006 	strb	r3, [r4, #6]
  48:	e5c43007 	strb	r3, [r4, #7]
  4c:	e5c43008 	strb	r3, [r4, #8]
  50:	e5c43009 	strb	r3, [r4, #9]
  54:	e5c4300a 	strb	r3, [r4, #10]
  58:	e5c4300b 	strb	r3, [r4, #11]
  5c:	e5c4300c 	strb	r3, [r4, #12]
  60:	e5c4300d 	strb	r3, [r4, #13]
  64:	e5c4300e 	strb	r3, [r4, #14]
  68:	e5c4300f 	strb	r3, [r4, #15]
  6c:	e5c43010 	strb	r3, [r4, #16]
  70:	e5c43011 	strb	r3, [r4, #17]
  74:	e5c43012 	strb	r3, [r4, #18]
  78:	e5c43013 	strb	r3, [r4, #19]
  7c:	e5c43014 	strb	r3, [r4, #20]
  80:	e5c43015 	strb	r3, [r4, #21]
  84:	e5c43016 	strb	r3, [r4, #22]
  88:	e5c43017 	strb	r3, [r4, #23]
  8c:	e5c43018 	strb	r3, [r4, #24]
  90:	e5c43019 	strb	r3, [r4, #25]
  94:	e5c4301a 	strb	r3, [r4, #26]
  98:	e5c4301b 	strb	r3, [r4, #27]
  9c:	e5c4301c 	strb	r3, [r4, #28]
  a0:	e5c4301d 	strb	r3, [r4, #29]
  a4:	e5c4301e 	strb	r3, [r4, #30]
  a8:	e5c4301f 	strb	r3, [r4, #31]
  ac:	e8bd8070 	pop	{r4, r5, r6, pc}
  b0:	e59f3014 	ldr	r3, [pc, #20]	; cc <vexDeviceGpsRawAccelGet+0xcc>
  b4:	e1a00005 	mov	r0, r5
  b8:	e1a01004 	mov	r1, r4
  bc:	e8bd4070 	pop	{r4, r5, r6, lr}
  c0:	e59335e0 	ldr	r3, [r3, #1504]	; 0x5e0
  c4:	e12fff13 	bx	r3
  c8:	01000e43 	tsteq	r0, r3, asr #28
  cc:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGpsStatusGet:

00000000 <vexDeviceGpsStatusGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	ebfffffe 	bl	0 <vexSystemVersion>
  10:	e59f3020 	ldr	r3, [pc, #32]	; 38 <vexDeviceGpsStatusGet+0x38>
  14:	e1500003 	cmp	r0, r3
  18:	9a000004 	bls	30 <vexDeviceGpsStatusGet+0x30>
  1c:	e59f3018 	ldr	r3, [pc, #24]	; 3c <vexDeviceGpsStatusGet+0x3c>
  20:	e1a00004 	mov	r0, r4
  24:	e8bd4010 	pop	{r4, lr}
  28:	e59335e4 	ldr	r3, [r3, #1508]	; 0x5e4
  2c:	e12fff13 	bx	r3
  30:	e30f0080 	movw	r0, #61568	; 0xf080
  34:	e8bd8010 	pop	{r4, pc}
  38:	01000e43 	tsteq	r0, r3, asr #28
  3c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGpsTemperatureGet:

00000000 <vexDeviceGpsTemperatureGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	ebfffffe 	bl	0 <vexSystemVersion>
  10:	e59f3024 	ldr	r3, [pc, #36]	; 3c <vexDeviceGpsTemperatureGet+0x3c>
  14:	e1500003 	cmp	r0, r3
  18:	9a000004 	bls	30 <vexDeviceGpsTemperatureGet+0x30>
  1c:	e59f301c 	ldr	r3, [pc, #28]	; 40 <vexDeviceGpsTemperatureGet+0x40>
  20:	e1a00004 	mov	r0, r4
  24:	e8bd4010 	pop	{r4, lr}
  28:	e59335e8 	ldr	r3, [r3, #1512]	; 0x5e8
  2c:	e12fff13 	bx	r3
  30:	e3a00000 	mov	r0, #0
  34:	e3a01000 	mov	r1, #0
  38:	e8bd8010 	pop	{r4, pc}
  3c:	01000e43 	tsteq	r0, r3, asr #28
  40:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGpsDebugGet:

00000000 <vexDeviceGpsDebugGet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a06000 	mov	r6, r0
   8:	e1a04001 	mov	r4, r1
   c:	e1a05002 	mov	r5, r2
  10:	ebfffffe 	bl	0 <__vex_function_prolog>
  14:	ebfffffe 	bl	0 <vexSystemVersion>
  18:	e59f30b8 	ldr	r3, [pc, #184]	; d8 <vexDeviceGpsDebugGet+0xd8>
  1c:	e1500003 	cmp	r0, r3
  20:	8a000023 	bhi	b4 <vexDeviceGpsDebugGet+0xb4>
  24:	e3540000 	cmp	r4, #0
  28:	e3a03000 	mov	r3, #0
  2c:	0a000027 	beq	d0 <vexDeviceGpsDebugGet+0xd0>
  30:	e5c43000 	strb	r3, [r4]
  34:	e5c43001 	strb	r3, [r4, #1]
  38:	e5c43002 	strb	r3, [r4, #2]
  3c:	e5c43003 	strb	r3, [r4, #3]
  40:	e5c43004 	strb	r3, [r4, #4]
  44:	e5c43005 	strb	r3, [r4, #5]
  48:	e5c43006 	strb	r3, [r4, #6]
  4c:	e5c43007 	strb	r3, [r4, #7]
  50:	e5c43008 	strb	r3, [r4, #8]
  54:	e5c43009 	strb	r3, [r4, #9]
  58:	e5c4300a 	strb	r3, [r4, #10]
  5c:	e5c4300b 	strb	r3, [r4, #11]
  60:	e5c4300c 	strb	r3, [r4, #12]
  64:	e5c4300d 	strb	r3, [r4, #13]
  68:	e5c4300e 	strb	r3, [r4, #14]
  6c:	e5c4300f 	strb	r3, [r4, #15]
  70:	e5c43010 	strb	r3, [r4, #16]
  74:	e5c43011 	strb	r3, [r4, #17]
  78:	e5c43012 	strb	r3, [r4, #18]
  7c:	e5c43013 	strb	r3, [r4, #19]
  80:	e5c43014 	strb	r3, [r4, #20]
  84:	e5c43015 	strb	r3, [r4, #21]
  88:	e5c43016 	strb	r3, [r4, #22]
  8c:	e5c43017 	strb	r3, [r4, #23]
  90:	e5c43018 	strb	r3, [r4, #24]
  94:	e5c43019 	strb	r3, [r4, #25]
  98:	e5c4301a 	strb	r3, [r4, #26]
  9c:	e5c4301b 	strb	r3, [r4, #27]
  a0:	e5c4301c 	strb	r3, [r4, #28]
  a4:	e5c4301d 	strb	r3, [r4, #29]
  a8:	e5c4301e 	strb	r3, [r4, #30]
  ac:	e5c4301f 	strb	r3, [r4, #31]
  b0:	ea000006 	b	d0 <vexDeviceGpsDebugGet+0xd0>
  b4:	e59f3020 	ldr	r3, [pc, #32]	; dc <vexDeviceGpsDebugGet+0xdc>
  b8:	e1a00006 	mov	r0, r6
  bc:	e1a01004 	mov	r1, r4
  c0:	e1a02005 	mov	r2, r5
  c4:	e8bd4070 	pop	{r4, r5, r6, lr}
  c8:	e59335ec 	ldr	r3, [r3, #1516]	; 0x5ec
  cc:	e12fff13 	bx	r3
  d0:	e3a00000 	mov	r0, #0
  d4:	e8bd8070 	pop	{r4, r5, r6, pc}
  d8:	01000e43 	tsteq	r0, r3, asr #28
  dc:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGpsModeSet:

00000000 <vexDeviceGpsModeSet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	ebfffffe 	bl	0 <vexSystemVersion>
  14:	e59f301c 	ldr	r3, [pc, #28]	; 38 <vexDeviceGpsModeSet+0x38>
  18:	e1500003 	cmp	r0, r3
  1c:	98bd8070 	popls	{r4, r5, r6, pc}
  20:	e59f3014 	ldr	r3, [pc, #20]	; 3c <vexDeviceGpsModeSet+0x3c>
  24:	e1a00005 	mov	r0, r5
  28:	e1a01004 	mov	r1, r4
  2c:	e8bd4070 	pop	{r4, r5, r6, lr}
  30:	e59335f0 	ldr	r3, [r3, #1520]	; 0x5f0
  34:	e12fff13 	bx	r3
  38:	01000e43 	tsteq	r0, r3, asr #28
  3c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGpsModeGet:

00000000 <vexDeviceGpsModeGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	ebfffffe 	bl	0 <vexSystemVersion>
  10:	e59f3020 	ldr	r3, [pc, #32]	; 38 <vexDeviceGpsModeGet+0x38>
  14:	e1500003 	cmp	r0, r3
  18:	9a000004 	bls	30 <vexDeviceGpsModeGet+0x30>
  1c:	e59f3018 	ldr	r3, [pc, #24]	; 3c <vexDeviceGpsModeGet+0x3c>
  20:	e1a00004 	mov	r0, r4
  24:	e8bd4010 	pop	{r4, lr}
  28:	e59335f4 	ldr	r3, [r3, #1524]	; 0x5f4
  2c:	e12fff13 	bx	r3
  30:	e3a00000 	mov	r0, #0
  34:	e8bd8010 	pop	{r4, pc}
  38:	01000e43 	tsteq	r0, r3, asr #28
  3c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGpsDataRateSet:

00000000 <vexDeviceGpsDataRateSet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	ebfffffe 	bl	0 <vexSystemVersion>
  14:	e59f301c 	ldr	r3, [pc, #28]	; 38 <vexDeviceGpsDataRateSet+0x38>
  18:	e1500003 	cmp	r0, r3
  1c:	98bd8070 	popls	{r4, r5, r6, pc}
  20:	e59f3014 	ldr	r3, [pc, #20]	; 3c <vexDeviceGpsDataRateSet+0x3c>
  24:	e1a00005 	mov	r0, r5
  28:	e1a01004 	mov	r1, r4
  2c:	e8bd4070 	pop	{r4, r5, r6, lr}
  30:	e59335f8 	ldr	r3, [r3, #1528]	; 0x5f8
  34:	e12fff13 	bx	r3
  38:	01000e43 	tsteq	r0, r3, asr #28
  3c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGpsOriginSet:

00000000 <vexDeviceGpsOriginSet>:
   0:	e92d4370 	push	{r4, r5, r6, r8, r9, lr}
   4:	e1a05003 	mov	r5, r3
   8:	e1a06000 	mov	r6, r0
   c:	e1a04002 	mov	r4, r2
  10:	e1cd81d8 	ldrd	r8, [sp, #24]
  14:	ebfffffe 	bl	0 <__vex_function_prolog>
  18:	ebfffffe 	bl	0 <vexSystemVersion>
  1c:	e59f3024 	ldr	r3, [pc, #36]	; 48 <vexDeviceGpsOriginSet+0x48>
  20:	e1500003 	cmp	r0, r3
  24:	98bd8370 	popls	{r4, r5, r6, r8, r9, pc}
  28:	e59f301c 	ldr	r3, [pc, #28]	; 4c <vexDeviceGpsOriginSet+0x4c>
  2c:	e1a00006 	mov	r0, r6
  30:	e1cd81f8 	strd	r8, [sp, #24]
  34:	e1a02004 	mov	r2, r4
  38:	e59315fc 	ldr	r1, [r3, #1532]	; 0x5fc
  3c:	e1a03005 	mov	r3, r5
  40:	e8bd4370 	pop	{r4, r5, r6, r8, r9, lr}
  44:	e12fff11 	bx	r1
  48:	01000e43 	tsteq	r0, r3, asr #28
  4c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGpsOriginGet:

00000000 <vexDeviceGpsOriginGet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a06000 	mov	r6, r0
   8:	e1a05001 	mov	r5, r1
   c:	e1a04002 	mov	r4, r2
  10:	ebfffffe 	bl	0 <__vex_function_prolog>
  14:	ebfffffe 	bl	0 <vexSystemVersion>
  18:	e59f3044 	ldr	r3, [pc, #68]	; 64 <vexDeviceGpsOriginGet+0x64>
  1c:	e1500003 	cmp	r0, r3
  20:	8a000008 	bhi	48 <vexDeviceGpsOriginGet+0x48>
  24:	e3550000 	cmp	r5, #0
  28:	13a02000 	movne	r2, #0
  2c:	13a03000 	movne	r3, #0
  30:	11c520f0 	strdne	r2, [r5]
  34:	e3540000 	cmp	r4, #0
  38:	13a02000 	movne	r2, #0
  3c:	13a03000 	movne	r3, #0
  40:	11c420f0 	strdne	r2, [r4]
  44:	e8bd8070 	pop	{r4, r5, r6, pc}
  48:	e59f3018 	ldr	r3, [pc, #24]	; 68 <vexDeviceGpsOriginGet+0x68>
  4c:	e1a00006 	mov	r0, r6
  50:	e1a01005 	mov	r1, r5
  54:	e1a02004 	mov	r2, r4
  58:	e8bd4070 	pop	{r4, r5, r6, lr}
  5c:	e5933600 	ldr	r3, [r3, #1536]	; 0x600
  60:	e12fff13 	bx	r3
  64:	01000e43 	tsteq	r0, r3, asr #28
  68:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGpsRotationSet:

00000000 <vexDeviceGpsRotationSet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05003 	mov	r5, r3
   8:	e1a06000 	mov	r6, r0
   c:	e1a04002 	mov	r4, r2
  10:	ebfffffe 	bl	0 <__vex_function_prolog>
  14:	ebfffffe 	bl	0 <vexSystemVersion>
  18:	e59f3020 	ldr	r3, [pc, #32]	; 40 <vexDeviceGpsRotationSet+0x40>
  1c:	e1500003 	cmp	r0, r3
  20:	98bd8070 	popls	{r4, r5, r6, pc}
  24:	e59f3018 	ldr	r3, [pc, #24]	; 44 <vexDeviceGpsRotationSet+0x44>
  28:	e1a00006 	mov	r0, r6
  2c:	e1a02004 	mov	r2, r4
  30:	e5931604 	ldr	r1, [r3, #1540]	; 0x604
  34:	e1a03005 	mov	r3, r5
  38:	e8bd4070 	pop	{r4, r5, r6, lr}
  3c:	e12fff11 	bx	r1
  40:	01000e43 	tsteq	r0, r3, asr #28
  44:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGpsRotationGet:

00000000 <vexDeviceGpsRotationGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	ebfffffe 	bl	0 <vexSystemVersion>
  10:	e59f3024 	ldr	r3, [pc, #36]	; 3c <vexDeviceGpsRotationGet+0x3c>
  14:	e1500003 	cmp	r0, r3
  18:	9a000004 	bls	30 <vexDeviceGpsRotationGet+0x30>
  1c:	e59f301c 	ldr	r3, [pc, #28]	; 40 <vexDeviceGpsRotationGet+0x40>
  20:	e1a00004 	mov	r0, r4
  24:	e8bd4010 	pop	{r4, lr}
  28:	e5933608 	ldr	r3, [r3, #1544]	; 0x608
  2c:	e12fff13 	bx	r3
  30:	e3a00000 	mov	r0, #0
  34:	e3a01000 	mov	r1, #0
  38:	e8bd8010 	pop	{r4, pc}
  3c:	01000e43 	tsteq	r0, r3, asr #28
  40:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGpsInitialPositionSet:

00000000 <vexDeviceGpsInitialPositionSet>:
   0:	e92d4f70 	push	{r4, r5, r6, r8, r9, sl, fp, lr}
   4:	e1a05003 	mov	r5, r3
   8:	e1a06000 	mov	r6, r0
   c:	e1a04002 	mov	r4, r2
  10:	e1cda2d0 	ldrd	sl, [sp, #32]
  14:	e1cd82d8 	ldrd	r8, [sp, #40]	; 0x28
  18:	ebfffffe 	bl	0 <__vex_function_prolog>
  1c:	ebfffffe 	bl	0 <vexSystemVersion>
  20:	e59f3028 	ldr	r3, [pc, #40]	; 50 <vexDeviceGpsInitialPositionSet+0x50>
  24:	e1500003 	cmp	r0, r3
  28:	98bd8f70 	popls	{r4, r5, r6, r8, r9, sl, fp, pc}
  2c:	e59f3020 	ldr	r3, [pc, #32]	; 54 <vexDeviceGpsInitialPositionSet+0x54>
  30:	e1a00006 	mov	r0, r6
  34:	e1cda2f0 	strd	sl, [sp, #32]
  38:	e1a02004 	mov	r2, r4
  3c:	e1cd82f8 	strd	r8, [sp, #40]	; 0x28
  40:	e593160c 	ldr	r1, [r3, #1548]	; 0x60c
  44:	e1a03005 	mov	r3, r5
  48:	e8bd4f70 	pop	{r4, r5, r6, r8, r9, sl, fp, lr}
  4c:	e12fff11 	bx	r1
  50:	01000e43 	tsteq	r0, r3, asr #28
  54:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGpsErrorGet:

00000000 <vexDeviceGpsErrorGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	ebfffffe 	bl	0 <vexSystemVersion>
  10:	e59f3024 	ldr	r3, [pc, #36]	; 3c <vexDeviceGpsErrorGet+0x3c>
  14:	e1500003 	cmp	r0, r3
  18:	9a000004 	bls	30 <vexDeviceGpsErrorGet+0x30>
  1c:	e59f301c 	ldr	r3, [pc, #28]	; 40 <vexDeviceGpsErrorGet+0x40>
  20:	e1a00004 	mov	r0, r4
  24:	e8bd4010 	pop	{r4, lr}
  28:	e5933614 	ldr	r3, [r3, #1556]	; 0x614
  2c:	e12fff13 	bx	r3
  30:	e3a00000 	mov	r0, #0
  34:	e3a01000 	mov	r1, #0
  38:	e8bd8010 	pop	{r4, pc}
  3c:	01000e43 	tsteq	r0, r3, asr #28
  40:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGpsTestDataSet:

00000000 <vexDeviceGpsTestDataSet>:
   0:	e92d4ff1 	push	{r0, r4, r5, r6, r7, r8, r9, sl, fp, lr}
   4:	e1a05003 	mov	r5, r3
   8:	e1a06000 	mov	r6, r0
   c:	e1a04002 	mov	r4, r2
  10:	e1cda2d8 	ldrd	sl, [sp, #40]	; 0x28
  14:	e1cd83d0 	ldrd	r8, [sp, #48]	; 0x30
  18:	e5dd7038 	ldrb	r7, [sp, #56]	; 0x38
  1c:	ebfffffe 	bl	0 <__vex_function_prolog>
  20:	ebfffffe 	bl	0 <vexSystemVersion>
  24:	e59f3038 	ldr	r3, [pc, #56]	; 64 <vexDeviceGpsTestDataSet+0x64>
  28:	e1500003 	cmp	r0, r3
  2c:	9a00000a 	bls	5c <vexDeviceGpsTestDataSet+0x5c>
  30:	e59f3030 	ldr	r3, [pc, #48]	; 68 <vexDeviceGpsTestDataSet+0x68>
  34:	e1a00006 	mov	r0, r6
  38:	e1cda2f8 	strd	sl, [sp, #40]	; 0x28
  3c:	e1a02004 	mov	r2, r4
  40:	e1cd83f0 	strd	r8, [sp, #48]	; 0x30
  44:	e58d7038 	str	r7, [sp, #56]	; 0x38
  48:	e5931610 	ldr	r1, [r3, #1552]	; 0x610
  4c:	e1a03005 	mov	r3, r5
  50:	e28dd004 	add	sp, sp, #4
  54:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
  58:	e12fff11 	bx	r1
  5c:	e28dd004 	add	sp, sp, #4
  60:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
  64:	01000e43 	tsteq	r0, r3, asr #28
  68:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceAicamReset:

00000000 <vexDeviceAicamReset>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	ebfffffe 	bl	0 <vexSystemVersion>
  10:	e59f3018 	ldr	r3, [pc, #24]	; 30 <vexDeviceAicamReset+0x30>
  14:	e1500003 	cmp	r0, r3
  18:	98bd8010 	popls	{r4, pc}
  1c:	e59f3010 	ldr	r3, [pc, #16]	; 34 <vexDeviceAicamReset+0x34>
  20:	e1a00004 	mov	r0, r4
  24:	e8bd4010 	pop	{r4, lr}
  28:	e5933b68 	ldr	r3, [r3, #2920]	; 0xb68
  2c:	e12fff13 	bx	r3
  30:	01010118 	tsteq	r1, r8, lsl r1
  34:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceAicamHeadingGet:

00000000 <vexDeviceAicamHeadingGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	ebfffffe 	bl	0 <vexSystemVersion>
  10:	e59f3024 	ldr	r3, [pc, #36]	; 3c <vexDeviceAicamHeadingGet+0x3c>
  14:	e1500003 	cmp	r0, r3
  18:	9a000004 	bls	30 <vexDeviceAicamHeadingGet+0x30>
  1c:	e59f301c 	ldr	r3, [pc, #28]	; 40 <vexDeviceAicamHeadingGet+0x40>
  20:	e1a00004 	mov	r0, r4
  24:	e8bd4010 	pop	{r4, lr}
  28:	e5933b6c 	ldr	r3, [r3, #2924]	; 0xb6c
  2c:	e12fff13 	bx	r3
  30:	e3a00000 	mov	r0, #0
  34:	e3a01000 	mov	r1, #0
  38:	e8bd8010 	pop	{r4, pc}
  3c:	01010118 	tsteq	r1, r8, lsl r1
  40:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceAicamDegreesGet:

00000000 <vexDeviceAicamDegreesGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	ebfffffe 	bl	0 <vexSystemVersion>
  10:	e59f3024 	ldr	r3, [pc, #36]	; 3c <vexDeviceAicamDegreesGet+0x3c>
  14:	e1500003 	cmp	r0, r3
  18:	9a000004 	bls	30 <vexDeviceAicamDegreesGet+0x30>
  1c:	e59f301c 	ldr	r3, [pc, #28]	; 40 <vexDeviceAicamDegreesGet+0x40>
  20:	e1a00004 	mov	r0, r4
  24:	e8bd4010 	pop	{r4, lr}
  28:	e5933b70 	ldr	r3, [r3, #2928]	; 0xb70
  2c:	e12fff13 	bx	r3
  30:	e3a00000 	mov	r0, #0
  34:	e3a01000 	mov	r1, #0
  38:	e8bd8010 	pop	{r4, pc}
  3c:	01010118 	tsteq	r1, r8, lsl r1
  40:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceAicamAttitudeGet:

00000000 <vexDeviceAicamAttitudeGet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a06000 	mov	r6, r0
   8:	e1a04001 	mov	r4, r1
   c:	e1a05002 	mov	r5, r2
  10:	ebfffffe 	bl	0 <__vex_function_prolog>
  14:	ebfffffe 	bl	0 <vexSystemVersion>
  18:	e59f3090 	ldr	r3, [pc, #144]	; b0 <vexDeviceAicamAttitudeGet+0xb0>
  1c:	e1500003 	cmp	r0, r3
  20:	8a00001b 	bhi	94 <vexDeviceAicamAttitudeGet+0x94>
  24:	e3540000 	cmp	r4, #0
  28:	08bd8070 	popeq	{r4, r5, r6, pc}
  2c:	e3a03000 	mov	r3, #0
  30:	e5c43000 	strb	r3, [r4]
  34:	e5c43001 	strb	r3, [r4, #1]
  38:	e5c43002 	strb	r3, [r4, #2]
  3c:	e5c43003 	strb	r3, [r4, #3]
  40:	e5c43004 	strb	r3, [r4, #4]
  44:	e5c43005 	strb	r3, [r4, #5]
  48:	e5c43006 	strb	r3, [r4, #6]
  4c:	e5c43007 	strb	r3, [r4, #7]
  50:	e5c43008 	strb	r3, [r4, #8]
  54:	e5c43009 	strb	r3, [r4, #9]
  58:	e5c4300a 	strb	r3, [r4, #10]
  5c:	e5c4300b 	strb	r3, [r4, #11]
  60:	e5c4300c 	strb	r3, [r4, #12]
  64:	e5c4300d 	strb	r3, [r4, #13]
  68:	e5c4300e 	strb	r3, [r4, #14]
  6c:	e5c4300f 	strb	r3, [r4, #15]
  70:	e5c43010 	strb	r3, [r4, #16]
  74:	e5c43011 	strb	r3, [r4, #17]
  78:	e5c43012 	strb	r3, [r4, #18]
  7c:	e5c43013 	strb	r3, [r4, #19]
  80:	e5c43014 	strb	r3, [r4, #20]
  84:	e5c43015 	strb	r3, [r4, #21]
  88:	e5c43016 	strb	r3, [r4, #22]
  8c:	e5c43017 	strb	r3, [r4, #23]
  90:	e8bd8070 	pop	{r4, r5, r6, pc}
  94:	e59f3018 	ldr	r3, [pc, #24]	; b4 <vexDeviceAicamAttitudeGet+0xb4>
  98:	e1a00006 	mov	r0, r6
  9c:	e1a01004 	mov	r1, r4
  a0:	e1a02005 	mov	r2, r5
  a4:	e8bd4070 	pop	{r4, r5, r6, lr}
  a8:	e5933b78 	ldr	r3, [r3, #2936]	; 0xb78
  ac:	e12fff13 	bx	r3
  b0:	01010118 	tsteq	r1, r8, lsl r1
  b4:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceAicamRawGyroGet:

00000000 <vexDeviceAicamRawGyroGet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	ebfffffe 	bl	0 <vexSystemVersion>
  14:	e59f30ac 	ldr	r3, [pc, #172]	; c8 <vexDeviceAicamRawGyroGet+0xc8>
  18:	e1500003 	cmp	r0, r3
  1c:	8a000023 	bhi	b0 <vexDeviceAicamRawGyroGet+0xb0>
  20:	e3540000 	cmp	r4, #0
  24:	08bd8070 	popeq	{r4, r5, r6, pc}
  28:	e3a03000 	mov	r3, #0
  2c:	e5c43000 	strb	r3, [r4]
  30:	e5c43001 	strb	r3, [r4, #1]
  34:	e5c43002 	strb	r3, [r4, #2]
  38:	e5c43003 	strb	r3, [r4, #3]
  3c:	e5c43004 	strb	r3, [r4, #4]
  40:	e5c43005 	strb	r3, [r4, #5]
  44:	e5c43006 	strb	r3, [r4, #6]
  48:	e5c43007 	strb	r3, [r4, #7]
  4c:	e5c43008 	strb	r3, [r4, #8]
  50:	e5c43009 	strb	r3, [r4, #9]
  54:	e5c4300a 	strb	r3, [r4, #10]
  58:	e5c4300b 	strb	r3, [r4, #11]
  5c:	e5c4300c 	strb	r3, [r4, #12]
  60:	e5c4300d 	strb	r3, [r4, #13]
  64:	e5c4300e 	strb	r3, [r4, #14]
  68:	e5c4300f 	strb	r3, [r4, #15]
  6c:	e5c43010 	strb	r3, [r4, #16]
  70:	e5c43011 	strb	r3, [r4, #17]
  74:	e5c43012 	strb	r3, [r4, #18]
  78:	e5c43013 	strb	r3, [r4, #19]
  7c:	e5c43014 	strb	r3, [r4, #20]
  80:	e5c43015 	strb	r3, [r4, #21]
  84:	e5c43016 	strb	r3, [r4, #22]
  88:	e5c43017 	strb	r3, [r4, #23]
  8c:	e5c43018 	strb	r3, [r4, #24]
  90:	e5c43019 	strb	r3, [r4, #25]
  94:	e5c4301a 	strb	r3, [r4, #26]
  98:	e5c4301b 	strb	r3, [r4, #27]
  9c:	e5c4301c 	strb	r3, [r4, #28]
  a0:	e5c4301d 	strb	r3, [r4, #29]
  a4:	e5c4301e 	strb	r3, [r4, #30]
  a8:	e5c4301f 	strb	r3, [r4, #31]
  ac:	e8bd8070 	pop	{r4, r5, r6, pc}
  b0:	e59f3014 	ldr	r3, [pc, #20]	; cc <vexDeviceAicamRawGyroGet+0xcc>
  b4:	e1a00005 	mov	r0, r5
  b8:	e1a01004 	mov	r1, r4
  bc:	e8bd4070 	pop	{r4, r5, r6, lr}
  c0:	e5933b7c 	ldr	r3, [r3, #2940]	; 0xb7c
  c4:	e12fff13 	bx	r3
  c8:	01010118 	tsteq	r1, r8, lsl r1
  cc:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceAicamRawAccelGet:

00000000 <vexDeviceAicamRawAccelGet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	ebfffffe 	bl	0 <vexSystemVersion>
  14:	e59f30ac 	ldr	r3, [pc, #172]	; c8 <vexDeviceAicamRawAccelGet+0xc8>
  18:	e1500003 	cmp	r0, r3
  1c:	8a000023 	bhi	b0 <vexDeviceAicamRawAccelGet+0xb0>
  20:	e3540000 	cmp	r4, #0
  24:	08bd8070 	popeq	{r4, r5, r6, pc}
  28:	e3a03000 	mov	r3, #0
  2c:	e5c43000 	strb	r3, [r4]
  30:	e5c43001 	strb	r3, [r4, #1]
  34:	e5c43002 	strb	r3, [r4, #2]
  38:	e5c43003 	strb	r3, [r4, #3]
  3c:	e5c43004 	strb	r3, [r4, #4]
  40:	e5c43005 	strb	r3, [r4, #5]
  44:	e5c43006 	strb	r3, [r4, #6]
  48:	e5c43007 	strb	r3, [r4, #7]
  4c:	e5c43008 	strb	r3, [r4, #8]
  50:	e5c43009 	strb	r3, [r4, #9]
  54:	e5c4300a 	strb	r3, [r4, #10]
  58:	e5c4300b 	strb	r3, [r4, #11]
  5c:	e5c4300c 	strb	r3, [r4, #12]
  60:	e5c4300d 	strb	r3, [r4, #13]
  64:	e5c4300e 	strb	r3, [r4, #14]
  68:	e5c4300f 	strb	r3, [r4, #15]
  6c:	e5c43010 	strb	r3, [r4, #16]
  70:	e5c43011 	strb	r3, [r4, #17]
  74:	e5c43012 	strb	r3, [r4, #18]
  78:	e5c43013 	strb	r3, [r4, #19]
  7c:	e5c43014 	strb	r3, [r4, #20]
  80:	e5c43015 	strb	r3, [r4, #21]
  84:	e5c43016 	strb	r3, [r4, #22]
  88:	e5c43017 	strb	r3, [r4, #23]
  8c:	e5c43018 	strb	r3, [r4, #24]
  90:	e5c43019 	strb	r3, [r4, #25]
  94:	e5c4301a 	strb	r3, [r4, #26]
  98:	e5c4301b 	strb	r3, [r4, #27]
  9c:	e5c4301c 	strb	r3, [r4, #28]
  a0:	e5c4301d 	strb	r3, [r4, #29]
  a4:	e5c4301e 	strb	r3, [r4, #30]
  a8:	e5c4301f 	strb	r3, [r4, #31]
  ac:	e8bd8070 	pop	{r4, r5, r6, pc}
  b0:	e59f3014 	ldr	r3, [pc, #20]	; cc <vexDeviceAicamRawAccelGet+0xcc>
  b4:	e1a00005 	mov	r0, r5
  b8:	e1a01004 	mov	r1, r4
  bc:	e8bd4070 	pop	{r4, r5, r6, lr}
  c0:	e5933b80 	ldr	r3, [r3, #2944]	; 0xb80
  c4:	e12fff13 	bx	r3
  c8:	01010118 	tsteq	r1, r8, lsl r1
  cc:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceAicamStatusGet:

00000000 <vexDeviceAicamStatusGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	ebfffffe 	bl	0 <vexSystemVersion>
  10:	e59f3020 	ldr	r3, [pc, #32]	; 38 <vexDeviceAicamStatusGet+0x38>
  14:	e1500003 	cmp	r0, r3
  18:	9a000004 	bls	30 <vexDeviceAicamStatusGet+0x30>
  1c:	e59f3018 	ldr	r3, [pc, #24]	; 3c <vexDeviceAicamStatusGet+0x3c>
  20:	e1a00004 	mov	r0, r4
  24:	e8bd4010 	pop	{r4, lr}
  28:	e5933b84 	ldr	r3, [r3, #2948]	; 0xb84
  2c:	e12fff13 	bx	r3
  30:	e30f0080 	movw	r0, #61568	; 0xf080
  34:	e8bd8010 	pop	{r4, pc}
  38:	01010118 	tsteq	r1, r8, lsl r1
  3c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceAicamTemperatureGet:

00000000 <vexDeviceAicamTemperatureGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	ebfffffe 	bl	0 <vexSystemVersion>
  10:	e59f3024 	ldr	r3, [pc, #36]	; 3c <vexDeviceAicamTemperatureGet+0x3c>
  14:	e1500003 	cmp	r0, r3
  18:	9a000004 	bls	30 <vexDeviceAicamTemperatureGet+0x30>
  1c:	e59f301c 	ldr	r3, [pc, #28]	; 40 <vexDeviceAicamTemperatureGet+0x40>
  20:	e1a00004 	mov	r0, r4
  24:	e8bd4010 	pop	{r4, lr}
  28:	e5933b88 	ldr	r3, [r3, #2952]	; 0xb88
  2c:	e12fff13 	bx	r3
  30:	e3a00000 	mov	r0, #0
  34:	e3a01000 	mov	r1, #0
  38:	e8bd8010 	pop	{r4, pc}
  3c:	01010118 	tsteq	r1, r8, lsl r1
  40:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceAicamDebugGet:

00000000 <vexDeviceAicamDebugGet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a06000 	mov	r6, r0
   8:	e1a04001 	mov	r4, r1
   c:	e1a05002 	mov	r5, r2
  10:	ebfffffe 	bl	0 <__vex_function_prolog>
  14:	ebfffffe 	bl	0 <vexSystemVersion>
  18:	e59f30b8 	ldr	r3, [pc, #184]	; d8 <vexDeviceAicamDebugGet+0xd8>
  1c:	e1500003 	cmp	r0, r3
  20:	8a000023 	bhi	b4 <vexDeviceAicamDebugGet+0xb4>
  24:	e3540000 	cmp	r4, #0
  28:	e3a03000 	mov	r3, #0
  2c:	0a000027 	beq	d0 <vexDeviceAicamDebugGet+0xd0>
  30:	e5c43000 	strb	r3, [r4]
  34:	e5c43001 	strb	r3, [r4, #1]
  38:	e5c43002 	strb	r3, [r4, #2]
  3c:	e5c43003 	strb	r3, [r4, #3]
  40:	e5c43004 	strb	r3, [r4, #4]
  44:	e5c43005 	strb	r3, [r4, #5]
  48:	e5c43006 	strb	r3, [r4, #6]
  4c:	e5c43007 	strb	r3, [r4, #7]
  50:	e5c43008 	strb	r3, [r4, #8]
  54:	e5c43009 	strb	r3, [r4, #9]
  58:	e5c4300a 	strb	r3, [r4, #10]
  5c:	e5c4300b 	strb	r3, [r4, #11]
  60:	e5c4300c 	strb	r3, [r4, #12]
  64:	e5c4300d 	strb	r3, [r4, #13]
  68:	e5c4300e 	strb	r3, [r4, #14]
  6c:	e5c4300f 	strb	r3, [r4, #15]
  70:	e5c43010 	strb	r3, [r4, #16]
  74:	e5c43011 	strb	r3, [r4, #17]
  78:	e5c43012 	strb	r3, [r4, #18]
  7c:	e5c43013 	strb	r3, [r4, #19]
  80:	e5c43014 	strb	r3, [r4, #20]
  84:	e5c43015 	strb	r3, [r4, #21]
  88:	e5c43016 	strb	r3, [r4, #22]
  8c:	e5c43017 	strb	r3, [r4, #23]
  90:	e5c43018 	strb	r3, [r4, #24]
  94:	e5c43019 	strb	r3, [r4, #25]
  98:	e5c4301a 	strb	r3, [r4, #26]
  9c:	e5c4301b 	strb	r3, [r4, #27]
  a0:	e5c4301c 	strb	r3, [r4, #28]
  a4:	e5c4301d 	strb	r3, [r4, #29]
  a8:	e5c4301e 	strb	r3, [r4, #30]
  ac:	e5c4301f 	strb	r3, [r4, #31]
  b0:	ea000006 	b	d0 <vexDeviceAicamDebugGet+0xd0>
  b4:	e59f3020 	ldr	r3, [pc, #32]	; dc <vexDeviceAicamDebugGet+0xdc>
  b8:	e1a00006 	mov	r0, r6
  bc:	e1a01004 	mov	r1, r4
  c0:	e1a02005 	mov	r2, r5
  c4:	e8bd4070 	pop	{r4, r5, r6, lr}
  c8:	e5933b8c 	ldr	r3, [r3, #2956]	; 0xb8c
  cc:	e12fff13 	bx	r3
  d0:	e3a00000 	mov	r0, #0
  d4:	e8bd8070 	pop	{r4, r5, r6, pc}
  d8:	01010118 	tsteq	r1, r8, lsl r1
  dc:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceAicamModeSet:

00000000 <vexDeviceAicamModeSet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	ebfffffe 	bl	0 <vexSystemVersion>
  14:	e59f301c 	ldr	r3, [pc, #28]	; 38 <vexDeviceAicamModeSet+0x38>
  18:	e1500003 	cmp	r0, r3
  1c:	98bd8070 	popls	{r4, r5, r6, pc}
  20:	e59f3014 	ldr	r3, [pc, #20]	; 3c <vexDeviceAicamModeSet+0x3c>
  24:	e1a00005 	mov	r0, r5
  28:	e1a01004 	mov	r1, r4
  2c:	e8bd4070 	pop	{r4, r5, r6, lr}
  30:	e5933b90 	ldr	r3, [r3, #2960]	; 0xb90
  34:	e12fff13 	bx	r3
  38:	01010118 	tsteq	r1, r8, lsl r1
  3c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceAicamModeGet:

00000000 <vexDeviceAicamModeGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	ebfffffe 	bl	0 <vexSystemVersion>
  10:	e59f3020 	ldr	r3, [pc, #32]	; 38 <vexDeviceAicamModeGet+0x38>
  14:	e1500003 	cmp	r0, r3
  18:	9a000004 	bls	30 <vexDeviceAicamModeGet+0x30>
  1c:	e59f3018 	ldr	r3, [pc, #24]	; 3c <vexDeviceAicamModeGet+0x3c>
  20:	e1a00004 	mov	r0, r4
  24:	e8bd4010 	pop	{r4, lr}
  28:	e5933b94 	ldr	r3, [r3, #2964]	; 0xb94
  2c:	e12fff13 	bx	r3
  30:	e3a00000 	mov	r0, #0
  34:	e8bd8010 	pop	{r4, pc}
  38:	01010118 	tsteq	r1, r8, lsl r1
  3c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceAicamDataRateSet:

00000000 <vexDeviceAicamDataRateSet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	ebfffffe 	bl	0 <vexSystemVersion>
  14:	e59f301c 	ldr	r3, [pc, #28]	; 38 <vexDeviceAicamDataRateSet+0x38>
  18:	e1500003 	cmp	r0, r3
  1c:	98bd8070 	popls	{r4, r5, r6, pc}
  20:	e59f3014 	ldr	r3, [pc, #20]	; 3c <vexDeviceAicamDataRateSet+0x3c>
  24:	e1a00005 	mov	r0, r5
  28:	e1a01004 	mov	r1, r4
  2c:	e8bd4070 	pop	{r4, r5, r6, lr}
  30:	e5933b98 	ldr	r3, [r3, #2968]	; 0xb98
  34:	e12fff13 	bx	r3
  38:	01010118 	tsteq	r1, r8, lsl r1
  3c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceAicamObjectCountGet:

00000000 <vexDeviceAicamObjectCountGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	ebfffffe 	bl	0 <vexSystemVersion>
  10:	e59f3020 	ldr	r3, [pc, #32]	; 38 <vexDeviceAicamObjectCountGet+0x38>
  14:	e1500003 	cmp	r0, r3
  18:	9a000004 	bls	30 <vexDeviceAicamObjectCountGet+0x30>
  1c:	e59f3018 	ldr	r3, [pc, #24]	; 3c <vexDeviceAicamObjectCountGet+0x3c>
  20:	e1a00004 	mov	r0, r4
  24:	e8bd4010 	pop	{r4, lr}
  28:	e5933b9c 	ldr	r3, [r3, #2972]	; 0xb9c
  2c:	e12fff13 	bx	r3
  30:	e3a00000 	mov	r0, #0
  34:	e8bd8010 	pop	{r4, pc}
  38:	01010118 	tsteq	r1, r8, lsl r1
  3c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceAicamObjectGet:

00000000 <vexDeviceAicamObjectGet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a06000 	mov	r6, r0
   8:	e1a05001 	mov	r5, r1
   c:	e1a04002 	mov	r4, r2
  10:	ebfffffe 	bl	0 <__vex_function_prolog>
  14:	ebfffffe 	bl	0 <vexSystemVersion>
  18:	e59f3028 	ldr	r3, [pc, #40]	; 48 <vexDeviceAicamObjectGet+0x48>
  1c:	e1500003 	cmp	r0, r3
  20:	9a000006 	bls	40 <vexDeviceAicamObjectGet+0x40>
  24:	e59f3020 	ldr	r3, [pc, #32]	; 4c <vexDeviceAicamObjectGet+0x4c>
  28:	e1a00006 	mov	r0, r6
  2c:	e1a01005 	mov	r1, r5
  30:	e1a02004 	mov	r2, r4
  34:	e8bd4070 	pop	{r4, r5, r6, lr}
  38:	e5933ba0 	ldr	r3, [r3, #2976]	; 0xba0
  3c:	e12fff13 	bx	r3
  40:	e3a00000 	mov	r0, #0
  44:	e8bd8070 	pop	{r4, r5, r6, pc}
  48:	01010118 	tsteq	r1, r8, lsl r1
  4c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceAicamWriteChar:

00000000 <vexDeviceAicamWriteChar>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceAicamWriteChar+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e5933ba4 	ldr	r3, [r3, #2980]	; 0xba4
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceAicamWriteFree:

00000000 <vexDeviceAicamWriteFree>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceAicamWriteFree+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933ba8 	ldr	r3, [r3, #2984]	; 0xba8
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceAicamTransmit:

00000000 <vexDeviceAicamTransmit>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a06000 	mov	r6, r0
   8:	e1a05001 	mov	r5, r1
   c:	e1a04002 	mov	r4, r2
  10:	ebfffffe 	bl	0 <__vex_function_prolog>
  14:	e59f3014 	ldr	r3, [pc, #20]	; 30 <vexDeviceAicamTransmit+0x30>
  18:	e1a00006 	mov	r0, r6
  1c:	e1a01005 	mov	r1, r5
  20:	e1a02004 	mov	r2, r4
  24:	e5933bac 	ldr	r3, [r3, #2988]	; 0xbac
  28:	e8bd4070 	pop	{r4, r5, r6, lr}
  2c:	e12fff13 	bx	r3
  30:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceAicamReadChar:

00000000 <vexDeviceAicamReadChar>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceAicamReadChar+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933bb0 	ldr	r3, [r3, #2992]	; 0xbb0
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceAicamPeekChar:

00000000 <vexDeviceAicamPeekChar>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceAicamPeekChar+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933bb4 	ldr	r3, [r3, #2996]	; 0xbb4
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceAicamReceiveAvail:

00000000 <vexDeviceAicamReceiveAvail>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceAicamReceiveAvail+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933bb8 	ldr	r3, [r3, #3000]	; 0xbb8
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceAicamReceive:

00000000 <vexDeviceAicamReceive>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a06000 	mov	r6, r0
   8:	e1a05001 	mov	r5, r1
   c:	e1a04002 	mov	r4, r2
  10:	ebfffffe 	bl	0 <__vex_function_prolog>
  14:	e59f3014 	ldr	r3, [pc, #20]	; 30 <vexDeviceAicamReceive+0x30>
  18:	e1a00006 	mov	r0, r6
  1c:	e1a01005 	mov	r1, r5
  20:	e1a02004 	mov	r2, r4
  24:	e5933bbc 	ldr	r3, [r3, #3004]	; 0xbbc
  28:	e8bd4070 	pop	{r4, r5, r6, lr}
  2c:	e12fff13 	bx	r3
  30:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceAicamFlush:

00000000 <vexDeviceAicamFlush>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceAicamFlush+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933bc0 	ldr	r3, [r3, #3008]	; 0xbc0
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDisplayOffsetSet:

00000000 <vexDisplayOffsetSet>:
   0:	e59f300c 	ldr	r3, [pc, #12]	; 14 <vexDisplayOffsetSet+0x14>
   4:	e5830000 	str	r0, [r3]
   8:	e59f3008 	ldr	r3, [pc, #8]	; 18 <vexDisplayOffsetSet+0x18>
   c:	e5831000 	str	r1, [r3]
  10:	e12fff1e 	bx	lr
	...

Disassembly of section .text.vexDisplayForegroundColor:

00000000 <vexDisplayForegroundColor>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDisplayForegroundColor+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933640 	ldr	r3, [r3, #1600]	; 0x640
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDisplayBackgroundColor:

00000000 <vexDisplayBackgroundColor>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDisplayBackgroundColor+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933644 	ldr	r3, [r3, #1604]	; 0x644
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDisplayForegroundColorGet:

00000000 <vexDisplayForegroundColorGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	ebfffffe 	bl	0 <__vex_function_prolog>
   8:	e59f3008 	ldr	r3, [pc, #8]	; 18 <vexDisplayForegroundColorGet+0x18>
   c:	e8bd4010 	pop	{r4, lr}
  10:	e59336b8 	ldr	r3, [r3, #1720]	; 0x6b8
  14:	e12fff13 	bx	r3
  18:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDisplayBackgroundColorGet:

00000000 <vexDisplayBackgroundColorGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	ebfffffe 	bl	0 <__vex_function_prolog>
   8:	e59f3008 	ldr	r3, [pc, #8]	; 18 <vexDisplayBackgroundColorGet+0x18>
   c:	e8bd4010 	pop	{r4, lr}
  10:	e59336bc 	ldr	r3, [r3, #1724]	; 0x6bc
  14:	e12fff13 	bx	r3
  18:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDisplayErase:

00000000 <vexDisplayErase>:
   0:	e92d4010 	push	{r4, lr}
   4:	ebfffffe 	bl	0 <__vex_function_prolog>
   8:	e59f3008 	ldr	r3, [pc, #8]	; 18 <vexDisplayErase+0x18>
   c:	e8bd4010 	pop	{r4, lr}
  10:	e5933648 	ldr	r3, [r3, #1608]	; 0x648
  14:	e12fff13 	bx	r3
  18:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDisplayScroll:

00000000 <vexDisplayScroll>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDisplayScroll+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e593364c 	ldr	r3, [r3, #1612]	; 0x64c
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDisplayScrollRect:

00000000 <vexDisplayScrollRect>:
   0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   4:	e1a04003 	mov	r4, r3
   8:	e1a07000 	mov	r7, r0
   c:	e1a06001 	mov	r6, r1
  10:	e1a05002 	mov	r5, r2
  14:	e59d8018 	ldr	r8, [sp, #24]
  18:	ebfffffe 	bl	0 <__vex_function_prolog>
  1c:	e59f3028 	ldr	r3, [pc, #40]	; 4c <vexDisplayScrollRect+0x4c>
  20:	e1a00007 	mov	r0, r7
  24:	e1a02005 	mov	r2, r5
  28:	e593c000 	ldr	ip, [r3]
  2c:	e59f301c 	ldr	r3, [pc, #28]	; 50 <vexDisplayScrollRect+0x50>
  30:	e58d8018 	str	r8, [sp, #24]
  34:	e086100c 	add	r1, r6, ip
  38:	e593e650 	ldr	lr, [r3, #1616]	; 0x650
  3c:	e084300c 	add	r3, r4, ip
  40:	e1a0c00e 	mov	ip, lr
  44:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
  48:	e12fff1c 	bx	ip
  4c:	00000000 	andeq	r0, r0, r0
  50:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDisplayCopyRect:

00000000 <vexDisplayCopyRect>:
   0:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
   4:	e1a04003 	mov	r4, r3
   8:	e1a07000 	mov	r7, r0
   c:	e1a06001 	mov	r6, r1
  10:	e1a05002 	mov	r5, r2
  14:	e59d9020 	ldr	r9, [sp, #32]
  18:	e59d8024 	ldr	r8, [sp, #36]	; 0x24
  1c:	ebfffffe 	bl	0 <__vex_function_prolog>
  20:	e59f302c 	ldr	r3, [pc, #44]	; 54 <vexDisplayCopyRect+0x54>
  24:	e1a00007 	mov	r0, r7
  28:	e1a02005 	mov	r2, r5
  2c:	e593c000 	ldr	ip, [r3]
  30:	e59f3020 	ldr	r3, [pc, #32]	; 58 <vexDisplayCopyRect+0x58>
  34:	e58d9020 	str	r9, [sp, #32]
  38:	e086100c 	add	r1, r6, ip
  3c:	e58d8024 	str	r8, [sp, #36]	; 0x24
  40:	e593e654 	ldr	lr, [r3, #1620]	; 0x654
  44:	e084300c 	add	r3, r4, ip
  48:	e1a0c00e 	mov	ip, lr
  4c:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
  50:	e12fff1c 	bx	ip
  54:	00000000 	andeq	r0, r0, r0
  58:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDisplayPixelSet:

00000000 <vexDisplayPixelSet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a04001 	mov	r4, r1
   8:	e1a05000 	mov	r5, r0
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3018 	ldr	r3, [pc, #24]	; 30 <vexDisplayPixelSet+0x30>
  14:	e1a00005 	mov	r0, r5
  18:	e5931000 	ldr	r1, [r3]
  1c:	e59f3010 	ldr	r3, [pc, #16]	; 34 <vexDisplayPixelSet+0x34>
  20:	e0841001 	add	r1, r4, r1
  24:	e8bd4070 	pop	{r4, r5, r6, lr}
  28:	e5933658 	ldr	r3, [r3, #1624]	; 0x658
  2c:	e12fff13 	bx	r3
  30:	00000000 	andeq	r0, r0, r0
  34:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDisplayPixelClear:

00000000 <vexDisplayPixelClear>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a04001 	mov	r4, r1
   8:	e1a05000 	mov	r5, r0
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3018 	ldr	r3, [pc, #24]	; 30 <vexDisplayPixelClear+0x30>
  14:	e1a00005 	mov	r0, r5
  18:	e5931000 	ldr	r1, [r3]
  1c:	e59f3010 	ldr	r3, [pc, #16]	; 34 <vexDisplayPixelClear+0x34>
  20:	e0841001 	add	r1, r4, r1
  24:	e8bd4070 	pop	{r4, r5, r6, lr}
  28:	e593365c 	ldr	r3, [r3, #1628]	; 0x65c
  2c:	e12fff13 	bx	r3
  30:	00000000 	andeq	r0, r0, r0
  34:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDisplayLineDraw:

00000000 <vexDisplayLineDraw>:
   0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   4:	e1a04003 	mov	r4, r3
   8:	e1a07000 	mov	r7, r0
   c:	e1a06001 	mov	r6, r1
  10:	e1a05002 	mov	r5, r2
  14:	ebfffffe 	bl	0 <__vex_function_prolog>
  18:	e59f3024 	ldr	r3, [pc, #36]	; 44 <vexDisplayLineDraw+0x44>
  1c:	e1a00007 	mov	r0, r7
  20:	e1a02005 	mov	r2, r5
  24:	e593c000 	ldr	ip, [r3]
  28:	e59f3018 	ldr	r3, [pc, #24]	; 48 <vexDisplayLineDraw+0x48>
  2c:	e086100c 	add	r1, r6, ip
  30:	e593e660 	ldr	lr, [r3, #1632]	; 0x660
  34:	e084300c 	add	r3, r4, ip
  38:	e1a0c00e 	mov	ip, lr
  3c:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
  40:	e12fff1c 	bx	ip
  44:	00000000 	andeq	r0, r0, r0
  48:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDisplayLineClear:

00000000 <vexDisplayLineClear>:
   0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   4:	e1a04003 	mov	r4, r3
   8:	e1a07000 	mov	r7, r0
   c:	e1a06001 	mov	r6, r1
  10:	e1a05002 	mov	r5, r2
  14:	ebfffffe 	bl	0 <__vex_function_prolog>
  18:	e59f3024 	ldr	r3, [pc, #36]	; 44 <vexDisplayLineClear+0x44>
  1c:	e1a00007 	mov	r0, r7
  20:	e1a02005 	mov	r2, r5
  24:	e593c000 	ldr	ip, [r3]
  28:	e59f3018 	ldr	r3, [pc, #24]	; 48 <vexDisplayLineClear+0x48>
  2c:	e086100c 	add	r1, r6, ip
  30:	e593e664 	ldr	lr, [r3, #1636]	; 0x664
  34:	e084300c 	add	r3, r4, ip
  38:	e1a0c00e 	mov	ip, lr
  3c:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
  40:	e12fff1c 	bx	ip
  44:	00000000 	andeq	r0, r0, r0
  48:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDisplayRectDraw:

00000000 <vexDisplayRectDraw>:
   0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   4:	e1a04003 	mov	r4, r3
   8:	e1a07000 	mov	r7, r0
   c:	e1a06001 	mov	r6, r1
  10:	e1a05002 	mov	r5, r2
  14:	ebfffffe 	bl	0 <__vex_function_prolog>
  18:	e59f3024 	ldr	r3, [pc, #36]	; 44 <vexDisplayRectDraw+0x44>
  1c:	e1a00007 	mov	r0, r7
  20:	e1a02005 	mov	r2, r5
  24:	e593c000 	ldr	ip, [r3]
  28:	e59f3018 	ldr	r3, [pc, #24]	; 48 <vexDisplayRectDraw+0x48>
  2c:	e086100c 	add	r1, r6, ip
  30:	e593e668 	ldr	lr, [r3, #1640]	; 0x668
  34:	e084300c 	add	r3, r4, ip
  38:	e1a0c00e 	mov	ip, lr
  3c:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
  40:	e12fff1c 	bx	ip
  44:	00000000 	andeq	r0, r0, r0
  48:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDisplayRectClear:

00000000 <vexDisplayRectClear>:
   0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   4:	e1a04003 	mov	r4, r3
   8:	e1a07000 	mov	r7, r0
   c:	e1a06001 	mov	r6, r1
  10:	e1a05002 	mov	r5, r2
  14:	ebfffffe 	bl	0 <__vex_function_prolog>
  18:	e59f3024 	ldr	r3, [pc, #36]	; 44 <vexDisplayRectClear+0x44>
  1c:	e1a00007 	mov	r0, r7
  20:	e1a02005 	mov	r2, r5
  24:	e593c000 	ldr	ip, [r3]
  28:	e59f3018 	ldr	r3, [pc, #24]	; 48 <vexDisplayRectClear+0x48>
  2c:	e086100c 	add	r1, r6, ip
  30:	e593e66c 	ldr	lr, [r3, #1644]	; 0x66c
  34:	e084300c 	add	r3, r4, ip
  38:	e1a0c00e 	mov	ip, lr
  3c:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
  40:	e12fff1c 	bx	ip
  44:	00000000 	andeq	r0, r0, r0
  48:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDisplayRectFill:

00000000 <vexDisplayRectFill>:
   0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   4:	e1a04003 	mov	r4, r3
   8:	e1a07000 	mov	r7, r0
   c:	e1a06001 	mov	r6, r1
  10:	e1a05002 	mov	r5, r2
  14:	ebfffffe 	bl	0 <__vex_function_prolog>
  18:	e59f3024 	ldr	r3, [pc, #36]	; 44 <vexDisplayRectFill+0x44>
  1c:	e1a00007 	mov	r0, r7
  20:	e1a02005 	mov	r2, r5
  24:	e593c000 	ldr	ip, [r3]
  28:	e59f3018 	ldr	r3, [pc, #24]	; 48 <vexDisplayRectFill+0x48>
  2c:	e086100c 	add	r1, r6, ip
  30:	e593e670 	ldr	lr, [r3, #1648]	; 0x670
  34:	e084300c 	add	r3, r4, ip
  38:	e1a0c00e 	mov	ip, lr
  3c:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
  40:	e12fff1c 	bx	ip
  44:	00000000 	andeq	r0, r0, r0
  48:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDisplayCircleDraw:

00000000 <vexDisplayCircleDraw>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05001 	mov	r5, r1
   8:	e1a06000 	mov	r6, r0
   c:	e1a04002 	mov	r4, r2
  10:	ebfffffe 	bl	0 <__vex_function_prolog>
  14:	e59f301c 	ldr	r3, [pc, #28]	; 38 <vexDisplayCircleDraw+0x38>
  18:	e1a00006 	mov	r0, r6
  1c:	e1a02004 	mov	r2, r4
  20:	e5931000 	ldr	r1, [r3]
  24:	e59f3010 	ldr	r3, [pc, #16]	; 3c <vexDisplayCircleDraw+0x3c>
  28:	e0851001 	add	r1, r5, r1
  2c:	e8bd4070 	pop	{r4, r5, r6, lr}
  30:	e5933674 	ldr	r3, [r3, #1652]	; 0x674
  34:	e12fff13 	bx	r3
  38:	00000000 	andeq	r0, r0, r0
  3c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDisplayCircleClear:

00000000 <vexDisplayCircleClear>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05001 	mov	r5, r1
   8:	e1a06000 	mov	r6, r0
   c:	e1a04002 	mov	r4, r2
  10:	ebfffffe 	bl	0 <__vex_function_prolog>
  14:	e59f301c 	ldr	r3, [pc, #28]	; 38 <vexDisplayCircleClear+0x38>
  18:	e1a00006 	mov	r0, r6
  1c:	e1a02004 	mov	r2, r4
  20:	e5931000 	ldr	r1, [r3]
  24:	e59f3010 	ldr	r3, [pc, #16]	; 3c <vexDisplayCircleClear+0x3c>
  28:	e0851001 	add	r1, r5, r1
  2c:	e8bd4070 	pop	{r4, r5, r6, lr}
  30:	e5933678 	ldr	r3, [r3, #1656]	; 0x678
  34:	e12fff13 	bx	r3
  38:	00000000 	andeq	r0, r0, r0
  3c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDisplayCircleFill:

00000000 <vexDisplayCircleFill>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05001 	mov	r5, r1
   8:	e1a06000 	mov	r6, r0
   c:	e1a04002 	mov	r4, r2
  10:	ebfffffe 	bl	0 <__vex_function_prolog>
  14:	e59f301c 	ldr	r3, [pc, #28]	; 38 <vexDisplayCircleFill+0x38>
  18:	e1a00006 	mov	r0, r6
  1c:	e1a02004 	mov	r2, r4
  20:	e5931000 	ldr	r1, [r3]
  24:	e59f3010 	ldr	r3, [pc, #16]	; 3c <vexDisplayCircleFill+0x3c>
  28:	e0851001 	add	r1, r5, r1
  2c:	e8bd4070 	pop	{r4, r5, r6, lr}
  30:	e593367c 	ldr	r3, [r3, #1660]	; 0x67c
  34:	e12fff13 	bx	r3
  38:	00000000 	andeq	r0, r0, r0
  3c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDisplayPrintf:

00000000 <vexDisplayPrintf>:
   0:	e52d3004 	push	{r3}		; (str r3, [sp, #-4]!)
   4:	e92d4070 	push	{r4, r5, r6, lr}
   8:	e24dd014 	sub	sp, sp, #20
   c:	e1a05001 	mov	r5, r1
  10:	e1a04002 	mov	r4, r2
  14:	e28d3028 	add	r3, sp, #40	; 0x28
  18:	e1a06000 	mov	r6, r0
  1c:	e58d300c 	str	r3, [sp, #12]
  20:	ebfffffe 	bl	0 <__vex_function_prolog>
  24:	e59d200c 	ldr	r2, [sp, #12]
  28:	e1a00006 	mov	r0, r6
  2c:	e59f302c 	ldr	r3, [pc, #44]	; 60 <vexDisplayPrintf+0x60>
  30:	e5931000 	ldr	r1, [r3]
  34:	e58d2000 	str	r2, [sp]
  38:	e59f2024 	ldr	r2, [pc, #36]	; 64 <vexDisplayPrintf+0x64>
  3c:	e0851001 	add	r1, r5, r1
  40:	e59d3024 	ldr	r3, [sp, #36]	; 0x24
  44:	e592c680 	ldr	ip, [r2, #1664]	; 0x680
  48:	e1a02004 	mov	r2, r4
  4c:	e12fff3c 	blx	ip
  50:	e28dd014 	add	sp, sp, #20
  54:	e8bd4070 	pop	{r4, r5, r6, lr}
  58:	e28dd004 	add	sp, sp, #4
  5c:	e12fff1e 	bx	lr
  60:	00000000 	andeq	r0, r0, r0
  64:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDisplayVPrintf:

00000000 <vexDisplayVPrintf>:
   0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   4:	e1a06001 	mov	r6, r1
   8:	e1a05002 	mov	r5, r2
   c:	e1a04003 	mov	r4, r3
  10:	e1a07000 	mov	r7, r0
  14:	e59d8018 	ldr	r8, [sp, #24]
  18:	ebfffffe 	bl	0 <__vex_function_prolog>
  1c:	e59f3024 	ldr	r3, [pc, #36]	; 48 <vexDisplayVPrintf+0x48>
  20:	e59f2024 	ldr	r2, [pc, #36]	; 4c <vexDisplayVPrintf+0x4c>
  24:	e1a00007 	mov	r0, r7
  28:	e5931000 	ldr	r1, [r3]
  2c:	e1a03004 	mov	r3, r4
  30:	e58d8018 	str	r8, [sp, #24]
  34:	e0861001 	add	r1, r6, r1
  38:	e592c680 	ldr	ip, [r2, #1664]	; 0x680
  3c:	e1a02005 	mov	r2, r5
  40:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
  44:	e12fff1c 	bx	ip
  48:	00000000 	andeq	r0, r0, r0
  4c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDisplayString:

00000000 <vexDisplayString>:
   0:	e92d000e 	push	{r1, r2, r3}
   4:	e92d4017 	push	{r0, r1, r2, r4, lr}
   8:	e1a04000 	mov	r4, r0
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3024 	ldr	r3, [pc, #36]	; 3c <vexDisplayString+0x3c>
  14:	e28d2018 	add	r2, sp, #24
  18:	e1a00004 	mov	r0, r4
  1c:	e58d2004 	str	r2, [sp, #4]
  20:	e59d1014 	ldr	r1, [sp, #20]
  24:	e5933684 	ldr	r3, [r3, #1668]	; 0x684
  28:	e12fff33 	blx	r3
  2c:	e28dd00c 	add	sp, sp, #12
  30:	e8bd4010 	pop	{r4, lr}
  34:	e28dd00c 	add	sp, sp, #12
  38:	e12fff1e 	bx	lr
  3c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDisplayVString:

00000000 <vexDisplayVString>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a06000 	mov	r6, r0
   8:	e1a05001 	mov	r5, r1
   c:	e1a04002 	mov	r4, r2
  10:	ebfffffe 	bl	0 <__vex_function_prolog>
  14:	e59f3014 	ldr	r3, [pc, #20]	; 30 <vexDisplayVString+0x30>
  18:	e1a00006 	mov	r0, r6
  1c:	e1a01005 	mov	r1, r5
  20:	e1a02004 	mov	r2, r4
  24:	e5933684 	ldr	r3, [r3, #1668]	; 0x684
  28:	e8bd4070 	pop	{r4, r5, r6, lr}
  2c:	e12fff13 	bx	r3
  30:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDisplayStringAt:

00000000 <vexDisplayStringAt>:
   0:	e92d000c 	push	{r2, r3}
   4:	e92d4037 	push	{r0, r1, r2, r4, r5, lr}
   8:	e1a04001 	mov	r4, r1
   c:	e1a05000 	mov	r5, r0
  10:	ebfffffe 	bl	0 <__vex_function_prolog>
  14:	e59f2030 	ldr	r2, [pc, #48]	; 4c <vexDisplayStringAt+0x4c>
  18:	e28d301c 	add	r3, sp, #28
  1c:	e59f102c 	ldr	r1, [pc, #44]	; 50 <vexDisplayStringAt+0x50>
  20:	e1a00005 	mov	r0, r5
  24:	e58d3004 	str	r3, [sp, #4]
  28:	e5922000 	ldr	r2, [r2]
  2c:	e591c688 	ldr	ip, [r1, #1672]	; 0x688
  30:	e0841002 	add	r1, r4, r2
  34:	e59d2018 	ldr	r2, [sp, #24]
  38:	e12fff3c 	blx	ip
  3c:	e28dd00c 	add	sp, sp, #12
  40:	e8bd4030 	pop	{r4, r5, lr}
  44:	e28dd008 	add	sp, sp, #8
  48:	e12fff1e 	bx	lr
  4c:	00000000 	andeq	r0, r0, r0
  50:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDisplayVStringAt:

00000000 <vexDisplayVStringAt>:
   0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   4:	e1a06001 	mov	r6, r1
   8:	e1a05002 	mov	r5, r2
   c:	e1a04003 	mov	r4, r3
  10:	e1a07000 	mov	r7, r0
  14:	ebfffffe 	bl	0 <__vex_function_prolog>
  18:	e59f3020 	ldr	r3, [pc, #32]	; 40 <vexDisplayVStringAt+0x40>
  1c:	e1a00007 	mov	r0, r7
  20:	e59f201c 	ldr	r2, [pc, #28]	; 44 <vexDisplayVStringAt+0x44>
  24:	e5931000 	ldr	r1, [r3]
  28:	e1a03004 	mov	r3, r4
  2c:	e592c688 	ldr	ip, [r2, #1672]	; 0x688
  30:	e1a02005 	mov	r2, r5
  34:	e0861001 	add	r1, r6, r1
  38:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
  3c:	e12fff1c 	bx	ip
  40:	00000000 	andeq	r0, r0, r0
  44:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDisplayBigString:

00000000 <vexDisplayBigString>:
   0:	e92d000e 	push	{r1, r2, r3}
   4:	e92d4017 	push	{r0, r1, r2, r4, lr}
   8:	e1a04000 	mov	r4, r0
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3024 	ldr	r3, [pc, #36]	; 3c <vexDisplayBigString+0x3c>
  14:	e28d2018 	add	r2, sp, #24
  18:	e1a00004 	mov	r0, r4
  1c:	e58d2004 	str	r2, [sp, #4]
  20:	e59d1014 	ldr	r1, [sp, #20]
  24:	e593368c 	ldr	r3, [r3, #1676]	; 0x68c
  28:	e12fff33 	blx	r3
  2c:	e28dd00c 	add	sp, sp, #12
  30:	e8bd4010 	pop	{r4, lr}
  34:	e28dd00c 	add	sp, sp, #12
  38:	e12fff1e 	bx	lr
  3c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDisplayVBigString:

00000000 <vexDisplayVBigString>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a06000 	mov	r6, r0
   8:	e1a05001 	mov	r5, r1
   c:	e1a04002 	mov	r4, r2
  10:	ebfffffe 	bl	0 <__vex_function_prolog>
  14:	e59f3014 	ldr	r3, [pc, #20]	; 30 <vexDisplayVBigString+0x30>
  18:	e1a00006 	mov	r0, r6
  1c:	e1a01005 	mov	r1, r5
  20:	e1a02004 	mov	r2, r4
  24:	e593368c 	ldr	r3, [r3, #1676]	; 0x68c
  28:	e8bd4070 	pop	{r4, r5, r6, lr}
  2c:	e12fff13 	bx	r3
  30:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDisplayBigStringAt:

00000000 <vexDisplayBigStringAt>:
   0:	e92d000c 	push	{r2, r3}
   4:	e92d4037 	push	{r0, r1, r2, r4, r5, lr}
   8:	e1a04001 	mov	r4, r1
   c:	e1a05000 	mov	r5, r0
  10:	ebfffffe 	bl	0 <__vex_function_prolog>
  14:	e59f2030 	ldr	r2, [pc, #48]	; 4c <vexDisplayBigStringAt+0x4c>
  18:	e28d301c 	add	r3, sp, #28
  1c:	e59f102c 	ldr	r1, [pc, #44]	; 50 <vexDisplayBigStringAt+0x50>
  20:	e1a00005 	mov	r0, r5
  24:	e58d3004 	str	r3, [sp, #4]
  28:	e5922000 	ldr	r2, [r2]
  2c:	e591c690 	ldr	ip, [r1, #1680]	; 0x690
  30:	e0841002 	add	r1, r4, r2
  34:	e59d2018 	ldr	r2, [sp, #24]
  38:	e12fff3c 	blx	ip
  3c:	e28dd00c 	add	sp, sp, #12
  40:	e8bd4030 	pop	{r4, r5, lr}
  44:	e28dd008 	add	sp, sp, #8
  48:	e12fff1e 	bx	lr
  4c:	00000000 	andeq	r0, r0, r0
  50:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDisplayVBigStringAt:

00000000 <vexDisplayVBigStringAt>:
   0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   4:	e1a06001 	mov	r6, r1
   8:	e1a05002 	mov	r5, r2
   c:	e1a04003 	mov	r4, r3
  10:	e1a07000 	mov	r7, r0
  14:	ebfffffe 	bl	0 <__vex_function_prolog>
  18:	e59f3020 	ldr	r3, [pc, #32]	; 40 <vexDisplayVBigStringAt+0x40>
  1c:	e1a00007 	mov	r0, r7
  20:	e59f201c 	ldr	r2, [pc, #28]	; 44 <vexDisplayVBigStringAt+0x44>
  24:	e5931000 	ldr	r1, [r3]
  28:	e1a03004 	mov	r3, r4
  2c:	e592c690 	ldr	ip, [r2, #1680]	; 0x690
  30:	e1a02005 	mov	r2, r5
  34:	e0861001 	add	r1, r6, r1
  38:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
  3c:	e12fff1c 	bx	ip
  40:	00000000 	andeq	r0, r0, r0
  44:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDisplaySmallStringAt:

00000000 <vexDisplaySmallStringAt>:
   0:	e92d000c 	push	{r2, r3}
   4:	e92d4037 	push	{r0, r1, r2, r4, r5, lr}
   8:	e1a04001 	mov	r4, r1
   c:	e1a05000 	mov	r5, r0
  10:	ebfffffe 	bl	0 <__vex_function_prolog>
  14:	e59f2030 	ldr	r2, [pc, #48]	; 4c <vexDisplaySmallStringAt+0x4c>
  18:	e28d301c 	add	r3, sp, #28
  1c:	e59f102c 	ldr	r1, [pc, #44]	; 50 <vexDisplaySmallStringAt+0x50>
  20:	e1a00005 	mov	r0, r5
  24:	e58d3004 	str	r3, [sp, #4]
  28:	e5922000 	ldr	r2, [r2]
  2c:	e591c6b0 	ldr	ip, [r1, #1712]	; 0x6b0
  30:	e0841002 	add	r1, r4, r2
  34:	e59d2018 	ldr	r2, [sp, #24]
  38:	e12fff3c 	blx	ip
  3c:	e28dd00c 	add	sp, sp, #12
  40:	e8bd4030 	pop	{r4, r5, lr}
  44:	e28dd008 	add	sp, sp, #8
  48:	e12fff1e 	bx	lr
  4c:	00000000 	andeq	r0, r0, r0
  50:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDisplayVSmallStringAt:

00000000 <vexDisplayVSmallStringAt>:
   0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   4:	e1a06001 	mov	r6, r1
   8:	e1a05002 	mov	r5, r2
   c:	e1a04003 	mov	r4, r3
  10:	e1a07000 	mov	r7, r0
  14:	ebfffffe 	bl	0 <__vex_function_prolog>
  18:	e59f3020 	ldr	r3, [pc, #32]	; 40 <vexDisplayVSmallStringAt+0x40>
  1c:	e1a00007 	mov	r0, r7
  20:	e59f201c 	ldr	r2, [pc, #28]	; 44 <vexDisplayVSmallStringAt+0x44>
  24:	e5931000 	ldr	r1, [r3]
  28:	e1a03004 	mov	r3, r4
  2c:	e592c6b0 	ldr	ip, [r2, #1712]	; 0x6b0
  30:	e1a02005 	mov	r2, r5
  34:	e0861001 	add	r1, r6, r1
  38:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
  3c:	e12fff1c 	bx	ip
  40:	00000000 	andeq	r0, r0, r0
  44:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDisplayCenteredString:

00000000 <vexDisplayCenteredString>:
   0:	e92d000e 	push	{r1, r2, r3}
   4:	e92d4017 	push	{r0, r1, r2, r4, lr}
   8:	e1a04000 	mov	r4, r0
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3024 	ldr	r3, [pc, #36]	; 3c <vexDisplayCenteredString+0x3c>
  14:	e28d2018 	add	r2, sp, #24
  18:	e1a00004 	mov	r0, r4
  1c:	e58d2004 	str	r2, [sp, #4]
  20:	e59d1014 	ldr	r1, [sp, #20]
  24:	e5933694 	ldr	r3, [r3, #1684]	; 0x694
  28:	e12fff33 	blx	r3
  2c:	e28dd00c 	add	sp, sp, #12
  30:	e8bd4010 	pop	{r4, lr}
  34:	e28dd00c 	add	sp, sp, #12
  38:	e12fff1e 	bx	lr
  3c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDisplayVCenteredString:

00000000 <vexDisplayVCenteredString>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a06000 	mov	r6, r0
   8:	e1a05001 	mov	r5, r1
   c:	e1a04002 	mov	r4, r2
  10:	ebfffffe 	bl	0 <__vex_function_prolog>
  14:	e59f3014 	ldr	r3, [pc, #20]	; 30 <vexDisplayVCenteredString+0x30>
  18:	e1a00006 	mov	r0, r6
  1c:	e1a01005 	mov	r1, r5
  20:	e1a02004 	mov	r2, r4
  24:	e5933694 	ldr	r3, [r3, #1684]	; 0x694
  28:	e8bd4070 	pop	{r4, r5, r6, lr}
  2c:	e12fff13 	bx	r3
  30:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDisplayBigCenteredString:

00000000 <vexDisplayBigCenteredString>:
   0:	e92d000e 	push	{r1, r2, r3}
   4:	e92d4017 	push	{r0, r1, r2, r4, lr}
   8:	e1a04000 	mov	r4, r0
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3024 	ldr	r3, [pc, #36]	; 3c <vexDisplayBigCenteredString+0x3c>
  14:	e28d2018 	add	r2, sp, #24
  18:	e1a00004 	mov	r0, r4
  1c:	e58d2004 	str	r2, [sp, #4]
  20:	e59d1014 	ldr	r1, [sp, #20]
  24:	e5933698 	ldr	r3, [r3, #1688]	; 0x698
  28:	e12fff33 	blx	r3
  2c:	e28dd00c 	add	sp, sp, #12
  30:	e8bd4010 	pop	{r4, lr}
  34:	e28dd00c 	add	sp, sp, #12
  38:	e12fff1e 	bx	lr
  3c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDisplayVBigCenteredString:

00000000 <vexDisplayVBigCenteredString>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a06000 	mov	r6, r0
   8:	e1a05001 	mov	r5, r1
   c:	e1a04002 	mov	r4, r2
  10:	ebfffffe 	bl	0 <__vex_function_prolog>
  14:	e59f3014 	ldr	r3, [pc, #20]	; 30 <vexDisplayVBigCenteredString+0x30>
  18:	e1a00006 	mov	r0, r6
  1c:	e1a01005 	mov	r1, r5
  20:	e1a02004 	mov	r2, r4
  24:	e5933698 	ldr	r3, [r3, #1688]	; 0x698
  28:	e8bd4070 	pop	{r4, r5, r6, lr}
  2c:	e12fff13 	bx	r3
  30:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDisplayTextSmoothing:

00000000 <vexDisplayTextSmoothing>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDisplayTextSmoothing+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e593369c 	ldr	r3, [r3, #1692]	; 0x69c
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDisplayTextReference:

00000000 <vexDisplayTextReference>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDisplayTextReference+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e59336a0 	ldr	r3, [r3, #1696]	; 0x6a0
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDisplayScreenGrab:

00000000 <vexDisplayScreenGrab>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDisplayScreenGrab+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e59336a4 	ldr	r3, [r3, #1700]	; 0x6a4
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDisplayTextSize:

00000000 <vexDisplayTextSize>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDisplayTextSize+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e59336a8 	ldr	r3, [r3, #1704]	; 0x6a8
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDisplayTextSpacing:

00000000 <vexDisplayTextSpacing>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDisplayTextSpacing+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e59336ac 	ldr	r3, [r3, #1708]	; 0x6ac
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDisplayFontNamedSet:

00000000 <vexDisplayFontNamedSet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDisplayFontNamedSet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e59336b4 	ldr	r3, [r3, #1716]	; 0x6b4
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDisplayStringWidthGet:

00000000 <vexDisplayStringWidthGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDisplayStringWidthGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e59336c0 	ldr	r3, [r3, #1728]	; 0x6c0
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDisplayStringHeightGet:

00000000 <vexDisplayStringHeightGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDisplayStringHeightGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e59336c4 	ldr	r3, [r3, #1732]	; 0x6c4
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDisplayPenSizeSet:

00000000 <vexDisplayPenSizeSet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDisplayPenSizeSet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e59336c8 	ldr	r3, [r3, #1736]	; 0x6c8
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDisplayPenSizeGet:

00000000 <vexDisplayPenSizeGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	ebfffffe 	bl	0 <__vex_function_prolog>
   8:	e59f3008 	ldr	r3, [pc, #8]	; 18 <vexDisplayPenSizeGet+0x18>
   c:	e8bd4010 	pop	{r4, lr}
  10:	e59336cc 	ldr	r3, [r3, #1740]	; 0x6cc
  14:	e12fff13 	bx	r3
  18:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDisplayFontCustomSet:

00000000 <vexDisplayFontCustomSet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDisplayFontCustomSet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e59336d0 	ldr	r3, [r3, #1744]	; 0x6d0
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexFileMountSD:

00000000 <vexFileMountSD>:
   0:	e92d4010 	push	{r4, lr}
   4:	ebfffffe 	bl	0 <__vex_function_prolog>
   8:	e59f3008 	ldr	r3, [pc, #8]	; 18 <vexFileMountSD+0x18>
   c:	e8bd4010 	pop	{r4, lr}
  10:	e59337d0 	ldr	r3, [r3, #2000]	; 0x7d0
  14:	e12fff13 	bx	r3
  18:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexFileDirectoryGet:

00000000 <vexFileDirectoryGet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a06000 	mov	r6, r0
   8:	e1a05001 	mov	r5, r1
   c:	e1a04002 	mov	r4, r2
  10:	ebfffffe 	bl	0 <__vex_function_prolog>
  14:	e59f3014 	ldr	r3, [pc, #20]	; 30 <vexFileDirectoryGet+0x30>
  18:	e1a00006 	mov	r0, r6
  1c:	e1a01005 	mov	r1, r5
  20:	e1a02004 	mov	r2, r4
  24:	e59337d4 	ldr	r3, [r3, #2004]	; 0x7d4
  28:	e8bd4070 	pop	{r4, r5, r6, lr}
  2c:	e12fff13 	bx	r3
  30:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexFileOpen:

00000000 <vexFileOpen>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexFileOpen+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e59337d8 	ldr	r3, [r3, #2008]	; 0x7d8
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexFileOpenWrite:

00000000 <vexFileOpenWrite>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexFileOpenWrite+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e59337dc 	ldr	r3, [r3, #2012]	; 0x7dc
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexFileOpenCreate:

00000000 <vexFileOpenCreate>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexFileOpenCreate+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e59337e0 	ldr	r3, [r3, #2016]	; 0x7e0
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexFileClose:

00000000 <vexFileClose>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexFileClose+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e59337e4 	ldr	r3, [r3, #2020]	; 0x7e4
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexFileRead:

00000000 <vexFileRead>:
   0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   4:	e1a04003 	mov	r4, r3
   8:	e1a07000 	mov	r7, r0
   c:	e1a06001 	mov	r6, r1
  10:	e1a05002 	mov	r5, r2
  14:	ebfffffe 	bl	0 <__vex_function_prolog>
  18:	e59f3018 	ldr	r3, [pc, #24]	; 38 <vexFileRead+0x38>
  1c:	e1a00007 	mov	r0, r7
  20:	e1a01006 	mov	r1, r6
  24:	e1a02005 	mov	r2, r5
  28:	e593c7f8 	ldr	ip, [r3, #2040]	; 0x7f8
  2c:	e1a03004 	mov	r3, r4
  30:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
  34:	e12fff1c 	bx	ip
  38:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexFileWrite:

00000000 <vexFileWrite>:
   0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   4:	e1a04003 	mov	r4, r3
   8:	e1a07000 	mov	r7, r0
   c:	e1a06001 	mov	r6, r1
  10:	e1a05002 	mov	r5, r2
  14:	ebfffffe 	bl	0 <__vex_function_prolog>
  18:	e59f3018 	ldr	r3, [pc, #24]	; 38 <vexFileWrite+0x38>
  1c:	e1a00007 	mov	r0, r7
  20:	e1a01006 	mov	r1, r6
  24:	e1a02005 	mov	r2, r5
  28:	e593c7ec 	ldr	ip, [r3, #2028]	; 0x7ec
  2c:	e1a03004 	mov	r3, r4
  30:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
  34:	e12fff1c 	bx	ip
  38:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexFileSize:

00000000 <vexFileSize>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexFileSize+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e59337f0 	ldr	r3, [r3, #2032]	; 0x7f0
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexFileSeek:

00000000 <vexFileSeek>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a06000 	mov	r6, r0
   8:	e1a05001 	mov	r5, r1
   c:	e1a04002 	mov	r4, r2
  10:	ebfffffe 	bl	0 <__vex_function_prolog>
  14:	e59f3014 	ldr	r3, [pc, #20]	; 30 <vexFileSeek+0x30>
  18:	e1a00006 	mov	r0, r6
  1c:	e1a01005 	mov	r1, r5
  20:	e1a02004 	mov	r2, r4
  24:	e59337f4 	ldr	r3, [r3, #2036]	; 0x7f4
  28:	e8bd4070 	pop	{r4, r5, r6, lr}
  2c:	e12fff13 	bx	r3
  30:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexFileDriveStatus:

00000000 <vexFileDriveStatus>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexFileDriveStatus+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e59337fc 	ldr	r3, [r3, #2044]	; 0x7fc
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexFileTell:

00000000 <vexFileTell>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexFileTell+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933800 	ldr	r3, [r3, #2048]	; 0x800
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexFileSync:

00000000 <vexFileSync>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	ebfffffe 	bl	0 <vexSystemVersion>
  10:	e59f3018 	ldr	r3, [pc, #24]	; 30 <vexFileSync+0x30>
  14:	e1500003 	cmp	r0, r3
  18:	98bd8010 	popls	{r4, pc}
  1c:	e59f3010 	ldr	r3, [pc, #16]	; 34 <vexFileSync+0x34>
  20:	e1a00004 	mov	r0, r4
  24:	e8bd4010 	pop	{r4, lr}
  28:	e5933804 	ldr	r3, [r3, #2052]	; 0x804
  2c:	e12fff13 	bx	r3
  30:	01000d10 	tsteq	r0, r0, lsl sp
  34:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexFileStatus:

00000000 <vexFileStatus>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	ebfffffe 	bl	0 <vexSystemVersion>
  10:	e59f3020 	ldr	r3, [pc, #32]	; 38 <vexFileStatus+0x38>
  14:	e1500003 	cmp	r0, r3
  18:	9a000004 	bls	30 <vexFileStatus+0x30>
  1c:	e59f3018 	ldr	r3, [pc, #24]	; 3c <vexFileStatus+0x3c>
  20:	e1a00004 	mov	r0, r4
  24:	e8bd4010 	pop	{r4, lr}
  28:	e5933808 	ldr	r3, [r3, #2056]	; 0x808
  2c:	e12fff13 	bx	r3
  30:	e3a00000 	mov	r0, #0
  34:	e8bd8010 	pop	{r4, pc}
  38:	01000d10 	tsteq	r0, r0, lsl sp
  3c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexSerialWriteChar:

00000000 <vexSerialWriteChar>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexSerialWriteChar+0xc>
   4:	e5933898 	ldr	r3, [r3, #2200]	; 0x898
   8:	e12fff13 	bx	r3
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexSerialWriteBuffer:

00000000 <vexSerialWriteBuffer>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexSerialWriteBuffer+0xc>
   4:	e593389c 	ldr	r3, [r3, #2204]	; 0x89c
   8:	e12fff13 	bx	r3
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexSerialReadChar:

00000000 <vexSerialReadChar>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexSerialReadChar+0xc>
   4:	e59338a0 	ldr	r3, [r3, #2208]	; 0x8a0
   8:	e12fff13 	bx	r3
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexSerialPeekChar:

00000000 <vexSerialPeekChar>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexSerialPeekChar+0xc>
   4:	e59338a4 	ldr	r3, [r3, #2212]	; 0x8a4
   8:	e12fff13 	bx	r3
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexSerialEnableRemoteConsole:

00000000 <vexSerialEnableRemoteConsole>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexSerialEnableRemoteConsole+0xc>
   4:	e59338a8 	ldr	r3, [r3, #2216]	; 0x8a8
   8:	e12fff13 	bx	r3
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexSerialWriteFree:

00000000 <vexSerialWriteFree>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexSerialWriteFree+0xc>
   4:	e59338ac 	ldr	r3, [r3, #2220]	; 0x8ac
   8:	e12fff13 	bx	r3
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexSystemTimerStop:

00000000 <vexSystemTimerStop>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexSystemTimerStop+0xc>
   4:	e59338c0 	ldr	r3, [r3, #2240]	; 0x8c0
   8:	e12fff13 	bx	r3
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexSystemTimerClearInterrupt:

00000000 <vexSystemTimerClearInterrupt>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexSystemTimerClearInterrupt+0xc>
   4:	e59338c4 	ldr	r3, [r3, #2244]	; 0x8c4
   8:	e12fff13 	bx	r3
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexSystemTimerReinitForRtos:

00000000 <vexSystemTimerReinitForRtos>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexSystemTimerReinitForRtos+0xc>
   4:	e59338c8 	ldr	r3, [r3, #2248]	; 0x8c8
   8:	e12fff13 	bx	r3
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexSystemApplicationIRQHandler:

00000000 <vexSystemApplicationIRQHandler>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexSystemApplicationIRQHandler+0xc>
   4:	e59338cc 	ldr	r3, [r3, #2252]	; 0x8cc
   8:	e12fff13 	bx	r3
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexSystemWatchdogReinitRtos:

00000000 <vexSystemWatchdogReinitRtos>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexSystemWatchdogReinitRtos+0xc>
   4:	e59338d0 	ldr	r3, [r3, #2256]	; 0x8d0
   8:	e12fff13 	bx	r3
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexSystemWatchdogGet:

00000000 <vexSystemWatchdogGet>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexSystemWatchdogGet+0xc>
   4:	e59338d4 	ldr	r3, [r3, #2260]	; 0x8d4
   8:	e12fff13 	bx	r3
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexSystemTimerCallbackInstall:

00000000 <vexSystemTimerCallbackInstall>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexSystemTimerCallbackInstall+0xc>
   4:	e59338d8 	ldr	r3, [r3, #2264]	; 0x8d8
   8:	e12fff13 	bx	r3
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexSystemVSyncCallbackInstall:

00000000 <vexSystemVSyncCallbackInstall>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexSystemVSyncCallbackInstall+0xc>
   4:	e59338dc 	ldr	r3, [r3, #2268]	; 0x8dc
   8:	e12fff13 	bx	r3
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexSystemBoot:

00000000 <vexSystemBoot>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexSystemBoot+0xc>
   4:	e5933910 	ldr	r3, [r3, #2320]	; 0x910
   8:	e12fff13 	bx	r3
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexSystemUndefinedException:

00000000 <vexSystemUndefinedException>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexSystemUndefinedException+0xc>
   4:	e5933914 	ldr	r3, [r3, #2324]	; 0x914
   8:	e12fff13 	bx	r3
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexSystemFIQInterrupt:

00000000 <vexSystemFIQInterrupt>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexSystemFIQInterrupt+0xc>
   4:	e5933918 	ldr	r3, [r3, #2328]	; 0x918
   8:	e12fff13 	bx	r3
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexSystemIRQInterrupt:

00000000 <vexSystemIRQInterrupt>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexSystemIRQInterrupt+0xc>
   4:	e593391c 	ldr	r3, [r3, #2332]	; 0x91c
   8:	e12fff13 	bx	r3
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexSystemSWInterrupt:

00000000 <vexSystemSWInterrupt>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexSystemSWInterrupt+0xc>
   4:	e5933920 	ldr	r3, [r3, #2336]	; 0x920
   8:	e12fff13 	bx	r3
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexSystemDataAbortInterrupt:

00000000 <vexSystemDataAbortInterrupt>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexSystemDataAbortInterrupt+0xc>
   4:	e5933924 	ldr	r3, [r3, #2340]	; 0x924
   8:	e12fff13 	bx	r3
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexSystemPrefetchAbortInterrupt:

00000000 <vexSystemPrefetchAbortInterrupt>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexSystemPrefetchAbortInterrupt+0xc>
   4:	e5933928 	ldr	r3, [r3, #2344]	; 0x928
   8:	e12fff13 	bx	r3
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexSystemUserWriteInstall:

00000000 <vexSystemUserWriteInstall>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexSystemUserWriteInstall+0xc>
   4:	e5830008 	str	r0, [r3, #8]
   8:	e12fff1e 	bx	lr
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexSystemSysWriteInstall:

00000000 <vexSystemSysWriteInstall>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexSystemSysWriteInstall+0xc>
   4:	e5830820 	str	r0, [r3, #2080]	; 0x820
   8:	e12fff1e 	bx	lr
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexSystemSysReadInstall:

00000000 <vexSystemSysReadInstall>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexSystemSysReadInstall+0xc>
   4:	e5830824 	str	r0, [r3, #2084]	; 0x824
   8:	e12fff1e 	bx	lr
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexSystemSysOpenInstall:

00000000 <vexSystemSysOpenInstall>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexSystemSysOpenInstall+0xc>
   4:	e5830828 	str	r0, [r3, #2088]	; 0x828
   8:	e12fff1e 	bx	lr
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexSystemSysCloseInstall:

00000000 <vexSystemSysCloseInstall>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexSystemSysCloseInstall+0xc>
   4:	e583082c 	str	r0, [r3, #2092]	; 0x82c
   8:	e12fff1e 	bx	lr
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexSystemSysLseekInstall:

00000000 <vexSystemSysLseekInstall>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexSystemSysLseekInstall+0xc>
   4:	e5830830 	str	r0, [r3, #2096]	; 0x830
   8:	e12fff1e 	bx	lr
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexSystemSysFstatInstall:

00000000 <vexSystemSysFstatInstall>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexSystemSysFstatInstall+0xc>
   4:	e5830834 	str	r0, [r3, #2100]	; 0x834
   8:	e12fff1e 	bx	lr
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexSystemSysFcntlInstall:

00000000 <vexSystemSysFcntlInstall>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexSystemSysFcntlInstall+0xc>
   4:	e5830838 	str	r0, [r3, #2104]	; 0x838
   8:	e12fff1e 	bx	lr
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexSystemSysIsattyInstall:

00000000 <vexSystemSysIsattyInstall>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexSystemSysIsattyInstall+0xc>
   4:	e583083c 	str	r0, [r3, #2108]	; 0x83c
   8:	e12fff1e 	bx	lr
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexSystemFileReopen:

00000000 <vexSystemFileReopen>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a06000 	mov	r6, r0
   8:	e1a05001 	mov	r5, r1
   c:	e1a04002 	mov	r4, r2
  10:	ebfffffe 	bl	0 <vexSystemVersion>
  14:	e59f3028 	ldr	r3, [pc, #40]	; 44 <vexSystemFileReopen+0x44>
  18:	e1500003 	cmp	r0, r3
  1c:	9a000006 	bls	3c <vexSystemFileReopen+0x3c>
  20:	e59f3020 	ldr	r3, [pc, #32]	; 48 <vexSystemFileReopen+0x48>
  24:	e1a00006 	mov	r0, r6
  28:	e1a01005 	mov	r1, r5
  2c:	e1a02004 	mov	r2, r4
  30:	e8bd4070 	pop	{r4, r5, r6, lr}
  34:	e5933840 	ldr	r3, [r3, #2112]	; 0x840
  38:	e12fff13 	bx	r3
  3c:	e1a00004 	mov	r0, r4
  40:	e8bd8070 	pop	{r4, r5, r6, pc}
  44:	00070300 	andeq	r0, r7, r0, lsl #6
  48:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexSystemStdlibImpurePtrAddr:

00000000 <vexSystemStdlibImpurePtrAddr>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexSystemVersion>
   8:	e59f3010 	ldr	r3, [pc, #16]	; 20 <vexSystemStdlibImpurePtrAddr+0x20>
   c:	e1500003 	cmp	r0, r3
  10:	859f300c 	ldrhi	r3, [pc, #12]	; 24 <vexSystemStdlibImpurePtrAddr+0x24>
  14:	85930fa0 	ldrhi	r0, [r3, #4000]	; 0xfa0
  18:	93a00000 	movls	r0, #0
  1c:	e8bd8008 	pop	{r3, pc}
  20:	00070300 	andeq	r0, r7, r0, lsl #6
  24:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexSystemStdlibImpureDataAddr:

00000000 <vexSystemStdlibImpureDataAddr>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexSystemVersion>
   8:	e59f3010 	ldr	r3, [pc, #16]	; 20 <vexSystemStdlibImpureDataAddr+0x20>
   c:	e1500003 	cmp	r0, r3
  10:	859f300c 	ldrhi	r3, [pc, #12]	; 24 <vexSystemStdlibImpureDataAddr+0x24>
  14:	85930fa4 	ldrhi	r0, [r3, #4004]	; 0xfa4
  18:	93a00000 	movls	r0, #0
  1c:	e8bd8008 	pop	{r3, pc}
  20:	00070300 	andeq	r0, r7, r0, lsl #6
  24:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexSystemStdlibImpureDataSize:

00000000 <vexSystemStdlibImpureDataSize>:
   0:	e92d4008 	push	{r3, lr}
   4:	ebfffffe 	bl	0 <vexSystemVersion>
   8:	e59f3010 	ldr	r3, [pc, #16]	; 20 <vexSystemStdlibImpureDataSize+0x20>
   c:	e1500003 	cmp	r0, r3
  10:	859f300c 	ldrhi	r3, [pc, #12]	; 24 <vexSystemStdlibImpureDataSize+0x24>
  14:	85930fa8 	ldrhi	r0, [r3, #4008]	; 0xfa8
  18:	93a00000 	movls	r0, #0
  1c:	e8bd8008 	pop	{r3, pc}
  20:	00070300 	andeq	r0, r7, r0, lsl #6
  24:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexSystemSaveUserData:

00000000 <vexSystemSaveUserData>:
   0:	e59f3020 	ldr	r3, [pc, #32]	; 28 <vexSystemSaveUserData+0x28>
   4:	e59f2020 	ldr	r2, [pc, #32]	; 2c <vexSystemSaveUserData+0x2c>
   8:	e5832fc8 	str	r2, [r3, #4040]	; 0xfc8
   c:	e59f201c 	ldr	r2, [pc, #28]	; 30 <vexSystemSaveUserData+0x30>
  10:	e5832fcc 	str	r2, [r3, #4044]	; 0xfcc
  14:	e59f2018 	ldr	r2, [pc, #24]	; 34 <vexSystemSaveUserData+0x34>
  18:	e5832fd0 	str	r2, [r3, #4048]	; 0xfd0
  1c:	e59f2014 	ldr	r2, [pc, #20]	; 38 <vexSystemSaveUserData+0x38>
  20:	e5832fd4 	str	r2, [r3, #4052]	; 0xfd4
  24:	e12fff1e 	bx	lr
  28:	037fc000 	cmneq	pc, #0
	...

Disassembly of section .text.vexTouchUserCallbackSet:

00000000 <vexTouchUserCallbackSet>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexTouchUserCallbackSet+0xc>
   4:	e5933960 	ldr	r3, [r3, #2400]	; 0x960
   8:	e12fff13 	bx	r3
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexTouchDataGet:

00000000 <vexTouchDataGet>:
   0:	e59f3004 	ldr	r3, [pc, #4]	; c <vexTouchDataGet+0xc>
   4:	e5933964 	ldr	r3, [r3, #2404]	; 0x964
   8:	e12fff13 	bx	r3
   c:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexAssetsFind:

00000000 <vexAssetsFind>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexAssetsFind+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e5933988 	ldr	r3, [r3, #2440]	; 0x988
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexAssetsDump:

00000000 <vexAssetsDump>:
   0:	e92d4010 	push	{r4, lr}
   4:	ebfffffe 	bl	0 <__vex_function_prolog>
   8:	e59f3008 	ldr	r3, [pc, #8]	; 18 <vexAssetsDump+0x18>
   c:	e8bd4010 	pop	{r4, lr}
  10:	e593398c 	ldr	r3, [r3, #2444]	; 0x98c
  14:	e12fff13 	bx	r3
  18:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDisplayOrientation:

00000000 <vexDisplayOrientation>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDisplayOrientation+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933780 	ldr	r3, [r3, #1920]	; 0x780
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDisplayLanguageSet:

00000000 <vexDisplayLanguageSet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDisplayLanguageSet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933784 	ldr	r3, [r3, #1924]	; 0x784
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDisplayStringGet:

00000000 <vexDisplayStringGet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a06000 	mov	r6, r0
   8:	e1a05001 	mov	r5, r1
   c:	e1a04002 	mov	r4, r2
  10:	ebfffffe 	bl	0 <__vex_function_prolog>
  14:	e59f3014 	ldr	r3, [pc, #20]	; 30 <vexDisplayStringGet+0x30>
  18:	e1a00006 	mov	r0, r6
  1c:	e1a01005 	mov	r1, r5
  20:	e1a02004 	mov	r2, r4
  24:	e5933788 	ldr	r3, [r3, #1928]	; 0x788
  28:	e8bd4070 	pop	{r4, r5, r6, lr}
  2c:	e12fff13 	bx	r3
  30:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexImageBmpRead:

00000000 <vexImageBmpRead>:
   0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   4:	e1a04003 	mov	r4, r3
   8:	e1a07000 	mov	r7, r0
   c:	e1a06001 	mov	r6, r1
  10:	e1a05002 	mov	r5, r2
  14:	ebfffffe 	bl	0 <__vex_function_prolog>
  18:	e59f3018 	ldr	r3, [pc, #24]	; 38 <vexImageBmpRead+0x38>
  1c:	e1a00007 	mov	r0, r7
  20:	e1a01006 	mov	r1, r6
  24:	e1a02005 	mov	r2, r5
  28:	e593c990 	ldr	ip, [r3, #2448]	; 0x990
  2c:	e1a03004 	mov	r3, r4
  30:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
  34:	e12fff1c 	bx	ip
  38:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexImagePngRead:

00000000 <vexImagePngRead>:
   0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   4:	e1a04003 	mov	r4, r3
   8:	e1a07000 	mov	r7, r0
   c:	e1a06001 	mov	r6, r1
  10:	e1a05002 	mov	r5, r2
  14:	e59d8018 	ldr	r8, [sp, #24]
  18:	ebfffffe 	bl	0 <__vex_function_prolog>
  1c:	e59f301c 	ldr	r3, [pc, #28]	; 40 <vexImagePngRead+0x40>
  20:	e1a00007 	mov	r0, r7
  24:	e1a01006 	mov	r1, r6
  28:	e58d8018 	str	r8, [sp, #24]
  2c:	e1a02005 	mov	r2, r5
  30:	e593c994 	ldr	ip, [r3, #2452]	; 0x994
  34:	e1a03004 	mov	r3, r4
  38:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
  3c:	e12fff1c 	bx	ip
  40:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDisplayClearVsyncState:

00000000 <vexDisplayClearVsyncState>:
   0:	e92d4010 	push	{r4, lr}
   4:	ebfffffe 	bl	0 <__vex_function_prolog>
   8:	e59f3008 	ldr	r3, [pc, #8]	; 18 <vexDisplayClearVsyncState+0x18>
   c:	e8bd4010 	pop	{r4, lr}
  10:	e593378c 	ldr	r3, [r3, #1932]	; 0x78c
  14:	e12fff13 	bx	r3
  18:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDisplayGetVsyncState:

00000000 <vexDisplayGetVsyncState>:
   0:	e92d4010 	push	{r4, lr}
   4:	ebfffffe 	bl	0 <__vex_function_prolog>
   8:	e59f3008 	ldr	r3, [pc, #8]	; 18 <vexDisplayGetVsyncState+0x18>
   c:	e8bd4010 	pop	{r4, lr}
  10:	e5933790 	ldr	r3, [r3, #1936]	; 0x790
  14:	e12fff13 	bx	r3
  18:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDisplayClipRegionSet:

00000000 <vexDisplayClipRegionSet>:
   0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   4:	e1a04003 	mov	r4, r3
   8:	e1a07000 	mov	r7, r0
   c:	e1a06001 	mov	r6, r1
  10:	e1a05002 	mov	r5, r2
  14:	ebfffffe 	bl	0 <__vex_function_prolog>
  18:	e59f3024 	ldr	r3, [pc, #36]	; 44 <vexDisplayClipRegionSet+0x44>
  1c:	e1a00007 	mov	r0, r7
  20:	e1a02005 	mov	r2, r5
  24:	e593c000 	ldr	ip, [r3]
  28:	e59f3018 	ldr	r3, [pc, #24]	; 48 <vexDisplayClipRegionSet+0x48>
  2c:	e086100c 	add	r1, r6, ip
  30:	e593e794 	ldr	lr, [r3, #1940]	; 0x794
  34:	e084300c 	add	r3, r4, ip
  38:	e1a0c00e 	mov	ip, lr
  3c:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
  40:	e12fff1c 	bx	ip
  44:	00000000 	andeq	r0, r0, r0
  48:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDisplayClipRegionClear:

00000000 <vexDisplayClipRegionClear>:
   0:	e3a00000 	mov	r0, #0
   4:	e3a02e1e 	mov	r2, #480	; 0x1e0
   8:	e1a01000 	mov	r1, r0
   c:	e3a03e11 	mov	r3, #272	; 0x110
  10:	eafffffe 	b	0 <vexDisplayClipRegionClear>

Disassembly of section .text.vexDisplayRotateFlagGet:

00000000 <vexDisplayRotateFlagGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	ebfffffe 	bl	0 <__vex_function_prolog>
   8:	e59f3008 	ldr	r3, [pc, #8]	; 18 <vexDisplayRotateFlagGet+0x18>
   c:	e8bd4010 	pop	{r4, lr}
  10:	e5933798 	ldr	r3, [r3, #1944]	; 0x798
  14:	e12fff13 	bx	r3
  18:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDisplayThemeIdGet:

00000000 <vexDisplayThemeIdGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	ebfffffe 	bl	0 <vexSystemVersion>
   8:	e59f3020 	ldr	r3, [pc, #32]	; 30 <vexDisplayThemeIdGet+0x30>
   c:	e1500003 	cmp	r0, r3
  10:	9a000004 	bls	28 <vexDisplayThemeIdGet+0x28>
  14:	ebfffffe 	bl	0 <__vex_function_prolog>
  18:	e59f3014 	ldr	r3, [pc, #20]	; 34 <vexDisplayThemeIdGet+0x34>
  1c:	e8bd4010 	pop	{r4, lr}
  20:	e593379c 	ldr	r3, [r3, #1948]	; 0x79c
  24:	e12fff13 	bx	r3
  28:	e3a00000 	mov	r0, #0
  2c:	e8bd8010 	pop	{r4, pc}
  30:	00070300 	andeq	r0, r7, r0, lsl #6
  34:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDisplayRender:

00000000 <vexDisplayRender>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDisplayRender+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e59337a0 	ldr	r3, [r3, #1952]	; 0x7a0
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDisplayDoubleBufferDisable:

00000000 <vexDisplayDoubleBufferDisable>:
   0:	e92d4010 	push	{r4, lr}
   4:	ebfffffe 	bl	0 <__vex_function_prolog>
   8:	e59f3008 	ldr	r3, [pc, #8]	; 18 <vexDisplayDoubleBufferDisable+0x18>
   c:	e8bd4010 	pop	{r4, lr}
  10:	e59337a4 	ldr	r3, [r3, #1956]	; 0x7a4
  14:	e12fff13 	bx	r3
  18:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDisplayClipRegionSetWithIndex:

00000000 <vexDisplayClipRegionSetWithIndex>:
   0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   4:	e1a05003 	mov	r5, r3
   8:	e1a08000 	mov	r8, r0
   c:	e1a07001 	mov	r7, r1
  10:	e1a06002 	mov	r6, r2
  14:	e59d4018 	ldr	r4, [sp, #24]
  18:	ebfffffe 	bl	0 <__vex_function_prolog>
  1c:	ebfffffe 	bl	0 <vexSystemVersion>
  20:	e59f3038 	ldr	r3, [pc, #56]	; 60 <vexDisplayClipRegionSetWithIndex+0x60>
  24:	e1500003 	cmp	r0, r3
  28:	98bd81f0 	popls	{r4, r5, r6, r7, r8, pc}
  2c:	e59f3030 	ldr	r3, [pc, #48]	; 64 <vexDisplayClipRegionSetWithIndex+0x64>
  30:	e1a00008 	mov	r0, r8
  34:	e1a01007 	mov	r1, r7
  38:	e5932000 	ldr	r2, [r3]
  3c:	e59f3024 	ldr	r3, [pc, #36]	; 68 <vexDisplayClipRegionSetWithIndex+0x68>
  40:	e0844002 	add	r4, r4, r2
  44:	e58d4018 	str	r4, [sp, #24]
  48:	e0862002 	add	r2, r6, r2
  4c:	e593e7a8 	ldr	lr, [r3, #1960]	; 0x7a8
  50:	e1a03005 	mov	r3, r5
  54:	e1a0c00e 	mov	ip, lr
  58:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
  5c:	e12fff1c 	bx	ip
  60:	01000a32 	tsteq	r0, r2, lsr sl
  64:	00000000 	andeq	r0, r0, r0
  68:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexSystemPdataSet:

00000000 <vexSystemPdataSet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexSystemPdataSet+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e59339b0 	ldr	r3, [r3, #2480]	; 0x9b0
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexSystemPdataGet:

00000000 <vexSystemPdataGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexSystemPdataGet+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e59339b4 	ldr	r3, [r3, #2484]	; 0x9b4
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexSystemPdataIdGet:

00000000 <vexSystemPdataIdGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	ebfffffe 	bl	0 <__vex_function_prolog>
   8:	ebfffffe 	bl	0 <vexSystemVersion>
   c:	e59f301c 	ldr	r3, [pc, #28]	; 30 <vexSystemPdataIdGet+0x30>
  10:	e1500003 	cmp	r0, r3
  14:	9a000003 	bls	28 <vexSystemPdataIdGet+0x28>
  18:	e59f3014 	ldr	r3, [pc, #20]	; 34 <vexSystemPdataIdGet+0x34>
  1c:	e8bd4010 	pop	{r4, lr}
  20:	e59339b8 	ldr	r3, [r3, #2488]	; 0x9b8
  24:	e12fff13 	bx	r3
  28:	e3a00000 	mov	r0, #0
  2c:	e8bd8010 	pop	{r4, pc}
  30:	00060700 	andeq	r0, r6, r0, lsl #14
  34:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexSystemAppDataIdGet:

00000000 <vexSystemAppDataIdGet>:
   0:	eafffffe 	b	0 <vexSystemAppDataIdGet>

Disassembly of section .text.vexSystemPdataFlagsGet:

00000000 <vexSystemPdataFlagsGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	ebfffffe 	bl	0 <__vex_function_prolog>
   8:	ebfffffe 	bl	0 <vexSystemVersion>
   c:	e59f301c 	ldr	r3, [pc, #28]	; 30 <vexSystemPdataFlagsGet+0x30>
  10:	e1500003 	cmp	r0, r3
  14:	9a000003 	bls	28 <vexSystemPdataFlagsGet+0x28>
  18:	e59f3014 	ldr	r3, [pc, #20]	; 34 <vexSystemPdataFlagsGet+0x34>
  1c:	e8bd4010 	pop	{r4, lr}
  20:	e59339bc 	ldr	r3, [r3, #2492]	; 0x9bc
  24:	e12fff13 	bx	r3
  28:	e3a00000 	mov	r0, #0
  2c:	e8bd8010 	pop	{r4, pc}
  30:	00060700 	andeq	r0, r6, r0, lsl #14
  34:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexSystemAppDataFlagsGet:

00000000 <vexSystemAppDataFlagsGet>:
   0:	eafffffe 	b	0 <vexSystemAppDataFlagsGet>

Disassembly of section .text.vexSystemAppDataOptionsGet:

00000000 <vexSystemAppDataOptionsGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	ebfffffe 	bl	0 <__vex_function_prolog>
   8:	ebfffffe 	bl	0 <vexSystemVersion>
   c:	e59f301c 	ldr	r3, [pc, #28]	; 30 <vexSystemAppDataOptionsGet+0x30>
  10:	e1500003 	cmp	r0, r3
  14:	9a000003 	bls	28 <vexSystemAppDataOptionsGet+0x28>
  18:	e59f3014 	ldr	r3, [pc, #20]	; 34 <vexSystemAppDataOptionsGet+0x34>
  1c:	e8bd4010 	pop	{r4, lr}
  20:	e59339c0 	ldr	r3, [r3, #2496]	; 0x9c0
  24:	e12fff13 	bx	r3
  28:	e3a00000 	mov	r0, #0
  2c:	e8bd8010 	pop	{r4, pc}
  30:	01000323 	tsteq	r0, r3, lsr #6
  34:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexSystemAppDataLinkAddrGet:

00000000 <vexSystemAppDataLinkAddrGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	ebfffffe 	bl	0 <__vex_function_prolog>
   8:	ebfffffe 	bl	0 <vexSystemVersion>
   c:	e59f301c 	ldr	r3, [pc, #28]	; 30 <vexSystemAppDataLinkAddrGet+0x30>
  10:	e1500003 	cmp	r0, r3
  14:	9a000003 	bls	28 <vexSystemAppDataLinkAddrGet+0x28>
  18:	e59f3014 	ldr	r3, [pc, #20]	; 34 <vexSystemAppDataLinkAddrGet+0x34>
  1c:	e8bd4010 	pop	{r4, lr}
  20:	e59339c4 	ldr	r3, [r3, #2500]	; 0x9c4
  24:	e12fff13 	bx	r3
  28:	e3a00000 	mov	r0, #0
  2c:	e8bd8010 	pop	{r4, pc}
  30:	01000323 	tsteq	r0, r3, lsr #6
  34:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexSystemAppDataRes1Get:

00000000 <vexSystemAppDataRes1Get>:
   0:	e92d4010 	push	{r4, lr}
   4:	ebfffffe 	bl	0 <__vex_function_prolog>
   8:	ebfffffe 	bl	0 <vexSystemVersion>
   c:	e59f301c 	ldr	r3, [pc, #28]	; 30 <vexSystemAppDataRes1Get+0x30>
  10:	e1500003 	cmp	r0, r3
  14:	9a000003 	bls	28 <vexSystemAppDataRes1Get+0x28>
  18:	e59f3014 	ldr	r3, [pc, #20]	; 34 <vexSystemAppDataRes1Get+0x34>
  1c:	e8bd4010 	pop	{r4, lr}
  20:	e59339c8 	ldr	r3, [r3, #2504]	; 0x9c8
  24:	e12fff13 	bx	r3
  28:	e3a00000 	mov	r0, #0
  2c:	e8bd8010 	pop	{r4, pc}
  30:	0100081e 	tsteq	r0, lr, lsl r8
  34:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexSystemAppExtendedDataGet:

00000000 <vexSystemAppExtendedDataGet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	ebfffffe 	bl	0 <vexSystemVersion>
  14:	e59f3024 	ldr	r3, [pc, #36]	; 40 <vexSystemAppExtendedDataGet+0x40>
  18:	e1500003 	cmp	r0, r3
  1c:	9a000005 	bls	38 <vexSystemAppExtendedDataGet+0x38>
  20:	e59f301c 	ldr	r3, [pc, #28]	; 44 <vexSystemAppExtendedDataGet+0x44>
  24:	e1a00005 	mov	r0, r5
  28:	e1a01004 	mov	r1, r4
  2c:	e8bd4070 	pop	{r4, r5, r6, lr}
  30:	e59339cc 	ldr	r3, [r3, #2508]	; 0x9cc
  34:	e12fff13 	bx	r3
  38:	e3a00000 	mov	r0, #0
  3c:	e8bd8070 	pop	{r4, r5, r6, pc}
  40:	0100081e 	tsteq	r0, lr, lsl r8
  44:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexSystemAppDebugDataGet:

00000000 <vexSystemAppDebugDataGet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	ebfffffe 	bl	0 <vexSystemVersion>
  14:	e59f3024 	ldr	r3, [pc, #36]	; 40 <vexSystemAppDebugDataGet+0x40>
  18:	e1500003 	cmp	r0, r3
  1c:	9a000005 	bls	38 <vexSystemAppDebugDataGet+0x38>
  20:	e59f301c 	ldr	r3, [pc, #28]	; 44 <vexSystemAppDebugDataGet+0x44>
  24:	e1a00005 	mov	r0, r5
  28:	e1a01004 	mov	r1, r4
  2c:	e8bd4070 	pop	{r4, r5, r6, lr}
  30:	e59339d0 	ldr	r3, [r3, #2512]	; 0x9d0
  34:	e12fff13 	bx	r3
  38:	e3a00000 	mov	r0, #0
  3c:	e8bd8070 	pop	{r4, r5, r6, pc}
  40:	0100081e 	tsteq	r0, lr, lsl r8
  44:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexCompetitionStatus:

00000000 <vexCompetitionStatus>:
   0:	e92d4010 	push	{r4, lr}
   4:	ebfffffe 	bl	0 <__vex_function_prolog>
   8:	e59f3008 	ldr	r3, [pc, #8]	; 18 <vexCompetitionStatus+0x18>
   c:	e8bd4010 	pop	{r4, lr}
  10:	e59339d8 	ldr	r3, [r3, #2520]	; 0x9d8
  14:	e12fff13 	bx	r3
  18:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexCompetitionControl:

00000000 <vexCompetitionControl>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexCompetitionControl+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e59339dc 	ldr	r3, [r3, #2524]	; 0x9dc
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexBatteryVoltageGet:

00000000 <vexBatteryVoltageGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	ebfffffe 	bl	0 <__vex_function_prolog>
   8:	e59f3008 	ldr	r3, [pc, #8]	; 18 <vexBatteryVoltageGet+0x18>
   c:	e8bd4010 	pop	{r4, lr}
  10:	e5933a00 	ldr	r3, [r3, #2560]	; 0xa00
  14:	e12fff13 	bx	r3
  18:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexBatteryCurrentGet:

00000000 <vexBatteryCurrentGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	ebfffffe 	bl	0 <__vex_function_prolog>
   8:	e59f3008 	ldr	r3, [pc, #8]	; 18 <vexBatteryCurrentGet+0x18>
   c:	e8bd4010 	pop	{r4, lr}
  10:	e5933a04 	ldr	r3, [r3, #2564]	; 0xa04
  14:	e12fff13 	bx	r3
  18:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexBatteryTemperatureGet:

00000000 <vexBatteryTemperatureGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	ebfffffe 	bl	0 <__vex_function_prolog>
   8:	e59f3008 	ldr	r3, [pc, #8]	; 18 <vexBatteryTemperatureGet+0x18>
   c:	e8bd4010 	pop	{r4, lr}
  10:	e5933a08 	ldr	r3, [r3, #2568]	; 0xa08
  14:	e12fff13 	bx	r3
  18:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexBatteryCapacityGet:

00000000 <vexBatteryCapacityGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	ebfffffe 	bl	0 <__vex_function_prolog>
   8:	e59f3008 	ldr	r3, [pc, #8]	; 18 <vexBatteryCapacityGet+0x18>
   c:	e8bd4010 	pop	{r4, lr}
  10:	e5933a0c 	ldr	r3, [r3, #2572]	; 0xa0c
  14:	e12fff13 	bx	r3
  18:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexBatteryDataGet:

00000000 <vexBatteryDataGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	ebfffffe 	bl	0 <__vex_function_prolog>
   8:	e59f3008 	ldr	r3, [pc, #8]	; 18 <vexBatteryDataGet+0x18>
   c:	e8bd4010 	pop	{r4, lr}
  10:	e5933a10 	ldr	r3, [r3, #2576]	; 0xa10
  14:	e12fff13 	bx	r3
  18:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexBatteryDataSet:

00000000 <vexBatteryDataSet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexBatteryDataSet+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e5933a14 	ldr	r3, [r3, #2580]	; 0xa14
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceEventMaskSet:

00000000 <vexDeviceEventMaskSet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a06000 	mov	r6, r0
   8:	e1a05001 	mov	r5, r1
   c:	e1a04002 	mov	r4, r2
  10:	ebfffffe 	bl	0 <__vex_function_prolog>
  14:	ebfffffe 	bl	0 <vexSystemVersion>
  18:	e59f3020 	ldr	r3, [pc, #32]	; 40 <vexDeviceEventMaskSet+0x40>
  1c:	e1500003 	cmp	r0, r3
  20:	98bd8070 	popls	{r4, r5, r6, pc}
  24:	e59f3018 	ldr	r3, [pc, #24]	; 44 <vexDeviceEventMaskSet+0x44>
  28:	e1a00006 	mov	r0, r6
  2c:	e1a01005 	mov	r1, r5
  30:	e1a02004 	mov	r2, r4
  34:	e8bd4070 	pop	{r4, r5, r6, lr}
  38:	e5933a28 	ldr	r3, [r3, #2600]	; 0xa28
  3c:	e12fff13 	bx	r3
  40:	00060700 	andeq	r0, r6, r0, lsl #14
  44:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceEventMaskGet:

00000000 <vexDeviceEventMaskGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <vexSystemVersion>
   c:	e59f3020 	ldr	r3, [pc, #32]	; 34 <vexDeviceEventMaskGet+0x34>
  10:	e1500003 	cmp	r0, r3
  14:	9a000004 	bls	2c <vexDeviceEventMaskGet+0x2c>
  18:	e59f3018 	ldr	r3, [pc, #24]	; 38 <vexDeviceEventMaskGet+0x38>
  1c:	e1a00004 	mov	r0, r4
  20:	e8bd4010 	pop	{r4, lr}
  24:	e5933a2c 	ldr	r3, [r3, #2604]	; 0xa2c
  28:	e12fff13 	bx	r3
  2c:	e3a00000 	mov	r0, #0
  30:	e8bd8010 	pop	{r4, pc}
  34:	00060700 	andeq	r0, r6, r0, lsl #14
  38:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceEventDataSet:

00000000 <vexDeviceEventDataSet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a06000 	mov	r6, r0
   8:	e1a05001 	mov	r5, r1
   c:	e1a04002 	mov	r4, r2
  10:	ebfffffe 	bl	0 <__vex_function_prolog>
  14:	ebfffffe 	bl	0 <vexSystemVersion>
  18:	e59f3020 	ldr	r3, [pc, #32]	; 40 <vexDeviceEventDataSet+0x40>
  1c:	e1500003 	cmp	r0, r3
  20:	98bd8070 	popls	{r4, r5, r6, pc}
  24:	e59f3018 	ldr	r3, [pc, #24]	; 44 <vexDeviceEventDataSet+0x44>
  28:	e1a00006 	mov	r0, r6
  2c:	e1a01005 	mov	r1, r5
  30:	e1a02004 	mov	r2, r4
  34:	e8bd4070 	pop	{r4, r5, r6, lr}
  38:	e5933a30 	ldr	r3, [r3, #2608]	; 0xa30
  3c:	e12fff13 	bx	r3
  40:	00060700 	andeq	r0, r6, r0, lsl #14
  44:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceEventDataGet:

00000000 <vexDeviceEventDataGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <vexSystemVersion>
   c:	e59f3020 	ldr	r3, [pc, #32]	; 34 <vexDeviceEventDataGet+0x34>
  10:	e1500003 	cmp	r0, r3
  14:	9a000004 	bls	2c <vexDeviceEventDataGet+0x2c>
  18:	e59f3018 	ldr	r3, [pc, #24]	; 38 <vexDeviceEventDataGet+0x38>
  1c:	e1a00004 	mov	r0, r4
  20:	e8bd4010 	pop	{r4, lr}
  24:	e5933a34 	ldr	r3, [r3, #2612]	; 0xa34
  28:	e12fff13 	bx	r3
  2c:	e3a00000 	mov	r0, #0
  30:	e8bd8010 	pop	{r4, pc}
  34:	00060700 	andeq	r0, r6, r0, lsl #14
  38:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceEventBitsSet:

00000000 <vexDeviceEventBitsSet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a06000 	mov	r6, r0
   8:	e1a05001 	mov	r5, r1
   c:	e1a04002 	mov	r4, r2
  10:	ebfffffe 	bl	0 <__vex_function_prolog>
  14:	ebfffffe 	bl	0 <vexSystemVersion>
  18:	e59f3020 	ldr	r3, [pc, #32]	; 40 <vexDeviceEventBitsSet+0x40>
  1c:	e1500003 	cmp	r0, r3
  20:	98bd8070 	popls	{r4, r5, r6, pc}
  24:	e59f3018 	ldr	r3, [pc, #24]	; 44 <vexDeviceEventBitsSet+0x44>
  28:	e1a00006 	mov	r0, r6
  2c:	e1a01005 	mov	r1, r5
  30:	e1a02004 	mov	r2, r4
  34:	e8bd4070 	pop	{r4, r5, r6, lr}
  38:	e5933a38 	ldr	r3, [r3, #2616]	; 0xa38
  3c:	e12fff13 	bx	r3
  40:	00060700 	andeq	r0, r6, r0, lsl #14
  44:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceEventBitsGet:

00000000 <vexDeviceEventBitsGet>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <vexSystemVersion>
   c:	e59f3020 	ldr	r3, [pc, #32]	; 34 <vexDeviceEventBitsGet+0x34>
  10:	e1500003 	cmp	r0, r3
  14:	9a000004 	bls	2c <vexDeviceEventBitsGet+0x2c>
  18:	e59f3018 	ldr	r3, [pc, #24]	; 38 <vexDeviceEventBitsGet+0x38>
  1c:	e1a00004 	mov	r0, r4
  20:	e8bd4010 	pop	{r4, lr}
  24:	e5933a3c 	ldr	r3, [r3, #2620]	; 0xa3c
  28:	e12fff13 	bx	r3
  2c:	e3a00000 	mov	r0, #0
  30:	e8bd8010 	pop	{r4, pc}
  34:	00060700 	andeq	r0, r6, r0, lsl #14
  38:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGenericSerialEnable:

00000000 <vexDeviceGenericSerialEnable>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceGenericSerialEnable+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e5933a50 	ldr	r3, [r3, #2640]	; 0xa50
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGenericSerialBaudrate:

00000000 <vexDeviceGenericSerialBaudrate>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceGenericSerialBaudrate+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e5933a54 	ldr	r3, [r3, #2644]	; 0xa54
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGenericSerialWriteChar:

00000000 <vexDeviceGenericSerialWriteChar>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceGenericSerialWriteChar+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e5933a58 	ldr	r3, [r3, #2648]	; 0xa58
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGenericSerialWriteFree:

00000000 <vexDeviceGenericSerialWriteFree>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceGenericSerialWriteFree+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933a5c 	ldr	r3, [r3, #2652]	; 0xa5c
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGenericSerialTransmit:

00000000 <vexDeviceGenericSerialTransmit>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a06000 	mov	r6, r0
   8:	e1a05001 	mov	r5, r1
   c:	e1a04002 	mov	r4, r2
  10:	ebfffffe 	bl	0 <__vex_function_prolog>
  14:	e59f3014 	ldr	r3, [pc, #20]	; 30 <vexDeviceGenericSerialTransmit+0x30>
  18:	e1a00006 	mov	r0, r6
  1c:	e1a01005 	mov	r1, r5
  20:	e1a02004 	mov	r2, r4
  24:	e5933a60 	ldr	r3, [r3, #2656]	; 0xa60
  28:	e8bd4070 	pop	{r4, r5, r6, lr}
  2c:	e12fff13 	bx	r3
  30:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGenericSerialReadChar:

00000000 <vexDeviceGenericSerialReadChar>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceGenericSerialReadChar+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933a64 	ldr	r3, [r3, #2660]	; 0xa64
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGenericSerialPeekChar:

00000000 <vexDeviceGenericSerialPeekChar>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceGenericSerialPeekChar+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933a68 	ldr	r3, [r3, #2664]	; 0xa68
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGenericSerialReceiveAvail:

00000000 <vexDeviceGenericSerialReceiveAvail>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceGenericSerialReceiveAvail+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933a6c 	ldr	r3, [r3, #2668]	; 0xa6c
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGenericSerialReceive:

00000000 <vexDeviceGenericSerialReceive>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a06000 	mov	r6, r0
   8:	e1a05001 	mov	r5, r1
   c:	e1a04002 	mov	r4, r2
  10:	ebfffffe 	bl	0 <__vex_function_prolog>
  14:	e59f3014 	ldr	r3, [pc, #20]	; 30 <vexDeviceGenericSerialReceive+0x30>
  18:	e1a00006 	mov	r0, r6
  1c:	e1a01005 	mov	r1, r5
  20:	e1a02004 	mov	r2, r4
  24:	e5933a70 	ldr	r3, [r3, #2672]	; 0xa70
  28:	e8bd4070 	pop	{r4, r5, r6, lr}
  2c:	e12fff13 	bx	r3
  30:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGenericSerialFlush:

00000000 <vexDeviceGenericSerialFlush>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceGenericSerialFlush+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933a74 	ldr	r3, [r3, #2676]	; 0xa74
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGenericSerialDisableAll:

00000000 <vexDeviceGenericSerialDisableAll>:
   0:	e92d4010 	push	{r4, lr}
   4:	ebfffffe 	bl	0 <__vex_function_prolog>
   8:	e59f3008 	ldr	r3, [pc, #8]	; 18 <vexDeviceGenericSerialDisableAll+0x18>
   c:	e8bd4010 	pop	{r4, lr}
  10:	e5933a78 	ldr	r3, [r3, #2680]	; 0xa78
  14:	e12fff13 	bx	r3
  18:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGenericSerialCdcRead:

00000000 <vexDeviceGenericSerialCdcRead>:
   0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   4:	e1a04003 	mov	r4, r3
   8:	e1a07000 	mov	r7, r0
   c:	e1a06001 	mov	r6, r1
  10:	e1a05002 	mov	r5, r2
  14:	ebfffffe 	bl	0 <__vex_function_prolog>
  18:	e59f3018 	ldr	r3, [pc, #24]	; 38 <vexDeviceGenericSerialCdcRead+0x38>
  1c:	e1a00007 	mov	r0, r7
  20:	e1a01006 	mov	r1, r6
  24:	e1a02005 	mov	r2, r5
  28:	e593ca7c 	ldr	ip, [r3, #2684]	; 0xa7c
  2c:	e1a03004 	mov	r3, r4
  30:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
  34:	e12fff1c 	bx	ip
  38:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGenericRadioEnable:

00000000 <vexDeviceGenericRadioEnable>:
   0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   4:	e1a04003 	mov	r4, r3
   8:	e1a07000 	mov	r7, r0
   c:	e1a06001 	mov	r6, r1
  10:	e1a05002 	mov	r5, r2
  14:	e5dd8018 	ldrb	r8, [sp, #24]
  18:	ebfffffe 	bl	0 <__vex_function_prolog>
  1c:	e59f301c 	ldr	r3, [pc, #28]	; 40 <vexDeviceGenericRadioEnable+0x40>
  20:	e1a00007 	mov	r0, r7
  24:	e1a01006 	mov	r1, r6
  28:	e58d8018 	str	r8, [sp, #24]
  2c:	e1a02005 	mov	r2, r5
  30:	e593caa0 	ldr	ip, [r3, #2720]	; 0xaa0
  34:	e1a03004 	mov	r3, r4
  38:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
  3c:	e12fff1c 	bx	ip
  40:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGenericRadioDebugGet:

00000000 <vexDeviceGenericRadioDebugGet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceGenericRadioDebugGet+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e5933acc 	ldr	r3, [r3, #2764]	; 0xacc
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGenericRadioConnection:

00000000 <vexDeviceGenericRadioConnection>:
   0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   4:	e1a04003 	mov	r4, r3
   8:	e1a07000 	mov	r7, r0
   c:	e1a06001 	mov	r6, r1
  10:	e1a05002 	mov	r5, r2
  14:	ebfffffe 	bl	0 <__vex_function_prolog>
  18:	e59f3018 	ldr	r3, [pc, #24]	; 38 <vexDeviceGenericRadioConnection+0x38>
  1c:	e1a00007 	mov	r0, r7
  20:	e1a01006 	mov	r1, r6
  24:	e1a02005 	mov	r2, r5
  28:	e593caa4 	ldr	ip, [r3, #2724]	; 0xaa4
  2c:	e1a03004 	mov	r3, r4
  30:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
  34:	e12fff1c 	bx	ip
  38:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGenericRadioWriteChar:

00000000 <vexDeviceGenericRadioWriteChar>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceGenericRadioWriteChar+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e5933aa8 	ldr	r3, [r3, #2728]	; 0xaa8
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGenericRadioWriteFree:

00000000 <vexDeviceGenericRadioWriteFree>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceGenericRadioWriteFree+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933aac 	ldr	r3, [r3, #2732]	; 0xaac
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGenericRadioTransmit:

00000000 <vexDeviceGenericRadioTransmit>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a06000 	mov	r6, r0
   8:	e1a05001 	mov	r5, r1
   c:	e1a04002 	mov	r4, r2
  10:	ebfffffe 	bl	0 <__vex_function_prolog>
  14:	e59f3014 	ldr	r3, [pc, #20]	; 30 <vexDeviceGenericRadioTransmit+0x30>
  18:	e1a00006 	mov	r0, r6
  1c:	e1a01005 	mov	r1, r5
  20:	e1a02004 	mov	r2, r4
  24:	e5933ab0 	ldr	r3, [r3, #2736]	; 0xab0
  28:	e8bd4070 	pop	{r4, r5, r6, lr}
  2c:	e12fff13 	bx	r3
  30:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGenericRadioReadChar:

00000000 <vexDeviceGenericRadioReadChar>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceGenericRadioReadChar+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933ab4 	ldr	r3, [r3, #2740]	; 0xab4
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGenericRadioPeekChar:

00000000 <vexDeviceGenericRadioPeekChar>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceGenericRadioPeekChar+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933ab8 	ldr	r3, [r3, #2744]	; 0xab8
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGenericRadioReceiveAvail:

00000000 <vexDeviceGenericRadioReceiveAvail>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceGenericRadioReceiveAvail+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933abc 	ldr	r3, [r3, #2748]	; 0xabc
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGenericRadioReceive:

00000000 <vexDeviceGenericRadioReceive>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a06000 	mov	r6, r0
   8:	e1a05001 	mov	r5, r1
   c:	e1a04002 	mov	r4, r2
  10:	ebfffffe 	bl	0 <__vex_function_prolog>
  14:	e59f3014 	ldr	r3, [pc, #20]	; 30 <vexDeviceGenericRadioReceive+0x30>
  18:	e1a00006 	mov	r0, r6
  1c:	e1a01005 	mov	r1, r5
  20:	e1a02004 	mov	r2, r4
  24:	e5933ac0 	ldr	r3, [r3, #2752]	; 0xac0
  28:	e8bd4070 	pop	{r4, r5, r6, lr}
  2c:	e12fff13 	bx	r3
  30:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGenericRadioFlush:

00000000 <vexDeviceGenericRadioFlush>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceGenericRadioFlush+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933ac4 	ldr	r3, [r3, #2756]	; 0xac4
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGenericRadioLinkStatus:

00000000 <vexDeviceGenericRadioLinkStatus>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceGenericRadioLinkStatus+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933ac8 	ldr	r3, [r3, #2760]	; 0xac8
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGenericCdcEnable:

00000000 <vexDeviceGenericCdcEnable>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceGenericCdcEnable+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e5933af0 	ldr	r3, [r3, #2800]	; 0xaf0
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGenericCdcDebugGet:

00000000 <vexDeviceGenericCdcDebugGet>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceGenericCdcDebugGet+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e5933b1c 	ldr	r3, [r3, #2844]	; 0xb1c
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGenericCdcConnection:

00000000 <vexDeviceGenericCdcConnection>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceGenericCdcConnection+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e5933af4 	ldr	r3, [r3, #2804]	; 0xaf4
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGenericCdcWriteChar:

00000000 <vexDeviceGenericCdcWriteChar>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a05000 	mov	r5, r0
   8:	e1a04001 	mov	r4, r1
   c:	ebfffffe 	bl	0 <__vex_function_prolog>
  10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <vexDeviceGenericCdcWriteChar+0x28>
  14:	e1a00005 	mov	r0, r5
  18:	e1a01004 	mov	r1, r4
  1c:	e8bd4070 	pop	{r4, r5, r6, lr}
  20:	e5933af8 	ldr	r3, [r3, #2808]	; 0xaf8
  24:	e12fff13 	bx	r3
  28:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGenericCdcWriteFree:

00000000 <vexDeviceGenericCdcWriteFree>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceGenericCdcWriteFree+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933afc 	ldr	r3, [r3, #2812]	; 0xafc
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGenericCdcTransmit:

00000000 <vexDeviceGenericCdcTransmit>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a06000 	mov	r6, r0
   8:	e1a05001 	mov	r5, r1
   c:	e1a04002 	mov	r4, r2
  10:	ebfffffe 	bl	0 <__vex_function_prolog>
  14:	e59f3014 	ldr	r3, [pc, #20]	; 30 <vexDeviceGenericCdcTransmit+0x30>
  18:	e1a00006 	mov	r0, r6
  1c:	e1a01005 	mov	r1, r5
  20:	e1a02004 	mov	r2, r4
  24:	e5933b00 	ldr	r3, [r3, #2816]	; 0xb00
  28:	e8bd4070 	pop	{r4, r5, r6, lr}
  2c:	e12fff13 	bx	r3
  30:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGenericCdcReadChar:

00000000 <vexDeviceGenericCdcReadChar>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceGenericCdcReadChar+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933b04 	ldr	r3, [r3, #2820]	; 0xb04
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGenericCdcPeekChar:

00000000 <vexDeviceGenericCdcPeekChar>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceGenericCdcPeekChar+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933b08 	ldr	r3, [r3, #2824]	; 0xb08
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGenericCdcReceiveAvail:

00000000 <vexDeviceGenericCdcReceiveAvail>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceGenericCdcReceiveAvail+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933b0c 	ldr	r3, [r3, #2828]	; 0xb0c
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGenericCdcReceive:

00000000 <vexDeviceGenericCdcReceive>:
   0:	e92d4070 	push	{r4, r5, r6, lr}
   4:	e1a06000 	mov	r6, r0
   8:	e1a05001 	mov	r5, r1
   c:	e1a04002 	mov	r4, r2
  10:	ebfffffe 	bl	0 <__vex_function_prolog>
  14:	e59f3014 	ldr	r3, [pc, #20]	; 30 <vexDeviceGenericCdcReceive+0x30>
  18:	e1a00006 	mov	r0, r6
  1c:	e1a01005 	mov	r1, r5
  20:	e1a02004 	mov	r2, r4
  24:	e5933b10 	ldr	r3, [r3, #2832]	; 0xb10
  28:	e8bd4070 	pop	{r4, r5, r6, lr}
  2c:	e12fff13 	bx	r3
  30:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGenericCdcFlush:

00000000 <vexDeviceGenericCdcFlush>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceGenericCdcFlush+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933b14 	ldr	r3, [r3, #2836]	; 0xb14
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexDeviceGenericCdcLinkStatus:

00000000 <vexDeviceGenericCdcLinkStatus>:
   0:	e92d4010 	push	{r4, lr}
   4:	e1a04000 	mov	r4, r0
   8:	ebfffffe 	bl	0 <__vex_function_prolog>
   c:	e59f300c 	ldr	r3, [pc, #12]	; 20 <vexDeviceGenericCdcLinkStatus+0x20>
  10:	e1a00004 	mov	r0, r4
  14:	e8bd4010 	pop	{r4, lr}
  18:	e5933b18 	ldr	r3, [r3, #2840]	; 0xb18
  1c:	e12fff13 	bx	r3
  20:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexCdc2Command:

00000000 <vexCdc2Command>:
   0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   4:	e1a04003 	mov	r4, r3
   8:	e1a07000 	mov	r7, r0
   c:	e1a06001 	mov	r6, r1
  10:	e1a05002 	mov	r5, r2
  14:	e59d8018 	ldr	r8, [sp, #24]
  18:	ebfffffe 	bl	0 <__vex_function_prolog>
  1c:	e59f301c 	ldr	r3, [pc, #28]	; 40 <vexCdc2Command+0x40>
  20:	e1a00007 	mov	r0, r7
  24:	e1a01006 	mov	r1, r6
  28:	e58d8018 	str	r8, [sp, #24]
  2c:	e1a02005 	mov	r2, r5
  30:	e593cf28 	ldr	ip, [r3, #3880]	; 0xf28
  34:	e1a03004 	mov	r3, r4
  38:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
  3c:	e12fff1c 	bx	ip
  40:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexCdc2ReplyWithoutPacket:

00000000 <vexCdc2ReplyWithoutPacket>:
   0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   4:	e1a04003 	mov	r4, r3
   8:	e1a07000 	mov	r7, r0
   c:	e1a06001 	mov	r6, r1
  10:	e1a05002 	mov	r5, r2
  14:	e5dd8018 	ldrb	r8, [sp, #24]
  18:	ebfffffe 	bl	0 <__vex_function_prolog>
  1c:	e59f301c 	ldr	r3, [pc, #28]	; 40 <vexCdc2ReplyWithoutPacket+0x40>
  20:	e1a00007 	mov	r0, r7
  24:	e1a01006 	mov	r1, r6
  28:	e58d8018 	str	r8, [sp, #24]
  2c:	e1a02005 	mov	r2, r5
  30:	e593cf2c 	ldr	ip, [r3, #3884]	; 0xf2c
  34:	e1a03004 	mov	r3, r4
  38:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
  3c:	e12fff1c 	bx	ip
  40:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexCdc2SendSimpleMessage:

00000000 <vexCdc2SendSimpleMessage>:
   0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   4:	e1a04003 	mov	r4, r3
   8:	e1a07000 	mov	r7, r0
   c:	e1a06001 	mov	r6, r1
  10:	e1a05002 	mov	r5, r2
  14:	ebfffffe 	bl	0 <__vex_function_prolog>
  18:	e59f3018 	ldr	r3, [pc, #24]	; 38 <vexCdc2SendSimpleMessage+0x38>
  1c:	e1a00007 	mov	r0, r7
  20:	e1a01006 	mov	r1, r6
  24:	e1a02005 	mov	r2, r5
  28:	e593cf30 	ldr	ip, [r3, #3888]	; 0xf30
  2c:	e1a03004 	mov	r3, r4
  30:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
  34:	e12fff1c 	bx	ip
  38:	037fc000 	cmneq	pc, #0

Disassembly of section .text.vexCdc2SendExtMessage:

00000000 <vexCdc2SendExtMessage>:
   0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   4:	e1a04003 	mov	r4, r3
   8:	e1a07000 	mov	r7, r0
   c:	e1a06001 	mov	r6, r1
  10:	e1a05002 	mov	r5, r2
  14:	e5dd8018 	ldrb	r8, [sp, #24]
  18:	ebfffffe 	bl	0 <__vex_function_prolog>
  1c:	e59f301c 	ldr	r3, [pc, #28]	; 40 <vexCdc2SendExtMessage+0x40>
  20:	e1a00007 	mov	r0, r7
  24:	e1a01006 	mov	r1, r6
  28:	e58d8018 	str	r8, [sp, #24]
  2c:	e1a02005 	mov	r2, r5
  30:	e593cf34 	ldr	ip, [r3, #3892]	; 0xf34
  34:	e1a03004 	mov	r3, r4
  38:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
  3c:	e12fff1c 	bx	ip
  40:	037fc000 	cmneq	pc, #0

Disassembly of section .bss.__xoff:

00000000 <.bss.__xoff>:
   0:	00000000 	andeq	r0, r0, r0

Disassembly of section .data.__yoff:

00000000 <.data.__yoff>:
   0:	00000020 	andeq	r0, r0, r0, lsr #32

Disassembly of section .rodata.str1.1:

00000000 <.rodata.str1.1>:
   0:	6163656c 	cmnvs	r3, ip, ror #10
   4:	62207963 	eorvs	r7, r0, #1622016	; 0x18c000
   8:	646c6975 	strbtvs	r6, [ip], #-2421	; 0xfffff68b
   c:	Address 0x000000000000000c is out of bounds.


Disassembly of section .bss.lastTime.9835:

00000000 <.bss.lastTime.9835>:
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
  44:	5b202965 	blpl	80a5e0 <vexDeviceGpsAttitudeGet+0x80a5e0>
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

