
_ps:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dde82 	sub	sp, sp, #2080	@ 0x820
       c:	e24dd008 	sub	sp, sp, #8
      10:	e50b0818 	str	r0, [fp, #-2072]	@ 0xfffff7e8
      14:	e50b181c 	str	r1, [fp, #-2076]	@ 0xfffff7e4
      18:	e24b3e81 	sub	r3, fp, #2064	@ 0x810
      1c:	e2433004 	sub	r3, r3, #4
      20:	e3a01040 	mov	r1, #64	@ 0x40
      24:	e1a00003 	mov	r0, r3
      28:	eb00025b 	bl	99c <getprocs>
      2c:	e50b0010 	str	r0, [fp, #-16]
      30:	e51b3010 	ldr	r3, [fp, #-16]
      34:	e3530000 	cmp	r3, #0
      38:	aa000003 	bge	4c <main+0x4c>
      3c:	e59f1164 	ldr	r1, [pc, #356]	@ 1a8 <main+0x1a8>
      40:	e3a00002 	mov	r0, #2
      44:	eb0002b9 	bl	b30 <printf>
      48:	eb00019f 	bl	6cc <exit>
      4c:	e59f1158 	ldr	r1, [pc, #344]	@ 1ac <main+0x1ac>
      50:	e3a00001 	mov	r0, #1
      54:	eb0002b5 	bl	b30 <printf>
      58:	e3a03000 	mov	r3, #0
      5c:	e50b3008 	str	r3, [fp, #-8]
      60:	ea00004b 	b	194 <main+0x194>
      64:	e51b3008 	ldr	r3, [fp, #-8]
      68:	e1a03283 	lsl	r3, r3, #5
      6c:	e2433004 	sub	r3, r3, #4
      70:	e083300b 	add	r3, r3, fp
      74:	e51337f8 	ldr	r3, [r3, #-2040]	@ 0xfffff808
      78:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      7c:	e59f312c 	ldr	r3, [pc, #300]	@ 1b0 <main+0x1b0>
      80:	e50b300c 	str	r3, [fp, #-12]
      84:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      88:	e3530000 	cmp	r3, #0
      8c:	1a000002 	bne	9c <main+0x9c>
      90:	e59f311c 	ldr	r3, [pc, #284]	@ 1b4 <main+0x1b4>
      94:	e50b300c 	str	r3, [fp, #-12]
      98:	ea00001c 	b	110 <main+0x110>
      9c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      a0:	e3530001 	cmp	r3, #1
      a4:	1a000002 	bne	b4 <main+0xb4>
      a8:	e59f3108 	ldr	r3, [pc, #264]	@ 1b8 <main+0x1b8>
      ac:	e50b300c 	str	r3, [fp, #-12]
      b0:	ea000016 	b	110 <main+0x110>
      b4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      b8:	e3530002 	cmp	r3, #2
      bc:	1a000002 	bne	cc <main+0xcc>
      c0:	e59f30f4 	ldr	r3, [pc, #244]	@ 1bc <main+0x1bc>
      c4:	e50b300c 	str	r3, [fp, #-12]
      c8:	ea000010 	b	110 <main+0x110>
      cc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      d0:	e3530003 	cmp	r3, #3
      d4:	1a000002 	bne	e4 <main+0xe4>
      d8:	e59f30e0 	ldr	r3, [pc, #224]	@ 1c0 <main+0x1c0>
      dc:	e50b300c 	str	r3, [fp, #-12]
      e0:	ea00000a 	b	110 <main+0x110>
      e4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      e8:	e3530004 	cmp	r3, #4
      ec:	1a000002 	bne	fc <main+0xfc>
      f0:	e59f30cc 	ldr	r3, [pc, #204]	@ 1c4 <main+0x1c4>
      f4:	e50b300c 	str	r3, [fp, #-12]
      f8:	ea000004 	b	110 <main+0x110>
      fc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     100:	e3530005 	cmp	r3, #5
     104:	1a000001 	bne	110 <main+0x110>
     108:	e59f30b8 	ldr	r3, [pc, #184]	@ 1c8 <main+0x1c8>
     10c:	e50b300c 	str	r3, [fp, #-12]
     110:	e51b3008 	ldr	r3, [fp, #-8]
     114:	e1a03283 	lsl	r3, r3, #5
     118:	e2433004 	sub	r3, r3, #4
     11c:	e083300b 	add	r3, r3, fp
     120:	e5130810 	ldr	r0, [r3, #-2064]	@ 0xfffff7f0
     124:	e51b3008 	ldr	r3, [fp, #-8]
     128:	e1a03283 	lsl	r3, r3, #5
     12c:	e2433004 	sub	r3, r3, #4
     130:	e083300b 	add	r3, r3, fp
     134:	e513c80c 	ldr	ip, [r3, #-2060]	@ 0xfffff7f4
     138:	e51b3008 	ldr	r3, [fp, #-8]
     13c:	e1a03283 	lsl	r3, r3, #5
     140:	e2433004 	sub	r3, r3, #4
     144:	e083300b 	add	r3, r3, fp
     148:	e51337f4 	ldr	r3, [r3, #-2036]	@ 0xfffff80c
     14c:	e24b1e81 	sub	r1, fp, #2064	@ 0x810
     150:	e2411004 	sub	r1, r1, #4
     154:	e51b2008 	ldr	r2, [fp, #-8]
     158:	e1a02282 	lsl	r2, r2, #5
     15c:	e2822008 	add	r2, r2, #8
     160:	e0812002 	add	r2, r1, r2
     164:	e58d2008 	str	r2, [sp, #8]
     168:	e58d3004 	str	r3, [sp, #4]
     16c:	e51b300c 	ldr	r3, [fp, #-12]
     170:	e58d3000 	str	r3, [sp]
     174:	e1a0300c 	mov	r3, ip
     178:	e1a02000 	mov	r2, r0
     17c:	e59f1048 	ldr	r1, [pc, #72]	@ 1cc <main+0x1cc>
     180:	e3a00001 	mov	r0, #1
     184:	eb000269 	bl	b30 <printf>
     188:	e51b3008 	ldr	r3, [fp, #-8]
     18c:	e2833001 	add	r3, r3, #1
     190:	e50b3008 	str	r3, [fp, #-8]
     194:	e51b2008 	ldr	r2, [fp, #-8]
     198:	e51b3010 	ldr	r3, [fp, #-16]
     19c:	e1520003 	cmp	r2, r3
     1a0:	baffffaf 	blt	64 <main+0x64>
     1a4:	eb000148 	bl	6cc <exit>
     1a8:	000011ec 	.word	0x000011ec
     1ac:	00001204 	.word	0x00001204
     1b0:	00001224 	.word	0x00001224
     1b4:	00001228 	.word	0x00001228
     1b8:	00001230 	.word	0x00001230
     1bc:	00001238 	.word	0x00001238
     1c0:	00001240 	.word	0x00001240
     1c4:	0000124c 	.word	0x0000124c
     1c8:	00001250 	.word	0x00001250
     1cc:	00001258 	.word	0x00001258

000001d0 <strcpy>:
     1d0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1d4:	e28db000 	add	fp, sp, #0
     1d8:	e24dd014 	sub	sp, sp, #20
     1dc:	e50b0010 	str	r0, [fp, #-16]
     1e0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     1e4:	e51b3010 	ldr	r3, [fp, #-16]
     1e8:	e50b3008 	str	r3, [fp, #-8]
     1ec:	e1a00000 	nop			@ (mov r0, r0)
     1f0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     1f4:	e2823001 	add	r3, r2, #1
     1f8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     1fc:	e51b3010 	ldr	r3, [fp, #-16]
     200:	e2831001 	add	r1, r3, #1
     204:	e50b1010 	str	r1, [fp, #-16]
     208:	e5d22000 	ldrb	r2, [r2]
     20c:	e5c32000 	strb	r2, [r3]
     210:	e5d33000 	ldrb	r3, [r3]
     214:	e3530000 	cmp	r3, #0
     218:	1afffff4 	bne	1f0 <strcpy+0x20>
     21c:	e51b3008 	ldr	r3, [fp, #-8]
     220:	e1a00003 	mov	r0, r3
     224:	e28bd000 	add	sp, fp, #0
     228:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     22c:	e12fff1e 	bx	lr

00000230 <strcmp>:
     230:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     234:	e28db000 	add	fp, sp, #0
     238:	e24dd00c 	sub	sp, sp, #12
     23c:	e50b0008 	str	r0, [fp, #-8]
     240:	e50b100c 	str	r1, [fp, #-12]
     244:	ea000005 	b	260 <strcmp+0x30>
     248:	e51b3008 	ldr	r3, [fp, #-8]
     24c:	e2833001 	add	r3, r3, #1
     250:	e50b3008 	str	r3, [fp, #-8]
     254:	e51b300c 	ldr	r3, [fp, #-12]
     258:	e2833001 	add	r3, r3, #1
     25c:	e50b300c 	str	r3, [fp, #-12]
     260:	e51b3008 	ldr	r3, [fp, #-8]
     264:	e5d33000 	ldrb	r3, [r3]
     268:	e3530000 	cmp	r3, #0
     26c:	0a000005 	beq	288 <strcmp+0x58>
     270:	e51b3008 	ldr	r3, [fp, #-8]
     274:	e5d32000 	ldrb	r2, [r3]
     278:	e51b300c 	ldr	r3, [fp, #-12]
     27c:	e5d33000 	ldrb	r3, [r3]
     280:	e1520003 	cmp	r2, r3
     284:	0affffef 	beq	248 <strcmp+0x18>
     288:	e51b3008 	ldr	r3, [fp, #-8]
     28c:	e5d33000 	ldrb	r3, [r3]
     290:	e1a02003 	mov	r2, r3
     294:	e51b300c 	ldr	r3, [fp, #-12]
     298:	e5d33000 	ldrb	r3, [r3]
     29c:	e0423003 	sub	r3, r2, r3
     2a0:	e1a00003 	mov	r0, r3
     2a4:	e28bd000 	add	sp, fp, #0
     2a8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2ac:	e12fff1e 	bx	lr

000002b0 <strlen>:
     2b0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2b4:	e28db000 	add	fp, sp, #0
     2b8:	e24dd014 	sub	sp, sp, #20
     2bc:	e50b0010 	str	r0, [fp, #-16]
     2c0:	e3a03000 	mov	r3, #0
     2c4:	e50b3008 	str	r3, [fp, #-8]
     2c8:	ea000002 	b	2d8 <strlen+0x28>
     2cc:	e51b3008 	ldr	r3, [fp, #-8]
     2d0:	e2833001 	add	r3, r3, #1
     2d4:	e50b3008 	str	r3, [fp, #-8]
     2d8:	e51b3008 	ldr	r3, [fp, #-8]
     2dc:	e51b2010 	ldr	r2, [fp, #-16]
     2e0:	e0823003 	add	r3, r2, r3
     2e4:	e5d33000 	ldrb	r3, [r3]
     2e8:	e3530000 	cmp	r3, #0
     2ec:	1afffff6 	bne	2cc <strlen+0x1c>
     2f0:	e51b3008 	ldr	r3, [fp, #-8]
     2f4:	e1a00003 	mov	r0, r3
     2f8:	e28bd000 	add	sp, fp, #0
     2fc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     300:	e12fff1e 	bx	lr

00000304 <memset>:
     304:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     308:	e28db000 	add	fp, sp, #0
     30c:	e24dd024 	sub	sp, sp, #36	@ 0x24
     310:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     314:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     318:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     31c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     320:	e50b3008 	str	r3, [fp, #-8]
     324:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     328:	e54b300d 	strb	r3, [fp, #-13]
     32c:	e55b200d 	ldrb	r2, [fp, #-13]
     330:	e1a03002 	mov	r3, r2
     334:	e1a03403 	lsl	r3, r3, #8
     338:	e0833002 	add	r3, r3, r2
     33c:	e1a03803 	lsl	r3, r3, #16
     340:	e1a02003 	mov	r2, r3
     344:	e55b300d 	ldrb	r3, [fp, #-13]
     348:	e1a03403 	lsl	r3, r3, #8
     34c:	e1822003 	orr	r2, r2, r3
     350:	e55b300d 	ldrb	r3, [fp, #-13]
     354:	e1823003 	orr	r3, r2, r3
     358:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     35c:	ea000008 	b	384 <memset+0x80>
     360:	e51b3008 	ldr	r3, [fp, #-8]
     364:	e55b200d 	ldrb	r2, [fp, #-13]
     368:	e5c32000 	strb	r2, [r3]
     36c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     370:	e2433001 	sub	r3, r3, #1
     374:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     378:	e51b3008 	ldr	r3, [fp, #-8]
     37c:	e2833001 	add	r3, r3, #1
     380:	e50b3008 	str	r3, [fp, #-8]
     384:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     388:	e3530000 	cmp	r3, #0
     38c:	0a000003 	beq	3a0 <memset+0x9c>
     390:	e51b3008 	ldr	r3, [fp, #-8]
     394:	e2033003 	and	r3, r3, #3
     398:	e3530000 	cmp	r3, #0
     39c:	1affffef 	bne	360 <memset+0x5c>
     3a0:	e51b3008 	ldr	r3, [fp, #-8]
     3a4:	e50b300c 	str	r3, [fp, #-12]
     3a8:	ea000008 	b	3d0 <memset+0xcc>
     3ac:	e51b300c 	ldr	r3, [fp, #-12]
     3b0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     3b4:	e5832000 	str	r2, [r3]
     3b8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3bc:	e2433004 	sub	r3, r3, #4
     3c0:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     3c4:	e51b300c 	ldr	r3, [fp, #-12]
     3c8:	e2833004 	add	r3, r3, #4
     3cc:	e50b300c 	str	r3, [fp, #-12]
     3d0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3d4:	e3530003 	cmp	r3, #3
     3d8:	8afffff3 	bhi	3ac <memset+0xa8>
     3dc:	e51b300c 	ldr	r3, [fp, #-12]
     3e0:	e50b3008 	str	r3, [fp, #-8]
     3e4:	ea000008 	b	40c <memset+0x108>
     3e8:	e51b3008 	ldr	r3, [fp, #-8]
     3ec:	e55b200d 	ldrb	r2, [fp, #-13]
     3f0:	e5c32000 	strb	r2, [r3]
     3f4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3f8:	e2433001 	sub	r3, r3, #1
     3fc:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     400:	e51b3008 	ldr	r3, [fp, #-8]
     404:	e2833001 	add	r3, r3, #1
     408:	e50b3008 	str	r3, [fp, #-8]
     40c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     410:	e3530000 	cmp	r3, #0
     414:	1afffff3 	bne	3e8 <memset+0xe4>
     418:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     41c:	e1a00003 	mov	r0, r3
     420:	e28bd000 	add	sp, fp, #0
     424:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     428:	e12fff1e 	bx	lr

0000042c <strchr>:
     42c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     430:	e28db000 	add	fp, sp, #0
     434:	e24dd00c 	sub	sp, sp, #12
     438:	e50b0008 	str	r0, [fp, #-8]
     43c:	e1a03001 	mov	r3, r1
     440:	e54b3009 	strb	r3, [fp, #-9]
     444:	ea000009 	b	470 <strchr+0x44>
     448:	e51b3008 	ldr	r3, [fp, #-8]
     44c:	e5d33000 	ldrb	r3, [r3]
     450:	e55b2009 	ldrb	r2, [fp, #-9]
     454:	e1520003 	cmp	r2, r3
     458:	1a000001 	bne	464 <strchr+0x38>
     45c:	e51b3008 	ldr	r3, [fp, #-8]
     460:	ea000007 	b	484 <strchr+0x58>
     464:	e51b3008 	ldr	r3, [fp, #-8]
     468:	e2833001 	add	r3, r3, #1
     46c:	e50b3008 	str	r3, [fp, #-8]
     470:	e51b3008 	ldr	r3, [fp, #-8]
     474:	e5d33000 	ldrb	r3, [r3]
     478:	e3530000 	cmp	r3, #0
     47c:	1afffff1 	bne	448 <strchr+0x1c>
     480:	e3a03000 	mov	r3, #0
     484:	e1a00003 	mov	r0, r3
     488:	e28bd000 	add	sp, fp, #0
     48c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     490:	e12fff1e 	bx	lr

00000494 <gets>:
     494:	e92d4800 	push	{fp, lr}
     498:	e28db004 	add	fp, sp, #4
     49c:	e24dd018 	sub	sp, sp, #24
     4a0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     4a4:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     4a8:	e3a03000 	mov	r3, #0
     4ac:	e50b3008 	str	r3, [fp, #-8]
     4b0:	ea000016 	b	510 <gets+0x7c>
     4b4:	e24b300d 	sub	r3, fp, #13
     4b8:	e3a02001 	mov	r2, #1
     4bc:	e1a01003 	mov	r1, r3
     4c0:	e3a00000 	mov	r0, #0
     4c4:	eb00009b 	bl	738 <read>
     4c8:	e50b000c 	str	r0, [fp, #-12]
     4cc:	e51b300c 	ldr	r3, [fp, #-12]
     4d0:	e3530000 	cmp	r3, #0
     4d4:	da000013 	ble	528 <gets+0x94>
     4d8:	e51b3008 	ldr	r3, [fp, #-8]
     4dc:	e2832001 	add	r2, r3, #1
     4e0:	e50b2008 	str	r2, [fp, #-8]
     4e4:	e1a02003 	mov	r2, r3
     4e8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4ec:	e0833002 	add	r3, r3, r2
     4f0:	e55b200d 	ldrb	r2, [fp, #-13]
     4f4:	e5c32000 	strb	r2, [r3]
     4f8:	e55b300d 	ldrb	r3, [fp, #-13]
     4fc:	e353000a 	cmp	r3, #10
     500:	0a000009 	beq	52c <gets+0x98>
     504:	e55b300d 	ldrb	r3, [fp, #-13]
     508:	e353000d 	cmp	r3, #13
     50c:	0a000006 	beq	52c <gets+0x98>
     510:	e51b3008 	ldr	r3, [fp, #-8]
     514:	e2833001 	add	r3, r3, #1
     518:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     51c:	e1520003 	cmp	r2, r3
     520:	caffffe3 	bgt	4b4 <gets+0x20>
     524:	ea000000 	b	52c <gets+0x98>
     528:	e1a00000 	nop			@ (mov r0, r0)
     52c:	e51b3008 	ldr	r3, [fp, #-8]
     530:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     534:	e0823003 	add	r3, r2, r3
     538:	e3a02000 	mov	r2, #0
     53c:	e5c32000 	strb	r2, [r3]
     540:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     544:	e1a00003 	mov	r0, r3
     548:	e24bd004 	sub	sp, fp, #4
     54c:	e8bd8800 	pop	{fp, pc}

00000550 <stat>:
     550:	e92d4800 	push	{fp, lr}
     554:	e28db004 	add	fp, sp, #4
     558:	e24dd010 	sub	sp, sp, #16
     55c:	e50b0010 	str	r0, [fp, #-16]
     560:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     564:	e3a01000 	mov	r1, #0
     568:	e51b0010 	ldr	r0, [fp, #-16]
     56c:	eb00009e 	bl	7ec <open>
     570:	e50b0008 	str	r0, [fp, #-8]
     574:	e51b3008 	ldr	r3, [fp, #-8]
     578:	e3530000 	cmp	r3, #0
     57c:	aa000001 	bge	588 <stat+0x38>
     580:	e3e03000 	mvn	r3, #0
     584:	ea000006 	b	5a4 <stat+0x54>
     588:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     58c:	e51b0008 	ldr	r0, [fp, #-8]
     590:	eb0000b0 	bl	858 <fstat>
     594:	e50b000c 	str	r0, [fp, #-12]
     598:	e51b0008 	ldr	r0, [fp, #-8]
     59c:	eb000077 	bl	780 <close>
     5a0:	e51b300c 	ldr	r3, [fp, #-12]
     5a4:	e1a00003 	mov	r0, r3
     5a8:	e24bd004 	sub	sp, fp, #4
     5ac:	e8bd8800 	pop	{fp, pc}

000005b0 <atoi>:
     5b0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5b4:	e28db000 	add	fp, sp, #0
     5b8:	e24dd014 	sub	sp, sp, #20
     5bc:	e50b0010 	str	r0, [fp, #-16]
     5c0:	e3a03000 	mov	r3, #0
     5c4:	e50b3008 	str	r3, [fp, #-8]
     5c8:	ea00000c 	b	600 <atoi+0x50>
     5cc:	e51b2008 	ldr	r2, [fp, #-8]
     5d0:	e1a03002 	mov	r3, r2
     5d4:	e1a03103 	lsl	r3, r3, #2
     5d8:	e0833002 	add	r3, r3, r2
     5dc:	e1a03083 	lsl	r3, r3, #1
     5e0:	e1a01003 	mov	r1, r3
     5e4:	e51b3010 	ldr	r3, [fp, #-16]
     5e8:	e2832001 	add	r2, r3, #1
     5ec:	e50b2010 	str	r2, [fp, #-16]
     5f0:	e5d33000 	ldrb	r3, [r3]
     5f4:	e0813003 	add	r3, r1, r3
     5f8:	e2433030 	sub	r3, r3, #48	@ 0x30
     5fc:	e50b3008 	str	r3, [fp, #-8]
     600:	e51b3010 	ldr	r3, [fp, #-16]
     604:	e5d33000 	ldrb	r3, [r3]
     608:	e353002f 	cmp	r3, #47	@ 0x2f
     60c:	9a000003 	bls	620 <atoi+0x70>
     610:	e51b3010 	ldr	r3, [fp, #-16]
     614:	e5d33000 	ldrb	r3, [r3]
     618:	e3530039 	cmp	r3, #57	@ 0x39
     61c:	9affffea 	bls	5cc <atoi+0x1c>
     620:	e51b3008 	ldr	r3, [fp, #-8]
     624:	e1a00003 	mov	r0, r3
     628:	e28bd000 	add	sp, fp, #0
     62c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     630:	e12fff1e 	bx	lr

00000634 <memmove>:
     634:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     638:	e28db000 	add	fp, sp, #0
     63c:	e24dd01c 	sub	sp, sp, #28
     640:	e50b0010 	str	r0, [fp, #-16]
     644:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     648:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     64c:	e51b3010 	ldr	r3, [fp, #-16]
     650:	e50b3008 	str	r3, [fp, #-8]
     654:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     658:	e50b300c 	str	r3, [fp, #-12]
     65c:	ea000007 	b	680 <memmove+0x4c>
     660:	e51b200c 	ldr	r2, [fp, #-12]
     664:	e2823001 	add	r3, r2, #1
     668:	e50b300c 	str	r3, [fp, #-12]
     66c:	e51b3008 	ldr	r3, [fp, #-8]
     670:	e2831001 	add	r1, r3, #1
     674:	e50b1008 	str	r1, [fp, #-8]
     678:	e5d22000 	ldrb	r2, [r2]
     67c:	e5c32000 	strb	r2, [r3]
     680:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     684:	e2432001 	sub	r2, r3, #1
     688:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     68c:	e3530000 	cmp	r3, #0
     690:	cafffff2 	bgt	660 <memmove+0x2c>
     694:	e51b3010 	ldr	r3, [fp, #-16]
     698:	e1a00003 	mov	r0, r3
     69c:	e28bd000 	add	sp, fp, #0
     6a0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6a4:	e12fff1e 	bx	lr

000006a8 <fork>:
     6a8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6ac:	e1a04003 	mov	r4, r3
     6b0:	e1a03002 	mov	r3, r2
     6b4:	e1a02001 	mov	r2, r1
     6b8:	e1a01000 	mov	r1, r0
     6bc:	e3a00001 	mov	r0, #1
     6c0:	ef000000 	svc	0x00000000
     6c4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6c8:	e12fff1e 	bx	lr

000006cc <exit>:
     6cc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6d0:	e1a04003 	mov	r4, r3
     6d4:	e1a03002 	mov	r3, r2
     6d8:	e1a02001 	mov	r2, r1
     6dc:	e1a01000 	mov	r1, r0
     6e0:	e3a00002 	mov	r0, #2
     6e4:	ef000000 	svc	0x00000000
     6e8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6ec:	e12fff1e 	bx	lr

000006f0 <wait>:
     6f0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6f4:	e1a04003 	mov	r4, r3
     6f8:	e1a03002 	mov	r3, r2
     6fc:	e1a02001 	mov	r2, r1
     700:	e1a01000 	mov	r1, r0
     704:	e3a00003 	mov	r0, #3
     708:	ef000000 	svc	0x00000000
     70c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     710:	e12fff1e 	bx	lr

00000714 <pipe>:
     714:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     718:	e1a04003 	mov	r4, r3
     71c:	e1a03002 	mov	r3, r2
     720:	e1a02001 	mov	r2, r1
     724:	e1a01000 	mov	r1, r0
     728:	e3a00004 	mov	r0, #4
     72c:	ef000000 	svc	0x00000000
     730:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     734:	e12fff1e 	bx	lr

00000738 <read>:
     738:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     73c:	e1a04003 	mov	r4, r3
     740:	e1a03002 	mov	r3, r2
     744:	e1a02001 	mov	r2, r1
     748:	e1a01000 	mov	r1, r0
     74c:	e3a00005 	mov	r0, #5
     750:	ef000000 	svc	0x00000000
     754:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     758:	e12fff1e 	bx	lr

0000075c <write>:
     75c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     760:	e1a04003 	mov	r4, r3
     764:	e1a03002 	mov	r3, r2
     768:	e1a02001 	mov	r2, r1
     76c:	e1a01000 	mov	r1, r0
     770:	e3a00010 	mov	r0, #16
     774:	ef000000 	svc	0x00000000
     778:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     77c:	e12fff1e 	bx	lr

00000780 <close>:
     780:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     784:	e1a04003 	mov	r4, r3
     788:	e1a03002 	mov	r3, r2
     78c:	e1a02001 	mov	r2, r1
     790:	e1a01000 	mov	r1, r0
     794:	e3a00015 	mov	r0, #21
     798:	ef000000 	svc	0x00000000
     79c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7a0:	e12fff1e 	bx	lr

000007a4 <kill>:
     7a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7a8:	e1a04003 	mov	r4, r3
     7ac:	e1a03002 	mov	r3, r2
     7b0:	e1a02001 	mov	r2, r1
     7b4:	e1a01000 	mov	r1, r0
     7b8:	e3a00006 	mov	r0, #6
     7bc:	ef000000 	svc	0x00000000
     7c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7c4:	e12fff1e 	bx	lr

000007c8 <exec>:
     7c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7cc:	e1a04003 	mov	r4, r3
     7d0:	e1a03002 	mov	r3, r2
     7d4:	e1a02001 	mov	r2, r1
     7d8:	e1a01000 	mov	r1, r0
     7dc:	e3a00007 	mov	r0, #7
     7e0:	ef000000 	svc	0x00000000
     7e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7e8:	e12fff1e 	bx	lr

000007ec <open>:
     7ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7f0:	e1a04003 	mov	r4, r3
     7f4:	e1a03002 	mov	r3, r2
     7f8:	e1a02001 	mov	r2, r1
     7fc:	e1a01000 	mov	r1, r0
     800:	e3a0000f 	mov	r0, #15
     804:	ef000000 	svc	0x00000000
     808:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     80c:	e12fff1e 	bx	lr

00000810 <mknod>:
     810:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     814:	e1a04003 	mov	r4, r3
     818:	e1a03002 	mov	r3, r2
     81c:	e1a02001 	mov	r2, r1
     820:	e1a01000 	mov	r1, r0
     824:	e3a00011 	mov	r0, #17
     828:	ef000000 	svc	0x00000000
     82c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     830:	e12fff1e 	bx	lr

00000834 <unlink>:
     834:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     838:	e1a04003 	mov	r4, r3
     83c:	e1a03002 	mov	r3, r2
     840:	e1a02001 	mov	r2, r1
     844:	e1a01000 	mov	r1, r0
     848:	e3a00012 	mov	r0, #18
     84c:	ef000000 	svc	0x00000000
     850:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     854:	e12fff1e 	bx	lr

00000858 <fstat>:
     858:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     85c:	e1a04003 	mov	r4, r3
     860:	e1a03002 	mov	r3, r2
     864:	e1a02001 	mov	r2, r1
     868:	e1a01000 	mov	r1, r0
     86c:	e3a00008 	mov	r0, #8
     870:	ef000000 	svc	0x00000000
     874:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     878:	e12fff1e 	bx	lr

0000087c <link>:
     87c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     880:	e1a04003 	mov	r4, r3
     884:	e1a03002 	mov	r3, r2
     888:	e1a02001 	mov	r2, r1
     88c:	e1a01000 	mov	r1, r0
     890:	e3a00013 	mov	r0, #19
     894:	ef000000 	svc	0x00000000
     898:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     89c:	e12fff1e 	bx	lr

000008a0 <mkdir>:
     8a0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8a4:	e1a04003 	mov	r4, r3
     8a8:	e1a03002 	mov	r3, r2
     8ac:	e1a02001 	mov	r2, r1
     8b0:	e1a01000 	mov	r1, r0
     8b4:	e3a00014 	mov	r0, #20
     8b8:	ef000000 	svc	0x00000000
     8bc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8c0:	e12fff1e 	bx	lr

000008c4 <chdir>:
     8c4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8c8:	e1a04003 	mov	r4, r3
     8cc:	e1a03002 	mov	r3, r2
     8d0:	e1a02001 	mov	r2, r1
     8d4:	e1a01000 	mov	r1, r0
     8d8:	e3a00009 	mov	r0, #9
     8dc:	ef000000 	svc	0x00000000
     8e0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8e4:	e12fff1e 	bx	lr

000008e8 <dup>:
     8e8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8ec:	e1a04003 	mov	r4, r3
     8f0:	e1a03002 	mov	r3, r2
     8f4:	e1a02001 	mov	r2, r1
     8f8:	e1a01000 	mov	r1, r0
     8fc:	e3a0000a 	mov	r0, #10
     900:	ef000000 	svc	0x00000000
     904:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     908:	e12fff1e 	bx	lr

0000090c <getpid>:
     90c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     910:	e1a04003 	mov	r4, r3
     914:	e1a03002 	mov	r3, r2
     918:	e1a02001 	mov	r2, r1
     91c:	e1a01000 	mov	r1, r0
     920:	e3a0000b 	mov	r0, #11
     924:	ef000000 	svc	0x00000000
     928:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     92c:	e12fff1e 	bx	lr

00000930 <sbrk>:
     930:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     934:	e1a04003 	mov	r4, r3
     938:	e1a03002 	mov	r3, r2
     93c:	e1a02001 	mov	r2, r1
     940:	e1a01000 	mov	r1, r0
     944:	e3a0000c 	mov	r0, #12
     948:	ef000000 	svc	0x00000000
     94c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     950:	e12fff1e 	bx	lr

00000954 <sleep>:
     954:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     958:	e1a04003 	mov	r4, r3
     95c:	e1a03002 	mov	r3, r2
     960:	e1a02001 	mov	r2, r1
     964:	e1a01000 	mov	r1, r0
     968:	e3a0000d 	mov	r0, #13
     96c:	ef000000 	svc	0x00000000
     970:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     974:	e12fff1e 	bx	lr

00000978 <uptime>:
     978:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     97c:	e1a04003 	mov	r4, r3
     980:	e1a03002 	mov	r3, r2
     984:	e1a02001 	mov	r2, r1
     988:	e1a01000 	mov	r1, r0
     98c:	e3a0000e 	mov	r0, #14
     990:	ef000000 	svc	0x00000000
     994:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     998:	e12fff1e 	bx	lr

0000099c <getprocs>:
     99c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9a0:	e1a04003 	mov	r4, r3
     9a4:	e1a03002 	mov	r3, r2
     9a8:	e1a02001 	mov	r2, r1
     9ac:	e1a01000 	mov	r1, r0
     9b0:	e3a00016 	mov	r0, #22
     9b4:	ef000000 	svc	0x00000000
     9b8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9bc:	e12fff1e 	bx	lr

000009c0 <putc>:
     9c0:	e92d4800 	push	{fp, lr}
     9c4:	e28db004 	add	fp, sp, #4
     9c8:	e24dd008 	sub	sp, sp, #8
     9cc:	e50b0008 	str	r0, [fp, #-8]
     9d0:	e1a03001 	mov	r3, r1
     9d4:	e54b3009 	strb	r3, [fp, #-9]
     9d8:	e24b3009 	sub	r3, fp, #9
     9dc:	e3a02001 	mov	r2, #1
     9e0:	e1a01003 	mov	r1, r3
     9e4:	e51b0008 	ldr	r0, [fp, #-8]
     9e8:	ebffff5b 	bl	75c <write>
     9ec:	e1a00000 	nop			@ (mov r0, r0)
     9f0:	e24bd004 	sub	sp, fp, #4
     9f4:	e8bd8800 	pop	{fp, pc}

000009f8 <printint>:
     9f8:	e92d4800 	push	{fp, lr}
     9fc:	e28db004 	add	fp, sp, #4
     a00:	e24dd030 	sub	sp, sp, #48	@ 0x30
     a04:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     a08:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     a0c:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     a10:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     a14:	e3a03000 	mov	r3, #0
     a18:	e50b300c 	str	r3, [fp, #-12]
     a1c:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     a20:	e3530000 	cmp	r3, #0
     a24:	0a000008 	beq	a4c <printint+0x54>
     a28:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a2c:	e3530000 	cmp	r3, #0
     a30:	aa000005 	bge	a4c <printint+0x54>
     a34:	e3a03001 	mov	r3, #1
     a38:	e50b300c 	str	r3, [fp, #-12]
     a3c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a40:	e2633000 	rsb	r3, r3, #0
     a44:	e50b3010 	str	r3, [fp, #-16]
     a48:	ea000001 	b	a54 <printint+0x5c>
     a4c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a50:	e50b3010 	str	r3, [fp, #-16]
     a54:	e3a03000 	mov	r3, #0
     a58:	e50b3008 	str	r3, [fp, #-8]
     a5c:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     a60:	e51b3010 	ldr	r3, [fp, #-16]
     a64:	e1a01002 	mov	r1, r2
     a68:	e1a00003 	mov	r0, r3
     a6c:	eb0001d5 	bl	11c8 <__aeabi_uidivmod>
     a70:	e1a03001 	mov	r3, r1
     a74:	e1a01003 	mov	r1, r3
     a78:	e51b3008 	ldr	r3, [fp, #-8]
     a7c:	e2832001 	add	r2, r3, #1
     a80:	e50b2008 	str	r2, [fp, #-8]
     a84:	e59f20a0 	ldr	r2, [pc, #160]	@ b2c <printint+0x134>
     a88:	e7d22001 	ldrb	r2, [r2, r1]
     a8c:	e2433004 	sub	r3, r3, #4
     a90:	e083300b 	add	r3, r3, fp
     a94:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     a98:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     a9c:	e1a01003 	mov	r1, r3
     aa0:	e51b0010 	ldr	r0, [fp, #-16]
     aa4:	eb00018a 	bl	10d4 <__udivsi3>
     aa8:	e1a03000 	mov	r3, r0
     aac:	e50b3010 	str	r3, [fp, #-16]
     ab0:	e51b3010 	ldr	r3, [fp, #-16]
     ab4:	e3530000 	cmp	r3, #0
     ab8:	1affffe7 	bne	a5c <printint+0x64>
     abc:	e51b300c 	ldr	r3, [fp, #-12]
     ac0:	e3530000 	cmp	r3, #0
     ac4:	0a00000e 	beq	b04 <printint+0x10c>
     ac8:	e51b3008 	ldr	r3, [fp, #-8]
     acc:	e2832001 	add	r2, r3, #1
     ad0:	e50b2008 	str	r2, [fp, #-8]
     ad4:	e2433004 	sub	r3, r3, #4
     ad8:	e083300b 	add	r3, r3, fp
     adc:	e3a0202d 	mov	r2, #45	@ 0x2d
     ae0:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     ae4:	ea000006 	b	b04 <printint+0x10c>
     ae8:	e24b2020 	sub	r2, fp, #32
     aec:	e51b3008 	ldr	r3, [fp, #-8]
     af0:	e0823003 	add	r3, r2, r3
     af4:	e5d33000 	ldrb	r3, [r3]
     af8:	e1a01003 	mov	r1, r3
     afc:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     b00:	ebffffae 	bl	9c0 <putc>
     b04:	e51b3008 	ldr	r3, [fp, #-8]
     b08:	e2433001 	sub	r3, r3, #1
     b0c:	e50b3008 	str	r3, [fp, #-8]
     b10:	e51b3008 	ldr	r3, [fp, #-8]
     b14:	e3530000 	cmp	r3, #0
     b18:	aafffff2 	bge	ae8 <printint+0xf0>
     b1c:	e1a00000 	nop			@ (mov r0, r0)
     b20:	e1a00000 	nop			@ (mov r0, r0)
     b24:	e24bd004 	sub	sp, fp, #4
     b28:	e8bd8800 	pop	{fp, pc}
     b2c:	00001270 	.word	0x00001270

00000b30 <printf>:
     b30:	e92d000e 	push	{r1, r2, r3}
     b34:	e92d4800 	push	{fp, lr}
     b38:	e28db004 	add	fp, sp, #4
     b3c:	e24dd024 	sub	sp, sp, #36	@ 0x24
     b40:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     b44:	e3a03000 	mov	r3, #0
     b48:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     b4c:	e28b3008 	add	r3, fp, #8
     b50:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b54:	e3a03000 	mov	r3, #0
     b58:	e50b3010 	str	r3, [fp, #-16]
     b5c:	ea000074 	b	d34 <printf+0x204>
     b60:	e59b2004 	ldr	r2, [fp, #4]
     b64:	e51b3010 	ldr	r3, [fp, #-16]
     b68:	e0823003 	add	r3, r2, r3
     b6c:	e5d33000 	ldrb	r3, [r3]
     b70:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     b74:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     b78:	e3530000 	cmp	r3, #0
     b7c:	1a00000b 	bne	bb0 <printf+0x80>
     b80:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b84:	e3530025 	cmp	r3, #37	@ 0x25
     b88:	1a000002 	bne	b98 <printf+0x68>
     b8c:	e3a03025 	mov	r3, #37	@ 0x25
     b90:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     b94:	ea000063 	b	d28 <printf+0x1f8>
     b98:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b9c:	e6ef3073 	uxtb	r3, r3
     ba0:	e1a01003 	mov	r1, r3
     ba4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ba8:	ebffff84 	bl	9c0 <putc>
     bac:	ea00005d 	b	d28 <printf+0x1f8>
     bb0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     bb4:	e3530025 	cmp	r3, #37	@ 0x25
     bb8:	1a00005a 	bne	d28 <printf+0x1f8>
     bbc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bc0:	e3530064 	cmp	r3, #100	@ 0x64
     bc4:	1a00000a 	bne	bf4 <printf+0xc4>
     bc8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bcc:	e5933000 	ldr	r3, [r3]
     bd0:	e1a01003 	mov	r1, r3
     bd4:	e3a03001 	mov	r3, #1
     bd8:	e3a0200a 	mov	r2, #10
     bdc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     be0:	ebffff84 	bl	9f8 <printint>
     be4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     be8:	e2833004 	add	r3, r3, #4
     bec:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     bf0:	ea00004a 	b	d20 <printf+0x1f0>
     bf4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bf8:	e3530078 	cmp	r3, #120	@ 0x78
     bfc:	0a000002 	beq	c0c <printf+0xdc>
     c00:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c04:	e3530070 	cmp	r3, #112	@ 0x70
     c08:	1a00000a 	bne	c38 <printf+0x108>
     c0c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c10:	e5933000 	ldr	r3, [r3]
     c14:	e1a01003 	mov	r1, r3
     c18:	e3a03000 	mov	r3, #0
     c1c:	e3a02010 	mov	r2, #16
     c20:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c24:	ebffff73 	bl	9f8 <printint>
     c28:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c2c:	e2833004 	add	r3, r3, #4
     c30:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c34:	ea000039 	b	d20 <printf+0x1f0>
     c38:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c3c:	e3530073 	cmp	r3, #115	@ 0x73
     c40:	1a000018 	bne	ca8 <printf+0x178>
     c44:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c48:	e5933000 	ldr	r3, [r3]
     c4c:	e50b300c 	str	r3, [fp, #-12]
     c50:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c54:	e2833004 	add	r3, r3, #4
     c58:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c5c:	e51b300c 	ldr	r3, [fp, #-12]
     c60:	e3530000 	cmp	r3, #0
     c64:	1a00000a 	bne	c94 <printf+0x164>
     c68:	e59f30f4 	ldr	r3, [pc, #244]	@ d64 <printf+0x234>
     c6c:	e50b300c 	str	r3, [fp, #-12]
     c70:	ea000007 	b	c94 <printf+0x164>
     c74:	e51b300c 	ldr	r3, [fp, #-12]
     c78:	e5d33000 	ldrb	r3, [r3]
     c7c:	e1a01003 	mov	r1, r3
     c80:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c84:	ebffff4d 	bl	9c0 <putc>
     c88:	e51b300c 	ldr	r3, [fp, #-12]
     c8c:	e2833001 	add	r3, r3, #1
     c90:	e50b300c 	str	r3, [fp, #-12]
     c94:	e51b300c 	ldr	r3, [fp, #-12]
     c98:	e5d33000 	ldrb	r3, [r3]
     c9c:	e3530000 	cmp	r3, #0
     ca0:	1afffff3 	bne	c74 <printf+0x144>
     ca4:	ea00001d 	b	d20 <printf+0x1f0>
     ca8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cac:	e3530063 	cmp	r3, #99	@ 0x63
     cb0:	1a000009 	bne	cdc <printf+0x1ac>
     cb4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     cb8:	e5933000 	ldr	r3, [r3]
     cbc:	e6ef3073 	uxtb	r3, r3
     cc0:	e1a01003 	mov	r1, r3
     cc4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cc8:	ebffff3c 	bl	9c0 <putc>
     ccc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     cd0:	e2833004 	add	r3, r3, #4
     cd4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     cd8:	ea000010 	b	d20 <printf+0x1f0>
     cdc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ce0:	e3530025 	cmp	r3, #37	@ 0x25
     ce4:	1a000005 	bne	d00 <printf+0x1d0>
     ce8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cec:	e6ef3073 	uxtb	r3, r3
     cf0:	e1a01003 	mov	r1, r3
     cf4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cf8:	ebffff30 	bl	9c0 <putc>
     cfc:	ea000007 	b	d20 <printf+0x1f0>
     d00:	e3a01025 	mov	r1, #37	@ 0x25
     d04:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d08:	ebffff2c 	bl	9c0 <putc>
     d0c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d10:	e6ef3073 	uxtb	r3, r3
     d14:	e1a01003 	mov	r1, r3
     d18:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d1c:	ebffff27 	bl	9c0 <putc>
     d20:	e3a03000 	mov	r3, #0
     d24:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     d28:	e51b3010 	ldr	r3, [fp, #-16]
     d2c:	e2833001 	add	r3, r3, #1
     d30:	e50b3010 	str	r3, [fp, #-16]
     d34:	e59b2004 	ldr	r2, [fp, #4]
     d38:	e51b3010 	ldr	r3, [fp, #-16]
     d3c:	e0823003 	add	r3, r2, r3
     d40:	e5d33000 	ldrb	r3, [r3]
     d44:	e3530000 	cmp	r3, #0
     d48:	1affff84 	bne	b60 <printf+0x30>
     d4c:	e1a00000 	nop			@ (mov r0, r0)
     d50:	e1a00000 	nop			@ (mov r0, r0)
     d54:	e24bd004 	sub	sp, fp, #4
     d58:	e8bd4800 	pop	{fp, lr}
     d5c:	e28dd00c 	add	sp, sp, #12
     d60:	e12fff1e 	bx	lr
     d64:	00001268 	.word	0x00001268

00000d68 <free>:
     d68:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     d6c:	e28db000 	add	fp, sp, #0
     d70:	e24dd014 	sub	sp, sp, #20
     d74:	e50b0010 	str	r0, [fp, #-16]
     d78:	e51b3010 	ldr	r3, [fp, #-16]
     d7c:	e2433008 	sub	r3, r3, #8
     d80:	e50b300c 	str	r3, [fp, #-12]
     d84:	e59f3154 	ldr	r3, [pc, #340]	@ ee0 <free+0x178>
     d88:	e5933000 	ldr	r3, [r3]
     d8c:	e50b3008 	str	r3, [fp, #-8]
     d90:	ea000010 	b	dd8 <free+0x70>
     d94:	e51b3008 	ldr	r3, [fp, #-8]
     d98:	e5933000 	ldr	r3, [r3]
     d9c:	e51b2008 	ldr	r2, [fp, #-8]
     da0:	e1520003 	cmp	r2, r3
     da4:	3a000008 	bcc	dcc <free+0x64>
     da8:	e51b200c 	ldr	r2, [fp, #-12]
     dac:	e51b3008 	ldr	r3, [fp, #-8]
     db0:	e1520003 	cmp	r2, r3
     db4:	8a000010 	bhi	dfc <free+0x94>
     db8:	e51b3008 	ldr	r3, [fp, #-8]
     dbc:	e5933000 	ldr	r3, [r3]
     dc0:	e51b200c 	ldr	r2, [fp, #-12]
     dc4:	e1520003 	cmp	r2, r3
     dc8:	3a00000b 	bcc	dfc <free+0x94>
     dcc:	e51b3008 	ldr	r3, [fp, #-8]
     dd0:	e5933000 	ldr	r3, [r3]
     dd4:	e50b3008 	str	r3, [fp, #-8]
     dd8:	e51b200c 	ldr	r2, [fp, #-12]
     ddc:	e51b3008 	ldr	r3, [fp, #-8]
     de0:	e1520003 	cmp	r2, r3
     de4:	9affffea 	bls	d94 <free+0x2c>
     de8:	e51b3008 	ldr	r3, [fp, #-8]
     dec:	e5933000 	ldr	r3, [r3]
     df0:	e51b200c 	ldr	r2, [fp, #-12]
     df4:	e1520003 	cmp	r2, r3
     df8:	2affffe5 	bcs	d94 <free+0x2c>
     dfc:	e51b300c 	ldr	r3, [fp, #-12]
     e00:	e5933004 	ldr	r3, [r3, #4]
     e04:	e1a03183 	lsl	r3, r3, #3
     e08:	e51b200c 	ldr	r2, [fp, #-12]
     e0c:	e0822003 	add	r2, r2, r3
     e10:	e51b3008 	ldr	r3, [fp, #-8]
     e14:	e5933000 	ldr	r3, [r3]
     e18:	e1520003 	cmp	r2, r3
     e1c:	1a00000d 	bne	e58 <free+0xf0>
     e20:	e51b300c 	ldr	r3, [fp, #-12]
     e24:	e5932004 	ldr	r2, [r3, #4]
     e28:	e51b3008 	ldr	r3, [fp, #-8]
     e2c:	e5933000 	ldr	r3, [r3]
     e30:	e5933004 	ldr	r3, [r3, #4]
     e34:	e0822003 	add	r2, r2, r3
     e38:	e51b300c 	ldr	r3, [fp, #-12]
     e3c:	e5832004 	str	r2, [r3, #4]
     e40:	e51b3008 	ldr	r3, [fp, #-8]
     e44:	e5933000 	ldr	r3, [r3]
     e48:	e5932000 	ldr	r2, [r3]
     e4c:	e51b300c 	ldr	r3, [fp, #-12]
     e50:	e5832000 	str	r2, [r3]
     e54:	ea000003 	b	e68 <free+0x100>
     e58:	e51b3008 	ldr	r3, [fp, #-8]
     e5c:	e5932000 	ldr	r2, [r3]
     e60:	e51b300c 	ldr	r3, [fp, #-12]
     e64:	e5832000 	str	r2, [r3]
     e68:	e51b3008 	ldr	r3, [fp, #-8]
     e6c:	e5933004 	ldr	r3, [r3, #4]
     e70:	e1a03183 	lsl	r3, r3, #3
     e74:	e51b2008 	ldr	r2, [fp, #-8]
     e78:	e0823003 	add	r3, r2, r3
     e7c:	e51b200c 	ldr	r2, [fp, #-12]
     e80:	e1520003 	cmp	r2, r3
     e84:	1a00000b 	bne	eb8 <free+0x150>
     e88:	e51b3008 	ldr	r3, [fp, #-8]
     e8c:	e5932004 	ldr	r2, [r3, #4]
     e90:	e51b300c 	ldr	r3, [fp, #-12]
     e94:	e5933004 	ldr	r3, [r3, #4]
     e98:	e0822003 	add	r2, r2, r3
     e9c:	e51b3008 	ldr	r3, [fp, #-8]
     ea0:	e5832004 	str	r2, [r3, #4]
     ea4:	e51b300c 	ldr	r3, [fp, #-12]
     ea8:	e5932000 	ldr	r2, [r3]
     eac:	e51b3008 	ldr	r3, [fp, #-8]
     eb0:	e5832000 	str	r2, [r3]
     eb4:	ea000002 	b	ec4 <free+0x15c>
     eb8:	e51b3008 	ldr	r3, [fp, #-8]
     ebc:	e51b200c 	ldr	r2, [fp, #-12]
     ec0:	e5832000 	str	r2, [r3]
     ec4:	e59f2014 	ldr	r2, [pc, #20]	@ ee0 <free+0x178>
     ec8:	e51b3008 	ldr	r3, [fp, #-8]
     ecc:	e5823000 	str	r3, [r2]
     ed0:	e1a00000 	nop			@ (mov r0, r0)
     ed4:	e28bd000 	add	sp, fp, #0
     ed8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     edc:	e12fff1e 	bx	lr
     ee0:	0000128c 	.word	0x0000128c

00000ee4 <morecore>:
     ee4:	e92d4800 	push	{fp, lr}
     ee8:	e28db004 	add	fp, sp, #4
     eec:	e24dd010 	sub	sp, sp, #16
     ef0:	e50b0010 	str	r0, [fp, #-16]
     ef4:	e51b3010 	ldr	r3, [fp, #-16]
     ef8:	e3530a01 	cmp	r3, #4096	@ 0x1000
     efc:	2a000001 	bcs	f08 <morecore+0x24>
     f00:	e3a03a01 	mov	r3, #4096	@ 0x1000
     f04:	e50b3010 	str	r3, [fp, #-16]
     f08:	e51b3010 	ldr	r3, [fp, #-16]
     f0c:	e1a03183 	lsl	r3, r3, #3
     f10:	e1a00003 	mov	r0, r3
     f14:	ebfffe85 	bl	930 <sbrk>
     f18:	e50b0008 	str	r0, [fp, #-8]
     f1c:	e51b3008 	ldr	r3, [fp, #-8]
     f20:	e3730001 	cmn	r3, #1
     f24:	1a000001 	bne	f30 <morecore+0x4c>
     f28:	e3a03000 	mov	r3, #0
     f2c:	ea00000a 	b	f5c <morecore+0x78>
     f30:	e51b3008 	ldr	r3, [fp, #-8]
     f34:	e50b300c 	str	r3, [fp, #-12]
     f38:	e51b300c 	ldr	r3, [fp, #-12]
     f3c:	e51b2010 	ldr	r2, [fp, #-16]
     f40:	e5832004 	str	r2, [r3, #4]
     f44:	e51b300c 	ldr	r3, [fp, #-12]
     f48:	e2833008 	add	r3, r3, #8
     f4c:	e1a00003 	mov	r0, r3
     f50:	ebffff84 	bl	d68 <free>
     f54:	e59f300c 	ldr	r3, [pc, #12]	@ f68 <morecore+0x84>
     f58:	e5933000 	ldr	r3, [r3]
     f5c:	e1a00003 	mov	r0, r3
     f60:	e24bd004 	sub	sp, fp, #4
     f64:	e8bd8800 	pop	{fp, pc}
     f68:	0000128c 	.word	0x0000128c

00000f6c <malloc>:
     f6c:	e92d4800 	push	{fp, lr}
     f70:	e28db004 	add	fp, sp, #4
     f74:	e24dd018 	sub	sp, sp, #24
     f78:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     f7c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f80:	e2833007 	add	r3, r3, #7
     f84:	e1a031a3 	lsr	r3, r3, #3
     f88:	e2833001 	add	r3, r3, #1
     f8c:	e50b3010 	str	r3, [fp, #-16]
     f90:	e59f3134 	ldr	r3, [pc, #308]	@ 10cc <malloc+0x160>
     f94:	e5933000 	ldr	r3, [r3]
     f98:	e50b300c 	str	r3, [fp, #-12]
     f9c:	e51b300c 	ldr	r3, [fp, #-12]
     fa0:	e3530000 	cmp	r3, #0
     fa4:	1a00000b 	bne	fd8 <malloc+0x6c>
     fa8:	e59f3120 	ldr	r3, [pc, #288]	@ 10d0 <malloc+0x164>
     fac:	e50b300c 	str	r3, [fp, #-12]
     fb0:	e59f2114 	ldr	r2, [pc, #276]	@ 10cc <malloc+0x160>
     fb4:	e51b300c 	ldr	r3, [fp, #-12]
     fb8:	e5823000 	str	r3, [r2]
     fbc:	e59f3108 	ldr	r3, [pc, #264]	@ 10cc <malloc+0x160>
     fc0:	e5933000 	ldr	r3, [r3]
     fc4:	e59f2104 	ldr	r2, [pc, #260]	@ 10d0 <malloc+0x164>
     fc8:	e5823000 	str	r3, [r2]
     fcc:	e59f30fc 	ldr	r3, [pc, #252]	@ 10d0 <malloc+0x164>
     fd0:	e3a02000 	mov	r2, #0
     fd4:	e5832004 	str	r2, [r3, #4]
     fd8:	e51b300c 	ldr	r3, [fp, #-12]
     fdc:	e5933000 	ldr	r3, [r3]
     fe0:	e50b3008 	str	r3, [fp, #-8]
     fe4:	e51b3008 	ldr	r3, [fp, #-8]
     fe8:	e5933004 	ldr	r3, [r3, #4]
     fec:	e51b2010 	ldr	r2, [fp, #-16]
     ff0:	e1520003 	cmp	r2, r3
     ff4:	8a00001e 	bhi	1074 <malloc+0x108>
     ff8:	e51b3008 	ldr	r3, [fp, #-8]
     ffc:	e5933004 	ldr	r3, [r3, #4]
    1000:	e51b2010 	ldr	r2, [fp, #-16]
    1004:	e1520003 	cmp	r2, r3
    1008:	1a000004 	bne	1020 <malloc+0xb4>
    100c:	e51b3008 	ldr	r3, [fp, #-8]
    1010:	e5932000 	ldr	r2, [r3]
    1014:	e51b300c 	ldr	r3, [fp, #-12]
    1018:	e5832000 	str	r2, [r3]
    101c:	ea00000e 	b	105c <malloc+0xf0>
    1020:	e51b3008 	ldr	r3, [fp, #-8]
    1024:	e5932004 	ldr	r2, [r3, #4]
    1028:	e51b3010 	ldr	r3, [fp, #-16]
    102c:	e0422003 	sub	r2, r2, r3
    1030:	e51b3008 	ldr	r3, [fp, #-8]
    1034:	e5832004 	str	r2, [r3, #4]
    1038:	e51b3008 	ldr	r3, [fp, #-8]
    103c:	e5933004 	ldr	r3, [r3, #4]
    1040:	e1a03183 	lsl	r3, r3, #3
    1044:	e51b2008 	ldr	r2, [fp, #-8]
    1048:	e0823003 	add	r3, r2, r3
    104c:	e50b3008 	str	r3, [fp, #-8]
    1050:	e51b3008 	ldr	r3, [fp, #-8]
    1054:	e51b2010 	ldr	r2, [fp, #-16]
    1058:	e5832004 	str	r2, [r3, #4]
    105c:	e59f2068 	ldr	r2, [pc, #104]	@ 10cc <malloc+0x160>
    1060:	e51b300c 	ldr	r3, [fp, #-12]
    1064:	e5823000 	str	r3, [r2]
    1068:	e51b3008 	ldr	r3, [fp, #-8]
    106c:	e2833008 	add	r3, r3, #8
    1070:	ea000012 	b	10c0 <malloc+0x154>
    1074:	e59f3050 	ldr	r3, [pc, #80]	@ 10cc <malloc+0x160>
    1078:	e5933000 	ldr	r3, [r3]
    107c:	e51b2008 	ldr	r2, [fp, #-8]
    1080:	e1520003 	cmp	r2, r3
    1084:	1a000007 	bne	10a8 <malloc+0x13c>
    1088:	e51b0010 	ldr	r0, [fp, #-16]
    108c:	ebffff94 	bl	ee4 <morecore>
    1090:	e50b0008 	str	r0, [fp, #-8]
    1094:	e51b3008 	ldr	r3, [fp, #-8]
    1098:	e3530000 	cmp	r3, #0
    109c:	1a000001 	bne	10a8 <malloc+0x13c>
    10a0:	e3a03000 	mov	r3, #0
    10a4:	ea000005 	b	10c0 <malloc+0x154>
    10a8:	e51b3008 	ldr	r3, [fp, #-8]
    10ac:	e50b300c 	str	r3, [fp, #-12]
    10b0:	e51b3008 	ldr	r3, [fp, #-8]
    10b4:	e5933000 	ldr	r3, [r3]
    10b8:	e50b3008 	str	r3, [fp, #-8]
    10bc:	eaffffc8 	b	fe4 <malloc+0x78>
    10c0:	e1a00003 	mov	r0, r3
    10c4:	e24bd004 	sub	sp, fp, #4
    10c8:	e8bd8800 	pop	{fp, pc}
    10cc:	0000128c 	.word	0x0000128c
    10d0:	00001284 	.word	0x00001284

000010d4 <__udivsi3>:
    10d4:	e2512001 	subs	r2, r1, #1
    10d8:	012fff1e 	bxeq	lr
    10dc:	3a000036 	bcc	11bc <__udivsi3+0xe8>
    10e0:	e1500001 	cmp	r0, r1
    10e4:	9a000022 	bls	1174 <__udivsi3+0xa0>
    10e8:	e1110002 	tst	r1, r2
    10ec:	0a000023 	beq	1180 <__udivsi3+0xac>
    10f0:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    10f4:	01a01181 	lsleq	r1, r1, #3
    10f8:	03a03008 	moveq	r3, #8
    10fc:	13a03001 	movne	r3, #1
    1100:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1104:	31510000 	cmpcc	r1, r0
    1108:	31a01201 	lslcc	r1, r1, #4
    110c:	31a03203 	lslcc	r3, r3, #4
    1110:	3afffffa 	bcc	1100 <__udivsi3+0x2c>
    1114:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1118:	31510000 	cmpcc	r1, r0
    111c:	31a01081 	lslcc	r1, r1, #1
    1120:	31a03083 	lslcc	r3, r3, #1
    1124:	3afffffa 	bcc	1114 <__udivsi3+0x40>
    1128:	e3a02000 	mov	r2, #0
    112c:	e1500001 	cmp	r0, r1
    1130:	20400001 	subcs	r0, r0, r1
    1134:	21822003 	orrcs	r2, r2, r3
    1138:	e15000a1 	cmp	r0, r1, lsr #1
    113c:	204000a1 	subcs	r0, r0, r1, lsr #1
    1140:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1144:	e1500121 	cmp	r0, r1, lsr #2
    1148:	20400121 	subcs	r0, r0, r1, lsr #2
    114c:	21822123 	orrcs	r2, r2, r3, lsr #2
    1150:	e15001a1 	cmp	r0, r1, lsr #3
    1154:	204001a1 	subcs	r0, r0, r1, lsr #3
    1158:	218221a3 	orrcs	r2, r2, r3, lsr #3
    115c:	e3500000 	cmp	r0, #0
    1160:	11b03223 	lsrsne	r3, r3, #4
    1164:	11a01221 	lsrne	r1, r1, #4
    1168:	1affffef 	bne	112c <__udivsi3+0x58>
    116c:	e1a00002 	mov	r0, r2
    1170:	e12fff1e 	bx	lr
    1174:	03a00001 	moveq	r0, #1
    1178:	13a00000 	movne	r0, #0
    117c:	e12fff1e 	bx	lr
    1180:	e3510801 	cmp	r1, #65536	@ 0x10000
    1184:	21a01821 	lsrcs	r1, r1, #16
    1188:	23a02010 	movcs	r2, #16
    118c:	33a02000 	movcc	r2, #0
    1190:	e3510c01 	cmp	r1, #256	@ 0x100
    1194:	21a01421 	lsrcs	r1, r1, #8
    1198:	22822008 	addcs	r2, r2, #8
    119c:	e3510010 	cmp	r1, #16
    11a0:	21a01221 	lsrcs	r1, r1, #4
    11a4:	22822004 	addcs	r2, r2, #4
    11a8:	e3510004 	cmp	r1, #4
    11ac:	82822003 	addhi	r2, r2, #3
    11b0:	908220a1 	addls	r2, r2, r1, lsr #1
    11b4:	e1a00230 	lsr	r0, r0, r2
    11b8:	e12fff1e 	bx	lr
    11bc:	e3500000 	cmp	r0, #0
    11c0:	13e00000 	mvnne	r0, #0
    11c4:	ea000007 	b	11e8 <__aeabi_idiv0>

000011c8 <__aeabi_uidivmod>:
    11c8:	e3510000 	cmp	r1, #0
    11cc:	0afffffa 	beq	11bc <__udivsi3+0xe8>
    11d0:	e92d4003 	push	{r0, r1, lr}
    11d4:	ebffffbe 	bl	10d4 <__udivsi3>
    11d8:	e8bd4006 	pop	{r1, r2, lr}
    11dc:	e0030092 	mul	r3, r2, r0
    11e0:	e0411003 	sub	r1, r1, r3
    11e4:	e12fff1e 	bx	lr

000011e8 <__aeabi_idiv0>:
    11e8:	e12fff1e 	bx	lr
