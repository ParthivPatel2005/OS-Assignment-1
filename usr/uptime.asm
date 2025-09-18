
_uptime:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      14:	eb0001f0 	bl	7dc <uptime>
      18:	e50b0008 	str	r0, [fp, #-8]
      1c:	e51b2008 	ldr	r2, [fp, #-8]
      20:	e59f1008 	ldr	r1, [pc, #8]	@ 30 <main+0x30>
      24:	e3a00001 	mov	r0, #1
      28:	eb000259 	bl	994 <printf>
      2c:	eb00013f 	bl	530 <exit>
      30:	00001050 	.word	0x00001050

00000034 <strcpy>:
      34:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      38:	e28db000 	add	fp, sp, #0
      3c:	e24dd014 	sub	sp, sp, #20
      40:	e50b0010 	str	r0, [fp, #-16]
      44:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      48:	e51b3010 	ldr	r3, [fp, #-16]
      4c:	e50b3008 	str	r3, [fp, #-8]
      50:	e1a00000 	nop			@ (mov r0, r0)
      54:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      58:	e2823001 	add	r3, r2, #1
      5c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      60:	e51b3010 	ldr	r3, [fp, #-16]
      64:	e2831001 	add	r1, r3, #1
      68:	e50b1010 	str	r1, [fp, #-16]
      6c:	e5d22000 	ldrb	r2, [r2]
      70:	e5c32000 	strb	r2, [r3]
      74:	e5d33000 	ldrb	r3, [r3]
      78:	e3530000 	cmp	r3, #0
      7c:	1afffff4 	bne	54 <strcpy+0x20>
      80:	e51b3008 	ldr	r3, [fp, #-8]
      84:	e1a00003 	mov	r0, r3
      88:	e28bd000 	add	sp, fp, #0
      8c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
      90:	e12fff1e 	bx	lr

00000094 <strcmp>:
      94:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      98:	e28db000 	add	fp, sp, #0
      9c:	e24dd00c 	sub	sp, sp, #12
      a0:	e50b0008 	str	r0, [fp, #-8]
      a4:	e50b100c 	str	r1, [fp, #-12]
      a8:	ea000005 	b	c4 <strcmp+0x30>
      ac:	e51b3008 	ldr	r3, [fp, #-8]
      b0:	e2833001 	add	r3, r3, #1
      b4:	e50b3008 	str	r3, [fp, #-8]
      b8:	e51b300c 	ldr	r3, [fp, #-12]
      bc:	e2833001 	add	r3, r3, #1
      c0:	e50b300c 	str	r3, [fp, #-12]
      c4:	e51b3008 	ldr	r3, [fp, #-8]
      c8:	e5d33000 	ldrb	r3, [r3]
      cc:	e3530000 	cmp	r3, #0
      d0:	0a000005 	beq	ec <strcmp+0x58>
      d4:	e51b3008 	ldr	r3, [fp, #-8]
      d8:	e5d32000 	ldrb	r2, [r3]
      dc:	e51b300c 	ldr	r3, [fp, #-12]
      e0:	e5d33000 	ldrb	r3, [r3]
      e4:	e1520003 	cmp	r2, r3
      e8:	0affffef 	beq	ac <strcmp+0x18>
      ec:	e51b3008 	ldr	r3, [fp, #-8]
      f0:	e5d33000 	ldrb	r3, [r3]
      f4:	e1a02003 	mov	r2, r3
      f8:	e51b300c 	ldr	r3, [fp, #-12]
      fc:	e5d33000 	ldrb	r3, [r3]
     100:	e0423003 	sub	r3, r2, r3
     104:	e1a00003 	mov	r0, r3
     108:	e28bd000 	add	sp, fp, #0
     10c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     110:	e12fff1e 	bx	lr

00000114 <strlen>:
     114:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     118:	e28db000 	add	fp, sp, #0
     11c:	e24dd014 	sub	sp, sp, #20
     120:	e50b0010 	str	r0, [fp, #-16]
     124:	e3a03000 	mov	r3, #0
     128:	e50b3008 	str	r3, [fp, #-8]
     12c:	ea000002 	b	13c <strlen+0x28>
     130:	e51b3008 	ldr	r3, [fp, #-8]
     134:	e2833001 	add	r3, r3, #1
     138:	e50b3008 	str	r3, [fp, #-8]
     13c:	e51b3008 	ldr	r3, [fp, #-8]
     140:	e51b2010 	ldr	r2, [fp, #-16]
     144:	e0823003 	add	r3, r2, r3
     148:	e5d33000 	ldrb	r3, [r3]
     14c:	e3530000 	cmp	r3, #0
     150:	1afffff6 	bne	130 <strlen+0x1c>
     154:	e51b3008 	ldr	r3, [fp, #-8]
     158:	e1a00003 	mov	r0, r3
     15c:	e28bd000 	add	sp, fp, #0
     160:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     164:	e12fff1e 	bx	lr

00000168 <memset>:
     168:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     16c:	e28db000 	add	fp, sp, #0
     170:	e24dd024 	sub	sp, sp, #36	@ 0x24
     174:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     178:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     17c:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     180:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     184:	e50b3008 	str	r3, [fp, #-8]
     188:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     18c:	e54b300d 	strb	r3, [fp, #-13]
     190:	e55b200d 	ldrb	r2, [fp, #-13]
     194:	e1a03002 	mov	r3, r2
     198:	e1a03403 	lsl	r3, r3, #8
     19c:	e0833002 	add	r3, r3, r2
     1a0:	e1a03803 	lsl	r3, r3, #16
     1a4:	e1a02003 	mov	r2, r3
     1a8:	e55b300d 	ldrb	r3, [fp, #-13]
     1ac:	e1a03403 	lsl	r3, r3, #8
     1b0:	e1822003 	orr	r2, r2, r3
     1b4:	e55b300d 	ldrb	r3, [fp, #-13]
     1b8:	e1823003 	orr	r3, r2, r3
     1bc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     1c0:	ea000008 	b	1e8 <memset+0x80>
     1c4:	e51b3008 	ldr	r3, [fp, #-8]
     1c8:	e55b200d 	ldrb	r2, [fp, #-13]
     1cc:	e5c32000 	strb	r2, [r3]
     1d0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     1d4:	e2433001 	sub	r3, r3, #1
     1d8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     1dc:	e51b3008 	ldr	r3, [fp, #-8]
     1e0:	e2833001 	add	r3, r3, #1
     1e4:	e50b3008 	str	r3, [fp, #-8]
     1e8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     1ec:	e3530000 	cmp	r3, #0
     1f0:	0a000003 	beq	204 <memset+0x9c>
     1f4:	e51b3008 	ldr	r3, [fp, #-8]
     1f8:	e2033003 	and	r3, r3, #3
     1fc:	e3530000 	cmp	r3, #0
     200:	1affffef 	bne	1c4 <memset+0x5c>
     204:	e51b3008 	ldr	r3, [fp, #-8]
     208:	e50b300c 	str	r3, [fp, #-12]
     20c:	ea000008 	b	234 <memset+0xcc>
     210:	e51b300c 	ldr	r3, [fp, #-12]
     214:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     218:	e5832000 	str	r2, [r3]
     21c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     220:	e2433004 	sub	r3, r3, #4
     224:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     228:	e51b300c 	ldr	r3, [fp, #-12]
     22c:	e2833004 	add	r3, r3, #4
     230:	e50b300c 	str	r3, [fp, #-12]
     234:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     238:	e3530003 	cmp	r3, #3
     23c:	8afffff3 	bhi	210 <memset+0xa8>
     240:	e51b300c 	ldr	r3, [fp, #-12]
     244:	e50b3008 	str	r3, [fp, #-8]
     248:	ea000008 	b	270 <memset+0x108>
     24c:	e51b3008 	ldr	r3, [fp, #-8]
     250:	e55b200d 	ldrb	r2, [fp, #-13]
     254:	e5c32000 	strb	r2, [r3]
     258:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     25c:	e2433001 	sub	r3, r3, #1
     260:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     264:	e51b3008 	ldr	r3, [fp, #-8]
     268:	e2833001 	add	r3, r3, #1
     26c:	e50b3008 	str	r3, [fp, #-8]
     270:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     274:	e3530000 	cmp	r3, #0
     278:	1afffff3 	bne	24c <memset+0xe4>
     27c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     280:	e1a00003 	mov	r0, r3
     284:	e28bd000 	add	sp, fp, #0
     288:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     28c:	e12fff1e 	bx	lr

00000290 <strchr>:
     290:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     294:	e28db000 	add	fp, sp, #0
     298:	e24dd00c 	sub	sp, sp, #12
     29c:	e50b0008 	str	r0, [fp, #-8]
     2a0:	e1a03001 	mov	r3, r1
     2a4:	e54b3009 	strb	r3, [fp, #-9]
     2a8:	ea000009 	b	2d4 <strchr+0x44>
     2ac:	e51b3008 	ldr	r3, [fp, #-8]
     2b0:	e5d33000 	ldrb	r3, [r3]
     2b4:	e55b2009 	ldrb	r2, [fp, #-9]
     2b8:	e1520003 	cmp	r2, r3
     2bc:	1a000001 	bne	2c8 <strchr+0x38>
     2c0:	e51b3008 	ldr	r3, [fp, #-8]
     2c4:	ea000007 	b	2e8 <strchr+0x58>
     2c8:	e51b3008 	ldr	r3, [fp, #-8]
     2cc:	e2833001 	add	r3, r3, #1
     2d0:	e50b3008 	str	r3, [fp, #-8]
     2d4:	e51b3008 	ldr	r3, [fp, #-8]
     2d8:	e5d33000 	ldrb	r3, [r3]
     2dc:	e3530000 	cmp	r3, #0
     2e0:	1afffff1 	bne	2ac <strchr+0x1c>
     2e4:	e3a03000 	mov	r3, #0
     2e8:	e1a00003 	mov	r0, r3
     2ec:	e28bd000 	add	sp, fp, #0
     2f0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2f4:	e12fff1e 	bx	lr

000002f8 <gets>:
     2f8:	e92d4800 	push	{fp, lr}
     2fc:	e28db004 	add	fp, sp, #4
     300:	e24dd018 	sub	sp, sp, #24
     304:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     308:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     30c:	e3a03000 	mov	r3, #0
     310:	e50b3008 	str	r3, [fp, #-8]
     314:	ea000016 	b	374 <gets+0x7c>
     318:	e24b300d 	sub	r3, fp, #13
     31c:	e3a02001 	mov	r2, #1
     320:	e1a01003 	mov	r1, r3
     324:	e3a00000 	mov	r0, #0
     328:	eb00009b 	bl	59c <read>
     32c:	e50b000c 	str	r0, [fp, #-12]
     330:	e51b300c 	ldr	r3, [fp, #-12]
     334:	e3530000 	cmp	r3, #0
     338:	da000013 	ble	38c <gets+0x94>
     33c:	e51b3008 	ldr	r3, [fp, #-8]
     340:	e2832001 	add	r2, r3, #1
     344:	e50b2008 	str	r2, [fp, #-8]
     348:	e1a02003 	mov	r2, r3
     34c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     350:	e0833002 	add	r3, r3, r2
     354:	e55b200d 	ldrb	r2, [fp, #-13]
     358:	e5c32000 	strb	r2, [r3]
     35c:	e55b300d 	ldrb	r3, [fp, #-13]
     360:	e353000a 	cmp	r3, #10
     364:	0a000009 	beq	390 <gets+0x98>
     368:	e55b300d 	ldrb	r3, [fp, #-13]
     36c:	e353000d 	cmp	r3, #13
     370:	0a000006 	beq	390 <gets+0x98>
     374:	e51b3008 	ldr	r3, [fp, #-8]
     378:	e2833001 	add	r3, r3, #1
     37c:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     380:	e1520003 	cmp	r2, r3
     384:	caffffe3 	bgt	318 <gets+0x20>
     388:	ea000000 	b	390 <gets+0x98>
     38c:	e1a00000 	nop			@ (mov r0, r0)
     390:	e51b3008 	ldr	r3, [fp, #-8]
     394:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     398:	e0823003 	add	r3, r2, r3
     39c:	e3a02000 	mov	r2, #0
     3a0:	e5c32000 	strb	r2, [r3]
     3a4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3a8:	e1a00003 	mov	r0, r3
     3ac:	e24bd004 	sub	sp, fp, #4
     3b0:	e8bd8800 	pop	{fp, pc}

000003b4 <stat>:
     3b4:	e92d4800 	push	{fp, lr}
     3b8:	e28db004 	add	fp, sp, #4
     3bc:	e24dd010 	sub	sp, sp, #16
     3c0:	e50b0010 	str	r0, [fp, #-16]
     3c4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     3c8:	e3a01000 	mov	r1, #0
     3cc:	e51b0010 	ldr	r0, [fp, #-16]
     3d0:	eb00009e 	bl	650 <open>
     3d4:	e50b0008 	str	r0, [fp, #-8]
     3d8:	e51b3008 	ldr	r3, [fp, #-8]
     3dc:	e3530000 	cmp	r3, #0
     3e0:	aa000001 	bge	3ec <stat+0x38>
     3e4:	e3e03000 	mvn	r3, #0
     3e8:	ea000006 	b	408 <stat+0x54>
     3ec:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     3f0:	e51b0008 	ldr	r0, [fp, #-8]
     3f4:	eb0000b0 	bl	6bc <fstat>
     3f8:	e50b000c 	str	r0, [fp, #-12]
     3fc:	e51b0008 	ldr	r0, [fp, #-8]
     400:	eb000077 	bl	5e4 <close>
     404:	e51b300c 	ldr	r3, [fp, #-12]
     408:	e1a00003 	mov	r0, r3
     40c:	e24bd004 	sub	sp, fp, #4
     410:	e8bd8800 	pop	{fp, pc}

00000414 <atoi>:
     414:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     418:	e28db000 	add	fp, sp, #0
     41c:	e24dd014 	sub	sp, sp, #20
     420:	e50b0010 	str	r0, [fp, #-16]
     424:	e3a03000 	mov	r3, #0
     428:	e50b3008 	str	r3, [fp, #-8]
     42c:	ea00000c 	b	464 <atoi+0x50>
     430:	e51b2008 	ldr	r2, [fp, #-8]
     434:	e1a03002 	mov	r3, r2
     438:	e1a03103 	lsl	r3, r3, #2
     43c:	e0833002 	add	r3, r3, r2
     440:	e1a03083 	lsl	r3, r3, #1
     444:	e1a01003 	mov	r1, r3
     448:	e51b3010 	ldr	r3, [fp, #-16]
     44c:	e2832001 	add	r2, r3, #1
     450:	e50b2010 	str	r2, [fp, #-16]
     454:	e5d33000 	ldrb	r3, [r3]
     458:	e0813003 	add	r3, r1, r3
     45c:	e2433030 	sub	r3, r3, #48	@ 0x30
     460:	e50b3008 	str	r3, [fp, #-8]
     464:	e51b3010 	ldr	r3, [fp, #-16]
     468:	e5d33000 	ldrb	r3, [r3]
     46c:	e353002f 	cmp	r3, #47	@ 0x2f
     470:	9a000003 	bls	484 <atoi+0x70>
     474:	e51b3010 	ldr	r3, [fp, #-16]
     478:	e5d33000 	ldrb	r3, [r3]
     47c:	e3530039 	cmp	r3, #57	@ 0x39
     480:	9affffea 	bls	430 <atoi+0x1c>
     484:	e51b3008 	ldr	r3, [fp, #-8]
     488:	e1a00003 	mov	r0, r3
     48c:	e28bd000 	add	sp, fp, #0
     490:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     494:	e12fff1e 	bx	lr

00000498 <memmove>:
     498:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     49c:	e28db000 	add	fp, sp, #0
     4a0:	e24dd01c 	sub	sp, sp, #28
     4a4:	e50b0010 	str	r0, [fp, #-16]
     4a8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     4ac:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     4b0:	e51b3010 	ldr	r3, [fp, #-16]
     4b4:	e50b3008 	str	r3, [fp, #-8]
     4b8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     4bc:	e50b300c 	str	r3, [fp, #-12]
     4c0:	ea000007 	b	4e4 <memmove+0x4c>
     4c4:	e51b200c 	ldr	r2, [fp, #-12]
     4c8:	e2823001 	add	r3, r2, #1
     4cc:	e50b300c 	str	r3, [fp, #-12]
     4d0:	e51b3008 	ldr	r3, [fp, #-8]
     4d4:	e2831001 	add	r1, r3, #1
     4d8:	e50b1008 	str	r1, [fp, #-8]
     4dc:	e5d22000 	ldrb	r2, [r2]
     4e0:	e5c32000 	strb	r2, [r3]
     4e4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4e8:	e2432001 	sub	r2, r3, #1
     4ec:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     4f0:	e3530000 	cmp	r3, #0
     4f4:	cafffff2 	bgt	4c4 <memmove+0x2c>
     4f8:	e51b3010 	ldr	r3, [fp, #-16]
     4fc:	e1a00003 	mov	r0, r3
     500:	e28bd000 	add	sp, fp, #0
     504:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     508:	e12fff1e 	bx	lr

0000050c <fork>:
     50c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     510:	e1a04003 	mov	r4, r3
     514:	e1a03002 	mov	r3, r2
     518:	e1a02001 	mov	r2, r1
     51c:	e1a01000 	mov	r1, r0
     520:	e3a00001 	mov	r0, #1
     524:	ef000000 	svc	0x00000000
     528:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     52c:	e12fff1e 	bx	lr

00000530 <exit>:
     530:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     534:	e1a04003 	mov	r4, r3
     538:	e1a03002 	mov	r3, r2
     53c:	e1a02001 	mov	r2, r1
     540:	e1a01000 	mov	r1, r0
     544:	e3a00002 	mov	r0, #2
     548:	ef000000 	svc	0x00000000
     54c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     550:	e12fff1e 	bx	lr

00000554 <wait>:
     554:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     558:	e1a04003 	mov	r4, r3
     55c:	e1a03002 	mov	r3, r2
     560:	e1a02001 	mov	r2, r1
     564:	e1a01000 	mov	r1, r0
     568:	e3a00003 	mov	r0, #3
     56c:	ef000000 	svc	0x00000000
     570:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     574:	e12fff1e 	bx	lr

00000578 <pipe>:
     578:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     57c:	e1a04003 	mov	r4, r3
     580:	e1a03002 	mov	r3, r2
     584:	e1a02001 	mov	r2, r1
     588:	e1a01000 	mov	r1, r0
     58c:	e3a00004 	mov	r0, #4
     590:	ef000000 	svc	0x00000000
     594:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     598:	e12fff1e 	bx	lr

0000059c <read>:
     59c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5a0:	e1a04003 	mov	r4, r3
     5a4:	e1a03002 	mov	r3, r2
     5a8:	e1a02001 	mov	r2, r1
     5ac:	e1a01000 	mov	r1, r0
     5b0:	e3a00005 	mov	r0, #5
     5b4:	ef000000 	svc	0x00000000
     5b8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5bc:	e12fff1e 	bx	lr

000005c0 <write>:
     5c0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5c4:	e1a04003 	mov	r4, r3
     5c8:	e1a03002 	mov	r3, r2
     5cc:	e1a02001 	mov	r2, r1
     5d0:	e1a01000 	mov	r1, r0
     5d4:	e3a00010 	mov	r0, #16
     5d8:	ef000000 	svc	0x00000000
     5dc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5e0:	e12fff1e 	bx	lr

000005e4 <close>:
     5e4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5e8:	e1a04003 	mov	r4, r3
     5ec:	e1a03002 	mov	r3, r2
     5f0:	e1a02001 	mov	r2, r1
     5f4:	e1a01000 	mov	r1, r0
     5f8:	e3a00015 	mov	r0, #21
     5fc:	ef000000 	svc	0x00000000
     600:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     604:	e12fff1e 	bx	lr

00000608 <kill>:
     608:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     60c:	e1a04003 	mov	r4, r3
     610:	e1a03002 	mov	r3, r2
     614:	e1a02001 	mov	r2, r1
     618:	e1a01000 	mov	r1, r0
     61c:	e3a00006 	mov	r0, #6
     620:	ef000000 	svc	0x00000000
     624:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     628:	e12fff1e 	bx	lr

0000062c <exec>:
     62c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     630:	e1a04003 	mov	r4, r3
     634:	e1a03002 	mov	r3, r2
     638:	e1a02001 	mov	r2, r1
     63c:	e1a01000 	mov	r1, r0
     640:	e3a00007 	mov	r0, #7
     644:	ef000000 	svc	0x00000000
     648:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     64c:	e12fff1e 	bx	lr

00000650 <open>:
     650:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     654:	e1a04003 	mov	r4, r3
     658:	e1a03002 	mov	r3, r2
     65c:	e1a02001 	mov	r2, r1
     660:	e1a01000 	mov	r1, r0
     664:	e3a0000f 	mov	r0, #15
     668:	ef000000 	svc	0x00000000
     66c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     670:	e12fff1e 	bx	lr

00000674 <mknod>:
     674:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     678:	e1a04003 	mov	r4, r3
     67c:	e1a03002 	mov	r3, r2
     680:	e1a02001 	mov	r2, r1
     684:	e1a01000 	mov	r1, r0
     688:	e3a00011 	mov	r0, #17
     68c:	ef000000 	svc	0x00000000
     690:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     694:	e12fff1e 	bx	lr

00000698 <unlink>:
     698:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     69c:	e1a04003 	mov	r4, r3
     6a0:	e1a03002 	mov	r3, r2
     6a4:	e1a02001 	mov	r2, r1
     6a8:	e1a01000 	mov	r1, r0
     6ac:	e3a00012 	mov	r0, #18
     6b0:	ef000000 	svc	0x00000000
     6b4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6b8:	e12fff1e 	bx	lr

000006bc <fstat>:
     6bc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6c0:	e1a04003 	mov	r4, r3
     6c4:	e1a03002 	mov	r3, r2
     6c8:	e1a02001 	mov	r2, r1
     6cc:	e1a01000 	mov	r1, r0
     6d0:	e3a00008 	mov	r0, #8
     6d4:	ef000000 	svc	0x00000000
     6d8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6dc:	e12fff1e 	bx	lr

000006e0 <link>:
     6e0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6e4:	e1a04003 	mov	r4, r3
     6e8:	e1a03002 	mov	r3, r2
     6ec:	e1a02001 	mov	r2, r1
     6f0:	e1a01000 	mov	r1, r0
     6f4:	e3a00013 	mov	r0, #19
     6f8:	ef000000 	svc	0x00000000
     6fc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     700:	e12fff1e 	bx	lr

00000704 <mkdir>:
     704:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     708:	e1a04003 	mov	r4, r3
     70c:	e1a03002 	mov	r3, r2
     710:	e1a02001 	mov	r2, r1
     714:	e1a01000 	mov	r1, r0
     718:	e3a00014 	mov	r0, #20
     71c:	ef000000 	svc	0x00000000
     720:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     724:	e12fff1e 	bx	lr

00000728 <chdir>:
     728:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     72c:	e1a04003 	mov	r4, r3
     730:	e1a03002 	mov	r3, r2
     734:	e1a02001 	mov	r2, r1
     738:	e1a01000 	mov	r1, r0
     73c:	e3a00009 	mov	r0, #9
     740:	ef000000 	svc	0x00000000
     744:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     748:	e12fff1e 	bx	lr

0000074c <dup>:
     74c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     750:	e1a04003 	mov	r4, r3
     754:	e1a03002 	mov	r3, r2
     758:	e1a02001 	mov	r2, r1
     75c:	e1a01000 	mov	r1, r0
     760:	e3a0000a 	mov	r0, #10
     764:	ef000000 	svc	0x00000000
     768:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     76c:	e12fff1e 	bx	lr

00000770 <getpid>:
     770:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     774:	e1a04003 	mov	r4, r3
     778:	e1a03002 	mov	r3, r2
     77c:	e1a02001 	mov	r2, r1
     780:	e1a01000 	mov	r1, r0
     784:	e3a0000b 	mov	r0, #11
     788:	ef000000 	svc	0x00000000
     78c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     790:	e12fff1e 	bx	lr

00000794 <sbrk>:
     794:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     798:	e1a04003 	mov	r4, r3
     79c:	e1a03002 	mov	r3, r2
     7a0:	e1a02001 	mov	r2, r1
     7a4:	e1a01000 	mov	r1, r0
     7a8:	e3a0000c 	mov	r0, #12
     7ac:	ef000000 	svc	0x00000000
     7b0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7b4:	e12fff1e 	bx	lr

000007b8 <sleep>:
     7b8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7bc:	e1a04003 	mov	r4, r3
     7c0:	e1a03002 	mov	r3, r2
     7c4:	e1a02001 	mov	r2, r1
     7c8:	e1a01000 	mov	r1, r0
     7cc:	e3a0000d 	mov	r0, #13
     7d0:	ef000000 	svc	0x00000000
     7d4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7d8:	e12fff1e 	bx	lr

000007dc <uptime>:
     7dc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7e0:	e1a04003 	mov	r4, r3
     7e4:	e1a03002 	mov	r3, r2
     7e8:	e1a02001 	mov	r2, r1
     7ec:	e1a01000 	mov	r1, r0
     7f0:	e3a0000e 	mov	r0, #14
     7f4:	ef000000 	svc	0x00000000
     7f8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7fc:	e12fff1e 	bx	lr

00000800 <getprocs>:
     800:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     804:	e1a04003 	mov	r4, r3
     808:	e1a03002 	mov	r3, r2
     80c:	e1a02001 	mov	r2, r1
     810:	e1a01000 	mov	r1, r0
     814:	e3a00016 	mov	r0, #22
     818:	ef000000 	svc	0x00000000
     81c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     820:	e12fff1e 	bx	lr

00000824 <putc>:
     824:	e92d4800 	push	{fp, lr}
     828:	e28db004 	add	fp, sp, #4
     82c:	e24dd008 	sub	sp, sp, #8
     830:	e50b0008 	str	r0, [fp, #-8]
     834:	e1a03001 	mov	r3, r1
     838:	e54b3009 	strb	r3, [fp, #-9]
     83c:	e24b3009 	sub	r3, fp, #9
     840:	e3a02001 	mov	r2, #1
     844:	e1a01003 	mov	r1, r3
     848:	e51b0008 	ldr	r0, [fp, #-8]
     84c:	ebffff5b 	bl	5c0 <write>
     850:	e1a00000 	nop			@ (mov r0, r0)
     854:	e24bd004 	sub	sp, fp, #4
     858:	e8bd8800 	pop	{fp, pc}

0000085c <printint>:
     85c:	e92d4800 	push	{fp, lr}
     860:	e28db004 	add	fp, sp, #4
     864:	e24dd030 	sub	sp, sp, #48	@ 0x30
     868:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     86c:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     870:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     874:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     878:	e3a03000 	mov	r3, #0
     87c:	e50b300c 	str	r3, [fp, #-12]
     880:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     884:	e3530000 	cmp	r3, #0
     888:	0a000008 	beq	8b0 <printint+0x54>
     88c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     890:	e3530000 	cmp	r3, #0
     894:	aa000005 	bge	8b0 <printint+0x54>
     898:	e3a03001 	mov	r3, #1
     89c:	e50b300c 	str	r3, [fp, #-12]
     8a0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     8a4:	e2633000 	rsb	r3, r3, #0
     8a8:	e50b3010 	str	r3, [fp, #-16]
     8ac:	ea000001 	b	8b8 <printint+0x5c>
     8b0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     8b4:	e50b3010 	str	r3, [fp, #-16]
     8b8:	e3a03000 	mov	r3, #0
     8bc:	e50b3008 	str	r3, [fp, #-8]
     8c0:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     8c4:	e51b3010 	ldr	r3, [fp, #-16]
     8c8:	e1a01002 	mov	r1, r2
     8cc:	e1a00003 	mov	r0, r3
     8d0:	eb0001d5 	bl	102c <__aeabi_uidivmod>
     8d4:	e1a03001 	mov	r3, r1
     8d8:	e1a01003 	mov	r1, r3
     8dc:	e51b3008 	ldr	r3, [fp, #-8]
     8e0:	e2832001 	add	r2, r3, #1
     8e4:	e50b2008 	str	r2, [fp, #-8]
     8e8:	e59f20a0 	ldr	r2, [pc, #160]	@ 990 <printint+0x134>
     8ec:	e7d22001 	ldrb	r2, [r2, r1]
     8f0:	e2433004 	sub	r3, r3, #4
     8f4:	e083300b 	add	r3, r3, fp
     8f8:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     8fc:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     900:	e1a01003 	mov	r1, r3
     904:	e51b0010 	ldr	r0, [fp, #-16]
     908:	eb00018a 	bl	f38 <__udivsi3>
     90c:	e1a03000 	mov	r3, r0
     910:	e50b3010 	str	r3, [fp, #-16]
     914:	e51b3010 	ldr	r3, [fp, #-16]
     918:	e3530000 	cmp	r3, #0
     91c:	1affffe7 	bne	8c0 <printint+0x64>
     920:	e51b300c 	ldr	r3, [fp, #-12]
     924:	e3530000 	cmp	r3, #0
     928:	0a00000e 	beq	968 <printint+0x10c>
     92c:	e51b3008 	ldr	r3, [fp, #-8]
     930:	e2832001 	add	r2, r3, #1
     934:	e50b2008 	str	r2, [fp, #-8]
     938:	e2433004 	sub	r3, r3, #4
     93c:	e083300b 	add	r3, r3, fp
     940:	e3a0202d 	mov	r2, #45	@ 0x2d
     944:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     948:	ea000006 	b	968 <printint+0x10c>
     94c:	e24b2020 	sub	r2, fp, #32
     950:	e51b3008 	ldr	r3, [fp, #-8]
     954:	e0823003 	add	r3, r2, r3
     958:	e5d33000 	ldrb	r3, [r3]
     95c:	e1a01003 	mov	r1, r3
     960:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     964:	ebffffae 	bl	824 <putc>
     968:	e51b3008 	ldr	r3, [fp, #-8]
     96c:	e2433001 	sub	r3, r3, #1
     970:	e50b3008 	str	r3, [fp, #-8]
     974:	e51b3008 	ldr	r3, [fp, #-8]
     978:	e3530000 	cmp	r3, #0
     97c:	aafffff2 	bge	94c <printint+0xf0>
     980:	e1a00000 	nop			@ (mov r0, r0)
     984:	e1a00000 	nop			@ (mov r0, r0)
     988:	e24bd004 	sub	sp, fp, #4
     98c:	e8bd8800 	pop	{fp, pc}
     990:	0000105c 	.word	0x0000105c

00000994 <printf>:
     994:	e92d000e 	push	{r1, r2, r3}
     998:	e92d4800 	push	{fp, lr}
     99c:	e28db004 	add	fp, sp, #4
     9a0:	e24dd024 	sub	sp, sp, #36	@ 0x24
     9a4:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     9a8:	e3a03000 	mov	r3, #0
     9ac:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     9b0:	e28b3008 	add	r3, fp, #8
     9b4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     9b8:	e3a03000 	mov	r3, #0
     9bc:	e50b3010 	str	r3, [fp, #-16]
     9c0:	ea000074 	b	b98 <printf+0x204>
     9c4:	e59b2004 	ldr	r2, [fp, #4]
     9c8:	e51b3010 	ldr	r3, [fp, #-16]
     9cc:	e0823003 	add	r3, r2, r3
     9d0:	e5d33000 	ldrb	r3, [r3]
     9d4:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     9d8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     9dc:	e3530000 	cmp	r3, #0
     9e0:	1a00000b 	bne	a14 <printf+0x80>
     9e4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     9e8:	e3530025 	cmp	r3, #37	@ 0x25
     9ec:	1a000002 	bne	9fc <printf+0x68>
     9f0:	e3a03025 	mov	r3, #37	@ 0x25
     9f4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     9f8:	ea000063 	b	b8c <printf+0x1f8>
     9fc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a00:	e6ef3073 	uxtb	r3, r3
     a04:	e1a01003 	mov	r1, r3
     a08:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     a0c:	ebffff84 	bl	824 <putc>
     a10:	ea00005d 	b	b8c <printf+0x1f8>
     a14:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     a18:	e3530025 	cmp	r3, #37	@ 0x25
     a1c:	1a00005a 	bne	b8c <printf+0x1f8>
     a20:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a24:	e3530064 	cmp	r3, #100	@ 0x64
     a28:	1a00000a 	bne	a58 <printf+0xc4>
     a2c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     a30:	e5933000 	ldr	r3, [r3]
     a34:	e1a01003 	mov	r1, r3
     a38:	e3a03001 	mov	r3, #1
     a3c:	e3a0200a 	mov	r2, #10
     a40:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     a44:	ebffff84 	bl	85c <printint>
     a48:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     a4c:	e2833004 	add	r3, r3, #4
     a50:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     a54:	ea00004a 	b	b84 <printf+0x1f0>
     a58:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a5c:	e3530078 	cmp	r3, #120	@ 0x78
     a60:	0a000002 	beq	a70 <printf+0xdc>
     a64:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a68:	e3530070 	cmp	r3, #112	@ 0x70
     a6c:	1a00000a 	bne	a9c <printf+0x108>
     a70:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     a74:	e5933000 	ldr	r3, [r3]
     a78:	e1a01003 	mov	r1, r3
     a7c:	e3a03000 	mov	r3, #0
     a80:	e3a02010 	mov	r2, #16
     a84:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     a88:	ebffff73 	bl	85c <printint>
     a8c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     a90:	e2833004 	add	r3, r3, #4
     a94:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     a98:	ea000039 	b	b84 <printf+0x1f0>
     a9c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     aa0:	e3530073 	cmp	r3, #115	@ 0x73
     aa4:	1a000018 	bne	b0c <printf+0x178>
     aa8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     aac:	e5933000 	ldr	r3, [r3]
     ab0:	e50b300c 	str	r3, [fp, #-12]
     ab4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ab8:	e2833004 	add	r3, r3, #4
     abc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ac0:	e51b300c 	ldr	r3, [fp, #-12]
     ac4:	e3530000 	cmp	r3, #0
     ac8:	1a00000a 	bne	af8 <printf+0x164>
     acc:	e59f30f4 	ldr	r3, [pc, #244]	@ bc8 <printf+0x234>
     ad0:	e50b300c 	str	r3, [fp, #-12]
     ad4:	ea000007 	b	af8 <printf+0x164>
     ad8:	e51b300c 	ldr	r3, [fp, #-12]
     adc:	e5d33000 	ldrb	r3, [r3]
     ae0:	e1a01003 	mov	r1, r3
     ae4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ae8:	ebffff4d 	bl	824 <putc>
     aec:	e51b300c 	ldr	r3, [fp, #-12]
     af0:	e2833001 	add	r3, r3, #1
     af4:	e50b300c 	str	r3, [fp, #-12]
     af8:	e51b300c 	ldr	r3, [fp, #-12]
     afc:	e5d33000 	ldrb	r3, [r3]
     b00:	e3530000 	cmp	r3, #0
     b04:	1afffff3 	bne	ad8 <printf+0x144>
     b08:	ea00001d 	b	b84 <printf+0x1f0>
     b0c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b10:	e3530063 	cmp	r3, #99	@ 0x63
     b14:	1a000009 	bne	b40 <printf+0x1ac>
     b18:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b1c:	e5933000 	ldr	r3, [r3]
     b20:	e6ef3073 	uxtb	r3, r3
     b24:	e1a01003 	mov	r1, r3
     b28:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b2c:	ebffff3c 	bl	824 <putc>
     b30:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b34:	e2833004 	add	r3, r3, #4
     b38:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b3c:	ea000010 	b	b84 <printf+0x1f0>
     b40:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b44:	e3530025 	cmp	r3, #37	@ 0x25
     b48:	1a000005 	bne	b64 <printf+0x1d0>
     b4c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b50:	e6ef3073 	uxtb	r3, r3
     b54:	e1a01003 	mov	r1, r3
     b58:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b5c:	ebffff30 	bl	824 <putc>
     b60:	ea000007 	b	b84 <printf+0x1f0>
     b64:	e3a01025 	mov	r1, #37	@ 0x25
     b68:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b6c:	ebffff2c 	bl	824 <putc>
     b70:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b74:	e6ef3073 	uxtb	r3, r3
     b78:	e1a01003 	mov	r1, r3
     b7c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b80:	ebffff27 	bl	824 <putc>
     b84:	e3a03000 	mov	r3, #0
     b88:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     b8c:	e51b3010 	ldr	r3, [fp, #-16]
     b90:	e2833001 	add	r3, r3, #1
     b94:	e50b3010 	str	r3, [fp, #-16]
     b98:	e59b2004 	ldr	r2, [fp, #4]
     b9c:	e51b3010 	ldr	r3, [fp, #-16]
     ba0:	e0823003 	add	r3, r2, r3
     ba4:	e5d33000 	ldrb	r3, [r3]
     ba8:	e3530000 	cmp	r3, #0
     bac:	1affff84 	bne	9c4 <printf+0x30>
     bb0:	e1a00000 	nop			@ (mov r0, r0)
     bb4:	e1a00000 	nop			@ (mov r0, r0)
     bb8:	e24bd004 	sub	sp, fp, #4
     bbc:	e8bd4800 	pop	{fp, lr}
     bc0:	e28dd00c 	add	sp, sp, #12
     bc4:	e12fff1e 	bx	lr
     bc8:	00001054 	.word	0x00001054

00000bcc <free>:
     bcc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     bd0:	e28db000 	add	fp, sp, #0
     bd4:	e24dd014 	sub	sp, sp, #20
     bd8:	e50b0010 	str	r0, [fp, #-16]
     bdc:	e51b3010 	ldr	r3, [fp, #-16]
     be0:	e2433008 	sub	r3, r3, #8
     be4:	e50b300c 	str	r3, [fp, #-12]
     be8:	e59f3154 	ldr	r3, [pc, #340]	@ d44 <free+0x178>
     bec:	e5933000 	ldr	r3, [r3]
     bf0:	e50b3008 	str	r3, [fp, #-8]
     bf4:	ea000010 	b	c3c <free+0x70>
     bf8:	e51b3008 	ldr	r3, [fp, #-8]
     bfc:	e5933000 	ldr	r3, [r3]
     c00:	e51b2008 	ldr	r2, [fp, #-8]
     c04:	e1520003 	cmp	r2, r3
     c08:	3a000008 	bcc	c30 <free+0x64>
     c0c:	e51b200c 	ldr	r2, [fp, #-12]
     c10:	e51b3008 	ldr	r3, [fp, #-8]
     c14:	e1520003 	cmp	r2, r3
     c18:	8a000010 	bhi	c60 <free+0x94>
     c1c:	e51b3008 	ldr	r3, [fp, #-8]
     c20:	e5933000 	ldr	r3, [r3]
     c24:	e51b200c 	ldr	r2, [fp, #-12]
     c28:	e1520003 	cmp	r2, r3
     c2c:	3a00000b 	bcc	c60 <free+0x94>
     c30:	e51b3008 	ldr	r3, [fp, #-8]
     c34:	e5933000 	ldr	r3, [r3]
     c38:	e50b3008 	str	r3, [fp, #-8]
     c3c:	e51b200c 	ldr	r2, [fp, #-12]
     c40:	e51b3008 	ldr	r3, [fp, #-8]
     c44:	e1520003 	cmp	r2, r3
     c48:	9affffea 	bls	bf8 <free+0x2c>
     c4c:	e51b3008 	ldr	r3, [fp, #-8]
     c50:	e5933000 	ldr	r3, [r3]
     c54:	e51b200c 	ldr	r2, [fp, #-12]
     c58:	e1520003 	cmp	r2, r3
     c5c:	2affffe5 	bcs	bf8 <free+0x2c>
     c60:	e51b300c 	ldr	r3, [fp, #-12]
     c64:	e5933004 	ldr	r3, [r3, #4]
     c68:	e1a03183 	lsl	r3, r3, #3
     c6c:	e51b200c 	ldr	r2, [fp, #-12]
     c70:	e0822003 	add	r2, r2, r3
     c74:	e51b3008 	ldr	r3, [fp, #-8]
     c78:	e5933000 	ldr	r3, [r3]
     c7c:	e1520003 	cmp	r2, r3
     c80:	1a00000d 	bne	cbc <free+0xf0>
     c84:	e51b300c 	ldr	r3, [fp, #-12]
     c88:	e5932004 	ldr	r2, [r3, #4]
     c8c:	e51b3008 	ldr	r3, [fp, #-8]
     c90:	e5933000 	ldr	r3, [r3]
     c94:	e5933004 	ldr	r3, [r3, #4]
     c98:	e0822003 	add	r2, r2, r3
     c9c:	e51b300c 	ldr	r3, [fp, #-12]
     ca0:	e5832004 	str	r2, [r3, #4]
     ca4:	e51b3008 	ldr	r3, [fp, #-8]
     ca8:	e5933000 	ldr	r3, [r3]
     cac:	e5932000 	ldr	r2, [r3]
     cb0:	e51b300c 	ldr	r3, [fp, #-12]
     cb4:	e5832000 	str	r2, [r3]
     cb8:	ea000003 	b	ccc <free+0x100>
     cbc:	e51b3008 	ldr	r3, [fp, #-8]
     cc0:	e5932000 	ldr	r2, [r3]
     cc4:	e51b300c 	ldr	r3, [fp, #-12]
     cc8:	e5832000 	str	r2, [r3]
     ccc:	e51b3008 	ldr	r3, [fp, #-8]
     cd0:	e5933004 	ldr	r3, [r3, #4]
     cd4:	e1a03183 	lsl	r3, r3, #3
     cd8:	e51b2008 	ldr	r2, [fp, #-8]
     cdc:	e0823003 	add	r3, r2, r3
     ce0:	e51b200c 	ldr	r2, [fp, #-12]
     ce4:	e1520003 	cmp	r2, r3
     ce8:	1a00000b 	bne	d1c <free+0x150>
     cec:	e51b3008 	ldr	r3, [fp, #-8]
     cf0:	e5932004 	ldr	r2, [r3, #4]
     cf4:	e51b300c 	ldr	r3, [fp, #-12]
     cf8:	e5933004 	ldr	r3, [r3, #4]
     cfc:	e0822003 	add	r2, r2, r3
     d00:	e51b3008 	ldr	r3, [fp, #-8]
     d04:	e5832004 	str	r2, [r3, #4]
     d08:	e51b300c 	ldr	r3, [fp, #-12]
     d0c:	e5932000 	ldr	r2, [r3]
     d10:	e51b3008 	ldr	r3, [fp, #-8]
     d14:	e5832000 	str	r2, [r3]
     d18:	ea000002 	b	d28 <free+0x15c>
     d1c:	e51b3008 	ldr	r3, [fp, #-8]
     d20:	e51b200c 	ldr	r2, [fp, #-12]
     d24:	e5832000 	str	r2, [r3]
     d28:	e59f2014 	ldr	r2, [pc, #20]	@ d44 <free+0x178>
     d2c:	e51b3008 	ldr	r3, [fp, #-8]
     d30:	e5823000 	str	r3, [r2]
     d34:	e1a00000 	nop			@ (mov r0, r0)
     d38:	e28bd000 	add	sp, fp, #0
     d3c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     d40:	e12fff1e 	bx	lr
     d44:	00001078 	.word	0x00001078

00000d48 <morecore>:
     d48:	e92d4800 	push	{fp, lr}
     d4c:	e28db004 	add	fp, sp, #4
     d50:	e24dd010 	sub	sp, sp, #16
     d54:	e50b0010 	str	r0, [fp, #-16]
     d58:	e51b3010 	ldr	r3, [fp, #-16]
     d5c:	e3530a01 	cmp	r3, #4096	@ 0x1000
     d60:	2a000001 	bcs	d6c <morecore+0x24>
     d64:	e3a03a01 	mov	r3, #4096	@ 0x1000
     d68:	e50b3010 	str	r3, [fp, #-16]
     d6c:	e51b3010 	ldr	r3, [fp, #-16]
     d70:	e1a03183 	lsl	r3, r3, #3
     d74:	e1a00003 	mov	r0, r3
     d78:	ebfffe85 	bl	794 <sbrk>
     d7c:	e50b0008 	str	r0, [fp, #-8]
     d80:	e51b3008 	ldr	r3, [fp, #-8]
     d84:	e3730001 	cmn	r3, #1
     d88:	1a000001 	bne	d94 <morecore+0x4c>
     d8c:	e3a03000 	mov	r3, #0
     d90:	ea00000a 	b	dc0 <morecore+0x78>
     d94:	e51b3008 	ldr	r3, [fp, #-8]
     d98:	e50b300c 	str	r3, [fp, #-12]
     d9c:	e51b300c 	ldr	r3, [fp, #-12]
     da0:	e51b2010 	ldr	r2, [fp, #-16]
     da4:	e5832004 	str	r2, [r3, #4]
     da8:	e51b300c 	ldr	r3, [fp, #-12]
     dac:	e2833008 	add	r3, r3, #8
     db0:	e1a00003 	mov	r0, r3
     db4:	ebffff84 	bl	bcc <free>
     db8:	e59f300c 	ldr	r3, [pc, #12]	@ dcc <morecore+0x84>
     dbc:	e5933000 	ldr	r3, [r3]
     dc0:	e1a00003 	mov	r0, r3
     dc4:	e24bd004 	sub	sp, fp, #4
     dc8:	e8bd8800 	pop	{fp, pc}
     dcc:	00001078 	.word	0x00001078

00000dd0 <malloc>:
     dd0:	e92d4800 	push	{fp, lr}
     dd4:	e28db004 	add	fp, sp, #4
     dd8:	e24dd018 	sub	sp, sp, #24
     ddc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     de0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     de4:	e2833007 	add	r3, r3, #7
     de8:	e1a031a3 	lsr	r3, r3, #3
     dec:	e2833001 	add	r3, r3, #1
     df0:	e50b3010 	str	r3, [fp, #-16]
     df4:	e59f3134 	ldr	r3, [pc, #308]	@ f30 <malloc+0x160>
     df8:	e5933000 	ldr	r3, [r3]
     dfc:	e50b300c 	str	r3, [fp, #-12]
     e00:	e51b300c 	ldr	r3, [fp, #-12]
     e04:	e3530000 	cmp	r3, #0
     e08:	1a00000b 	bne	e3c <malloc+0x6c>
     e0c:	e59f3120 	ldr	r3, [pc, #288]	@ f34 <malloc+0x164>
     e10:	e50b300c 	str	r3, [fp, #-12]
     e14:	e59f2114 	ldr	r2, [pc, #276]	@ f30 <malloc+0x160>
     e18:	e51b300c 	ldr	r3, [fp, #-12]
     e1c:	e5823000 	str	r3, [r2]
     e20:	e59f3108 	ldr	r3, [pc, #264]	@ f30 <malloc+0x160>
     e24:	e5933000 	ldr	r3, [r3]
     e28:	e59f2104 	ldr	r2, [pc, #260]	@ f34 <malloc+0x164>
     e2c:	e5823000 	str	r3, [r2]
     e30:	e59f30fc 	ldr	r3, [pc, #252]	@ f34 <malloc+0x164>
     e34:	e3a02000 	mov	r2, #0
     e38:	e5832004 	str	r2, [r3, #4]
     e3c:	e51b300c 	ldr	r3, [fp, #-12]
     e40:	e5933000 	ldr	r3, [r3]
     e44:	e50b3008 	str	r3, [fp, #-8]
     e48:	e51b3008 	ldr	r3, [fp, #-8]
     e4c:	e5933004 	ldr	r3, [r3, #4]
     e50:	e51b2010 	ldr	r2, [fp, #-16]
     e54:	e1520003 	cmp	r2, r3
     e58:	8a00001e 	bhi	ed8 <malloc+0x108>
     e5c:	e51b3008 	ldr	r3, [fp, #-8]
     e60:	e5933004 	ldr	r3, [r3, #4]
     e64:	e51b2010 	ldr	r2, [fp, #-16]
     e68:	e1520003 	cmp	r2, r3
     e6c:	1a000004 	bne	e84 <malloc+0xb4>
     e70:	e51b3008 	ldr	r3, [fp, #-8]
     e74:	e5932000 	ldr	r2, [r3]
     e78:	e51b300c 	ldr	r3, [fp, #-12]
     e7c:	e5832000 	str	r2, [r3]
     e80:	ea00000e 	b	ec0 <malloc+0xf0>
     e84:	e51b3008 	ldr	r3, [fp, #-8]
     e88:	e5932004 	ldr	r2, [r3, #4]
     e8c:	e51b3010 	ldr	r3, [fp, #-16]
     e90:	e0422003 	sub	r2, r2, r3
     e94:	e51b3008 	ldr	r3, [fp, #-8]
     e98:	e5832004 	str	r2, [r3, #4]
     e9c:	e51b3008 	ldr	r3, [fp, #-8]
     ea0:	e5933004 	ldr	r3, [r3, #4]
     ea4:	e1a03183 	lsl	r3, r3, #3
     ea8:	e51b2008 	ldr	r2, [fp, #-8]
     eac:	e0823003 	add	r3, r2, r3
     eb0:	e50b3008 	str	r3, [fp, #-8]
     eb4:	e51b3008 	ldr	r3, [fp, #-8]
     eb8:	e51b2010 	ldr	r2, [fp, #-16]
     ebc:	e5832004 	str	r2, [r3, #4]
     ec0:	e59f2068 	ldr	r2, [pc, #104]	@ f30 <malloc+0x160>
     ec4:	e51b300c 	ldr	r3, [fp, #-12]
     ec8:	e5823000 	str	r3, [r2]
     ecc:	e51b3008 	ldr	r3, [fp, #-8]
     ed0:	e2833008 	add	r3, r3, #8
     ed4:	ea000012 	b	f24 <malloc+0x154>
     ed8:	e59f3050 	ldr	r3, [pc, #80]	@ f30 <malloc+0x160>
     edc:	e5933000 	ldr	r3, [r3]
     ee0:	e51b2008 	ldr	r2, [fp, #-8]
     ee4:	e1520003 	cmp	r2, r3
     ee8:	1a000007 	bne	f0c <malloc+0x13c>
     eec:	e51b0010 	ldr	r0, [fp, #-16]
     ef0:	ebffff94 	bl	d48 <morecore>
     ef4:	e50b0008 	str	r0, [fp, #-8]
     ef8:	e51b3008 	ldr	r3, [fp, #-8]
     efc:	e3530000 	cmp	r3, #0
     f00:	1a000001 	bne	f0c <malloc+0x13c>
     f04:	e3a03000 	mov	r3, #0
     f08:	ea000005 	b	f24 <malloc+0x154>
     f0c:	e51b3008 	ldr	r3, [fp, #-8]
     f10:	e50b300c 	str	r3, [fp, #-12]
     f14:	e51b3008 	ldr	r3, [fp, #-8]
     f18:	e5933000 	ldr	r3, [r3]
     f1c:	e50b3008 	str	r3, [fp, #-8]
     f20:	eaffffc8 	b	e48 <malloc+0x78>
     f24:	e1a00003 	mov	r0, r3
     f28:	e24bd004 	sub	sp, fp, #4
     f2c:	e8bd8800 	pop	{fp, pc}
     f30:	00001078 	.word	0x00001078
     f34:	00001070 	.word	0x00001070

00000f38 <__udivsi3>:
     f38:	e2512001 	subs	r2, r1, #1
     f3c:	012fff1e 	bxeq	lr
     f40:	3a000036 	bcc	1020 <__udivsi3+0xe8>
     f44:	e1500001 	cmp	r0, r1
     f48:	9a000022 	bls	fd8 <__udivsi3+0xa0>
     f4c:	e1110002 	tst	r1, r2
     f50:	0a000023 	beq	fe4 <__udivsi3+0xac>
     f54:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
     f58:	01a01181 	lsleq	r1, r1, #3
     f5c:	03a03008 	moveq	r3, #8
     f60:	13a03001 	movne	r3, #1
     f64:	e3510201 	cmp	r1, #268435456	@ 0x10000000
     f68:	31510000 	cmpcc	r1, r0
     f6c:	31a01201 	lslcc	r1, r1, #4
     f70:	31a03203 	lslcc	r3, r3, #4
     f74:	3afffffa 	bcc	f64 <__udivsi3+0x2c>
     f78:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
     f7c:	31510000 	cmpcc	r1, r0
     f80:	31a01081 	lslcc	r1, r1, #1
     f84:	31a03083 	lslcc	r3, r3, #1
     f88:	3afffffa 	bcc	f78 <__udivsi3+0x40>
     f8c:	e3a02000 	mov	r2, #0
     f90:	e1500001 	cmp	r0, r1
     f94:	20400001 	subcs	r0, r0, r1
     f98:	21822003 	orrcs	r2, r2, r3
     f9c:	e15000a1 	cmp	r0, r1, lsr #1
     fa0:	204000a1 	subcs	r0, r0, r1, lsr #1
     fa4:	218220a3 	orrcs	r2, r2, r3, lsr #1
     fa8:	e1500121 	cmp	r0, r1, lsr #2
     fac:	20400121 	subcs	r0, r0, r1, lsr #2
     fb0:	21822123 	orrcs	r2, r2, r3, lsr #2
     fb4:	e15001a1 	cmp	r0, r1, lsr #3
     fb8:	204001a1 	subcs	r0, r0, r1, lsr #3
     fbc:	218221a3 	orrcs	r2, r2, r3, lsr #3
     fc0:	e3500000 	cmp	r0, #0
     fc4:	11b03223 	lsrsne	r3, r3, #4
     fc8:	11a01221 	lsrne	r1, r1, #4
     fcc:	1affffef 	bne	f90 <__udivsi3+0x58>
     fd0:	e1a00002 	mov	r0, r2
     fd4:	e12fff1e 	bx	lr
     fd8:	03a00001 	moveq	r0, #1
     fdc:	13a00000 	movne	r0, #0
     fe0:	e12fff1e 	bx	lr
     fe4:	e3510801 	cmp	r1, #65536	@ 0x10000
     fe8:	21a01821 	lsrcs	r1, r1, #16
     fec:	23a02010 	movcs	r2, #16
     ff0:	33a02000 	movcc	r2, #0
     ff4:	e3510c01 	cmp	r1, #256	@ 0x100
     ff8:	21a01421 	lsrcs	r1, r1, #8
     ffc:	22822008 	addcs	r2, r2, #8
    1000:	e3510010 	cmp	r1, #16
    1004:	21a01221 	lsrcs	r1, r1, #4
    1008:	22822004 	addcs	r2, r2, #4
    100c:	e3510004 	cmp	r1, #4
    1010:	82822003 	addhi	r2, r2, #3
    1014:	908220a1 	addls	r2, r2, r1, lsr #1
    1018:	e1a00230 	lsr	r0, r0, r2
    101c:	e12fff1e 	bx	lr
    1020:	e3500000 	cmp	r0, #0
    1024:	13e00000 	mvnne	r0, #0
    1028:	ea000007 	b	104c <__aeabi_idiv0>

0000102c <__aeabi_uidivmod>:
    102c:	e3510000 	cmp	r1, #0
    1030:	0afffffa 	beq	1020 <__udivsi3+0xe8>
    1034:	e92d4003 	push	{r0, r1, lr}
    1038:	ebffffbe 	bl	f38 <__udivsi3>
    103c:	e8bd4006 	pop	{r1, r2, lr}
    1040:	e0030092 	mul	r3, r2, r0
    1044:	e0411003 	sub	r1, r1, r3
    1048:	e12fff1e 	bx	lr

0000104c <__aeabi_idiv0>:
    104c:	e12fff1e 	bx	lr
