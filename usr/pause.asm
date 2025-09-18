
_pause:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      14:	e51b3010 	ldr	r3, [fp, #-16]
      18:	e3530002 	cmp	r3, #2
      1c:	0a000003 	beq	30 <main+0x30>
      20:	e59f105c 	ldr	r1, [pc, #92]	@ 84 <main+0x84>
      24:	e3a00002 	mov	r0, #2
      28:	eb00026f 	bl	9ec <printf>
      2c:	eb000155 	bl	588 <exit>
      30:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      34:	e2833004 	add	r3, r3, #4
      38:	e5933000 	ldr	r3, [r3]
      3c:	e1a00003 	mov	r0, r3
      40:	eb000109 	bl	46c <atoi>
      44:	e50b0008 	str	r0, [fp, #-8]
      48:	e51b3008 	ldr	r3, [fp, #-8]
      4c:	e3530000 	cmp	r3, #0
      50:	aa000003 	bge	64 <main+0x64>
      54:	e59f102c 	ldr	r1, [pc, #44]	@ 88 <main+0x88>
      58:	e3a00002 	mov	r0, #2
      5c:	eb000262 	bl	9ec <printf>
      60:	eb000148 	bl	588 <exit>
      64:	e51b2008 	ldr	r2, [fp, #-8]
      68:	e1a03002 	mov	r3, r2
      6c:	e1a03103 	lsl	r3, r3, #2
      70:	e0833002 	add	r3, r3, r2
      74:	e1a03083 	lsl	r3, r3, #1
      78:	e1a00003 	mov	r0, r3
      7c:	eb0001e3 	bl	810 <sleep>
      80:	eb000140 	bl	588 <exit>
      84:	000010a8 	.word	0x000010a8
      88:	000010c0 	.word	0x000010c0

0000008c <strcpy>:
      8c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      90:	e28db000 	add	fp, sp, #0
      94:	e24dd014 	sub	sp, sp, #20
      98:	e50b0010 	str	r0, [fp, #-16]
      9c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      a0:	e51b3010 	ldr	r3, [fp, #-16]
      a4:	e50b3008 	str	r3, [fp, #-8]
      a8:	e1a00000 	nop			@ (mov r0, r0)
      ac:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      b0:	e2823001 	add	r3, r2, #1
      b4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      b8:	e51b3010 	ldr	r3, [fp, #-16]
      bc:	e2831001 	add	r1, r3, #1
      c0:	e50b1010 	str	r1, [fp, #-16]
      c4:	e5d22000 	ldrb	r2, [r2]
      c8:	e5c32000 	strb	r2, [r3]
      cc:	e5d33000 	ldrb	r3, [r3]
      d0:	e3530000 	cmp	r3, #0
      d4:	1afffff4 	bne	ac <strcpy+0x20>
      d8:	e51b3008 	ldr	r3, [fp, #-8]
      dc:	e1a00003 	mov	r0, r3
      e0:	e28bd000 	add	sp, fp, #0
      e4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
      e8:	e12fff1e 	bx	lr

000000ec <strcmp>:
      ec:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      f0:	e28db000 	add	fp, sp, #0
      f4:	e24dd00c 	sub	sp, sp, #12
      f8:	e50b0008 	str	r0, [fp, #-8]
      fc:	e50b100c 	str	r1, [fp, #-12]
     100:	ea000005 	b	11c <strcmp+0x30>
     104:	e51b3008 	ldr	r3, [fp, #-8]
     108:	e2833001 	add	r3, r3, #1
     10c:	e50b3008 	str	r3, [fp, #-8]
     110:	e51b300c 	ldr	r3, [fp, #-12]
     114:	e2833001 	add	r3, r3, #1
     118:	e50b300c 	str	r3, [fp, #-12]
     11c:	e51b3008 	ldr	r3, [fp, #-8]
     120:	e5d33000 	ldrb	r3, [r3]
     124:	e3530000 	cmp	r3, #0
     128:	0a000005 	beq	144 <strcmp+0x58>
     12c:	e51b3008 	ldr	r3, [fp, #-8]
     130:	e5d32000 	ldrb	r2, [r3]
     134:	e51b300c 	ldr	r3, [fp, #-12]
     138:	e5d33000 	ldrb	r3, [r3]
     13c:	e1520003 	cmp	r2, r3
     140:	0affffef 	beq	104 <strcmp+0x18>
     144:	e51b3008 	ldr	r3, [fp, #-8]
     148:	e5d33000 	ldrb	r3, [r3]
     14c:	e1a02003 	mov	r2, r3
     150:	e51b300c 	ldr	r3, [fp, #-12]
     154:	e5d33000 	ldrb	r3, [r3]
     158:	e0423003 	sub	r3, r2, r3
     15c:	e1a00003 	mov	r0, r3
     160:	e28bd000 	add	sp, fp, #0
     164:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     168:	e12fff1e 	bx	lr

0000016c <strlen>:
     16c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     170:	e28db000 	add	fp, sp, #0
     174:	e24dd014 	sub	sp, sp, #20
     178:	e50b0010 	str	r0, [fp, #-16]
     17c:	e3a03000 	mov	r3, #0
     180:	e50b3008 	str	r3, [fp, #-8]
     184:	ea000002 	b	194 <strlen+0x28>
     188:	e51b3008 	ldr	r3, [fp, #-8]
     18c:	e2833001 	add	r3, r3, #1
     190:	e50b3008 	str	r3, [fp, #-8]
     194:	e51b3008 	ldr	r3, [fp, #-8]
     198:	e51b2010 	ldr	r2, [fp, #-16]
     19c:	e0823003 	add	r3, r2, r3
     1a0:	e5d33000 	ldrb	r3, [r3]
     1a4:	e3530000 	cmp	r3, #0
     1a8:	1afffff6 	bne	188 <strlen+0x1c>
     1ac:	e51b3008 	ldr	r3, [fp, #-8]
     1b0:	e1a00003 	mov	r0, r3
     1b4:	e28bd000 	add	sp, fp, #0
     1b8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1bc:	e12fff1e 	bx	lr

000001c0 <memset>:
     1c0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1c4:	e28db000 	add	fp, sp, #0
     1c8:	e24dd024 	sub	sp, sp, #36	@ 0x24
     1cc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     1d0:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     1d4:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     1d8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     1dc:	e50b3008 	str	r3, [fp, #-8]
     1e0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     1e4:	e54b300d 	strb	r3, [fp, #-13]
     1e8:	e55b200d 	ldrb	r2, [fp, #-13]
     1ec:	e1a03002 	mov	r3, r2
     1f0:	e1a03403 	lsl	r3, r3, #8
     1f4:	e0833002 	add	r3, r3, r2
     1f8:	e1a03803 	lsl	r3, r3, #16
     1fc:	e1a02003 	mov	r2, r3
     200:	e55b300d 	ldrb	r3, [fp, #-13]
     204:	e1a03403 	lsl	r3, r3, #8
     208:	e1822003 	orr	r2, r2, r3
     20c:	e55b300d 	ldrb	r3, [fp, #-13]
     210:	e1823003 	orr	r3, r2, r3
     214:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     218:	ea000008 	b	240 <memset+0x80>
     21c:	e51b3008 	ldr	r3, [fp, #-8]
     220:	e55b200d 	ldrb	r2, [fp, #-13]
     224:	e5c32000 	strb	r2, [r3]
     228:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     22c:	e2433001 	sub	r3, r3, #1
     230:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     234:	e51b3008 	ldr	r3, [fp, #-8]
     238:	e2833001 	add	r3, r3, #1
     23c:	e50b3008 	str	r3, [fp, #-8]
     240:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     244:	e3530000 	cmp	r3, #0
     248:	0a000003 	beq	25c <memset+0x9c>
     24c:	e51b3008 	ldr	r3, [fp, #-8]
     250:	e2033003 	and	r3, r3, #3
     254:	e3530000 	cmp	r3, #0
     258:	1affffef 	bne	21c <memset+0x5c>
     25c:	e51b3008 	ldr	r3, [fp, #-8]
     260:	e50b300c 	str	r3, [fp, #-12]
     264:	ea000008 	b	28c <memset+0xcc>
     268:	e51b300c 	ldr	r3, [fp, #-12]
     26c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     270:	e5832000 	str	r2, [r3]
     274:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     278:	e2433004 	sub	r3, r3, #4
     27c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     280:	e51b300c 	ldr	r3, [fp, #-12]
     284:	e2833004 	add	r3, r3, #4
     288:	e50b300c 	str	r3, [fp, #-12]
     28c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     290:	e3530003 	cmp	r3, #3
     294:	8afffff3 	bhi	268 <memset+0xa8>
     298:	e51b300c 	ldr	r3, [fp, #-12]
     29c:	e50b3008 	str	r3, [fp, #-8]
     2a0:	ea000008 	b	2c8 <memset+0x108>
     2a4:	e51b3008 	ldr	r3, [fp, #-8]
     2a8:	e55b200d 	ldrb	r2, [fp, #-13]
     2ac:	e5c32000 	strb	r2, [r3]
     2b0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2b4:	e2433001 	sub	r3, r3, #1
     2b8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2bc:	e51b3008 	ldr	r3, [fp, #-8]
     2c0:	e2833001 	add	r3, r3, #1
     2c4:	e50b3008 	str	r3, [fp, #-8]
     2c8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2cc:	e3530000 	cmp	r3, #0
     2d0:	1afffff3 	bne	2a4 <memset+0xe4>
     2d4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     2d8:	e1a00003 	mov	r0, r3
     2dc:	e28bd000 	add	sp, fp, #0
     2e0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2e4:	e12fff1e 	bx	lr

000002e8 <strchr>:
     2e8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2ec:	e28db000 	add	fp, sp, #0
     2f0:	e24dd00c 	sub	sp, sp, #12
     2f4:	e50b0008 	str	r0, [fp, #-8]
     2f8:	e1a03001 	mov	r3, r1
     2fc:	e54b3009 	strb	r3, [fp, #-9]
     300:	ea000009 	b	32c <strchr+0x44>
     304:	e51b3008 	ldr	r3, [fp, #-8]
     308:	e5d33000 	ldrb	r3, [r3]
     30c:	e55b2009 	ldrb	r2, [fp, #-9]
     310:	e1520003 	cmp	r2, r3
     314:	1a000001 	bne	320 <strchr+0x38>
     318:	e51b3008 	ldr	r3, [fp, #-8]
     31c:	ea000007 	b	340 <strchr+0x58>
     320:	e51b3008 	ldr	r3, [fp, #-8]
     324:	e2833001 	add	r3, r3, #1
     328:	e50b3008 	str	r3, [fp, #-8]
     32c:	e51b3008 	ldr	r3, [fp, #-8]
     330:	e5d33000 	ldrb	r3, [r3]
     334:	e3530000 	cmp	r3, #0
     338:	1afffff1 	bne	304 <strchr+0x1c>
     33c:	e3a03000 	mov	r3, #0
     340:	e1a00003 	mov	r0, r3
     344:	e28bd000 	add	sp, fp, #0
     348:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     34c:	e12fff1e 	bx	lr

00000350 <gets>:
     350:	e92d4800 	push	{fp, lr}
     354:	e28db004 	add	fp, sp, #4
     358:	e24dd018 	sub	sp, sp, #24
     35c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     360:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     364:	e3a03000 	mov	r3, #0
     368:	e50b3008 	str	r3, [fp, #-8]
     36c:	ea000016 	b	3cc <gets+0x7c>
     370:	e24b300d 	sub	r3, fp, #13
     374:	e3a02001 	mov	r2, #1
     378:	e1a01003 	mov	r1, r3
     37c:	e3a00000 	mov	r0, #0
     380:	eb00009b 	bl	5f4 <read>
     384:	e50b000c 	str	r0, [fp, #-12]
     388:	e51b300c 	ldr	r3, [fp, #-12]
     38c:	e3530000 	cmp	r3, #0
     390:	da000013 	ble	3e4 <gets+0x94>
     394:	e51b3008 	ldr	r3, [fp, #-8]
     398:	e2832001 	add	r2, r3, #1
     39c:	e50b2008 	str	r2, [fp, #-8]
     3a0:	e1a02003 	mov	r2, r3
     3a4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3a8:	e0833002 	add	r3, r3, r2
     3ac:	e55b200d 	ldrb	r2, [fp, #-13]
     3b0:	e5c32000 	strb	r2, [r3]
     3b4:	e55b300d 	ldrb	r3, [fp, #-13]
     3b8:	e353000a 	cmp	r3, #10
     3bc:	0a000009 	beq	3e8 <gets+0x98>
     3c0:	e55b300d 	ldrb	r3, [fp, #-13]
     3c4:	e353000d 	cmp	r3, #13
     3c8:	0a000006 	beq	3e8 <gets+0x98>
     3cc:	e51b3008 	ldr	r3, [fp, #-8]
     3d0:	e2833001 	add	r3, r3, #1
     3d4:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     3d8:	e1520003 	cmp	r2, r3
     3dc:	caffffe3 	bgt	370 <gets+0x20>
     3e0:	ea000000 	b	3e8 <gets+0x98>
     3e4:	e1a00000 	nop			@ (mov r0, r0)
     3e8:	e51b3008 	ldr	r3, [fp, #-8]
     3ec:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     3f0:	e0823003 	add	r3, r2, r3
     3f4:	e3a02000 	mov	r2, #0
     3f8:	e5c32000 	strb	r2, [r3]
     3fc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     400:	e1a00003 	mov	r0, r3
     404:	e24bd004 	sub	sp, fp, #4
     408:	e8bd8800 	pop	{fp, pc}

0000040c <stat>:
     40c:	e92d4800 	push	{fp, lr}
     410:	e28db004 	add	fp, sp, #4
     414:	e24dd010 	sub	sp, sp, #16
     418:	e50b0010 	str	r0, [fp, #-16]
     41c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     420:	e3a01000 	mov	r1, #0
     424:	e51b0010 	ldr	r0, [fp, #-16]
     428:	eb00009e 	bl	6a8 <open>
     42c:	e50b0008 	str	r0, [fp, #-8]
     430:	e51b3008 	ldr	r3, [fp, #-8]
     434:	e3530000 	cmp	r3, #0
     438:	aa000001 	bge	444 <stat+0x38>
     43c:	e3e03000 	mvn	r3, #0
     440:	ea000006 	b	460 <stat+0x54>
     444:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     448:	e51b0008 	ldr	r0, [fp, #-8]
     44c:	eb0000b0 	bl	714 <fstat>
     450:	e50b000c 	str	r0, [fp, #-12]
     454:	e51b0008 	ldr	r0, [fp, #-8]
     458:	eb000077 	bl	63c <close>
     45c:	e51b300c 	ldr	r3, [fp, #-12]
     460:	e1a00003 	mov	r0, r3
     464:	e24bd004 	sub	sp, fp, #4
     468:	e8bd8800 	pop	{fp, pc}

0000046c <atoi>:
     46c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     470:	e28db000 	add	fp, sp, #0
     474:	e24dd014 	sub	sp, sp, #20
     478:	e50b0010 	str	r0, [fp, #-16]
     47c:	e3a03000 	mov	r3, #0
     480:	e50b3008 	str	r3, [fp, #-8]
     484:	ea00000c 	b	4bc <atoi+0x50>
     488:	e51b2008 	ldr	r2, [fp, #-8]
     48c:	e1a03002 	mov	r3, r2
     490:	e1a03103 	lsl	r3, r3, #2
     494:	e0833002 	add	r3, r3, r2
     498:	e1a03083 	lsl	r3, r3, #1
     49c:	e1a01003 	mov	r1, r3
     4a0:	e51b3010 	ldr	r3, [fp, #-16]
     4a4:	e2832001 	add	r2, r3, #1
     4a8:	e50b2010 	str	r2, [fp, #-16]
     4ac:	e5d33000 	ldrb	r3, [r3]
     4b0:	e0813003 	add	r3, r1, r3
     4b4:	e2433030 	sub	r3, r3, #48	@ 0x30
     4b8:	e50b3008 	str	r3, [fp, #-8]
     4bc:	e51b3010 	ldr	r3, [fp, #-16]
     4c0:	e5d33000 	ldrb	r3, [r3]
     4c4:	e353002f 	cmp	r3, #47	@ 0x2f
     4c8:	9a000003 	bls	4dc <atoi+0x70>
     4cc:	e51b3010 	ldr	r3, [fp, #-16]
     4d0:	e5d33000 	ldrb	r3, [r3]
     4d4:	e3530039 	cmp	r3, #57	@ 0x39
     4d8:	9affffea 	bls	488 <atoi+0x1c>
     4dc:	e51b3008 	ldr	r3, [fp, #-8]
     4e0:	e1a00003 	mov	r0, r3
     4e4:	e28bd000 	add	sp, fp, #0
     4e8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     4ec:	e12fff1e 	bx	lr

000004f0 <memmove>:
     4f0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4f4:	e28db000 	add	fp, sp, #0
     4f8:	e24dd01c 	sub	sp, sp, #28
     4fc:	e50b0010 	str	r0, [fp, #-16]
     500:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     504:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     508:	e51b3010 	ldr	r3, [fp, #-16]
     50c:	e50b3008 	str	r3, [fp, #-8]
     510:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     514:	e50b300c 	str	r3, [fp, #-12]
     518:	ea000007 	b	53c <memmove+0x4c>
     51c:	e51b200c 	ldr	r2, [fp, #-12]
     520:	e2823001 	add	r3, r2, #1
     524:	e50b300c 	str	r3, [fp, #-12]
     528:	e51b3008 	ldr	r3, [fp, #-8]
     52c:	e2831001 	add	r1, r3, #1
     530:	e50b1008 	str	r1, [fp, #-8]
     534:	e5d22000 	ldrb	r2, [r2]
     538:	e5c32000 	strb	r2, [r3]
     53c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     540:	e2432001 	sub	r2, r3, #1
     544:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     548:	e3530000 	cmp	r3, #0
     54c:	cafffff2 	bgt	51c <memmove+0x2c>
     550:	e51b3010 	ldr	r3, [fp, #-16]
     554:	e1a00003 	mov	r0, r3
     558:	e28bd000 	add	sp, fp, #0
     55c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     560:	e12fff1e 	bx	lr

00000564 <fork>:
     564:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     568:	e1a04003 	mov	r4, r3
     56c:	e1a03002 	mov	r3, r2
     570:	e1a02001 	mov	r2, r1
     574:	e1a01000 	mov	r1, r0
     578:	e3a00001 	mov	r0, #1
     57c:	ef000000 	svc	0x00000000
     580:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     584:	e12fff1e 	bx	lr

00000588 <exit>:
     588:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     58c:	e1a04003 	mov	r4, r3
     590:	e1a03002 	mov	r3, r2
     594:	e1a02001 	mov	r2, r1
     598:	e1a01000 	mov	r1, r0
     59c:	e3a00002 	mov	r0, #2
     5a0:	ef000000 	svc	0x00000000
     5a4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5a8:	e12fff1e 	bx	lr

000005ac <wait>:
     5ac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5b0:	e1a04003 	mov	r4, r3
     5b4:	e1a03002 	mov	r3, r2
     5b8:	e1a02001 	mov	r2, r1
     5bc:	e1a01000 	mov	r1, r0
     5c0:	e3a00003 	mov	r0, #3
     5c4:	ef000000 	svc	0x00000000
     5c8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5cc:	e12fff1e 	bx	lr

000005d0 <pipe>:
     5d0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5d4:	e1a04003 	mov	r4, r3
     5d8:	e1a03002 	mov	r3, r2
     5dc:	e1a02001 	mov	r2, r1
     5e0:	e1a01000 	mov	r1, r0
     5e4:	e3a00004 	mov	r0, #4
     5e8:	ef000000 	svc	0x00000000
     5ec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5f0:	e12fff1e 	bx	lr

000005f4 <read>:
     5f4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5f8:	e1a04003 	mov	r4, r3
     5fc:	e1a03002 	mov	r3, r2
     600:	e1a02001 	mov	r2, r1
     604:	e1a01000 	mov	r1, r0
     608:	e3a00005 	mov	r0, #5
     60c:	ef000000 	svc	0x00000000
     610:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     614:	e12fff1e 	bx	lr

00000618 <write>:
     618:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     61c:	e1a04003 	mov	r4, r3
     620:	e1a03002 	mov	r3, r2
     624:	e1a02001 	mov	r2, r1
     628:	e1a01000 	mov	r1, r0
     62c:	e3a00010 	mov	r0, #16
     630:	ef000000 	svc	0x00000000
     634:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     638:	e12fff1e 	bx	lr

0000063c <close>:
     63c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     640:	e1a04003 	mov	r4, r3
     644:	e1a03002 	mov	r3, r2
     648:	e1a02001 	mov	r2, r1
     64c:	e1a01000 	mov	r1, r0
     650:	e3a00015 	mov	r0, #21
     654:	ef000000 	svc	0x00000000
     658:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     65c:	e12fff1e 	bx	lr

00000660 <kill>:
     660:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     664:	e1a04003 	mov	r4, r3
     668:	e1a03002 	mov	r3, r2
     66c:	e1a02001 	mov	r2, r1
     670:	e1a01000 	mov	r1, r0
     674:	e3a00006 	mov	r0, #6
     678:	ef000000 	svc	0x00000000
     67c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     680:	e12fff1e 	bx	lr

00000684 <exec>:
     684:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     688:	e1a04003 	mov	r4, r3
     68c:	e1a03002 	mov	r3, r2
     690:	e1a02001 	mov	r2, r1
     694:	e1a01000 	mov	r1, r0
     698:	e3a00007 	mov	r0, #7
     69c:	ef000000 	svc	0x00000000
     6a0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6a4:	e12fff1e 	bx	lr

000006a8 <open>:
     6a8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6ac:	e1a04003 	mov	r4, r3
     6b0:	e1a03002 	mov	r3, r2
     6b4:	e1a02001 	mov	r2, r1
     6b8:	e1a01000 	mov	r1, r0
     6bc:	e3a0000f 	mov	r0, #15
     6c0:	ef000000 	svc	0x00000000
     6c4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6c8:	e12fff1e 	bx	lr

000006cc <mknod>:
     6cc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6d0:	e1a04003 	mov	r4, r3
     6d4:	e1a03002 	mov	r3, r2
     6d8:	e1a02001 	mov	r2, r1
     6dc:	e1a01000 	mov	r1, r0
     6e0:	e3a00011 	mov	r0, #17
     6e4:	ef000000 	svc	0x00000000
     6e8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6ec:	e12fff1e 	bx	lr

000006f0 <unlink>:
     6f0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6f4:	e1a04003 	mov	r4, r3
     6f8:	e1a03002 	mov	r3, r2
     6fc:	e1a02001 	mov	r2, r1
     700:	e1a01000 	mov	r1, r0
     704:	e3a00012 	mov	r0, #18
     708:	ef000000 	svc	0x00000000
     70c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     710:	e12fff1e 	bx	lr

00000714 <fstat>:
     714:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     718:	e1a04003 	mov	r4, r3
     71c:	e1a03002 	mov	r3, r2
     720:	e1a02001 	mov	r2, r1
     724:	e1a01000 	mov	r1, r0
     728:	e3a00008 	mov	r0, #8
     72c:	ef000000 	svc	0x00000000
     730:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     734:	e12fff1e 	bx	lr

00000738 <link>:
     738:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     73c:	e1a04003 	mov	r4, r3
     740:	e1a03002 	mov	r3, r2
     744:	e1a02001 	mov	r2, r1
     748:	e1a01000 	mov	r1, r0
     74c:	e3a00013 	mov	r0, #19
     750:	ef000000 	svc	0x00000000
     754:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     758:	e12fff1e 	bx	lr

0000075c <mkdir>:
     75c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     760:	e1a04003 	mov	r4, r3
     764:	e1a03002 	mov	r3, r2
     768:	e1a02001 	mov	r2, r1
     76c:	e1a01000 	mov	r1, r0
     770:	e3a00014 	mov	r0, #20
     774:	ef000000 	svc	0x00000000
     778:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     77c:	e12fff1e 	bx	lr

00000780 <chdir>:
     780:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     784:	e1a04003 	mov	r4, r3
     788:	e1a03002 	mov	r3, r2
     78c:	e1a02001 	mov	r2, r1
     790:	e1a01000 	mov	r1, r0
     794:	e3a00009 	mov	r0, #9
     798:	ef000000 	svc	0x00000000
     79c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7a0:	e12fff1e 	bx	lr

000007a4 <dup>:
     7a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7a8:	e1a04003 	mov	r4, r3
     7ac:	e1a03002 	mov	r3, r2
     7b0:	e1a02001 	mov	r2, r1
     7b4:	e1a01000 	mov	r1, r0
     7b8:	e3a0000a 	mov	r0, #10
     7bc:	ef000000 	svc	0x00000000
     7c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7c4:	e12fff1e 	bx	lr

000007c8 <getpid>:
     7c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7cc:	e1a04003 	mov	r4, r3
     7d0:	e1a03002 	mov	r3, r2
     7d4:	e1a02001 	mov	r2, r1
     7d8:	e1a01000 	mov	r1, r0
     7dc:	e3a0000b 	mov	r0, #11
     7e0:	ef000000 	svc	0x00000000
     7e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7e8:	e12fff1e 	bx	lr

000007ec <sbrk>:
     7ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7f0:	e1a04003 	mov	r4, r3
     7f4:	e1a03002 	mov	r3, r2
     7f8:	e1a02001 	mov	r2, r1
     7fc:	e1a01000 	mov	r1, r0
     800:	e3a0000c 	mov	r0, #12
     804:	ef000000 	svc	0x00000000
     808:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     80c:	e12fff1e 	bx	lr

00000810 <sleep>:
     810:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     814:	e1a04003 	mov	r4, r3
     818:	e1a03002 	mov	r3, r2
     81c:	e1a02001 	mov	r2, r1
     820:	e1a01000 	mov	r1, r0
     824:	e3a0000d 	mov	r0, #13
     828:	ef000000 	svc	0x00000000
     82c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     830:	e12fff1e 	bx	lr

00000834 <uptime>:
     834:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     838:	e1a04003 	mov	r4, r3
     83c:	e1a03002 	mov	r3, r2
     840:	e1a02001 	mov	r2, r1
     844:	e1a01000 	mov	r1, r0
     848:	e3a0000e 	mov	r0, #14
     84c:	ef000000 	svc	0x00000000
     850:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     854:	e12fff1e 	bx	lr

00000858 <getprocs>:
     858:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     85c:	e1a04003 	mov	r4, r3
     860:	e1a03002 	mov	r3, r2
     864:	e1a02001 	mov	r2, r1
     868:	e1a01000 	mov	r1, r0
     86c:	e3a00016 	mov	r0, #22
     870:	ef000000 	svc	0x00000000
     874:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     878:	e12fff1e 	bx	lr

0000087c <putc>:
     87c:	e92d4800 	push	{fp, lr}
     880:	e28db004 	add	fp, sp, #4
     884:	e24dd008 	sub	sp, sp, #8
     888:	e50b0008 	str	r0, [fp, #-8]
     88c:	e1a03001 	mov	r3, r1
     890:	e54b3009 	strb	r3, [fp, #-9]
     894:	e24b3009 	sub	r3, fp, #9
     898:	e3a02001 	mov	r2, #1
     89c:	e1a01003 	mov	r1, r3
     8a0:	e51b0008 	ldr	r0, [fp, #-8]
     8a4:	ebffff5b 	bl	618 <write>
     8a8:	e1a00000 	nop			@ (mov r0, r0)
     8ac:	e24bd004 	sub	sp, fp, #4
     8b0:	e8bd8800 	pop	{fp, pc}

000008b4 <printint>:
     8b4:	e92d4800 	push	{fp, lr}
     8b8:	e28db004 	add	fp, sp, #4
     8bc:	e24dd030 	sub	sp, sp, #48	@ 0x30
     8c0:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     8c4:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     8c8:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     8cc:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     8d0:	e3a03000 	mov	r3, #0
     8d4:	e50b300c 	str	r3, [fp, #-12]
     8d8:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     8dc:	e3530000 	cmp	r3, #0
     8e0:	0a000008 	beq	908 <printint+0x54>
     8e4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     8e8:	e3530000 	cmp	r3, #0
     8ec:	aa000005 	bge	908 <printint+0x54>
     8f0:	e3a03001 	mov	r3, #1
     8f4:	e50b300c 	str	r3, [fp, #-12]
     8f8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     8fc:	e2633000 	rsb	r3, r3, #0
     900:	e50b3010 	str	r3, [fp, #-16]
     904:	ea000001 	b	910 <printint+0x5c>
     908:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     90c:	e50b3010 	str	r3, [fp, #-16]
     910:	e3a03000 	mov	r3, #0
     914:	e50b3008 	str	r3, [fp, #-8]
     918:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     91c:	e51b3010 	ldr	r3, [fp, #-16]
     920:	e1a01002 	mov	r1, r2
     924:	e1a00003 	mov	r0, r3
     928:	eb0001d5 	bl	1084 <__aeabi_uidivmod>
     92c:	e1a03001 	mov	r3, r1
     930:	e1a01003 	mov	r1, r3
     934:	e51b3008 	ldr	r3, [fp, #-8]
     938:	e2832001 	add	r2, r3, #1
     93c:	e50b2008 	str	r2, [fp, #-8]
     940:	e59f20a0 	ldr	r2, [pc, #160]	@ 9e8 <printint+0x134>
     944:	e7d22001 	ldrb	r2, [r2, r1]
     948:	e2433004 	sub	r3, r3, #4
     94c:	e083300b 	add	r3, r3, fp
     950:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     954:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     958:	e1a01003 	mov	r1, r3
     95c:	e51b0010 	ldr	r0, [fp, #-16]
     960:	eb00018a 	bl	f90 <__udivsi3>
     964:	e1a03000 	mov	r3, r0
     968:	e50b3010 	str	r3, [fp, #-16]
     96c:	e51b3010 	ldr	r3, [fp, #-16]
     970:	e3530000 	cmp	r3, #0
     974:	1affffe7 	bne	918 <printint+0x64>
     978:	e51b300c 	ldr	r3, [fp, #-12]
     97c:	e3530000 	cmp	r3, #0
     980:	0a00000e 	beq	9c0 <printint+0x10c>
     984:	e51b3008 	ldr	r3, [fp, #-8]
     988:	e2832001 	add	r2, r3, #1
     98c:	e50b2008 	str	r2, [fp, #-8]
     990:	e2433004 	sub	r3, r3, #4
     994:	e083300b 	add	r3, r3, fp
     998:	e3a0202d 	mov	r2, #45	@ 0x2d
     99c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     9a0:	ea000006 	b	9c0 <printint+0x10c>
     9a4:	e24b2020 	sub	r2, fp, #32
     9a8:	e51b3008 	ldr	r3, [fp, #-8]
     9ac:	e0823003 	add	r3, r2, r3
     9b0:	e5d33000 	ldrb	r3, [r3]
     9b4:	e1a01003 	mov	r1, r3
     9b8:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     9bc:	ebffffae 	bl	87c <putc>
     9c0:	e51b3008 	ldr	r3, [fp, #-8]
     9c4:	e2433001 	sub	r3, r3, #1
     9c8:	e50b3008 	str	r3, [fp, #-8]
     9cc:	e51b3008 	ldr	r3, [fp, #-8]
     9d0:	e3530000 	cmp	r3, #0
     9d4:	aafffff2 	bge	9a4 <printint+0xf0>
     9d8:	e1a00000 	nop			@ (mov r0, r0)
     9dc:	e1a00000 	nop			@ (mov r0, r0)
     9e0:	e24bd004 	sub	sp, fp, #4
     9e4:	e8bd8800 	pop	{fp, pc}
     9e8:	000010f0 	.word	0x000010f0

000009ec <printf>:
     9ec:	e92d000e 	push	{r1, r2, r3}
     9f0:	e92d4800 	push	{fp, lr}
     9f4:	e28db004 	add	fp, sp, #4
     9f8:	e24dd024 	sub	sp, sp, #36	@ 0x24
     9fc:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     a00:	e3a03000 	mov	r3, #0
     a04:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     a08:	e28b3008 	add	r3, fp, #8
     a0c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     a10:	e3a03000 	mov	r3, #0
     a14:	e50b3010 	str	r3, [fp, #-16]
     a18:	ea000074 	b	bf0 <printf+0x204>
     a1c:	e59b2004 	ldr	r2, [fp, #4]
     a20:	e51b3010 	ldr	r3, [fp, #-16]
     a24:	e0823003 	add	r3, r2, r3
     a28:	e5d33000 	ldrb	r3, [r3]
     a2c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     a30:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     a34:	e3530000 	cmp	r3, #0
     a38:	1a00000b 	bne	a6c <printf+0x80>
     a3c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a40:	e3530025 	cmp	r3, #37	@ 0x25
     a44:	1a000002 	bne	a54 <printf+0x68>
     a48:	e3a03025 	mov	r3, #37	@ 0x25
     a4c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     a50:	ea000063 	b	be4 <printf+0x1f8>
     a54:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a58:	e6ef3073 	uxtb	r3, r3
     a5c:	e1a01003 	mov	r1, r3
     a60:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     a64:	ebffff84 	bl	87c <putc>
     a68:	ea00005d 	b	be4 <printf+0x1f8>
     a6c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     a70:	e3530025 	cmp	r3, #37	@ 0x25
     a74:	1a00005a 	bne	be4 <printf+0x1f8>
     a78:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a7c:	e3530064 	cmp	r3, #100	@ 0x64
     a80:	1a00000a 	bne	ab0 <printf+0xc4>
     a84:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     a88:	e5933000 	ldr	r3, [r3]
     a8c:	e1a01003 	mov	r1, r3
     a90:	e3a03001 	mov	r3, #1
     a94:	e3a0200a 	mov	r2, #10
     a98:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     a9c:	ebffff84 	bl	8b4 <printint>
     aa0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     aa4:	e2833004 	add	r3, r3, #4
     aa8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     aac:	ea00004a 	b	bdc <printf+0x1f0>
     ab0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ab4:	e3530078 	cmp	r3, #120	@ 0x78
     ab8:	0a000002 	beq	ac8 <printf+0xdc>
     abc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ac0:	e3530070 	cmp	r3, #112	@ 0x70
     ac4:	1a00000a 	bne	af4 <printf+0x108>
     ac8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     acc:	e5933000 	ldr	r3, [r3]
     ad0:	e1a01003 	mov	r1, r3
     ad4:	e3a03000 	mov	r3, #0
     ad8:	e3a02010 	mov	r2, #16
     adc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ae0:	ebffff73 	bl	8b4 <printint>
     ae4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ae8:	e2833004 	add	r3, r3, #4
     aec:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     af0:	ea000039 	b	bdc <printf+0x1f0>
     af4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     af8:	e3530073 	cmp	r3, #115	@ 0x73
     afc:	1a000018 	bne	b64 <printf+0x178>
     b00:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b04:	e5933000 	ldr	r3, [r3]
     b08:	e50b300c 	str	r3, [fp, #-12]
     b0c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b10:	e2833004 	add	r3, r3, #4
     b14:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b18:	e51b300c 	ldr	r3, [fp, #-12]
     b1c:	e3530000 	cmp	r3, #0
     b20:	1a00000a 	bne	b50 <printf+0x164>
     b24:	e59f30f4 	ldr	r3, [pc, #244]	@ c20 <printf+0x234>
     b28:	e50b300c 	str	r3, [fp, #-12]
     b2c:	ea000007 	b	b50 <printf+0x164>
     b30:	e51b300c 	ldr	r3, [fp, #-12]
     b34:	e5d33000 	ldrb	r3, [r3]
     b38:	e1a01003 	mov	r1, r3
     b3c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b40:	ebffff4d 	bl	87c <putc>
     b44:	e51b300c 	ldr	r3, [fp, #-12]
     b48:	e2833001 	add	r3, r3, #1
     b4c:	e50b300c 	str	r3, [fp, #-12]
     b50:	e51b300c 	ldr	r3, [fp, #-12]
     b54:	e5d33000 	ldrb	r3, [r3]
     b58:	e3530000 	cmp	r3, #0
     b5c:	1afffff3 	bne	b30 <printf+0x144>
     b60:	ea00001d 	b	bdc <printf+0x1f0>
     b64:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b68:	e3530063 	cmp	r3, #99	@ 0x63
     b6c:	1a000009 	bne	b98 <printf+0x1ac>
     b70:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b74:	e5933000 	ldr	r3, [r3]
     b78:	e6ef3073 	uxtb	r3, r3
     b7c:	e1a01003 	mov	r1, r3
     b80:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b84:	ebffff3c 	bl	87c <putc>
     b88:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b8c:	e2833004 	add	r3, r3, #4
     b90:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b94:	ea000010 	b	bdc <printf+0x1f0>
     b98:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b9c:	e3530025 	cmp	r3, #37	@ 0x25
     ba0:	1a000005 	bne	bbc <printf+0x1d0>
     ba4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ba8:	e6ef3073 	uxtb	r3, r3
     bac:	e1a01003 	mov	r1, r3
     bb0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bb4:	ebffff30 	bl	87c <putc>
     bb8:	ea000007 	b	bdc <printf+0x1f0>
     bbc:	e3a01025 	mov	r1, #37	@ 0x25
     bc0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bc4:	ebffff2c 	bl	87c <putc>
     bc8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bcc:	e6ef3073 	uxtb	r3, r3
     bd0:	e1a01003 	mov	r1, r3
     bd4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bd8:	ebffff27 	bl	87c <putc>
     bdc:	e3a03000 	mov	r3, #0
     be0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     be4:	e51b3010 	ldr	r3, [fp, #-16]
     be8:	e2833001 	add	r3, r3, #1
     bec:	e50b3010 	str	r3, [fp, #-16]
     bf0:	e59b2004 	ldr	r2, [fp, #4]
     bf4:	e51b3010 	ldr	r3, [fp, #-16]
     bf8:	e0823003 	add	r3, r2, r3
     bfc:	e5d33000 	ldrb	r3, [r3]
     c00:	e3530000 	cmp	r3, #0
     c04:	1affff84 	bne	a1c <printf+0x30>
     c08:	e1a00000 	nop			@ (mov r0, r0)
     c0c:	e1a00000 	nop			@ (mov r0, r0)
     c10:	e24bd004 	sub	sp, fp, #4
     c14:	e8bd4800 	pop	{fp, lr}
     c18:	e28dd00c 	add	sp, sp, #12
     c1c:	e12fff1e 	bx	lr
     c20:	000010e8 	.word	0x000010e8

00000c24 <free>:
     c24:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     c28:	e28db000 	add	fp, sp, #0
     c2c:	e24dd014 	sub	sp, sp, #20
     c30:	e50b0010 	str	r0, [fp, #-16]
     c34:	e51b3010 	ldr	r3, [fp, #-16]
     c38:	e2433008 	sub	r3, r3, #8
     c3c:	e50b300c 	str	r3, [fp, #-12]
     c40:	e59f3154 	ldr	r3, [pc, #340]	@ d9c <free+0x178>
     c44:	e5933000 	ldr	r3, [r3]
     c48:	e50b3008 	str	r3, [fp, #-8]
     c4c:	ea000010 	b	c94 <free+0x70>
     c50:	e51b3008 	ldr	r3, [fp, #-8]
     c54:	e5933000 	ldr	r3, [r3]
     c58:	e51b2008 	ldr	r2, [fp, #-8]
     c5c:	e1520003 	cmp	r2, r3
     c60:	3a000008 	bcc	c88 <free+0x64>
     c64:	e51b200c 	ldr	r2, [fp, #-12]
     c68:	e51b3008 	ldr	r3, [fp, #-8]
     c6c:	e1520003 	cmp	r2, r3
     c70:	8a000010 	bhi	cb8 <free+0x94>
     c74:	e51b3008 	ldr	r3, [fp, #-8]
     c78:	e5933000 	ldr	r3, [r3]
     c7c:	e51b200c 	ldr	r2, [fp, #-12]
     c80:	e1520003 	cmp	r2, r3
     c84:	3a00000b 	bcc	cb8 <free+0x94>
     c88:	e51b3008 	ldr	r3, [fp, #-8]
     c8c:	e5933000 	ldr	r3, [r3]
     c90:	e50b3008 	str	r3, [fp, #-8]
     c94:	e51b200c 	ldr	r2, [fp, #-12]
     c98:	e51b3008 	ldr	r3, [fp, #-8]
     c9c:	e1520003 	cmp	r2, r3
     ca0:	9affffea 	bls	c50 <free+0x2c>
     ca4:	e51b3008 	ldr	r3, [fp, #-8]
     ca8:	e5933000 	ldr	r3, [r3]
     cac:	e51b200c 	ldr	r2, [fp, #-12]
     cb0:	e1520003 	cmp	r2, r3
     cb4:	2affffe5 	bcs	c50 <free+0x2c>
     cb8:	e51b300c 	ldr	r3, [fp, #-12]
     cbc:	e5933004 	ldr	r3, [r3, #4]
     cc0:	e1a03183 	lsl	r3, r3, #3
     cc4:	e51b200c 	ldr	r2, [fp, #-12]
     cc8:	e0822003 	add	r2, r2, r3
     ccc:	e51b3008 	ldr	r3, [fp, #-8]
     cd0:	e5933000 	ldr	r3, [r3]
     cd4:	e1520003 	cmp	r2, r3
     cd8:	1a00000d 	bne	d14 <free+0xf0>
     cdc:	e51b300c 	ldr	r3, [fp, #-12]
     ce0:	e5932004 	ldr	r2, [r3, #4]
     ce4:	e51b3008 	ldr	r3, [fp, #-8]
     ce8:	e5933000 	ldr	r3, [r3]
     cec:	e5933004 	ldr	r3, [r3, #4]
     cf0:	e0822003 	add	r2, r2, r3
     cf4:	e51b300c 	ldr	r3, [fp, #-12]
     cf8:	e5832004 	str	r2, [r3, #4]
     cfc:	e51b3008 	ldr	r3, [fp, #-8]
     d00:	e5933000 	ldr	r3, [r3]
     d04:	e5932000 	ldr	r2, [r3]
     d08:	e51b300c 	ldr	r3, [fp, #-12]
     d0c:	e5832000 	str	r2, [r3]
     d10:	ea000003 	b	d24 <free+0x100>
     d14:	e51b3008 	ldr	r3, [fp, #-8]
     d18:	e5932000 	ldr	r2, [r3]
     d1c:	e51b300c 	ldr	r3, [fp, #-12]
     d20:	e5832000 	str	r2, [r3]
     d24:	e51b3008 	ldr	r3, [fp, #-8]
     d28:	e5933004 	ldr	r3, [r3, #4]
     d2c:	e1a03183 	lsl	r3, r3, #3
     d30:	e51b2008 	ldr	r2, [fp, #-8]
     d34:	e0823003 	add	r3, r2, r3
     d38:	e51b200c 	ldr	r2, [fp, #-12]
     d3c:	e1520003 	cmp	r2, r3
     d40:	1a00000b 	bne	d74 <free+0x150>
     d44:	e51b3008 	ldr	r3, [fp, #-8]
     d48:	e5932004 	ldr	r2, [r3, #4]
     d4c:	e51b300c 	ldr	r3, [fp, #-12]
     d50:	e5933004 	ldr	r3, [r3, #4]
     d54:	e0822003 	add	r2, r2, r3
     d58:	e51b3008 	ldr	r3, [fp, #-8]
     d5c:	e5832004 	str	r2, [r3, #4]
     d60:	e51b300c 	ldr	r3, [fp, #-12]
     d64:	e5932000 	ldr	r2, [r3]
     d68:	e51b3008 	ldr	r3, [fp, #-8]
     d6c:	e5832000 	str	r2, [r3]
     d70:	ea000002 	b	d80 <free+0x15c>
     d74:	e51b3008 	ldr	r3, [fp, #-8]
     d78:	e51b200c 	ldr	r2, [fp, #-12]
     d7c:	e5832000 	str	r2, [r3]
     d80:	e59f2014 	ldr	r2, [pc, #20]	@ d9c <free+0x178>
     d84:	e51b3008 	ldr	r3, [fp, #-8]
     d88:	e5823000 	str	r3, [r2]
     d8c:	e1a00000 	nop			@ (mov r0, r0)
     d90:	e28bd000 	add	sp, fp, #0
     d94:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     d98:	e12fff1e 	bx	lr
     d9c:	0000110c 	.word	0x0000110c

00000da0 <morecore>:
     da0:	e92d4800 	push	{fp, lr}
     da4:	e28db004 	add	fp, sp, #4
     da8:	e24dd010 	sub	sp, sp, #16
     dac:	e50b0010 	str	r0, [fp, #-16]
     db0:	e51b3010 	ldr	r3, [fp, #-16]
     db4:	e3530a01 	cmp	r3, #4096	@ 0x1000
     db8:	2a000001 	bcs	dc4 <morecore+0x24>
     dbc:	e3a03a01 	mov	r3, #4096	@ 0x1000
     dc0:	e50b3010 	str	r3, [fp, #-16]
     dc4:	e51b3010 	ldr	r3, [fp, #-16]
     dc8:	e1a03183 	lsl	r3, r3, #3
     dcc:	e1a00003 	mov	r0, r3
     dd0:	ebfffe85 	bl	7ec <sbrk>
     dd4:	e50b0008 	str	r0, [fp, #-8]
     dd8:	e51b3008 	ldr	r3, [fp, #-8]
     ddc:	e3730001 	cmn	r3, #1
     de0:	1a000001 	bne	dec <morecore+0x4c>
     de4:	e3a03000 	mov	r3, #0
     de8:	ea00000a 	b	e18 <morecore+0x78>
     dec:	e51b3008 	ldr	r3, [fp, #-8]
     df0:	e50b300c 	str	r3, [fp, #-12]
     df4:	e51b300c 	ldr	r3, [fp, #-12]
     df8:	e51b2010 	ldr	r2, [fp, #-16]
     dfc:	e5832004 	str	r2, [r3, #4]
     e00:	e51b300c 	ldr	r3, [fp, #-12]
     e04:	e2833008 	add	r3, r3, #8
     e08:	e1a00003 	mov	r0, r3
     e0c:	ebffff84 	bl	c24 <free>
     e10:	e59f300c 	ldr	r3, [pc, #12]	@ e24 <morecore+0x84>
     e14:	e5933000 	ldr	r3, [r3]
     e18:	e1a00003 	mov	r0, r3
     e1c:	e24bd004 	sub	sp, fp, #4
     e20:	e8bd8800 	pop	{fp, pc}
     e24:	0000110c 	.word	0x0000110c

00000e28 <malloc>:
     e28:	e92d4800 	push	{fp, lr}
     e2c:	e28db004 	add	fp, sp, #4
     e30:	e24dd018 	sub	sp, sp, #24
     e34:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     e38:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e3c:	e2833007 	add	r3, r3, #7
     e40:	e1a031a3 	lsr	r3, r3, #3
     e44:	e2833001 	add	r3, r3, #1
     e48:	e50b3010 	str	r3, [fp, #-16]
     e4c:	e59f3134 	ldr	r3, [pc, #308]	@ f88 <malloc+0x160>
     e50:	e5933000 	ldr	r3, [r3]
     e54:	e50b300c 	str	r3, [fp, #-12]
     e58:	e51b300c 	ldr	r3, [fp, #-12]
     e5c:	e3530000 	cmp	r3, #0
     e60:	1a00000b 	bne	e94 <malloc+0x6c>
     e64:	e59f3120 	ldr	r3, [pc, #288]	@ f8c <malloc+0x164>
     e68:	e50b300c 	str	r3, [fp, #-12]
     e6c:	e59f2114 	ldr	r2, [pc, #276]	@ f88 <malloc+0x160>
     e70:	e51b300c 	ldr	r3, [fp, #-12]
     e74:	e5823000 	str	r3, [r2]
     e78:	e59f3108 	ldr	r3, [pc, #264]	@ f88 <malloc+0x160>
     e7c:	e5933000 	ldr	r3, [r3]
     e80:	e59f2104 	ldr	r2, [pc, #260]	@ f8c <malloc+0x164>
     e84:	e5823000 	str	r3, [r2]
     e88:	e59f30fc 	ldr	r3, [pc, #252]	@ f8c <malloc+0x164>
     e8c:	e3a02000 	mov	r2, #0
     e90:	e5832004 	str	r2, [r3, #4]
     e94:	e51b300c 	ldr	r3, [fp, #-12]
     e98:	e5933000 	ldr	r3, [r3]
     e9c:	e50b3008 	str	r3, [fp, #-8]
     ea0:	e51b3008 	ldr	r3, [fp, #-8]
     ea4:	e5933004 	ldr	r3, [r3, #4]
     ea8:	e51b2010 	ldr	r2, [fp, #-16]
     eac:	e1520003 	cmp	r2, r3
     eb0:	8a00001e 	bhi	f30 <malloc+0x108>
     eb4:	e51b3008 	ldr	r3, [fp, #-8]
     eb8:	e5933004 	ldr	r3, [r3, #4]
     ebc:	e51b2010 	ldr	r2, [fp, #-16]
     ec0:	e1520003 	cmp	r2, r3
     ec4:	1a000004 	bne	edc <malloc+0xb4>
     ec8:	e51b3008 	ldr	r3, [fp, #-8]
     ecc:	e5932000 	ldr	r2, [r3]
     ed0:	e51b300c 	ldr	r3, [fp, #-12]
     ed4:	e5832000 	str	r2, [r3]
     ed8:	ea00000e 	b	f18 <malloc+0xf0>
     edc:	e51b3008 	ldr	r3, [fp, #-8]
     ee0:	e5932004 	ldr	r2, [r3, #4]
     ee4:	e51b3010 	ldr	r3, [fp, #-16]
     ee8:	e0422003 	sub	r2, r2, r3
     eec:	e51b3008 	ldr	r3, [fp, #-8]
     ef0:	e5832004 	str	r2, [r3, #4]
     ef4:	e51b3008 	ldr	r3, [fp, #-8]
     ef8:	e5933004 	ldr	r3, [r3, #4]
     efc:	e1a03183 	lsl	r3, r3, #3
     f00:	e51b2008 	ldr	r2, [fp, #-8]
     f04:	e0823003 	add	r3, r2, r3
     f08:	e50b3008 	str	r3, [fp, #-8]
     f0c:	e51b3008 	ldr	r3, [fp, #-8]
     f10:	e51b2010 	ldr	r2, [fp, #-16]
     f14:	e5832004 	str	r2, [r3, #4]
     f18:	e59f2068 	ldr	r2, [pc, #104]	@ f88 <malloc+0x160>
     f1c:	e51b300c 	ldr	r3, [fp, #-12]
     f20:	e5823000 	str	r3, [r2]
     f24:	e51b3008 	ldr	r3, [fp, #-8]
     f28:	e2833008 	add	r3, r3, #8
     f2c:	ea000012 	b	f7c <malloc+0x154>
     f30:	e59f3050 	ldr	r3, [pc, #80]	@ f88 <malloc+0x160>
     f34:	e5933000 	ldr	r3, [r3]
     f38:	e51b2008 	ldr	r2, [fp, #-8]
     f3c:	e1520003 	cmp	r2, r3
     f40:	1a000007 	bne	f64 <malloc+0x13c>
     f44:	e51b0010 	ldr	r0, [fp, #-16]
     f48:	ebffff94 	bl	da0 <morecore>
     f4c:	e50b0008 	str	r0, [fp, #-8]
     f50:	e51b3008 	ldr	r3, [fp, #-8]
     f54:	e3530000 	cmp	r3, #0
     f58:	1a000001 	bne	f64 <malloc+0x13c>
     f5c:	e3a03000 	mov	r3, #0
     f60:	ea000005 	b	f7c <malloc+0x154>
     f64:	e51b3008 	ldr	r3, [fp, #-8]
     f68:	e50b300c 	str	r3, [fp, #-12]
     f6c:	e51b3008 	ldr	r3, [fp, #-8]
     f70:	e5933000 	ldr	r3, [r3]
     f74:	e50b3008 	str	r3, [fp, #-8]
     f78:	eaffffc8 	b	ea0 <malloc+0x78>
     f7c:	e1a00003 	mov	r0, r3
     f80:	e24bd004 	sub	sp, fp, #4
     f84:	e8bd8800 	pop	{fp, pc}
     f88:	0000110c 	.word	0x0000110c
     f8c:	00001104 	.word	0x00001104

00000f90 <__udivsi3>:
     f90:	e2512001 	subs	r2, r1, #1
     f94:	012fff1e 	bxeq	lr
     f98:	3a000036 	bcc	1078 <__udivsi3+0xe8>
     f9c:	e1500001 	cmp	r0, r1
     fa0:	9a000022 	bls	1030 <__udivsi3+0xa0>
     fa4:	e1110002 	tst	r1, r2
     fa8:	0a000023 	beq	103c <__udivsi3+0xac>
     fac:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
     fb0:	01a01181 	lsleq	r1, r1, #3
     fb4:	03a03008 	moveq	r3, #8
     fb8:	13a03001 	movne	r3, #1
     fbc:	e3510201 	cmp	r1, #268435456	@ 0x10000000
     fc0:	31510000 	cmpcc	r1, r0
     fc4:	31a01201 	lslcc	r1, r1, #4
     fc8:	31a03203 	lslcc	r3, r3, #4
     fcc:	3afffffa 	bcc	fbc <__udivsi3+0x2c>
     fd0:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
     fd4:	31510000 	cmpcc	r1, r0
     fd8:	31a01081 	lslcc	r1, r1, #1
     fdc:	31a03083 	lslcc	r3, r3, #1
     fe0:	3afffffa 	bcc	fd0 <__udivsi3+0x40>
     fe4:	e3a02000 	mov	r2, #0
     fe8:	e1500001 	cmp	r0, r1
     fec:	20400001 	subcs	r0, r0, r1
     ff0:	21822003 	orrcs	r2, r2, r3
     ff4:	e15000a1 	cmp	r0, r1, lsr #1
     ff8:	204000a1 	subcs	r0, r0, r1, lsr #1
     ffc:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1000:	e1500121 	cmp	r0, r1, lsr #2
    1004:	20400121 	subcs	r0, r0, r1, lsr #2
    1008:	21822123 	orrcs	r2, r2, r3, lsr #2
    100c:	e15001a1 	cmp	r0, r1, lsr #3
    1010:	204001a1 	subcs	r0, r0, r1, lsr #3
    1014:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1018:	e3500000 	cmp	r0, #0
    101c:	11b03223 	lsrsne	r3, r3, #4
    1020:	11a01221 	lsrne	r1, r1, #4
    1024:	1affffef 	bne	fe8 <__udivsi3+0x58>
    1028:	e1a00002 	mov	r0, r2
    102c:	e12fff1e 	bx	lr
    1030:	03a00001 	moveq	r0, #1
    1034:	13a00000 	movne	r0, #0
    1038:	e12fff1e 	bx	lr
    103c:	e3510801 	cmp	r1, #65536	@ 0x10000
    1040:	21a01821 	lsrcs	r1, r1, #16
    1044:	23a02010 	movcs	r2, #16
    1048:	33a02000 	movcc	r2, #0
    104c:	e3510c01 	cmp	r1, #256	@ 0x100
    1050:	21a01421 	lsrcs	r1, r1, #8
    1054:	22822008 	addcs	r2, r2, #8
    1058:	e3510010 	cmp	r1, #16
    105c:	21a01221 	lsrcs	r1, r1, #4
    1060:	22822004 	addcs	r2, r2, #4
    1064:	e3510004 	cmp	r1, #4
    1068:	82822003 	addhi	r2, r2, #3
    106c:	908220a1 	addls	r2, r2, r1, lsr #1
    1070:	e1a00230 	lsr	r0, r0, r2
    1074:	e12fff1e 	bx	lr
    1078:	e3500000 	cmp	r0, #0
    107c:	13e00000 	mvnne	r0, #0
    1080:	ea000007 	b	10a4 <__aeabi_idiv0>

00001084 <__aeabi_uidivmod>:
    1084:	e3510000 	cmp	r1, #0
    1088:	0afffffa 	beq	1078 <__udivsi3+0xe8>
    108c:	e92d4003 	push	{r0, r1, lr}
    1090:	ebffffbe 	bl	f90 <__udivsi3>
    1094:	e8bd4006 	pop	{r1, r2, lr}
    1098:	e0030092 	mul	r3, r2, r0
    109c:	e0411003 	sub	r1, r1, r3
    10a0:	e12fff1e 	bx	lr

000010a4 <__aeabi_idiv0>:
    10a4:	e12fff1e 	bx	lr
