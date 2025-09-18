
_sh:     file format elf32-littlearm


Disassembly of section .text:

00000000 <runcmd>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd028 	sub	sp, sp, #40	@ 0x28
       c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
      10:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
      14:	e3530000 	cmp	r3, #0
      18:	1a000000 	bne	20 <runcmd+0x20>
      1c:	eb00068a 	bl	1a4c <exit>
      20:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
      24:	e5933000 	ldr	r3, [r3]
      28:	e2432001 	sub	r2, r3, #1
      2c:	e59f3224 	ldr	r3, [pc, #548]	@ 258 <runcmd+0x258>
      30:	e3520004 	cmp	r2, #4
      34:	8a000001 	bhi	40 <runcmd+0x40>
      38:	e793f102 	ldr	pc, [r3, r2, lsl #2]
      3c:	e1a00000 	nop			@ (mov r0, r0)
      40:	e59f0214 	ldr	r0, [pc, #532]	@ 25c <runcmd+0x25c>
      44:	eb000240 	bl	94c <panic>
      48:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
      4c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
      50:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
      54:	e5933004 	ldr	r3, [r3, #4]
      58:	e3530000 	cmp	r3, #0
      5c:	1a000000 	bne	64 <runcmd+0x64>
      60:	eb000679 	bl	1a4c <exit>
      64:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
      68:	e5932004 	ldr	r2, [r3, #4]
      6c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
      70:	e2833004 	add	r3, r3, #4
      74:	e1a01003 	mov	r1, r3
      78:	e1a00002 	mov	r0, r2
      7c:	eb0006b1 	bl	1b48 <exec>
      80:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
      84:	e5933004 	ldr	r3, [r3, #4]
      88:	e1a02003 	mov	r2, r3
      8c:	e59f11cc 	ldr	r1, [pc, #460]	@ 260 <runcmd+0x260>
      90:	e3a00002 	mov	r0, #2
      94:	eb000785 	bl	1eb0 <printf>
      98:	ea00006d 	b	254 <runcmd+0x254>
      9c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
      a0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      a4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      a8:	e5933014 	ldr	r3, [r3, #20]
      ac:	e1a00003 	mov	r0, r3
      b0:	eb000692 	bl	1b00 <close>
      b4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      b8:	e5932008 	ldr	r2, [r3, #8]
      bc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      c0:	e5933010 	ldr	r3, [r3, #16]
      c4:	e1a01003 	mov	r1, r3
      c8:	e1a00002 	mov	r0, r2
      cc:	eb0006a6 	bl	1b6c <open>
      d0:	e1a03000 	mov	r3, r0
      d4:	e3530000 	cmp	r3, #0
      d8:	aa000006 	bge	f8 <runcmd+0xf8>
      dc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      e0:	e5933008 	ldr	r3, [r3, #8]
      e4:	e1a02003 	mov	r2, r3
      e8:	e59f1174 	ldr	r1, [pc, #372]	@ 264 <runcmd+0x264>
      ec:	e3a00002 	mov	r0, #2
      f0:	eb00076e 	bl	1eb0 <printf>
      f4:	eb000654 	bl	1a4c <exit>
      f8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      fc:	e5933004 	ldr	r3, [r3, #4]
     100:	e1a00003 	mov	r0, r3
     104:	ebffffbd 	bl	0 <runcmd>
     108:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
     10c:	e50b300c 	str	r3, [fp, #-12]
     110:	eb000217 	bl	974 <fork1>
     114:	e1a03000 	mov	r3, r0
     118:	e3530000 	cmp	r3, #0
     11c:	1a000003 	bne	130 <runcmd+0x130>
     120:	e51b300c 	ldr	r3, [fp, #-12]
     124:	e5933004 	ldr	r3, [r3, #4]
     128:	e1a00003 	mov	r0, r3
     12c:	ebffffb3 	bl	0 <runcmd>
     130:	eb00064e 	bl	1a70 <wait>
     134:	e51b300c 	ldr	r3, [fp, #-12]
     138:	e5933008 	ldr	r3, [r3, #8]
     13c:	e1a00003 	mov	r0, r3
     140:	ebffffae 	bl	0 <runcmd>
     144:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
     148:	e50b3010 	str	r3, [fp, #-16]
     14c:	e24b3020 	sub	r3, fp, #32
     150:	e1a00003 	mov	r0, r3
     154:	eb00064e 	bl	1a94 <pipe>
     158:	e1a03000 	mov	r3, r0
     15c:	e3530000 	cmp	r3, #0
     160:	aa000001 	bge	16c <runcmd+0x16c>
     164:	e59f00fc 	ldr	r0, [pc, #252]	@ 268 <runcmd+0x268>
     168:	eb0001f7 	bl	94c <panic>
     16c:	eb000200 	bl	974 <fork1>
     170:	e1a03000 	mov	r3, r0
     174:	e3530000 	cmp	r3, #0
     178:	1a00000e 	bne	1b8 <runcmd+0x1b8>
     17c:	e3a00001 	mov	r0, #1
     180:	eb00065e 	bl	1b00 <close>
     184:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     188:	e1a00003 	mov	r0, r3
     18c:	eb0006b5 	bl	1c68 <dup>
     190:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     194:	e1a00003 	mov	r0, r3
     198:	eb000658 	bl	1b00 <close>
     19c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     1a0:	e1a00003 	mov	r0, r3
     1a4:	eb000655 	bl	1b00 <close>
     1a8:	e51b3010 	ldr	r3, [fp, #-16]
     1ac:	e5933004 	ldr	r3, [r3, #4]
     1b0:	e1a00003 	mov	r0, r3
     1b4:	ebffff91 	bl	0 <runcmd>
     1b8:	eb0001ed 	bl	974 <fork1>
     1bc:	e1a03000 	mov	r3, r0
     1c0:	e3530000 	cmp	r3, #0
     1c4:	1a00000e 	bne	204 <runcmd+0x204>
     1c8:	e3a00000 	mov	r0, #0
     1cc:	eb00064b 	bl	1b00 <close>
     1d0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     1d4:	e1a00003 	mov	r0, r3
     1d8:	eb0006a2 	bl	1c68 <dup>
     1dc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     1e0:	e1a00003 	mov	r0, r3
     1e4:	eb000645 	bl	1b00 <close>
     1e8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     1ec:	e1a00003 	mov	r0, r3
     1f0:	eb000642 	bl	1b00 <close>
     1f4:	e51b3010 	ldr	r3, [fp, #-16]
     1f8:	e5933008 	ldr	r3, [r3, #8]
     1fc:	e1a00003 	mov	r0, r3
     200:	ebffff7e 	bl	0 <runcmd>
     204:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     208:	e1a00003 	mov	r0, r3
     20c:	eb00063b 	bl	1b00 <close>
     210:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     214:	e1a00003 	mov	r0, r3
     218:	eb000638 	bl	1b00 <close>
     21c:	eb000613 	bl	1a70 <wait>
     220:	eb000612 	bl	1a70 <wait>
     224:	ea00000a 	b	254 <runcmd+0x254>
     228:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
     22c:	e50b3008 	str	r3, [fp, #-8]
     230:	eb0001cf 	bl	974 <fork1>
     234:	e1a03000 	mov	r3, r0
     238:	e3530000 	cmp	r3, #0
     23c:	1a000003 	bne	250 <runcmd+0x250>
     240:	e51b3008 	ldr	r3, [fp, #-8]
     244:	e5933004 	ldr	r3, [r3, #4]
     248:	e1a00003 	mov	r0, r3
     24c:	ebffff6b 	bl	0 <runcmd>
     250:	e1a00000 	nop			@ (mov r0, r0)
     254:	eb0005fc 	bl	1a4c <exit>
     258:	0000259c 	.word	0x0000259c
     25c:	0000256c 	.word	0x0000256c
     260:	00002574 	.word	0x00002574
     264:	00002584 	.word	0x00002584
     268:	00002594 	.word	0x00002594

0000026c <getcmd>:
     26c:	e92d4800 	push	{fp, lr}
     270:	e28db004 	add	fp, sp, #4
     274:	e24dd088 	sub	sp, sp, #136	@ 0x88
     278:	e50b0088 	str	r0, [fp, #-136]	@ 0xffffff78
     27c:	e50b108c 	str	r1, [fp, #-140]	@ 0xffffff74
     280:	e59f3570 	ldr	r3, [pc, #1392]	@ 7f8 <getcmd+0x58c>
     284:	e5933000 	ldr	r3, [r3]
     288:	e3530000 	cmp	r3, #0
     28c:	0a000002 	beq	29c <getcmd+0x30>
     290:	e59f1564 	ldr	r1, [pc, #1380]	@ 7fc <getcmd+0x590>
     294:	e3a00002 	mov	r0, #2
     298:	eb000704 	bl	1eb0 <printf>
     29c:	e51b308c 	ldr	r3, [fp, #-140]	@ 0xffffff74
     2a0:	e1a02003 	mov	r2, r3
     2a4:	e3a01000 	mov	r1, #0
     2a8:	e51b0088 	ldr	r0, [fp, #-136]	@ 0xffffff78
     2ac:	eb0004f4 	bl	1684 <memset>
     2b0:	e51b108c 	ldr	r1, [fp, #-140]	@ 0xffffff74
     2b4:	e51b0088 	ldr	r0, [fp, #-136]	@ 0xffffff78
     2b8:	eb000555 	bl	1814 <gets>
     2bc:	e51b3088 	ldr	r3, [fp, #-136]	@ 0xffffff78
     2c0:	e5d33000 	ldrb	r3, [r3]
     2c4:	e3530000 	cmp	r3, #0
     2c8:	1a000001 	bne	2d4 <getcmd+0x68>
     2cc:	e3e03000 	mvn	r3, #0
     2d0:	ea000145 	b	7ec <getcmd+0x580>
     2d4:	e51b0088 	ldr	r0, [fp, #-136]	@ 0xffffff78
     2d8:	eb0004d4 	bl	1630 <strlen>
     2dc:	e1a03000 	mov	r3, r0
     2e0:	e50b3008 	str	r3, [fp, #-8]
     2e4:	e51b3008 	ldr	r3, [fp, #-8]
     2e8:	e3530000 	cmp	r3, #0
     2ec:	da00000e 	ble	32c <getcmd+0xc0>
     2f0:	e51b3008 	ldr	r3, [fp, #-8]
     2f4:	e2433001 	sub	r3, r3, #1
     2f8:	e51b2088 	ldr	r2, [fp, #-136]	@ 0xffffff78
     2fc:	e0823003 	add	r3, r2, r3
     300:	e5d33000 	ldrb	r3, [r3]
     304:	e353000a 	cmp	r3, #10
     308:	1a000007 	bne	32c <getcmd+0xc0>
     30c:	e51b3008 	ldr	r3, [fp, #-8]
     310:	e2433001 	sub	r3, r3, #1
     314:	e50b3008 	str	r3, [fp, #-8]
     318:	e51b3008 	ldr	r3, [fp, #-8]
     31c:	e51b2088 	ldr	r2, [fp, #-136]	@ 0xffffff78
     320:	e0823003 	add	r3, r2, r3
     324:	e3a02000 	mov	r2, #0
     328:	e5c32000 	strb	r2, [r3]
     32c:	e3e03000 	mvn	r3, #0
     330:	e50b300c 	str	r3, [fp, #-12]
     334:	e3a03000 	mov	r3, #0
     338:	e50b3010 	str	r3, [fp, #-16]
     33c:	ea00000a 	b	36c <getcmd+0x100>
     340:	e51b3010 	ldr	r3, [fp, #-16]
     344:	e51b2088 	ldr	r2, [fp, #-136]	@ 0xffffff78
     348:	e0823003 	add	r3, r2, r3
     34c:	e5d33000 	ldrb	r3, [r3]
     350:	e3530009 	cmp	r3, #9
     354:	1a000001 	bne	360 <getcmd+0xf4>
     358:	e51b3010 	ldr	r3, [fp, #-16]
     35c:	e50b300c 	str	r3, [fp, #-12]
     360:	e51b3010 	ldr	r3, [fp, #-16]
     364:	e2833001 	add	r3, r3, #1
     368:	e50b3010 	str	r3, [fp, #-16]
     36c:	e51b2010 	ldr	r2, [fp, #-16]
     370:	e51b3008 	ldr	r3, [fp, #-8]
     374:	e1520003 	cmp	r2, r3
     378:	bafffff0 	blt	340 <getcmd+0xd4>
     37c:	e51b300c 	ldr	r3, [fp, #-12]
     380:	e3530000 	cmp	r3, #0
     384:	ba000114 	blt	7dc <getcmd+0x570>
     388:	e51b300c 	ldr	r3, [fp, #-12]
     38c:	e51b2088 	ldr	r2, [fp, #-136]	@ 0xffffff78
     390:	e0823003 	add	r3, r2, r3
     394:	e3a02000 	mov	r2, #0
     398:	e5c32000 	strb	r2, [r3]
     39c:	e51b3088 	ldr	r3, [fp, #-136]	@ 0xffffff78
     3a0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     3a4:	ea000002 	b	3b4 <getcmd+0x148>
     3a8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     3ac:	e2833001 	add	r3, r3, #1
     3b0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     3b4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     3b8:	e5d33000 	ldrb	r3, [r3]
     3bc:	e3530000 	cmp	r3, #0
     3c0:	0a000003 	beq	3d4 <getcmd+0x168>
     3c4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     3c8:	e5d33000 	ldrb	r3, [r3]
     3cc:	e3530020 	cmp	r3, #32
     3d0:	0afffff4 	beq	3a8 <getcmd+0x13c>
     3d4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     3d8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     3dc:	ea000002 	b	3ec <getcmd+0x180>
     3e0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3e4:	e2833001 	add	r3, r3, #1
     3e8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     3ec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3f0:	e5d33000 	ldrb	r3, [r3]
     3f4:	e3530000 	cmp	r3, #0
     3f8:	0a000007 	beq	41c <getcmd+0x1b0>
     3fc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     400:	e5d33000 	ldrb	r3, [r3]
     404:	e3530020 	cmp	r3, #32
     408:	0a000003 	beq	41c <getcmd+0x1b0>
     40c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     410:	e5d33000 	ldrb	r3, [r3]
     414:	e353000a 	cmp	r3, #10
     418:	1afffff0 	bne	3e0 <getcmd+0x174>
     41c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     420:	e5d33000 	ldrb	r3, [r3]
     424:	e54b3031 	strb	r3, [fp, #-49]	@ 0xffffffcf
     428:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     42c:	e3a02000 	mov	r2, #0
     430:	e5c32000 	strb	r2, [r3]
     434:	e3a01000 	mov	r1, #0
     438:	e59f03c0 	ldr	r0, [pc, #960]	@ 800 <getcmd+0x594>
     43c:	eb0005ca 	bl	1b6c <open>
     440:	e50b0038 	str	r0, [fp, #-56]	@ 0xffffffc8
     444:	e3a03000 	mov	r3, #0
     448:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     44c:	ea00003b 	b	540 <getcmd+0x2d4>
     450:	e15b35b0 	ldrh	r3, [fp, #-80]	@ 0xffffffb0
     454:	e3530000 	cmp	r3, #0
     458:	0a000035 	beq	534 <getcmd+0x2c8>
     45c:	e3a03001 	mov	r3, #1
     460:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     464:	e3a03000 	mov	r3, #0
     468:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
     46c:	ea000015 	b	4c8 <getcmd+0x25c>
     470:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
     474:	e353000d 	cmp	r3, #13
     478:	da000002 	ble	488 <getcmd+0x21c>
     47c:	e3a03000 	mov	r3, #0
     480:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     484:	ea000015 	b	4e0 <getcmd+0x274>
     488:	e24b204e 	sub	r2, fp, #78	@ 0x4e
     48c:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
     490:	e0823003 	add	r3, r2, r3
     494:	e5d32000 	ldrb	r2, [r3]
     498:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
     49c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     4a0:	e0813003 	add	r3, r1, r3
     4a4:	e5d33000 	ldrb	r3, [r3]
     4a8:	e1520003 	cmp	r2, r3
     4ac:	0a000002 	beq	4bc <getcmd+0x250>
     4b0:	e3a03000 	mov	r3, #0
     4b4:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     4b8:	ea000008 	b	4e0 <getcmd+0x274>
     4bc:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
     4c0:	e2833001 	add	r3, r3, #1
     4c4:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
     4c8:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
     4cc:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     4d0:	e0823003 	add	r3, r2, r3
     4d4:	e5d33000 	ldrb	r3, [r3]
     4d8:	e3530000 	cmp	r3, #0
     4dc:	1affffe3 	bne	470 <getcmd+0x204>
     4e0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     4e4:	e3530000 	cmp	r3, #0
     4e8:	0a000013 	beq	53c <getcmd+0x2d0>
     4ec:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     4f0:	e3530000 	cmp	r3, #0
     4f4:	1a00000a 	bne	524 <getcmd+0x2b8>
     4f8:	e24b3060 	sub	r3, fp, #96	@ 0x60
     4fc:	e3a0200f 	mov	r2, #15
     500:	e3a01000 	mov	r1, #0
     504:	e1a00003 	mov	r0, r3
     508:	eb00045d 	bl	1684 <memset>
     50c:	e24b3050 	sub	r3, fp, #80	@ 0x50
     510:	e2831002 	add	r1, r3, #2
     514:	e24b3060 	sub	r3, fp, #96	@ 0x60
     518:	e3a0200e 	mov	r2, #14
     51c:	e1a00003 	mov	r0, r3
     520:	eb000523 	bl	19b4 <memmove>
     524:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     528:	e2833001 	add	r3, r3, #1
     52c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     530:	ea000002 	b	540 <getcmd+0x2d4>
     534:	e1a00000 	nop			@ (mov r0, r0)
     538:	ea000000 	b	540 <getcmd+0x2d4>
     53c:	e1a00000 	nop			@ (mov r0, r0)
     540:	e24b3050 	sub	r3, fp, #80	@ 0x50
     544:	e3a02010 	mov	r2, #16
     548:	e1a01003 	mov	r1, r3
     54c:	e51b0038 	ldr	r0, [fp, #-56]	@ 0xffffffc8
     550:	eb000558 	bl	1ab8 <read>
     554:	e1a03000 	mov	r3, r0
     558:	e3530010 	cmp	r3, #16
     55c:	0affffbb 	beq	450 <getcmd+0x1e4>
     560:	e51b0038 	ldr	r0, [fp, #-56]	@ 0xffffffc8
     564:	eb000565 	bl	1b00 <close>
     568:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     56c:	e55b2031 	ldrb	r2, [fp, #-49]	@ 0xffffffcf
     570:	e5c32000 	strb	r2, [r3]
     574:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     578:	e3530001 	cmp	r3, #1
     57c:	1a000023 	bne	610 <getcmd+0x3a4>
     580:	e3a03000 	mov	r3, #0
     584:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
     588:	ea000002 	b	598 <getcmd+0x32c>
     58c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
     590:	e2833001 	add	r3, r3, #1
     594:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
     598:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
     59c:	e353000d 	cmp	r3, #13
     5a0:	ca000005 	bgt	5bc <getcmd+0x350>
     5a4:	e24b2060 	sub	r2, fp, #96	@ 0x60
     5a8:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
     5ac:	e0823003 	add	r3, r2, r3
     5b0:	e5d33000 	ldrb	r3, [r3]
     5b4:	e3530000 	cmp	r3, #0
     5b8:	1afffff3 	bne	58c <getcmd+0x320>
     5bc:	e24b3060 	sub	r3, fp, #96	@ 0x60
     5c0:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
     5c4:	e1a01003 	mov	r1, r3
     5c8:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
     5cc:	eb0004f8 	bl	19b4 <memmove>
     5d0:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
     5d4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     5d8:	e0823003 	add	r3, r2, r3
     5dc:	e3a02020 	mov	r2, #32
     5e0:	e5c32000 	strb	r2, [r3]
     5e4:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
     5e8:	e2833001 	add	r3, r3, #1
     5ec:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     5f0:	e0823003 	add	r3, r2, r3
     5f4:	e3a02000 	mov	r2, #0
     5f8:	e5c32000 	strb	r2, [r3]
     5fc:	e51b2088 	ldr	r2, [fp, #-136]	@ 0xffffff78
     600:	e59f11fc 	ldr	r1, [pc, #508]	@ 804 <getcmd+0x598>
     604:	e3a00002 	mov	r0, #2
     608:	eb000628 	bl	1eb0 <printf>
     60c:	ea000059 	b	778 <getcmd+0x50c>
     610:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     614:	e3530001 	cmp	r3, #1
     618:	da000052 	ble	768 <getcmd+0x4fc>
     61c:	e59f11e4 	ldr	r1, [pc, #484]	@ 808 <getcmd+0x59c>
     620:	e3a00001 	mov	r0, #1
     624:	eb000621 	bl	1eb0 <printf>
     628:	e3a01000 	mov	r1, #0
     62c:	e59f01cc 	ldr	r0, [pc, #460]	@ 800 <getcmd+0x594>
     630:	eb00054d 	bl	1b6c <open>
     634:	e50b003c 	str	r0, [fp, #-60]	@ 0xffffffc4
     638:	ea000038 	b	720 <getcmd+0x4b4>
     63c:	e15b37b0 	ldrh	r3, [fp, #-112]	@ 0xffffff90
     640:	e3530000 	cmp	r3, #0
     644:	0a000034 	beq	71c <getcmd+0x4b0>
     648:	e3a03001 	mov	r3, #1
     64c:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
     650:	e3a03000 	mov	r3, #0
     654:	e50b3030 	str	r3, [fp, #-48]	@ 0xffffffd0
     658:	ea000015 	b	6b4 <getcmd+0x448>
     65c:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     660:	e353000d 	cmp	r3, #13
     664:	da000002 	ble	674 <getcmd+0x408>
     668:	e3a03000 	mov	r3, #0
     66c:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
     670:	ea000015 	b	6cc <getcmd+0x460>
     674:	e24b206e 	sub	r2, fp, #110	@ 0x6e
     678:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     67c:	e0823003 	add	r3, r2, r3
     680:	e5d32000 	ldrb	r2, [r3]
     684:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     688:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     68c:	e0813003 	add	r3, r1, r3
     690:	e5d33000 	ldrb	r3, [r3]
     694:	e1520003 	cmp	r2, r3
     698:	0a000002 	beq	6a8 <getcmd+0x43c>
     69c:	e3a03000 	mov	r3, #0
     6a0:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
     6a4:	ea000008 	b	6cc <getcmd+0x460>
     6a8:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     6ac:	e2833001 	add	r3, r3, #1
     6b0:	e50b3030 	str	r3, [fp, #-48]	@ 0xffffffd0
     6b4:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     6b8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     6bc:	e0823003 	add	r3, r2, r3
     6c0:	e5d33000 	ldrb	r3, [r3]
     6c4:	e3530000 	cmp	r3, #0
     6c8:	1affffe3 	bne	65c <getcmd+0x3f0>
     6cc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     6d0:	e3530000 	cmp	r3, #0
     6d4:	0a000011 	beq	720 <getcmd+0x4b4>
     6d8:	e24b3080 	sub	r3, fp, #128	@ 0x80
     6dc:	e3a0200f 	mov	r2, #15
     6e0:	e3a01000 	mov	r1, #0
     6e4:	e1a00003 	mov	r0, r3
     6e8:	eb0003e5 	bl	1684 <memset>
     6ec:	e24b3070 	sub	r3, fp, #112	@ 0x70
     6f0:	e2831002 	add	r1, r3, #2
     6f4:	e24b3080 	sub	r3, fp, #128	@ 0x80
     6f8:	e3a0200e 	mov	r2, #14
     6fc:	e1a00003 	mov	r0, r3
     700:	eb0004ab 	bl	19b4 <memmove>
     704:	e24b3080 	sub	r3, fp, #128	@ 0x80
     708:	e1a02003 	mov	r2, r3
     70c:	e59f10f8 	ldr	r1, [pc, #248]	@ 80c <getcmd+0x5a0>
     710:	e3a00001 	mov	r0, #1
     714:	eb0005e5 	bl	1eb0 <printf>
     718:	ea000000 	b	720 <getcmd+0x4b4>
     71c:	e1a00000 	nop			@ (mov r0, r0)
     720:	e24b3070 	sub	r3, fp, #112	@ 0x70
     724:	e3a02010 	mov	r2, #16
     728:	e1a01003 	mov	r1, r3
     72c:	e51b003c 	ldr	r0, [fp, #-60]	@ 0xffffffc4
     730:	eb0004e0 	bl	1ab8 <read>
     734:	e1a03000 	mov	r3, r0
     738:	e3530010 	cmp	r3, #16
     73c:	0affffbe 	beq	63c <getcmd+0x3d0>
     740:	e51b003c 	ldr	r0, [fp, #-60]	@ 0xffffffc4
     744:	eb0004ed 	bl	1b00 <close>
     748:	e59f10b8 	ldr	r1, [pc, #184]	@ 808 <getcmd+0x59c>
     74c:	e3a00001 	mov	r0, #1
     750:	eb0005d6 	bl	1eb0 <printf>
     754:	e51b2088 	ldr	r2, [fp, #-136]	@ 0xffffff78
     758:	e59f10b0 	ldr	r1, [pc, #176]	@ 810 <getcmd+0x5a4>
     75c:	e3a00002 	mov	r0, #2
     760:	eb0005d2 	bl	1eb0 <printf>
     764:	ea000003 	b	778 <getcmd+0x50c>
     768:	e51b2088 	ldr	r2, [fp, #-136]	@ 0xffffff78
     76c:	e59f1090 	ldr	r1, [pc, #144]	@ 804 <getcmd+0x598>
     770:	e3a00002 	mov	r0, #2
     774:	eb0005cd 	bl	1eb0 <printf>
     778:	e51b0088 	ldr	r0, [fp, #-136]	@ 0xffffff78
     77c:	eb0003ab 	bl	1630 <strlen>
     780:	e1a03000 	mov	r3, r0
     784:	e50b3040 	str	r3, [fp, #-64]	@ 0xffffffc0
     788:	e51b308c 	ldr	r3, [fp, #-140]	@ 0xffffff74
     78c:	e2433001 	sub	r3, r3, #1
     790:	e51b2040 	ldr	r2, [fp, #-64]	@ 0xffffffc0
     794:	e1520003 	cmp	r2, r3
     798:	aa00000a 	bge	7c8 <getcmd+0x55c>
     79c:	e51b3040 	ldr	r3, [fp, #-64]	@ 0xffffffc0
     7a0:	e51b2088 	ldr	r2, [fp, #-136]	@ 0xffffff78
     7a4:	e0823003 	add	r3, r2, r3
     7a8:	e3a0200a 	mov	r2, #10
     7ac:	e5c32000 	strb	r2, [r3]
     7b0:	e51b3040 	ldr	r3, [fp, #-64]	@ 0xffffffc0
     7b4:	e2833001 	add	r3, r3, #1
     7b8:	e51b2088 	ldr	r2, [fp, #-136]	@ 0xffffff78
     7bc:	e0823003 	add	r3, r2, r3
     7c0:	e3a02000 	mov	r2, #0
     7c4:	e5c32000 	strb	r2, [r3]
     7c8:	e59f3028 	ldr	r3, [pc, #40]	@ 7f8 <getcmd+0x58c>
     7cc:	e3a02000 	mov	r2, #0
     7d0:	e5832000 	str	r2, [r3]
     7d4:	e3a03000 	mov	r3, #0
     7d8:	ea000003 	b	7ec <getcmd+0x580>
     7dc:	e59f3014 	ldr	r3, [pc, #20]	@ 7f8 <getcmd+0x58c>
     7e0:	e3a02001 	mov	r2, #1
     7e4:	e5832000 	str	r2, [r3]
     7e8:	e3a03000 	mov	r3, #0
     7ec:	e1a00003 	mov	r0, r3
     7f0:	e24bd004 	sub	sp, fp, #4
     7f4:	e8bd8800 	pop	{fp, pc}
     7f8:	00002700 	.word	0x00002700
     7fc:	000025b0 	.word	0x000025b0
     800:	000025b4 	.word	0x000025b4
     804:	000025b8 	.word	0x000025b8
     808:	000025c0 	.word	0x000025c0
     80c:	000025c4 	.word	0x000025c4
     810:	000025c8 	.word	0x000025c8

00000814 <main>:
     814:	e92d4800 	push	{fp, lr}
     818:	e28db004 	add	fp, sp, #4
     81c:	e24dd008 	sub	sp, sp, #8
     820:	ea000005 	b	83c <main+0x28>
     824:	e51b3008 	ldr	r3, [fp, #-8]
     828:	e3530002 	cmp	r3, #2
     82c:	da000002 	ble	83c <main+0x28>
     830:	e51b0008 	ldr	r0, [fp, #-8]
     834:	eb0004b1 	bl	1b00 <close>
     838:	ea000006 	b	858 <main+0x44>
     83c:	e3a01002 	mov	r1, #2
     840:	e59f00f4 	ldr	r0, [pc, #244]	@ 93c <main+0x128>
     844:	eb0004c8 	bl	1b6c <open>
     848:	e50b0008 	str	r0, [fp, #-8]
     84c:	e51b3008 	ldr	r3, [fp, #-8]
     850:	e3530000 	cmp	r3, #0
     854:	aafffff2 	bge	824 <main+0x10>
     858:	ea000030 	b	920 <main+0x10c>
     85c:	e59f30dc 	ldr	r3, [pc, #220]	@ 940 <main+0x12c>
     860:	e5d33000 	ldrb	r3, [r3]
     864:	e3530000 	cmp	r3, #0
     868:	0a000029 	beq	914 <main+0x100>
     86c:	e59f30cc 	ldr	r3, [pc, #204]	@ 940 <main+0x12c>
     870:	e5d33000 	ldrb	r3, [r3]
     874:	e3530063 	cmp	r3, #99	@ 0x63
     878:	1a00001a 	bne	8e8 <main+0xd4>
     87c:	e59f30bc 	ldr	r3, [pc, #188]	@ 940 <main+0x12c>
     880:	e5d33001 	ldrb	r3, [r3, #1]
     884:	e3530064 	cmp	r3, #100	@ 0x64
     888:	1a000016 	bne	8e8 <main+0xd4>
     88c:	e59f30ac 	ldr	r3, [pc, #172]	@ 940 <main+0x12c>
     890:	e5d33002 	ldrb	r3, [r3, #2]
     894:	e3530020 	cmp	r3, #32
     898:	1a000012 	bne	8e8 <main+0xd4>
     89c:	e59f009c 	ldr	r0, [pc, #156]	@ 940 <main+0x12c>
     8a0:	eb000362 	bl	1630 <strlen>
     8a4:	e1a03000 	mov	r3, r0
     8a8:	e2433001 	sub	r3, r3, #1
     8ac:	e59f208c 	ldr	r2, [pc, #140]	@ 940 <main+0x12c>
     8b0:	e3a01000 	mov	r1, #0
     8b4:	e7c21003 	strb	r1, [r2, r3]
     8b8:	e59f3084 	ldr	r3, [pc, #132]	@ 944 <main+0x130>
     8bc:	e1a00003 	mov	r0, r3
     8c0:	eb0004df 	bl	1c44 <chdir>
     8c4:	e1a03000 	mov	r3, r0
     8c8:	e3530000 	cmp	r3, #0
     8cc:	aa000012 	bge	91c <main+0x108>
     8d0:	e59f306c 	ldr	r3, [pc, #108]	@ 944 <main+0x130>
     8d4:	e1a02003 	mov	r2, r3
     8d8:	e59f1068 	ldr	r1, [pc, #104]	@ 948 <main+0x134>
     8dc:	e3a00002 	mov	r0, #2
     8e0:	eb000572 	bl	1eb0 <printf>
     8e4:	ea00000c 	b	91c <main+0x108>
     8e8:	eb000021 	bl	974 <fork1>
     8ec:	e1a03000 	mov	r3, r0
     8f0:	e3530000 	cmp	r3, #0
     8f4:	1a000004 	bne	90c <main+0xf8>
     8f8:	e59f0040 	ldr	r0, [pc, #64]	@ 940 <main+0x12c>
     8fc:	eb00015e 	bl	e7c <parsecmd>
     900:	e1a03000 	mov	r3, r0
     904:	e1a00003 	mov	r0, r3
     908:	ebfffdbc 	bl	0 <runcmd>
     90c:	eb000457 	bl	1a70 <wait>
     910:	ea000002 	b	920 <main+0x10c>
     914:	e1a00000 	nop			@ (mov r0, r0)
     918:	ea000000 	b	920 <main+0x10c>
     91c:	e1a00000 	nop			@ (mov r0, r0)
     920:	e3a01064 	mov	r1, #100	@ 0x64
     924:	e59f0014 	ldr	r0, [pc, #20]	@ 940 <main+0x12c>
     928:	ebfffe4f 	bl	26c <getcmd>
     92c:	e1a03000 	mov	r3, r0
     930:	e3530000 	cmp	r3, #0
     934:	aaffffc8 	bge	85c <main+0x48>
     938:	eb000443 	bl	1a4c <exit>
     93c:	000025d0 	.word	0x000025d0
     940:	00002728 	.word	0x00002728
     944:	0000272b 	.word	0x0000272b
     948:	000025d8 	.word	0x000025d8

0000094c <panic>:
     94c:	e92d4800 	push	{fp, lr}
     950:	e28db004 	add	fp, sp, #4
     954:	e24dd008 	sub	sp, sp, #8
     958:	e50b0008 	str	r0, [fp, #-8]
     95c:	e51b2008 	ldr	r2, [fp, #-8]
     960:	e59f1008 	ldr	r1, [pc, #8]	@ 970 <panic+0x24>
     964:	e3a00002 	mov	r0, #2
     968:	eb000550 	bl	1eb0 <printf>
     96c:	eb000436 	bl	1a4c <exit>
     970:	000025e8 	.word	0x000025e8

00000974 <fork1>:
     974:	e92d4800 	push	{fp, lr}
     978:	e28db004 	add	fp, sp, #4
     97c:	e24dd008 	sub	sp, sp, #8
     980:	eb000428 	bl	1a28 <fork>
     984:	e50b0008 	str	r0, [fp, #-8]
     988:	e51b3008 	ldr	r3, [fp, #-8]
     98c:	e3730001 	cmn	r3, #1
     990:	1a000001 	bne	99c <fork1+0x28>
     994:	e59f0010 	ldr	r0, [pc, #16]	@ 9ac <fork1+0x38>
     998:	ebffffeb 	bl	94c <panic>
     99c:	e51b3008 	ldr	r3, [fp, #-8]
     9a0:	e1a00003 	mov	r0, r3
     9a4:	e24bd004 	sub	sp, fp, #4
     9a8:	e8bd8800 	pop	{fp, pc}
     9ac:	000025ec 	.word	0x000025ec

000009b0 <execcmd>:
     9b0:	e92d4800 	push	{fp, lr}
     9b4:	e28db004 	add	fp, sp, #4
     9b8:	e24dd008 	sub	sp, sp, #8
     9bc:	e3a00054 	mov	r0, #84	@ 0x54
     9c0:	eb000649 	bl	22ec <malloc>
     9c4:	e50b0008 	str	r0, [fp, #-8]
     9c8:	e3a02054 	mov	r2, #84	@ 0x54
     9cc:	e3a01000 	mov	r1, #0
     9d0:	e51b0008 	ldr	r0, [fp, #-8]
     9d4:	eb00032a 	bl	1684 <memset>
     9d8:	e51b3008 	ldr	r3, [fp, #-8]
     9dc:	e3a02001 	mov	r2, #1
     9e0:	e5832000 	str	r2, [r3]
     9e4:	e51b3008 	ldr	r3, [fp, #-8]
     9e8:	e1a00003 	mov	r0, r3
     9ec:	e24bd004 	sub	sp, fp, #4
     9f0:	e8bd8800 	pop	{fp, pc}

000009f4 <redircmd>:
     9f4:	e92d4800 	push	{fp, lr}
     9f8:	e28db004 	add	fp, sp, #4
     9fc:	e24dd018 	sub	sp, sp, #24
     a00:	e50b0010 	str	r0, [fp, #-16]
     a04:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     a08:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     a0c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     a10:	e3a00018 	mov	r0, #24
     a14:	eb000634 	bl	22ec <malloc>
     a18:	e50b0008 	str	r0, [fp, #-8]
     a1c:	e3a02018 	mov	r2, #24
     a20:	e3a01000 	mov	r1, #0
     a24:	e51b0008 	ldr	r0, [fp, #-8]
     a28:	eb000315 	bl	1684 <memset>
     a2c:	e51b3008 	ldr	r3, [fp, #-8]
     a30:	e3a02002 	mov	r2, #2
     a34:	e5832000 	str	r2, [r3]
     a38:	e51b3008 	ldr	r3, [fp, #-8]
     a3c:	e51b2010 	ldr	r2, [fp, #-16]
     a40:	e5832004 	str	r2, [r3, #4]
     a44:	e51b3008 	ldr	r3, [fp, #-8]
     a48:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     a4c:	e5832008 	str	r2, [r3, #8]
     a50:	e51b3008 	ldr	r3, [fp, #-8]
     a54:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     a58:	e583200c 	str	r2, [r3, #12]
     a5c:	e51b3008 	ldr	r3, [fp, #-8]
     a60:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     a64:	e5832010 	str	r2, [r3, #16]
     a68:	e51b3008 	ldr	r3, [fp, #-8]
     a6c:	e59b2004 	ldr	r2, [fp, #4]
     a70:	e5832014 	str	r2, [r3, #20]
     a74:	e51b3008 	ldr	r3, [fp, #-8]
     a78:	e1a00003 	mov	r0, r3
     a7c:	e24bd004 	sub	sp, fp, #4
     a80:	e8bd8800 	pop	{fp, pc}

00000a84 <pipecmd>:
     a84:	e92d4800 	push	{fp, lr}
     a88:	e28db004 	add	fp, sp, #4
     a8c:	e24dd010 	sub	sp, sp, #16
     a90:	e50b0010 	str	r0, [fp, #-16]
     a94:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     a98:	e3a0000c 	mov	r0, #12
     a9c:	eb000612 	bl	22ec <malloc>
     aa0:	e50b0008 	str	r0, [fp, #-8]
     aa4:	e3a0200c 	mov	r2, #12
     aa8:	e3a01000 	mov	r1, #0
     aac:	e51b0008 	ldr	r0, [fp, #-8]
     ab0:	eb0002f3 	bl	1684 <memset>
     ab4:	e51b3008 	ldr	r3, [fp, #-8]
     ab8:	e3a02003 	mov	r2, #3
     abc:	e5832000 	str	r2, [r3]
     ac0:	e51b3008 	ldr	r3, [fp, #-8]
     ac4:	e51b2010 	ldr	r2, [fp, #-16]
     ac8:	e5832004 	str	r2, [r3, #4]
     acc:	e51b3008 	ldr	r3, [fp, #-8]
     ad0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     ad4:	e5832008 	str	r2, [r3, #8]
     ad8:	e51b3008 	ldr	r3, [fp, #-8]
     adc:	e1a00003 	mov	r0, r3
     ae0:	e24bd004 	sub	sp, fp, #4
     ae4:	e8bd8800 	pop	{fp, pc}

00000ae8 <listcmd>:
     ae8:	e92d4800 	push	{fp, lr}
     aec:	e28db004 	add	fp, sp, #4
     af0:	e24dd010 	sub	sp, sp, #16
     af4:	e50b0010 	str	r0, [fp, #-16]
     af8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     afc:	e3a0000c 	mov	r0, #12
     b00:	eb0005f9 	bl	22ec <malloc>
     b04:	e50b0008 	str	r0, [fp, #-8]
     b08:	e3a0200c 	mov	r2, #12
     b0c:	e3a01000 	mov	r1, #0
     b10:	e51b0008 	ldr	r0, [fp, #-8]
     b14:	eb0002da 	bl	1684 <memset>
     b18:	e51b3008 	ldr	r3, [fp, #-8]
     b1c:	e3a02004 	mov	r2, #4
     b20:	e5832000 	str	r2, [r3]
     b24:	e51b3008 	ldr	r3, [fp, #-8]
     b28:	e51b2010 	ldr	r2, [fp, #-16]
     b2c:	e5832004 	str	r2, [r3, #4]
     b30:	e51b3008 	ldr	r3, [fp, #-8]
     b34:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     b38:	e5832008 	str	r2, [r3, #8]
     b3c:	e51b3008 	ldr	r3, [fp, #-8]
     b40:	e1a00003 	mov	r0, r3
     b44:	e24bd004 	sub	sp, fp, #4
     b48:	e8bd8800 	pop	{fp, pc}

00000b4c <backcmd>:
     b4c:	e92d4800 	push	{fp, lr}
     b50:	e28db004 	add	fp, sp, #4
     b54:	e24dd010 	sub	sp, sp, #16
     b58:	e50b0010 	str	r0, [fp, #-16]
     b5c:	e3a00008 	mov	r0, #8
     b60:	eb0005e1 	bl	22ec <malloc>
     b64:	e50b0008 	str	r0, [fp, #-8]
     b68:	e3a02008 	mov	r2, #8
     b6c:	e3a01000 	mov	r1, #0
     b70:	e51b0008 	ldr	r0, [fp, #-8]
     b74:	eb0002c2 	bl	1684 <memset>
     b78:	e51b3008 	ldr	r3, [fp, #-8]
     b7c:	e3a02005 	mov	r2, #5
     b80:	e5832000 	str	r2, [r3]
     b84:	e51b3008 	ldr	r3, [fp, #-8]
     b88:	e51b2010 	ldr	r2, [fp, #-16]
     b8c:	e5832004 	str	r2, [r3, #4]
     b90:	e51b3008 	ldr	r3, [fp, #-8]
     b94:	e1a00003 	mov	r0, r3
     b98:	e24bd004 	sub	sp, fp, #4
     b9c:	e8bd8800 	pop	{fp, pc}

00000ba0 <gettoken>:
     ba0:	e92d4800 	push	{fp, lr}
     ba4:	e28db004 	add	fp, sp, #4
     ba8:	e24dd018 	sub	sp, sp, #24
     bac:	e50b0010 	str	r0, [fp, #-16]
     bb0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     bb4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     bb8:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     bbc:	e51b3010 	ldr	r3, [fp, #-16]
     bc0:	e5933000 	ldr	r3, [r3]
     bc4:	e50b3008 	str	r3, [fp, #-8]
     bc8:	ea000002 	b	bd8 <gettoken+0x38>
     bcc:	e51b3008 	ldr	r3, [fp, #-8]
     bd0:	e2833001 	add	r3, r3, #1
     bd4:	e50b3008 	str	r3, [fp, #-8]
     bd8:	e51b2008 	ldr	r2, [fp, #-8]
     bdc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     be0:	e1520003 	cmp	r2, r3
     be4:	2a000007 	bcs	c08 <gettoken+0x68>
     be8:	e51b3008 	ldr	r3, [fp, #-8]
     bec:	e5d33000 	ldrb	r3, [r3]
     bf0:	e1a01003 	mov	r1, r3
     bf4:	e59f01b8 	ldr	r0, [pc, #440]	@ db4 <gettoken+0x214>
     bf8:	eb0002eb 	bl	17ac <strchr>
     bfc:	e1a03000 	mov	r3, r0
     c00:	e3530000 	cmp	r3, #0
     c04:	1afffff0 	bne	bcc <gettoken+0x2c>
     c08:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c0c:	e3530000 	cmp	r3, #0
     c10:	0a000002 	beq	c20 <gettoken+0x80>
     c14:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c18:	e51b2008 	ldr	r2, [fp, #-8]
     c1c:	e5832000 	str	r2, [r3]
     c20:	e51b3008 	ldr	r3, [fp, #-8]
     c24:	e5d33000 	ldrb	r3, [r3]
     c28:	e50b300c 	str	r3, [fp, #-12]
     c2c:	e51b3008 	ldr	r3, [fp, #-8]
     c30:	e5d33000 	ldrb	r3, [r3]
     c34:	e353007c 	cmp	r3, #124	@ 0x7c
     c38:	0a00000f 	beq	c7c <gettoken+0xdc>
     c3c:	e353007c 	cmp	r3, #124	@ 0x7c
     c40:	ca00001e 	bgt	cc0 <gettoken+0x120>
     c44:	e3530000 	cmp	r3, #0
     c48:	0a000037 	beq	d2c <gettoken+0x18c>
     c4c:	e3530000 	cmp	r3, #0
     c50:	ba00001a 	blt	cc0 <gettoken+0x120>
     c54:	e353003e 	cmp	r3, #62	@ 0x3e
     c58:	ca000018 	bgt	cc0 <gettoken+0x120>
     c5c:	e3530026 	cmp	r3, #38	@ 0x26
     c60:	ba000016 	blt	cc0 <gettoken+0x120>
     c64:	e2432026 	sub	r2, r3, #38	@ 0x26
     c68:	e59f3148 	ldr	r3, [pc, #328]	@ db8 <gettoken+0x218>
     c6c:	e3520018 	cmp	r2, #24
     c70:	8a000012 	bhi	cc0 <gettoken+0x120>
     c74:	e793f102 	ldr	pc, [r3, r2, lsl #2]
     c78:	e1a00000 	nop			@ (mov r0, r0)
     c7c:	e51b3008 	ldr	r3, [fp, #-8]
     c80:	e2833001 	add	r3, r3, #1
     c84:	e50b3008 	str	r3, [fp, #-8]
     c88:	ea00002c 	b	d40 <gettoken+0x1a0>
     c8c:	e51b3008 	ldr	r3, [fp, #-8]
     c90:	e2833001 	add	r3, r3, #1
     c94:	e50b3008 	str	r3, [fp, #-8]
     c98:	e51b3008 	ldr	r3, [fp, #-8]
     c9c:	e5d33000 	ldrb	r3, [r3]
     ca0:	e353003e 	cmp	r3, #62	@ 0x3e
     ca4:	1a000022 	bne	d34 <gettoken+0x194>
     ca8:	e3a0302b 	mov	r3, #43	@ 0x2b
     cac:	e50b300c 	str	r3, [fp, #-12]
     cb0:	e51b3008 	ldr	r3, [fp, #-8]
     cb4:	e2833001 	add	r3, r3, #1
     cb8:	e50b3008 	str	r3, [fp, #-8]
     cbc:	ea00001c 	b	d34 <gettoken+0x194>
     cc0:	e3a03061 	mov	r3, #97	@ 0x61
     cc4:	e50b300c 	str	r3, [fp, #-12]
     cc8:	ea000002 	b	cd8 <gettoken+0x138>
     ccc:	e51b3008 	ldr	r3, [fp, #-8]
     cd0:	e2833001 	add	r3, r3, #1
     cd4:	e50b3008 	str	r3, [fp, #-8]
     cd8:	e51b2008 	ldr	r2, [fp, #-8]
     cdc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     ce0:	e1520003 	cmp	r2, r3
     ce4:	2a000014 	bcs	d3c <gettoken+0x19c>
     ce8:	e51b3008 	ldr	r3, [fp, #-8]
     cec:	e5d33000 	ldrb	r3, [r3]
     cf0:	e1a01003 	mov	r1, r3
     cf4:	e59f00b8 	ldr	r0, [pc, #184]	@ db4 <gettoken+0x214>
     cf8:	eb0002ab 	bl	17ac <strchr>
     cfc:	e1a03000 	mov	r3, r0
     d00:	e3530000 	cmp	r3, #0
     d04:	1a00000c 	bne	d3c <gettoken+0x19c>
     d08:	e51b3008 	ldr	r3, [fp, #-8]
     d0c:	e5d33000 	ldrb	r3, [r3]
     d10:	e1a01003 	mov	r1, r3
     d14:	e59f00a0 	ldr	r0, [pc, #160]	@ dbc <gettoken+0x21c>
     d18:	eb0002a3 	bl	17ac <strchr>
     d1c:	e1a03000 	mov	r3, r0
     d20:	e3530000 	cmp	r3, #0
     d24:	0affffe8 	beq	ccc <gettoken+0x12c>
     d28:	ea000003 	b	d3c <gettoken+0x19c>
     d2c:	e1a00000 	nop			@ (mov r0, r0)
     d30:	ea000002 	b	d40 <gettoken+0x1a0>
     d34:	e1a00000 	nop			@ (mov r0, r0)
     d38:	ea000000 	b	d40 <gettoken+0x1a0>
     d3c:	e1a00000 	nop			@ (mov r0, r0)
     d40:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d44:	e3530000 	cmp	r3, #0
     d48:	0a000006 	beq	d68 <gettoken+0x1c8>
     d4c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d50:	e51b2008 	ldr	r2, [fp, #-8]
     d54:	e5832000 	str	r2, [r3]
     d58:	ea000002 	b	d68 <gettoken+0x1c8>
     d5c:	e51b3008 	ldr	r3, [fp, #-8]
     d60:	e2833001 	add	r3, r3, #1
     d64:	e50b3008 	str	r3, [fp, #-8]
     d68:	e51b2008 	ldr	r2, [fp, #-8]
     d6c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     d70:	e1520003 	cmp	r2, r3
     d74:	2a000007 	bcs	d98 <gettoken+0x1f8>
     d78:	e51b3008 	ldr	r3, [fp, #-8]
     d7c:	e5d33000 	ldrb	r3, [r3]
     d80:	e1a01003 	mov	r1, r3
     d84:	e59f0028 	ldr	r0, [pc, #40]	@ db4 <gettoken+0x214>
     d88:	eb000287 	bl	17ac <strchr>
     d8c:	e1a03000 	mov	r3, r0
     d90:	e3530000 	cmp	r3, #0
     d94:	1afffff0 	bne	d5c <gettoken+0x1bc>
     d98:	e51b3010 	ldr	r3, [fp, #-16]
     d9c:	e51b2008 	ldr	r2, [fp, #-8]
     da0:	e5832000 	str	r2, [r3]
     da4:	e51b300c 	ldr	r3, [fp, #-12]
     da8:	e1a00003 	mov	r0, r3
     dac:	e24bd004 	sub	sp, fp, #4
     db0:	e8bd8800 	pop	{fp, pc}
     db4:	00002704 	.word	0x00002704
     db8:	000025f4 	.word	0x000025f4
     dbc:	0000270c 	.word	0x0000270c

00000dc0 <peek>:
     dc0:	e92d4800 	push	{fp, lr}
     dc4:	e28db004 	add	fp, sp, #4
     dc8:	e24dd018 	sub	sp, sp, #24
     dcc:	e50b0010 	str	r0, [fp, #-16]
     dd0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     dd4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     dd8:	e51b3010 	ldr	r3, [fp, #-16]
     ddc:	e5933000 	ldr	r3, [r3]
     de0:	e50b3008 	str	r3, [fp, #-8]
     de4:	ea000002 	b	df4 <peek+0x34>
     de8:	e51b3008 	ldr	r3, [fp, #-8]
     dec:	e2833001 	add	r3, r3, #1
     df0:	e50b3008 	str	r3, [fp, #-8]
     df4:	e51b2008 	ldr	r2, [fp, #-8]
     df8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     dfc:	e1520003 	cmp	r2, r3
     e00:	2a000007 	bcs	e24 <peek+0x64>
     e04:	e51b3008 	ldr	r3, [fp, #-8]
     e08:	e5d33000 	ldrb	r3, [r3]
     e0c:	e1a01003 	mov	r1, r3
     e10:	e59f0060 	ldr	r0, [pc, #96]	@ e78 <peek+0xb8>
     e14:	eb000264 	bl	17ac <strchr>
     e18:	e1a03000 	mov	r3, r0
     e1c:	e3530000 	cmp	r3, #0
     e20:	1afffff0 	bne	de8 <peek+0x28>
     e24:	e51b3010 	ldr	r3, [fp, #-16]
     e28:	e51b2008 	ldr	r2, [fp, #-8]
     e2c:	e5832000 	str	r2, [r3]
     e30:	e51b3008 	ldr	r3, [fp, #-8]
     e34:	e5d33000 	ldrb	r3, [r3]
     e38:	e3530000 	cmp	r3, #0
     e3c:	0a000009 	beq	e68 <peek+0xa8>
     e40:	e51b3008 	ldr	r3, [fp, #-8]
     e44:	e5d33000 	ldrb	r3, [r3]
     e48:	e1a01003 	mov	r1, r3
     e4c:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
     e50:	eb000255 	bl	17ac <strchr>
     e54:	e1a03000 	mov	r3, r0
     e58:	e3530000 	cmp	r3, #0
     e5c:	0a000001 	beq	e68 <peek+0xa8>
     e60:	e3a03001 	mov	r3, #1
     e64:	ea000000 	b	e6c <peek+0xac>
     e68:	e3a03000 	mov	r3, #0
     e6c:	e1a00003 	mov	r0, r3
     e70:	e24bd004 	sub	sp, fp, #4
     e74:	e8bd8800 	pop	{fp, pc}
     e78:	00002704 	.word	0x00002704

00000e7c <parsecmd>:
     e7c:	e92d4810 	push	{r4, fp, lr}
     e80:	e28db008 	add	fp, sp, #8
     e84:	e24dd014 	sub	sp, sp, #20
     e88:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     e8c:	e51b4018 	ldr	r4, [fp, #-24]	@ 0xffffffe8
     e90:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e94:	e1a00003 	mov	r0, r3
     e98:	eb0001e4 	bl	1630 <strlen>
     e9c:	e1a03000 	mov	r3, r0
     ea0:	e0843003 	add	r3, r4, r3
     ea4:	e50b3010 	str	r3, [fp, #-16]
     ea8:	e24b3018 	sub	r3, fp, #24
     eac:	e51b1010 	ldr	r1, [fp, #-16]
     eb0:	e1a00003 	mov	r0, r3
     eb4:	eb000019 	bl	f20 <parseline>
     eb8:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
     ebc:	e24b3018 	sub	r3, fp, #24
     ec0:	e59f204c 	ldr	r2, [pc, #76]	@ f14 <parsecmd+0x98>
     ec4:	e51b1010 	ldr	r1, [fp, #-16]
     ec8:	e1a00003 	mov	r0, r3
     ecc:	ebffffbb 	bl	dc0 <peek>
     ed0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ed4:	e51b2010 	ldr	r2, [fp, #-16]
     ed8:	e1520003 	cmp	r2, r3
     edc:	0a000006 	beq	efc <parsecmd+0x80>
     ee0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ee4:	e1a02003 	mov	r2, r3
     ee8:	e59f1028 	ldr	r1, [pc, #40]	@ f18 <parsecmd+0x9c>
     eec:	e3a00002 	mov	r0, #2
     ef0:	eb0003ee 	bl	1eb0 <printf>
     ef4:	e59f0020 	ldr	r0, [pc, #32]	@ f1c <parsecmd+0xa0>
     ef8:	ebfffe93 	bl	94c <panic>
     efc:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
     f00:	eb00013c 	bl	13f8 <nulterminate>
     f04:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     f08:	e1a00003 	mov	r0, r3
     f0c:	e24bd008 	sub	sp, fp, #8
     f10:	e8bd8810 	pop	{r4, fp, pc}
     f14:	00002658 	.word	0x00002658
     f18:	0000265c 	.word	0x0000265c
     f1c:	0000266c 	.word	0x0000266c

00000f20 <parseline>:
     f20:	e92d4800 	push	{fp, lr}
     f24:	e28db004 	add	fp, sp, #4
     f28:	e24dd010 	sub	sp, sp, #16
     f2c:	e50b0010 	str	r0, [fp, #-16]
     f30:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     f34:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     f38:	e51b0010 	ldr	r0, [fp, #-16]
     f3c:	eb00002a 	bl	fec <parsepipe>
     f40:	e50b0008 	str	r0, [fp, #-8]
     f44:	ea000007 	b	f68 <parseline+0x48>
     f48:	e3a03000 	mov	r3, #0
     f4c:	e3a02000 	mov	r2, #0
     f50:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     f54:	e51b0010 	ldr	r0, [fp, #-16]
     f58:	ebffff10 	bl	ba0 <gettoken>
     f5c:	e51b0008 	ldr	r0, [fp, #-8]
     f60:	ebfffef9 	bl	b4c <backcmd>
     f64:	e50b0008 	str	r0, [fp, #-8]
     f68:	e59f2074 	ldr	r2, [pc, #116]	@ fe4 <parseline+0xc4>
     f6c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     f70:	e51b0010 	ldr	r0, [fp, #-16]
     f74:	ebffff91 	bl	dc0 <peek>
     f78:	e1a03000 	mov	r3, r0
     f7c:	e3530000 	cmp	r3, #0
     f80:	1afffff0 	bne	f48 <parseline+0x28>
     f84:	e59f205c 	ldr	r2, [pc, #92]	@ fe8 <parseline+0xc8>
     f88:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     f8c:	e51b0010 	ldr	r0, [fp, #-16]
     f90:	ebffff8a 	bl	dc0 <peek>
     f94:	e1a03000 	mov	r3, r0
     f98:	e3530000 	cmp	r3, #0
     f9c:	0a00000c 	beq	fd4 <parseline+0xb4>
     fa0:	e3a03000 	mov	r3, #0
     fa4:	e3a02000 	mov	r2, #0
     fa8:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     fac:	e51b0010 	ldr	r0, [fp, #-16]
     fb0:	ebfffefa 	bl	ba0 <gettoken>
     fb4:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     fb8:	e51b0010 	ldr	r0, [fp, #-16]
     fbc:	ebffffd7 	bl	f20 <parseline>
     fc0:	e1a03000 	mov	r3, r0
     fc4:	e1a01003 	mov	r1, r3
     fc8:	e51b0008 	ldr	r0, [fp, #-8]
     fcc:	ebfffec5 	bl	ae8 <listcmd>
     fd0:	e50b0008 	str	r0, [fp, #-8]
     fd4:	e51b3008 	ldr	r3, [fp, #-8]
     fd8:	e1a00003 	mov	r0, r3
     fdc:	e24bd004 	sub	sp, fp, #4
     fe0:	e8bd8800 	pop	{fp, pc}
     fe4:	00002674 	.word	0x00002674
     fe8:	00002678 	.word	0x00002678

00000fec <parsepipe>:
     fec:	e92d4800 	push	{fp, lr}
     ff0:	e28db004 	add	fp, sp, #4
     ff4:	e24dd010 	sub	sp, sp, #16
     ff8:	e50b0010 	str	r0, [fp, #-16]
     ffc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
    1000:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
    1004:	e51b0010 	ldr	r0, [fp, #-16]
    1008:	eb000097 	bl	126c <parseexec>
    100c:	e50b0008 	str	r0, [fp, #-8]
    1010:	e59f2058 	ldr	r2, [pc, #88]	@ 1070 <parsepipe+0x84>
    1014:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
    1018:	e51b0010 	ldr	r0, [fp, #-16]
    101c:	ebffff67 	bl	dc0 <peek>
    1020:	e1a03000 	mov	r3, r0
    1024:	e3530000 	cmp	r3, #0
    1028:	0a00000c 	beq	1060 <parsepipe+0x74>
    102c:	e3a03000 	mov	r3, #0
    1030:	e3a02000 	mov	r2, #0
    1034:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
    1038:	e51b0010 	ldr	r0, [fp, #-16]
    103c:	ebfffed7 	bl	ba0 <gettoken>
    1040:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
    1044:	e51b0010 	ldr	r0, [fp, #-16]
    1048:	ebffffe7 	bl	fec <parsepipe>
    104c:	e1a03000 	mov	r3, r0
    1050:	e1a01003 	mov	r1, r3
    1054:	e51b0008 	ldr	r0, [fp, #-8]
    1058:	ebfffe89 	bl	a84 <pipecmd>
    105c:	e50b0008 	str	r0, [fp, #-8]
    1060:	e51b3008 	ldr	r3, [fp, #-8]
    1064:	e1a00003 	mov	r0, r3
    1068:	e24bd004 	sub	sp, fp, #4
    106c:	e8bd8800 	pop	{fp, pc}
    1070:	0000267c 	.word	0x0000267c

00001074 <parseredirs>:
    1074:	e92d4800 	push	{fp, lr}
    1078:	e28db004 	add	fp, sp, #4
    107c:	e24dd028 	sub	sp, sp, #40	@ 0x28
    1080:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1084:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
    1088:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
    108c:	ea000036 	b	116c <parseredirs+0xf8>
    1090:	e3a03000 	mov	r3, #0
    1094:	e3a02000 	mov	r2, #0
    1098:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
    109c:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
    10a0:	ebfffebe 	bl	ba0 <gettoken>
    10a4:	e50b0008 	str	r0, [fp, #-8]
    10a8:	e24b3010 	sub	r3, fp, #16
    10ac:	e24b200c 	sub	r2, fp, #12
    10b0:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
    10b4:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
    10b8:	ebfffeb8 	bl	ba0 <gettoken>
    10bc:	e1a03000 	mov	r3, r0
    10c0:	e3530061 	cmp	r3, #97	@ 0x61
    10c4:	0a000001 	beq	10d0 <parseredirs+0x5c>
    10c8:	e59f00c8 	ldr	r0, [pc, #200]	@ 1198 <parseredirs+0x124>
    10cc:	ebfffe1e 	bl	94c <panic>
    10d0:	e51b3008 	ldr	r3, [fp, #-8]
    10d4:	e353003e 	cmp	r3, #62	@ 0x3e
    10d8:	0a000011 	beq	1124 <parseredirs+0xb0>
    10dc:	e51b3008 	ldr	r3, [fp, #-8]
    10e0:	e353003e 	cmp	r3, #62	@ 0x3e
    10e4:	ca000020 	bgt	116c <parseredirs+0xf8>
    10e8:	e51b3008 	ldr	r3, [fp, #-8]
    10ec:	e353002b 	cmp	r3, #43	@ 0x2b
    10f0:	0a000014 	beq	1148 <parseredirs+0xd4>
    10f4:	e51b3008 	ldr	r3, [fp, #-8]
    10f8:	e353003c 	cmp	r3, #60	@ 0x3c
    10fc:	1a00001a 	bne	116c <parseredirs+0xf8>
    1100:	e51b100c 	ldr	r1, [fp, #-12]
    1104:	e51b2010 	ldr	r2, [fp, #-16]
    1108:	e3a03000 	mov	r3, #0
    110c:	e58d3000 	str	r3, [sp]
    1110:	e3a03000 	mov	r3, #0
    1114:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
    1118:	ebfffe35 	bl	9f4 <redircmd>
    111c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1120:	ea000011 	b	116c <parseredirs+0xf8>
    1124:	e51b100c 	ldr	r1, [fp, #-12]
    1128:	e51b2010 	ldr	r2, [fp, #-16]
    112c:	e3a03001 	mov	r3, #1
    1130:	e58d3000 	str	r3, [sp]
    1134:	e59f3060 	ldr	r3, [pc, #96]	@ 119c <parseredirs+0x128>
    1138:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
    113c:	ebfffe2c 	bl	9f4 <redircmd>
    1140:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1144:	ea000008 	b	116c <parseredirs+0xf8>
    1148:	e51b100c 	ldr	r1, [fp, #-12]
    114c:	e51b2010 	ldr	r2, [fp, #-16]
    1150:	e3a03001 	mov	r3, #1
    1154:	e58d3000 	str	r3, [sp]
    1158:	e59f303c 	ldr	r3, [pc, #60]	@ 119c <parseredirs+0x128>
    115c:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
    1160:	ebfffe23 	bl	9f4 <redircmd>
    1164:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1168:	e1a00000 	nop			@ (mov r0, r0)
    116c:	e59f202c 	ldr	r2, [pc, #44]	@ 11a0 <parseredirs+0x12c>
    1170:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
    1174:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
    1178:	ebffff10 	bl	dc0 <peek>
    117c:	e1a03000 	mov	r3, r0
    1180:	e3530000 	cmp	r3, #0
    1184:	1affffc1 	bne	1090 <parseredirs+0x1c>
    1188:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    118c:	e1a00003 	mov	r0, r3
    1190:	e24bd004 	sub	sp, fp, #4
    1194:	e8bd8800 	pop	{fp, pc}
    1198:	00002680 	.word	0x00002680
    119c:	00000201 	.word	0x00000201
    11a0:	000026a0 	.word	0x000026a0

000011a4 <parseblock>:
    11a4:	e92d4800 	push	{fp, lr}
    11a8:	e28db004 	add	fp, sp, #4
    11ac:	e24dd010 	sub	sp, sp, #16
    11b0:	e50b0010 	str	r0, [fp, #-16]
    11b4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
    11b8:	e59f209c 	ldr	r2, [pc, #156]	@ 125c <parseblock+0xb8>
    11bc:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
    11c0:	e51b0010 	ldr	r0, [fp, #-16]
    11c4:	ebfffefd 	bl	dc0 <peek>
    11c8:	e1a03000 	mov	r3, r0
    11cc:	e3530000 	cmp	r3, #0
    11d0:	1a000001 	bne	11dc <parseblock+0x38>
    11d4:	e59f0084 	ldr	r0, [pc, #132]	@ 1260 <parseblock+0xbc>
    11d8:	ebfffddb 	bl	94c <panic>
    11dc:	e3a03000 	mov	r3, #0
    11e0:	e3a02000 	mov	r2, #0
    11e4:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
    11e8:	e51b0010 	ldr	r0, [fp, #-16]
    11ec:	ebfffe6b 	bl	ba0 <gettoken>
    11f0:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
    11f4:	e51b0010 	ldr	r0, [fp, #-16]
    11f8:	ebffff48 	bl	f20 <parseline>
    11fc:	e50b0008 	str	r0, [fp, #-8]
    1200:	e59f205c 	ldr	r2, [pc, #92]	@ 1264 <parseblock+0xc0>
    1204:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
    1208:	e51b0010 	ldr	r0, [fp, #-16]
    120c:	ebfffeeb 	bl	dc0 <peek>
    1210:	e1a03000 	mov	r3, r0
    1214:	e3530000 	cmp	r3, #0
    1218:	1a000001 	bne	1224 <parseblock+0x80>
    121c:	e59f0044 	ldr	r0, [pc, #68]	@ 1268 <parseblock+0xc4>
    1220:	ebfffdc9 	bl	94c <panic>
    1224:	e3a03000 	mov	r3, #0
    1228:	e3a02000 	mov	r2, #0
    122c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
    1230:	e51b0010 	ldr	r0, [fp, #-16]
    1234:	ebfffe59 	bl	ba0 <gettoken>
    1238:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
    123c:	e51b1010 	ldr	r1, [fp, #-16]
    1240:	e51b0008 	ldr	r0, [fp, #-8]
    1244:	ebffff8a 	bl	1074 <parseredirs>
    1248:	e50b0008 	str	r0, [fp, #-8]
    124c:	e51b3008 	ldr	r3, [fp, #-8]
    1250:	e1a00003 	mov	r0, r3
    1254:	e24bd004 	sub	sp, fp, #4
    1258:	e8bd8800 	pop	{fp, pc}
    125c:	000026a4 	.word	0x000026a4
    1260:	000026a8 	.word	0x000026a8
    1264:	000026b4 	.word	0x000026b4
    1268:	000026b8 	.word	0x000026b8

0000126c <parseexec>:
    126c:	e92d4800 	push	{fp, lr}
    1270:	e28db004 	add	fp, sp, #4
    1274:	e24dd020 	sub	sp, sp, #32
    1278:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
    127c:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
    1280:	e59f2160 	ldr	r2, [pc, #352]	@ 13e8 <parseexec+0x17c>
    1284:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
    1288:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
    128c:	ebfffecb 	bl	dc0 <peek>
    1290:	e1a03000 	mov	r3, r0
    1294:	e3530000 	cmp	r3, #0
    1298:	0a000004 	beq	12b0 <parseexec+0x44>
    129c:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
    12a0:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
    12a4:	ebffffbe 	bl	11a4 <parseblock>
    12a8:	e1a03000 	mov	r3, r0
    12ac:	ea00004a 	b	13dc <parseexec+0x170>
    12b0:	ebfffdbe 	bl	9b0 <execcmd>
    12b4:	e50b000c 	str	r0, [fp, #-12]
    12b8:	e51b300c 	ldr	r3, [fp, #-12]
    12bc:	e50b3010 	str	r3, [fp, #-16]
    12c0:	e3a03000 	mov	r3, #0
    12c4:	e50b3008 	str	r3, [fp, #-8]
    12c8:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
    12cc:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
    12d0:	e51b000c 	ldr	r0, [fp, #-12]
    12d4:	ebffff66 	bl	1074 <parseredirs>
    12d8:	e50b000c 	str	r0, [fp, #-12]
    12dc:	ea000027 	b	1380 <parseexec+0x114>
    12e0:	e24b301c 	sub	r3, fp, #28
    12e4:	e24b2018 	sub	r2, fp, #24
    12e8:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
    12ec:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
    12f0:	ebfffe2a 	bl	ba0 <gettoken>
    12f4:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
    12f8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    12fc:	e3530000 	cmp	r3, #0
    1300:	0a000026 	beq	13a0 <parseexec+0x134>
    1304:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1308:	e3530061 	cmp	r3, #97	@ 0x61
    130c:	0a000001 	beq	1318 <parseexec+0xac>
    1310:	e59f00d4 	ldr	r0, [pc, #212]	@ 13ec <parseexec+0x180>
    1314:	ebfffd8c 	bl	94c <panic>
    1318:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
    131c:	e51b1010 	ldr	r1, [fp, #-16]
    1320:	e51b3008 	ldr	r3, [fp, #-8]
    1324:	e1a03103 	lsl	r3, r3, #2
    1328:	e0813003 	add	r3, r1, r3
    132c:	e5832004 	str	r2, [r3, #4]
    1330:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
    1334:	e51b1010 	ldr	r1, [fp, #-16]
    1338:	e51b3008 	ldr	r3, [fp, #-8]
    133c:	e283300a 	add	r3, r3, #10
    1340:	e1a03103 	lsl	r3, r3, #2
    1344:	e0813003 	add	r3, r1, r3
    1348:	e5832004 	str	r2, [r3, #4]
    134c:	e51b3008 	ldr	r3, [fp, #-8]
    1350:	e2833001 	add	r3, r3, #1
    1354:	e50b3008 	str	r3, [fp, #-8]
    1358:	e51b3008 	ldr	r3, [fp, #-8]
    135c:	e3530009 	cmp	r3, #9
    1360:	da000001 	ble	136c <parseexec+0x100>
    1364:	e59f0084 	ldr	r0, [pc, #132]	@ 13f0 <parseexec+0x184>
    1368:	ebfffd77 	bl	94c <panic>
    136c:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
    1370:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
    1374:	e51b000c 	ldr	r0, [fp, #-12]
    1378:	ebffff3d 	bl	1074 <parseredirs>
    137c:	e50b000c 	str	r0, [fp, #-12]
    1380:	e59f206c 	ldr	r2, [pc, #108]	@ 13f4 <parseexec+0x188>
    1384:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
    1388:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
    138c:	ebfffe8b 	bl	dc0 <peek>
    1390:	e1a03000 	mov	r3, r0
    1394:	e3530000 	cmp	r3, #0
    1398:	0affffd0 	beq	12e0 <parseexec+0x74>
    139c:	ea000000 	b	13a4 <parseexec+0x138>
    13a0:	e1a00000 	nop			@ (mov r0, r0)
    13a4:	e51b2010 	ldr	r2, [fp, #-16]
    13a8:	e51b3008 	ldr	r3, [fp, #-8]
    13ac:	e1a03103 	lsl	r3, r3, #2
    13b0:	e0823003 	add	r3, r2, r3
    13b4:	e3a02000 	mov	r2, #0
    13b8:	e5832004 	str	r2, [r3, #4]
    13bc:	e51b2010 	ldr	r2, [fp, #-16]
    13c0:	e51b3008 	ldr	r3, [fp, #-8]
    13c4:	e283300a 	add	r3, r3, #10
    13c8:	e1a03103 	lsl	r3, r3, #2
    13cc:	e0823003 	add	r3, r2, r3
    13d0:	e3a02000 	mov	r2, #0
    13d4:	e5832004 	str	r2, [r3, #4]
    13d8:	e51b300c 	ldr	r3, [fp, #-12]
    13dc:	e1a00003 	mov	r0, r3
    13e0:	e24bd004 	sub	sp, fp, #4
    13e4:	e8bd8800 	pop	{fp, pc}
    13e8:	000026a4 	.word	0x000026a4
    13ec:	0000266c 	.word	0x0000266c
    13f0:	000026cc 	.word	0x000026cc
    13f4:	000026dc 	.word	0x000026dc

000013f8 <nulterminate>:
    13f8:	e92d4800 	push	{fp, lr}
    13fc:	e28db004 	add	fp, sp, #4
    1400:	e24dd020 	sub	sp, sp, #32
    1404:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
    1408:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    140c:	e3530000 	cmp	r3, #0
    1410:	1a000001 	bne	141c <nulterminate+0x24>
    1414:	e3a03000 	mov	r3, #0
    1418:	ea000048 	b	1540 <nulterminate+0x148>
    141c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    1420:	e5933000 	ldr	r3, [r3]
    1424:	e2432001 	sub	r2, r3, #1
    1428:	e59f311c 	ldr	r3, [pc, #284]	@ 154c <nulterminate+0x154>
    142c:	e3520004 	cmp	r2, #4
    1430:	8a000041 	bhi	153c <nulterminate+0x144>
    1434:	e793f102 	ldr	pc, [r3, r2, lsl #2]
    1438:	e1a00000 	nop			@ (mov r0, r0)
    143c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    1440:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    1444:	e3a03000 	mov	r3, #0
    1448:	e50b3008 	str	r3, [fp, #-8]
    144c:	ea00000a 	b	147c <nulterminate+0x84>
    1450:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
    1454:	e51b3008 	ldr	r3, [fp, #-8]
    1458:	e283300a 	add	r3, r3, #10
    145c:	e1a03103 	lsl	r3, r3, #2
    1460:	e0823003 	add	r3, r2, r3
    1464:	e5933004 	ldr	r3, [r3, #4]
    1468:	e3a02000 	mov	r2, #0
    146c:	e5c32000 	strb	r2, [r3]
    1470:	e51b3008 	ldr	r3, [fp, #-8]
    1474:	e2833001 	add	r3, r3, #1
    1478:	e50b3008 	str	r3, [fp, #-8]
    147c:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
    1480:	e51b3008 	ldr	r3, [fp, #-8]
    1484:	e1a03103 	lsl	r3, r3, #2
    1488:	e0823003 	add	r3, r2, r3
    148c:	e5933004 	ldr	r3, [r3, #4]
    1490:	e3530000 	cmp	r3, #0
    1494:	1affffed 	bne	1450 <nulterminate+0x58>
    1498:	ea000027 	b	153c <nulterminate+0x144>
    149c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    14a0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    14a4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    14a8:	e5933004 	ldr	r3, [r3, #4]
    14ac:	e1a00003 	mov	r0, r3
    14b0:	ebffffd0 	bl	13f8 <nulterminate>
    14b4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    14b8:	e593300c 	ldr	r3, [r3, #12]
    14bc:	e3a02000 	mov	r2, #0
    14c0:	e5c32000 	strb	r2, [r3]
    14c4:	ea00001c 	b	153c <nulterminate+0x144>
    14c8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    14cc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    14d0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    14d4:	e5933004 	ldr	r3, [r3, #4]
    14d8:	e1a00003 	mov	r0, r3
    14dc:	ebffffc5 	bl	13f8 <nulterminate>
    14e0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    14e4:	e5933008 	ldr	r3, [r3, #8]
    14e8:	e1a00003 	mov	r0, r3
    14ec:	ebffffc1 	bl	13f8 <nulterminate>
    14f0:	ea000011 	b	153c <nulterminate+0x144>
    14f4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    14f8:	e50b3010 	str	r3, [fp, #-16]
    14fc:	e51b3010 	ldr	r3, [fp, #-16]
    1500:	e5933004 	ldr	r3, [r3, #4]
    1504:	e1a00003 	mov	r0, r3
    1508:	ebffffba 	bl	13f8 <nulterminate>
    150c:	e51b3010 	ldr	r3, [fp, #-16]
    1510:	e5933008 	ldr	r3, [r3, #8]
    1514:	e1a00003 	mov	r0, r3
    1518:	ebffffb6 	bl	13f8 <nulterminate>
    151c:	ea000006 	b	153c <nulterminate+0x144>
    1520:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    1524:	e50b300c 	str	r3, [fp, #-12]
    1528:	e51b300c 	ldr	r3, [fp, #-12]
    152c:	e5933004 	ldr	r3, [r3, #4]
    1530:	e1a00003 	mov	r0, r3
    1534:	ebffffaf 	bl	13f8 <nulterminate>
    1538:	e1a00000 	nop			@ (mov r0, r0)
    153c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    1540:	e1a00003 	mov	r0, r3
    1544:	e24bd004 	sub	sp, fp, #4
    1548:	e8bd8800 	pop	{fp, pc}
    154c:	000026e4 	.word	0x000026e4

00001550 <strcpy>:
    1550:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1554:	e28db000 	add	fp, sp, #0
    1558:	e24dd014 	sub	sp, sp, #20
    155c:	e50b0010 	str	r0, [fp, #-16]
    1560:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
    1564:	e51b3010 	ldr	r3, [fp, #-16]
    1568:	e50b3008 	str	r3, [fp, #-8]
    156c:	e1a00000 	nop			@ (mov r0, r0)
    1570:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
    1574:	e2823001 	add	r3, r2, #1
    1578:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    157c:	e51b3010 	ldr	r3, [fp, #-16]
    1580:	e2831001 	add	r1, r3, #1
    1584:	e50b1010 	str	r1, [fp, #-16]
    1588:	e5d22000 	ldrb	r2, [r2]
    158c:	e5c32000 	strb	r2, [r3]
    1590:	e5d33000 	ldrb	r3, [r3]
    1594:	e3530000 	cmp	r3, #0
    1598:	1afffff4 	bne	1570 <strcpy+0x20>
    159c:	e51b3008 	ldr	r3, [fp, #-8]
    15a0:	e1a00003 	mov	r0, r3
    15a4:	e28bd000 	add	sp, fp, #0
    15a8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    15ac:	e12fff1e 	bx	lr

000015b0 <strcmp>:
    15b0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    15b4:	e28db000 	add	fp, sp, #0
    15b8:	e24dd00c 	sub	sp, sp, #12
    15bc:	e50b0008 	str	r0, [fp, #-8]
    15c0:	e50b100c 	str	r1, [fp, #-12]
    15c4:	ea000005 	b	15e0 <strcmp+0x30>
    15c8:	e51b3008 	ldr	r3, [fp, #-8]
    15cc:	e2833001 	add	r3, r3, #1
    15d0:	e50b3008 	str	r3, [fp, #-8]
    15d4:	e51b300c 	ldr	r3, [fp, #-12]
    15d8:	e2833001 	add	r3, r3, #1
    15dc:	e50b300c 	str	r3, [fp, #-12]
    15e0:	e51b3008 	ldr	r3, [fp, #-8]
    15e4:	e5d33000 	ldrb	r3, [r3]
    15e8:	e3530000 	cmp	r3, #0
    15ec:	0a000005 	beq	1608 <strcmp+0x58>
    15f0:	e51b3008 	ldr	r3, [fp, #-8]
    15f4:	e5d32000 	ldrb	r2, [r3]
    15f8:	e51b300c 	ldr	r3, [fp, #-12]
    15fc:	e5d33000 	ldrb	r3, [r3]
    1600:	e1520003 	cmp	r2, r3
    1604:	0affffef 	beq	15c8 <strcmp+0x18>
    1608:	e51b3008 	ldr	r3, [fp, #-8]
    160c:	e5d33000 	ldrb	r3, [r3]
    1610:	e1a02003 	mov	r2, r3
    1614:	e51b300c 	ldr	r3, [fp, #-12]
    1618:	e5d33000 	ldrb	r3, [r3]
    161c:	e0423003 	sub	r3, r2, r3
    1620:	e1a00003 	mov	r0, r3
    1624:	e28bd000 	add	sp, fp, #0
    1628:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    162c:	e12fff1e 	bx	lr

00001630 <strlen>:
    1630:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1634:	e28db000 	add	fp, sp, #0
    1638:	e24dd014 	sub	sp, sp, #20
    163c:	e50b0010 	str	r0, [fp, #-16]
    1640:	e3a03000 	mov	r3, #0
    1644:	e50b3008 	str	r3, [fp, #-8]
    1648:	ea000002 	b	1658 <strlen+0x28>
    164c:	e51b3008 	ldr	r3, [fp, #-8]
    1650:	e2833001 	add	r3, r3, #1
    1654:	e50b3008 	str	r3, [fp, #-8]
    1658:	e51b3008 	ldr	r3, [fp, #-8]
    165c:	e51b2010 	ldr	r2, [fp, #-16]
    1660:	e0823003 	add	r3, r2, r3
    1664:	e5d33000 	ldrb	r3, [r3]
    1668:	e3530000 	cmp	r3, #0
    166c:	1afffff6 	bne	164c <strlen+0x1c>
    1670:	e51b3008 	ldr	r3, [fp, #-8]
    1674:	e1a00003 	mov	r0, r3
    1678:	e28bd000 	add	sp, fp, #0
    167c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1680:	e12fff1e 	bx	lr

00001684 <memset>:
    1684:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1688:	e28db000 	add	fp, sp, #0
    168c:	e24dd024 	sub	sp, sp, #36	@ 0x24
    1690:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1694:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
    1698:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
    169c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    16a0:	e50b3008 	str	r3, [fp, #-8]
    16a4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    16a8:	e54b300d 	strb	r3, [fp, #-13]
    16ac:	e55b200d 	ldrb	r2, [fp, #-13]
    16b0:	e1a03002 	mov	r3, r2
    16b4:	e1a03403 	lsl	r3, r3, #8
    16b8:	e0833002 	add	r3, r3, r2
    16bc:	e1a03803 	lsl	r3, r3, #16
    16c0:	e1a02003 	mov	r2, r3
    16c4:	e55b300d 	ldrb	r3, [fp, #-13]
    16c8:	e1a03403 	lsl	r3, r3, #8
    16cc:	e1822003 	orr	r2, r2, r3
    16d0:	e55b300d 	ldrb	r3, [fp, #-13]
    16d4:	e1823003 	orr	r3, r2, r3
    16d8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    16dc:	ea000008 	b	1704 <memset+0x80>
    16e0:	e51b3008 	ldr	r3, [fp, #-8]
    16e4:	e55b200d 	ldrb	r2, [fp, #-13]
    16e8:	e5c32000 	strb	r2, [r3]
    16ec:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    16f0:	e2433001 	sub	r3, r3, #1
    16f4:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
    16f8:	e51b3008 	ldr	r3, [fp, #-8]
    16fc:	e2833001 	add	r3, r3, #1
    1700:	e50b3008 	str	r3, [fp, #-8]
    1704:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    1708:	e3530000 	cmp	r3, #0
    170c:	0a000003 	beq	1720 <memset+0x9c>
    1710:	e51b3008 	ldr	r3, [fp, #-8]
    1714:	e2033003 	and	r3, r3, #3
    1718:	e3530000 	cmp	r3, #0
    171c:	1affffef 	bne	16e0 <memset+0x5c>
    1720:	e51b3008 	ldr	r3, [fp, #-8]
    1724:	e50b300c 	str	r3, [fp, #-12]
    1728:	ea000008 	b	1750 <memset+0xcc>
    172c:	e51b300c 	ldr	r3, [fp, #-12]
    1730:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
    1734:	e5832000 	str	r2, [r3]
    1738:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    173c:	e2433004 	sub	r3, r3, #4
    1740:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
    1744:	e51b300c 	ldr	r3, [fp, #-12]
    1748:	e2833004 	add	r3, r3, #4
    174c:	e50b300c 	str	r3, [fp, #-12]
    1750:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    1754:	e3530003 	cmp	r3, #3
    1758:	8afffff3 	bhi	172c <memset+0xa8>
    175c:	e51b300c 	ldr	r3, [fp, #-12]
    1760:	e50b3008 	str	r3, [fp, #-8]
    1764:	ea000008 	b	178c <memset+0x108>
    1768:	e51b3008 	ldr	r3, [fp, #-8]
    176c:	e55b200d 	ldrb	r2, [fp, #-13]
    1770:	e5c32000 	strb	r2, [r3]
    1774:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    1778:	e2433001 	sub	r3, r3, #1
    177c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
    1780:	e51b3008 	ldr	r3, [fp, #-8]
    1784:	e2833001 	add	r3, r3, #1
    1788:	e50b3008 	str	r3, [fp, #-8]
    178c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    1790:	e3530000 	cmp	r3, #0
    1794:	1afffff3 	bne	1768 <memset+0xe4>
    1798:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    179c:	e1a00003 	mov	r0, r3
    17a0:	e28bd000 	add	sp, fp, #0
    17a4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    17a8:	e12fff1e 	bx	lr

000017ac <strchr>:
    17ac:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    17b0:	e28db000 	add	fp, sp, #0
    17b4:	e24dd00c 	sub	sp, sp, #12
    17b8:	e50b0008 	str	r0, [fp, #-8]
    17bc:	e1a03001 	mov	r3, r1
    17c0:	e54b3009 	strb	r3, [fp, #-9]
    17c4:	ea000009 	b	17f0 <strchr+0x44>
    17c8:	e51b3008 	ldr	r3, [fp, #-8]
    17cc:	e5d33000 	ldrb	r3, [r3]
    17d0:	e55b2009 	ldrb	r2, [fp, #-9]
    17d4:	e1520003 	cmp	r2, r3
    17d8:	1a000001 	bne	17e4 <strchr+0x38>
    17dc:	e51b3008 	ldr	r3, [fp, #-8]
    17e0:	ea000007 	b	1804 <strchr+0x58>
    17e4:	e51b3008 	ldr	r3, [fp, #-8]
    17e8:	e2833001 	add	r3, r3, #1
    17ec:	e50b3008 	str	r3, [fp, #-8]
    17f0:	e51b3008 	ldr	r3, [fp, #-8]
    17f4:	e5d33000 	ldrb	r3, [r3]
    17f8:	e3530000 	cmp	r3, #0
    17fc:	1afffff1 	bne	17c8 <strchr+0x1c>
    1800:	e3a03000 	mov	r3, #0
    1804:	e1a00003 	mov	r0, r3
    1808:	e28bd000 	add	sp, fp, #0
    180c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1810:	e12fff1e 	bx	lr

00001814 <gets>:
    1814:	e92d4800 	push	{fp, lr}
    1818:	e28db004 	add	fp, sp, #4
    181c:	e24dd018 	sub	sp, sp, #24
    1820:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1824:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
    1828:	e3a03000 	mov	r3, #0
    182c:	e50b3008 	str	r3, [fp, #-8]
    1830:	ea000016 	b	1890 <gets+0x7c>
    1834:	e24b300d 	sub	r3, fp, #13
    1838:	e3a02001 	mov	r2, #1
    183c:	e1a01003 	mov	r1, r3
    1840:	e3a00000 	mov	r0, #0
    1844:	eb00009b 	bl	1ab8 <read>
    1848:	e50b000c 	str	r0, [fp, #-12]
    184c:	e51b300c 	ldr	r3, [fp, #-12]
    1850:	e3530000 	cmp	r3, #0
    1854:	da000013 	ble	18a8 <gets+0x94>
    1858:	e51b3008 	ldr	r3, [fp, #-8]
    185c:	e2832001 	add	r2, r3, #1
    1860:	e50b2008 	str	r2, [fp, #-8]
    1864:	e1a02003 	mov	r2, r3
    1868:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    186c:	e0833002 	add	r3, r3, r2
    1870:	e55b200d 	ldrb	r2, [fp, #-13]
    1874:	e5c32000 	strb	r2, [r3]
    1878:	e55b300d 	ldrb	r3, [fp, #-13]
    187c:	e353000a 	cmp	r3, #10
    1880:	0a000009 	beq	18ac <gets+0x98>
    1884:	e55b300d 	ldrb	r3, [fp, #-13]
    1888:	e353000d 	cmp	r3, #13
    188c:	0a000006 	beq	18ac <gets+0x98>
    1890:	e51b3008 	ldr	r3, [fp, #-8]
    1894:	e2833001 	add	r3, r3, #1
    1898:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
    189c:	e1520003 	cmp	r2, r3
    18a0:	caffffe3 	bgt	1834 <gets+0x20>
    18a4:	ea000000 	b	18ac <gets+0x98>
    18a8:	e1a00000 	nop			@ (mov r0, r0)
    18ac:	e51b3008 	ldr	r3, [fp, #-8]
    18b0:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
    18b4:	e0823003 	add	r3, r2, r3
    18b8:	e3a02000 	mov	r2, #0
    18bc:	e5c32000 	strb	r2, [r3]
    18c0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    18c4:	e1a00003 	mov	r0, r3
    18c8:	e24bd004 	sub	sp, fp, #4
    18cc:	e8bd8800 	pop	{fp, pc}

000018d0 <stat>:
    18d0:	e92d4800 	push	{fp, lr}
    18d4:	e28db004 	add	fp, sp, #4
    18d8:	e24dd010 	sub	sp, sp, #16
    18dc:	e50b0010 	str	r0, [fp, #-16]
    18e0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
    18e4:	e3a01000 	mov	r1, #0
    18e8:	e51b0010 	ldr	r0, [fp, #-16]
    18ec:	eb00009e 	bl	1b6c <open>
    18f0:	e50b0008 	str	r0, [fp, #-8]
    18f4:	e51b3008 	ldr	r3, [fp, #-8]
    18f8:	e3530000 	cmp	r3, #0
    18fc:	aa000001 	bge	1908 <stat+0x38>
    1900:	e3e03000 	mvn	r3, #0
    1904:	ea000006 	b	1924 <stat+0x54>
    1908:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
    190c:	e51b0008 	ldr	r0, [fp, #-8]
    1910:	eb0000b0 	bl	1bd8 <fstat>
    1914:	e50b000c 	str	r0, [fp, #-12]
    1918:	e51b0008 	ldr	r0, [fp, #-8]
    191c:	eb000077 	bl	1b00 <close>
    1920:	e51b300c 	ldr	r3, [fp, #-12]
    1924:	e1a00003 	mov	r0, r3
    1928:	e24bd004 	sub	sp, fp, #4
    192c:	e8bd8800 	pop	{fp, pc}

00001930 <atoi>:
    1930:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1934:	e28db000 	add	fp, sp, #0
    1938:	e24dd014 	sub	sp, sp, #20
    193c:	e50b0010 	str	r0, [fp, #-16]
    1940:	e3a03000 	mov	r3, #0
    1944:	e50b3008 	str	r3, [fp, #-8]
    1948:	ea00000c 	b	1980 <atoi+0x50>
    194c:	e51b2008 	ldr	r2, [fp, #-8]
    1950:	e1a03002 	mov	r3, r2
    1954:	e1a03103 	lsl	r3, r3, #2
    1958:	e0833002 	add	r3, r3, r2
    195c:	e1a03083 	lsl	r3, r3, #1
    1960:	e1a01003 	mov	r1, r3
    1964:	e51b3010 	ldr	r3, [fp, #-16]
    1968:	e2832001 	add	r2, r3, #1
    196c:	e50b2010 	str	r2, [fp, #-16]
    1970:	e5d33000 	ldrb	r3, [r3]
    1974:	e0813003 	add	r3, r1, r3
    1978:	e2433030 	sub	r3, r3, #48	@ 0x30
    197c:	e50b3008 	str	r3, [fp, #-8]
    1980:	e51b3010 	ldr	r3, [fp, #-16]
    1984:	e5d33000 	ldrb	r3, [r3]
    1988:	e353002f 	cmp	r3, #47	@ 0x2f
    198c:	9a000003 	bls	19a0 <atoi+0x70>
    1990:	e51b3010 	ldr	r3, [fp, #-16]
    1994:	e5d33000 	ldrb	r3, [r3]
    1998:	e3530039 	cmp	r3, #57	@ 0x39
    199c:	9affffea 	bls	194c <atoi+0x1c>
    19a0:	e51b3008 	ldr	r3, [fp, #-8]
    19a4:	e1a00003 	mov	r0, r3
    19a8:	e28bd000 	add	sp, fp, #0
    19ac:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    19b0:	e12fff1e 	bx	lr

000019b4 <memmove>:
    19b4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    19b8:	e28db000 	add	fp, sp, #0
    19bc:	e24dd01c 	sub	sp, sp, #28
    19c0:	e50b0010 	str	r0, [fp, #-16]
    19c4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
    19c8:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
    19cc:	e51b3010 	ldr	r3, [fp, #-16]
    19d0:	e50b3008 	str	r3, [fp, #-8]
    19d4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    19d8:	e50b300c 	str	r3, [fp, #-12]
    19dc:	ea000007 	b	1a00 <memmove+0x4c>
    19e0:	e51b200c 	ldr	r2, [fp, #-12]
    19e4:	e2823001 	add	r3, r2, #1
    19e8:	e50b300c 	str	r3, [fp, #-12]
    19ec:	e51b3008 	ldr	r3, [fp, #-8]
    19f0:	e2831001 	add	r1, r3, #1
    19f4:	e50b1008 	str	r1, [fp, #-8]
    19f8:	e5d22000 	ldrb	r2, [r2]
    19fc:	e5c32000 	strb	r2, [r3]
    1a00:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1a04:	e2432001 	sub	r2, r3, #1
    1a08:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
    1a0c:	e3530000 	cmp	r3, #0
    1a10:	cafffff2 	bgt	19e0 <memmove+0x2c>
    1a14:	e51b3010 	ldr	r3, [fp, #-16]
    1a18:	e1a00003 	mov	r0, r3
    1a1c:	e28bd000 	add	sp, fp, #0
    1a20:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1a24:	e12fff1e 	bx	lr

00001a28 <fork>:
    1a28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1a2c:	e1a04003 	mov	r4, r3
    1a30:	e1a03002 	mov	r3, r2
    1a34:	e1a02001 	mov	r2, r1
    1a38:	e1a01000 	mov	r1, r0
    1a3c:	e3a00001 	mov	r0, #1
    1a40:	ef000000 	svc	0x00000000
    1a44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1a48:	e12fff1e 	bx	lr

00001a4c <exit>:
    1a4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1a50:	e1a04003 	mov	r4, r3
    1a54:	e1a03002 	mov	r3, r2
    1a58:	e1a02001 	mov	r2, r1
    1a5c:	e1a01000 	mov	r1, r0
    1a60:	e3a00002 	mov	r0, #2
    1a64:	ef000000 	svc	0x00000000
    1a68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1a6c:	e12fff1e 	bx	lr

00001a70 <wait>:
    1a70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1a74:	e1a04003 	mov	r4, r3
    1a78:	e1a03002 	mov	r3, r2
    1a7c:	e1a02001 	mov	r2, r1
    1a80:	e1a01000 	mov	r1, r0
    1a84:	e3a00003 	mov	r0, #3
    1a88:	ef000000 	svc	0x00000000
    1a8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1a90:	e12fff1e 	bx	lr

00001a94 <pipe>:
    1a94:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1a98:	e1a04003 	mov	r4, r3
    1a9c:	e1a03002 	mov	r3, r2
    1aa0:	e1a02001 	mov	r2, r1
    1aa4:	e1a01000 	mov	r1, r0
    1aa8:	e3a00004 	mov	r0, #4
    1aac:	ef000000 	svc	0x00000000
    1ab0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1ab4:	e12fff1e 	bx	lr

00001ab8 <read>:
    1ab8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1abc:	e1a04003 	mov	r4, r3
    1ac0:	e1a03002 	mov	r3, r2
    1ac4:	e1a02001 	mov	r2, r1
    1ac8:	e1a01000 	mov	r1, r0
    1acc:	e3a00005 	mov	r0, #5
    1ad0:	ef000000 	svc	0x00000000
    1ad4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1ad8:	e12fff1e 	bx	lr

00001adc <write>:
    1adc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1ae0:	e1a04003 	mov	r4, r3
    1ae4:	e1a03002 	mov	r3, r2
    1ae8:	e1a02001 	mov	r2, r1
    1aec:	e1a01000 	mov	r1, r0
    1af0:	e3a00010 	mov	r0, #16
    1af4:	ef000000 	svc	0x00000000
    1af8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1afc:	e12fff1e 	bx	lr

00001b00 <close>:
    1b00:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1b04:	e1a04003 	mov	r4, r3
    1b08:	e1a03002 	mov	r3, r2
    1b0c:	e1a02001 	mov	r2, r1
    1b10:	e1a01000 	mov	r1, r0
    1b14:	e3a00015 	mov	r0, #21
    1b18:	ef000000 	svc	0x00000000
    1b1c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1b20:	e12fff1e 	bx	lr

00001b24 <kill>:
    1b24:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1b28:	e1a04003 	mov	r4, r3
    1b2c:	e1a03002 	mov	r3, r2
    1b30:	e1a02001 	mov	r2, r1
    1b34:	e1a01000 	mov	r1, r0
    1b38:	e3a00006 	mov	r0, #6
    1b3c:	ef000000 	svc	0x00000000
    1b40:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1b44:	e12fff1e 	bx	lr

00001b48 <exec>:
    1b48:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1b4c:	e1a04003 	mov	r4, r3
    1b50:	e1a03002 	mov	r3, r2
    1b54:	e1a02001 	mov	r2, r1
    1b58:	e1a01000 	mov	r1, r0
    1b5c:	e3a00007 	mov	r0, #7
    1b60:	ef000000 	svc	0x00000000
    1b64:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1b68:	e12fff1e 	bx	lr

00001b6c <open>:
    1b6c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1b70:	e1a04003 	mov	r4, r3
    1b74:	e1a03002 	mov	r3, r2
    1b78:	e1a02001 	mov	r2, r1
    1b7c:	e1a01000 	mov	r1, r0
    1b80:	e3a0000f 	mov	r0, #15
    1b84:	ef000000 	svc	0x00000000
    1b88:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1b8c:	e12fff1e 	bx	lr

00001b90 <mknod>:
    1b90:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1b94:	e1a04003 	mov	r4, r3
    1b98:	e1a03002 	mov	r3, r2
    1b9c:	e1a02001 	mov	r2, r1
    1ba0:	e1a01000 	mov	r1, r0
    1ba4:	e3a00011 	mov	r0, #17
    1ba8:	ef000000 	svc	0x00000000
    1bac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1bb0:	e12fff1e 	bx	lr

00001bb4 <unlink>:
    1bb4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1bb8:	e1a04003 	mov	r4, r3
    1bbc:	e1a03002 	mov	r3, r2
    1bc0:	e1a02001 	mov	r2, r1
    1bc4:	e1a01000 	mov	r1, r0
    1bc8:	e3a00012 	mov	r0, #18
    1bcc:	ef000000 	svc	0x00000000
    1bd0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1bd4:	e12fff1e 	bx	lr

00001bd8 <fstat>:
    1bd8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1bdc:	e1a04003 	mov	r4, r3
    1be0:	e1a03002 	mov	r3, r2
    1be4:	e1a02001 	mov	r2, r1
    1be8:	e1a01000 	mov	r1, r0
    1bec:	e3a00008 	mov	r0, #8
    1bf0:	ef000000 	svc	0x00000000
    1bf4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1bf8:	e12fff1e 	bx	lr

00001bfc <link>:
    1bfc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1c00:	e1a04003 	mov	r4, r3
    1c04:	e1a03002 	mov	r3, r2
    1c08:	e1a02001 	mov	r2, r1
    1c0c:	e1a01000 	mov	r1, r0
    1c10:	e3a00013 	mov	r0, #19
    1c14:	ef000000 	svc	0x00000000
    1c18:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1c1c:	e12fff1e 	bx	lr

00001c20 <mkdir>:
    1c20:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1c24:	e1a04003 	mov	r4, r3
    1c28:	e1a03002 	mov	r3, r2
    1c2c:	e1a02001 	mov	r2, r1
    1c30:	e1a01000 	mov	r1, r0
    1c34:	e3a00014 	mov	r0, #20
    1c38:	ef000000 	svc	0x00000000
    1c3c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1c40:	e12fff1e 	bx	lr

00001c44 <chdir>:
    1c44:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1c48:	e1a04003 	mov	r4, r3
    1c4c:	e1a03002 	mov	r3, r2
    1c50:	e1a02001 	mov	r2, r1
    1c54:	e1a01000 	mov	r1, r0
    1c58:	e3a00009 	mov	r0, #9
    1c5c:	ef000000 	svc	0x00000000
    1c60:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1c64:	e12fff1e 	bx	lr

00001c68 <dup>:
    1c68:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1c6c:	e1a04003 	mov	r4, r3
    1c70:	e1a03002 	mov	r3, r2
    1c74:	e1a02001 	mov	r2, r1
    1c78:	e1a01000 	mov	r1, r0
    1c7c:	e3a0000a 	mov	r0, #10
    1c80:	ef000000 	svc	0x00000000
    1c84:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1c88:	e12fff1e 	bx	lr

00001c8c <getpid>:
    1c8c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1c90:	e1a04003 	mov	r4, r3
    1c94:	e1a03002 	mov	r3, r2
    1c98:	e1a02001 	mov	r2, r1
    1c9c:	e1a01000 	mov	r1, r0
    1ca0:	e3a0000b 	mov	r0, #11
    1ca4:	ef000000 	svc	0x00000000
    1ca8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1cac:	e12fff1e 	bx	lr

00001cb0 <sbrk>:
    1cb0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1cb4:	e1a04003 	mov	r4, r3
    1cb8:	e1a03002 	mov	r3, r2
    1cbc:	e1a02001 	mov	r2, r1
    1cc0:	e1a01000 	mov	r1, r0
    1cc4:	e3a0000c 	mov	r0, #12
    1cc8:	ef000000 	svc	0x00000000
    1ccc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1cd0:	e12fff1e 	bx	lr

00001cd4 <sleep>:
    1cd4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1cd8:	e1a04003 	mov	r4, r3
    1cdc:	e1a03002 	mov	r3, r2
    1ce0:	e1a02001 	mov	r2, r1
    1ce4:	e1a01000 	mov	r1, r0
    1ce8:	e3a0000d 	mov	r0, #13
    1cec:	ef000000 	svc	0x00000000
    1cf0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1cf4:	e12fff1e 	bx	lr

00001cf8 <uptime>:
    1cf8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1cfc:	e1a04003 	mov	r4, r3
    1d00:	e1a03002 	mov	r3, r2
    1d04:	e1a02001 	mov	r2, r1
    1d08:	e1a01000 	mov	r1, r0
    1d0c:	e3a0000e 	mov	r0, #14
    1d10:	ef000000 	svc	0x00000000
    1d14:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1d18:	e12fff1e 	bx	lr

00001d1c <getprocs>:
    1d1c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1d20:	e1a04003 	mov	r4, r3
    1d24:	e1a03002 	mov	r3, r2
    1d28:	e1a02001 	mov	r2, r1
    1d2c:	e1a01000 	mov	r1, r0
    1d30:	e3a00016 	mov	r0, #22
    1d34:	ef000000 	svc	0x00000000
    1d38:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1d3c:	e12fff1e 	bx	lr

00001d40 <putc>:
    1d40:	e92d4800 	push	{fp, lr}
    1d44:	e28db004 	add	fp, sp, #4
    1d48:	e24dd008 	sub	sp, sp, #8
    1d4c:	e50b0008 	str	r0, [fp, #-8]
    1d50:	e1a03001 	mov	r3, r1
    1d54:	e54b3009 	strb	r3, [fp, #-9]
    1d58:	e24b3009 	sub	r3, fp, #9
    1d5c:	e3a02001 	mov	r2, #1
    1d60:	e1a01003 	mov	r1, r3
    1d64:	e51b0008 	ldr	r0, [fp, #-8]
    1d68:	ebffff5b 	bl	1adc <write>
    1d6c:	e1a00000 	nop			@ (mov r0, r0)
    1d70:	e24bd004 	sub	sp, fp, #4
    1d74:	e8bd8800 	pop	{fp, pc}

00001d78 <printint>:
    1d78:	e92d4800 	push	{fp, lr}
    1d7c:	e28db004 	add	fp, sp, #4
    1d80:	e24dd030 	sub	sp, sp, #48	@ 0x30
    1d84:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    1d88:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
    1d8c:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
    1d90:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
    1d94:	e3a03000 	mov	r3, #0
    1d98:	e50b300c 	str	r3, [fp, #-12]
    1d9c:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    1da0:	e3530000 	cmp	r3, #0
    1da4:	0a000008 	beq	1dcc <printint+0x54>
    1da8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1dac:	e3530000 	cmp	r3, #0
    1db0:	aa000005 	bge	1dcc <printint+0x54>
    1db4:	e3a03001 	mov	r3, #1
    1db8:	e50b300c 	str	r3, [fp, #-12]
    1dbc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1dc0:	e2633000 	rsb	r3, r3, #0
    1dc4:	e50b3010 	str	r3, [fp, #-16]
    1dc8:	ea000001 	b	1dd4 <printint+0x5c>
    1dcc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1dd0:	e50b3010 	str	r3, [fp, #-16]
    1dd4:	e3a03000 	mov	r3, #0
    1dd8:	e50b3008 	str	r3, [fp, #-8]
    1ddc:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    1de0:	e51b3010 	ldr	r3, [fp, #-16]
    1de4:	e1a01002 	mov	r1, r2
    1de8:	e1a00003 	mov	r0, r3
    1dec:	eb0001d5 	bl	2548 <__aeabi_uidivmod>
    1df0:	e1a03001 	mov	r3, r1
    1df4:	e1a01003 	mov	r1, r3
    1df8:	e51b3008 	ldr	r3, [fp, #-8]
    1dfc:	e2832001 	add	r2, r3, #1
    1e00:	e50b2008 	str	r2, [fp, #-8]
    1e04:	e59f20a0 	ldr	r2, [pc, #160]	@ 1eac <printint+0x134>
    1e08:	e7d22001 	ldrb	r2, [r2, r1]
    1e0c:	e2433004 	sub	r3, r3, #4
    1e10:	e083300b 	add	r3, r3, fp
    1e14:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1e18:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    1e1c:	e1a01003 	mov	r1, r3
    1e20:	e51b0010 	ldr	r0, [fp, #-16]
    1e24:	eb00018a 	bl	2454 <__udivsi3>
    1e28:	e1a03000 	mov	r3, r0
    1e2c:	e50b3010 	str	r3, [fp, #-16]
    1e30:	e51b3010 	ldr	r3, [fp, #-16]
    1e34:	e3530000 	cmp	r3, #0
    1e38:	1affffe7 	bne	1ddc <printint+0x64>
    1e3c:	e51b300c 	ldr	r3, [fp, #-12]
    1e40:	e3530000 	cmp	r3, #0
    1e44:	0a00000e 	beq	1e84 <printint+0x10c>
    1e48:	e51b3008 	ldr	r3, [fp, #-8]
    1e4c:	e2832001 	add	r2, r3, #1
    1e50:	e50b2008 	str	r2, [fp, #-8]
    1e54:	e2433004 	sub	r3, r3, #4
    1e58:	e083300b 	add	r3, r3, fp
    1e5c:	e3a0202d 	mov	r2, #45	@ 0x2d
    1e60:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1e64:	ea000006 	b	1e84 <printint+0x10c>
    1e68:	e24b2020 	sub	r2, fp, #32
    1e6c:	e51b3008 	ldr	r3, [fp, #-8]
    1e70:	e0823003 	add	r3, r2, r3
    1e74:	e5d33000 	ldrb	r3, [r3]
    1e78:	e1a01003 	mov	r1, r3
    1e7c:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    1e80:	ebffffae 	bl	1d40 <putc>
    1e84:	e51b3008 	ldr	r3, [fp, #-8]
    1e88:	e2433001 	sub	r3, r3, #1
    1e8c:	e50b3008 	str	r3, [fp, #-8]
    1e90:	e51b3008 	ldr	r3, [fp, #-8]
    1e94:	e3530000 	cmp	r3, #0
    1e98:	aafffff2 	bge	1e68 <printint+0xf0>
    1e9c:	e1a00000 	nop			@ (mov r0, r0)
    1ea0:	e1a00000 	nop			@ (mov r0, r0)
    1ea4:	e24bd004 	sub	sp, fp, #4
    1ea8:	e8bd8800 	pop	{fp, pc}
    1eac:	00002714 	.word	0x00002714

00001eb0 <printf>:
    1eb0:	e92d000e 	push	{r1, r2, r3}
    1eb4:	e92d4800 	push	{fp, lr}
    1eb8:	e28db004 	add	fp, sp, #4
    1ebc:	e24dd024 	sub	sp, sp, #36	@ 0x24
    1ec0:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    1ec4:	e3a03000 	mov	r3, #0
    1ec8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1ecc:	e28b3008 	add	r3, fp, #8
    1ed0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1ed4:	e3a03000 	mov	r3, #0
    1ed8:	e50b3010 	str	r3, [fp, #-16]
    1edc:	ea000074 	b	20b4 <printf+0x204>
    1ee0:	e59b2004 	ldr	r2, [fp, #4]
    1ee4:	e51b3010 	ldr	r3, [fp, #-16]
    1ee8:	e0823003 	add	r3, r2, r3
    1eec:	e5d33000 	ldrb	r3, [r3]
    1ef0:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    1ef4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1ef8:	e3530000 	cmp	r3, #0
    1efc:	1a00000b 	bne	1f30 <printf+0x80>
    1f00:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1f04:	e3530025 	cmp	r3, #37	@ 0x25
    1f08:	1a000002 	bne	1f18 <printf+0x68>
    1f0c:	e3a03025 	mov	r3, #37	@ 0x25
    1f10:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1f14:	ea000063 	b	20a8 <printf+0x1f8>
    1f18:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1f1c:	e6ef3073 	uxtb	r3, r3
    1f20:	e1a01003 	mov	r1, r3
    1f24:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1f28:	ebffff84 	bl	1d40 <putc>
    1f2c:	ea00005d 	b	20a8 <printf+0x1f8>
    1f30:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1f34:	e3530025 	cmp	r3, #37	@ 0x25
    1f38:	1a00005a 	bne	20a8 <printf+0x1f8>
    1f3c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1f40:	e3530064 	cmp	r3, #100	@ 0x64
    1f44:	1a00000a 	bne	1f74 <printf+0xc4>
    1f48:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1f4c:	e5933000 	ldr	r3, [r3]
    1f50:	e1a01003 	mov	r1, r3
    1f54:	e3a03001 	mov	r3, #1
    1f58:	e3a0200a 	mov	r2, #10
    1f5c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1f60:	ebffff84 	bl	1d78 <printint>
    1f64:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1f68:	e2833004 	add	r3, r3, #4
    1f6c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1f70:	ea00004a 	b	20a0 <printf+0x1f0>
    1f74:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1f78:	e3530078 	cmp	r3, #120	@ 0x78
    1f7c:	0a000002 	beq	1f8c <printf+0xdc>
    1f80:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1f84:	e3530070 	cmp	r3, #112	@ 0x70
    1f88:	1a00000a 	bne	1fb8 <printf+0x108>
    1f8c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1f90:	e5933000 	ldr	r3, [r3]
    1f94:	e1a01003 	mov	r1, r3
    1f98:	e3a03000 	mov	r3, #0
    1f9c:	e3a02010 	mov	r2, #16
    1fa0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1fa4:	ebffff73 	bl	1d78 <printint>
    1fa8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1fac:	e2833004 	add	r3, r3, #4
    1fb0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1fb4:	ea000039 	b	20a0 <printf+0x1f0>
    1fb8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1fbc:	e3530073 	cmp	r3, #115	@ 0x73
    1fc0:	1a000018 	bne	2028 <printf+0x178>
    1fc4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1fc8:	e5933000 	ldr	r3, [r3]
    1fcc:	e50b300c 	str	r3, [fp, #-12]
    1fd0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1fd4:	e2833004 	add	r3, r3, #4
    1fd8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1fdc:	e51b300c 	ldr	r3, [fp, #-12]
    1fe0:	e3530000 	cmp	r3, #0
    1fe4:	1a00000a 	bne	2014 <printf+0x164>
    1fe8:	e59f30f4 	ldr	r3, [pc, #244]	@ 20e4 <printf+0x234>
    1fec:	e50b300c 	str	r3, [fp, #-12]
    1ff0:	ea000007 	b	2014 <printf+0x164>
    1ff4:	e51b300c 	ldr	r3, [fp, #-12]
    1ff8:	e5d33000 	ldrb	r3, [r3]
    1ffc:	e1a01003 	mov	r1, r3
    2000:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    2004:	ebffff4d 	bl	1d40 <putc>
    2008:	e51b300c 	ldr	r3, [fp, #-12]
    200c:	e2833001 	add	r3, r3, #1
    2010:	e50b300c 	str	r3, [fp, #-12]
    2014:	e51b300c 	ldr	r3, [fp, #-12]
    2018:	e5d33000 	ldrb	r3, [r3]
    201c:	e3530000 	cmp	r3, #0
    2020:	1afffff3 	bne	1ff4 <printf+0x144>
    2024:	ea00001d 	b	20a0 <printf+0x1f0>
    2028:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    202c:	e3530063 	cmp	r3, #99	@ 0x63
    2030:	1a000009 	bne	205c <printf+0x1ac>
    2034:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    2038:	e5933000 	ldr	r3, [r3]
    203c:	e6ef3073 	uxtb	r3, r3
    2040:	e1a01003 	mov	r1, r3
    2044:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    2048:	ebffff3c 	bl	1d40 <putc>
    204c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    2050:	e2833004 	add	r3, r3, #4
    2054:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    2058:	ea000010 	b	20a0 <printf+0x1f0>
    205c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    2060:	e3530025 	cmp	r3, #37	@ 0x25
    2064:	1a000005 	bne	2080 <printf+0x1d0>
    2068:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    206c:	e6ef3073 	uxtb	r3, r3
    2070:	e1a01003 	mov	r1, r3
    2074:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    2078:	ebffff30 	bl	1d40 <putc>
    207c:	ea000007 	b	20a0 <printf+0x1f0>
    2080:	e3a01025 	mov	r1, #37	@ 0x25
    2084:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    2088:	ebffff2c 	bl	1d40 <putc>
    208c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    2090:	e6ef3073 	uxtb	r3, r3
    2094:	e1a01003 	mov	r1, r3
    2098:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    209c:	ebffff27 	bl	1d40 <putc>
    20a0:	e3a03000 	mov	r3, #0
    20a4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    20a8:	e51b3010 	ldr	r3, [fp, #-16]
    20ac:	e2833001 	add	r3, r3, #1
    20b0:	e50b3010 	str	r3, [fp, #-16]
    20b4:	e59b2004 	ldr	r2, [fp, #4]
    20b8:	e51b3010 	ldr	r3, [fp, #-16]
    20bc:	e0823003 	add	r3, r2, r3
    20c0:	e5d33000 	ldrb	r3, [r3]
    20c4:	e3530000 	cmp	r3, #0
    20c8:	1affff84 	bne	1ee0 <printf+0x30>
    20cc:	e1a00000 	nop			@ (mov r0, r0)
    20d0:	e1a00000 	nop			@ (mov r0, r0)
    20d4:	e24bd004 	sub	sp, fp, #4
    20d8:	e8bd4800 	pop	{fp, lr}
    20dc:	e28dd00c 	add	sp, sp, #12
    20e0:	e12fff1e 	bx	lr
    20e4:	000026f8 	.word	0x000026f8

000020e8 <free>:
    20e8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    20ec:	e28db000 	add	fp, sp, #0
    20f0:	e24dd014 	sub	sp, sp, #20
    20f4:	e50b0010 	str	r0, [fp, #-16]
    20f8:	e51b3010 	ldr	r3, [fp, #-16]
    20fc:	e2433008 	sub	r3, r3, #8
    2100:	e50b300c 	str	r3, [fp, #-12]
    2104:	e59f3154 	ldr	r3, [pc, #340]	@ 2260 <free+0x178>
    2108:	e5933000 	ldr	r3, [r3]
    210c:	e50b3008 	str	r3, [fp, #-8]
    2110:	ea000010 	b	2158 <free+0x70>
    2114:	e51b3008 	ldr	r3, [fp, #-8]
    2118:	e5933000 	ldr	r3, [r3]
    211c:	e51b2008 	ldr	r2, [fp, #-8]
    2120:	e1520003 	cmp	r2, r3
    2124:	3a000008 	bcc	214c <free+0x64>
    2128:	e51b200c 	ldr	r2, [fp, #-12]
    212c:	e51b3008 	ldr	r3, [fp, #-8]
    2130:	e1520003 	cmp	r2, r3
    2134:	8a000010 	bhi	217c <free+0x94>
    2138:	e51b3008 	ldr	r3, [fp, #-8]
    213c:	e5933000 	ldr	r3, [r3]
    2140:	e51b200c 	ldr	r2, [fp, #-12]
    2144:	e1520003 	cmp	r2, r3
    2148:	3a00000b 	bcc	217c <free+0x94>
    214c:	e51b3008 	ldr	r3, [fp, #-8]
    2150:	e5933000 	ldr	r3, [r3]
    2154:	e50b3008 	str	r3, [fp, #-8]
    2158:	e51b200c 	ldr	r2, [fp, #-12]
    215c:	e51b3008 	ldr	r3, [fp, #-8]
    2160:	e1520003 	cmp	r2, r3
    2164:	9affffea 	bls	2114 <free+0x2c>
    2168:	e51b3008 	ldr	r3, [fp, #-8]
    216c:	e5933000 	ldr	r3, [r3]
    2170:	e51b200c 	ldr	r2, [fp, #-12]
    2174:	e1520003 	cmp	r2, r3
    2178:	2affffe5 	bcs	2114 <free+0x2c>
    217c:	e51b300c 	ldr	r3, [fp, #-12]
    2180:	e5933004 	ldr	r3, [r3, #4]
    2184:	e1a03183 	lsl	r3, r3, #3
    2188:	e51b200c 	ldr	r2, [fp, #-12]
    218c:	e0822003 	add	r2, r2, r3
    2190:	e51b3008 	ldr	r3, [fp, #-8]
    2194:	e5933000 	ldr	r3, [r3]
    2198:	e1520003 	cmp	r2, r3
    219c:	1a00000d 	bne	21d8 <free+0xf0>
    21a0:	e51b300c 	ldr	r3, [fp, #-12]
    21a4:	e5932004 	ldr	r2, [r3, #4]
    21a8:	e51b3008 	ldr	r3, [fp, #-8]
    21ac:	e5933000 	ldr	r3, [r3]
    21b0:	e5933004 	ldr	r3, [r3, #4]
    21b4:	e0822003 	add	r2, r2, r3
    21b8:	e51b300c 	ldr	r3, [fp, #-12]
    21bc:	e5832004 	str	r2, [r3, #4]
    21c0:	e51b3008 	ldr	r3, [fp, #-8]
    21c4:	e5933000 	ldr	r3, [r3]
    21c8:	e5932000 	ldr	r2, [r3]
    21cc:	e51b300c 	ldr	r3, [fp, #-12]
    21d0:	e5832000 	str	r2, [r3]
    21d4:	ea000003 	b	21e8 <free+0x100>
    21d8:	e51b3008 	ldr	r3, [fp, #-8]
    21dc:	e5932000 	ldr	r2, [r3]
    21e0:	e51b300c 	ldr	r3, [fp, #-12]
    21e4:	e5832000 	str	r2, [r3]
    21e8:	e51b3008 	ldr	r3, [fp, #-8]
    21ec:	e5933004 	ldr	r3, [r3, #4]
    21f0:	e1a03183 	lsl	r3, r3, #3
    21f4:	e51b2008 	ldr	r2, [fp, #-8]
    21f8:	e0823003 	add	r3, r2, r3
    21fc:	e51b200c 	ldr	r2, [fp, #-12]
    2200:	e1520003 	cmp	r2, r3
    2204:	1a00000b 	bne	2238 <free+0x150>
    2208:	e51b3008 	ldr	r3, [fp, #-8]
    220c:	e5932004 	ldr	r2, [r3, #4]
    2210:	e51b300c 	ldr	r3, [fp, #-12]
    2214:	e5933004 	ldr	r3, [r3, #4]
    2218:	e0822003 	add	r2, r2, r3
    221c:	e51b3008 	ldr	r3, [fp, #-8]
    2220:	e5832004 	str	r2, [r3, #4]
    2224:	e51b300c 	ldr	r3, [fp, #-12]
    2228:	e5932000 	ldr	r2, [r3]
    222c:	e51b3008 	ldr	r3, [fp, #-8]
    2230:	e5832000 	str	r2, [r3]
    2234:	ea000002 	b	2244 <free+0x15c>
    2238:	e51b3008 	ldr	r3, [fp, #-8]
    223c:	e51b200c 	ldr	r2, [fp, #-12]
    2240:	e5832000 	str	r2, [r3]
    2244:	e59f2014 	ldr	r2, [pc, #20]	@ 2260 <free+0x178>
    2248:	e51b3008 	ldr	r3, [fp, #-8]
    224c:	e5823000 	str	r3, [r2]
    2250:	e1a00000 	nop			@ (mov r0, r0)
    2254:	e28bd000 	add	sp, fp, #0
    2258:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    225c:	e12fff1e 	bx	lr
    2260:	00002794 	.word	0x00002794

00002264 <morecore>:
    2264:	e92d4800 	push	{fp, lr}
    2268:	e28db004 	add	fp, sp, #4
    226c:	e24dd010 	sub	sp, sp, #16
    2270:	e50b0010 	str	r0, [fp, #-16]
    2274:	e51b3010 	ldr	r3, [fp, #-16]
    2278:	e3530a01 	cmp	r3, #4096	@ 0x1000
    227c:	2a000001 	bcs	2288 <morecore+0x24>
    2280:	e3a03a01 	mov	r3, #4096	@ 0x1000
    2284:	e50b3010 	str	r3, [fp, #-16]
    2288:	e51b3010 	ldr	r3, [fp, #-16]
    228c:	e1a03183 	lsl	r3, r3, #3
    2290:	e1a00003 	mov	r0, r3
    2294:	ebfffe85 	bl	1cb0 <sbrk>
    2298:	e50b0008 	str	r0, [fp, #-8]
    229c:	e51b3008 	ldr	r3, [fp, #-8]
    22a0:	e3730001 	cmn	r3, #1
    22a4:	1a000001 	bne	22b0 <morecore+0x4c>
    22a8:	e3a03000 	mov	r3, #0
    22ac:	ea00000a 	b	22dc <morecore+0x78>
    22b0:	e51b3008 	ldr	r3, [fp, #-8]
    22b4:	e50b300c 	str	r3, [fp, #-12]
    22b8:	e51b300c 	ldr	r3, [fp, #-12]
    22bc:	e51b2010 	ldr	r2, [fp, #-16]
    22c0:	e5832004 	str	r2, [r3, #4]
    22c4:	e51b300c 	ldr	r3, [fp, #-12]
    22c8:	e2833008 	add	r3, r3, #8
    22cc:	e1a00003 	mov	r0, r3
    22d0:	ebffff84 	bl	20e8 <free>
    22d4:	e59f300c 	ldr	r3, [pc, #12]	@ 22e8 <morecore+0x84>
    22d8:	e5933000 	ldr	r3, [r3]
    22dc:	e1a00003 	mov	r0, r3
    22e0:	e24bd004 	sub	sp, fp, #4
    22e4:	e8bd8800 	pop	{fp, pc}
    22e8:	00002794 	.word	0x00002794

000022ec <malloc>:
    22ec:	e92d4800 	push	{fp, lr}
    22f0:	e28db004 	add	fp, sp, #4
    22f4:	e24dd018 	sub	sp, sp, #24
    22f8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    22fc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    2300:	e2833007 	add	r3, r3, #7
    2304:	e1a031a3 	lsr	r3, r3, #3
    2308:	e2833001 	add	r3, r3, #1
    230c:	e50b3010 	str	r3, [fp, #-16]
    2310:	e59f3134 	ldr	r3, [pc, #308]	@ 244c <malloc+0x160>
    2314:	e5933000 	ldr	r3, [r3]
    2318:	e50b300c 	str	r3, [fp, #-12]
    231c:	e51b300c 	ldr	r3, [fp, #-12]
    2320:	e3530000 	cmp	r3, #0
    2324:	1a00000b 	bne	2358 <malloc+0x6c>
    2328:	e59f3120 	ldr	r3, [pc, #288]	@ 2450 <malloc+0x164>
    232c:	e50b300c 	str	r3, [fp, #-12]
    2330:	e59f2114 	ldr	r2, [pc, #276]	@ 244c <malloc+0x160>
    2334:	e51b300c 	ldr	r3, [fp, #-12]
    2338:	e5823000 	str	r3, [r2]
    233c:	e59f3108 	ldr	r3, [pc, #264]	@ 244c <malloc+0x160>
    2340:	e5933000 	ldr	r3, [r3]
    2344:	e59f2104 	ldr	r2, [pc, #260]	@ 2450 <malloc+0x164>
    2348:	e5823000 	str	r3, [r2]
    234c:	e59f30fc 	ldr	r3, [pc, #252]	@ 2450 <malloc+0x164>
    2350:	e3a02000 	mov	r2, #0
    2354:	e5832004 	str	r2, [r3, #4]
    2358:	e51b300c 	ldr	r3, [fp, #-12]
    235c:	e5933000 	ldr	r3, [r3]
    2360:	e50b3008 	str	r3, [fp, #-8]
    2364:	e51b3008 	ldr	r3, [fp, #-8]
    2368:	e5933004 	ldr	r3, [r3, #4]
    236c:	e51b2010 	ldr	r2, [fp, #-16]
    2370:	e1520003 	cmp	r2, r3
    2374:	8a00001e 	bhi	23f4 <malloc+0x108>
    2378:	e51b3008 	ldr	r3, [fp, #-8]
    237c:	e5933004 	ldr	r3, [r3, #4]
    2380:	e51b2010 	ldr	r2, [fp, #-16]
    2384:	e1520003 	cmp	r2, r3
    2388:	1a000004 	bne	23a0 <malloc+0xb4>
    238c:	e51b3008 	ldr	r3, [fp, #-8]
    2390:	e5932000 	ldr	r2, [r3]
    2394:	e51b300c 	ldr	r3, [fp, #-12]
    2398:	e5832000 	str	r2, [r3]
    239c:	ea00000e 	b	23dc <malloc+0xf0>
    23a0:	e51b3008 	ldr	r3, [fp, #-8]
    23a4:	e5932004 	ldr	r2, [r3, #4]
    23a8:	e51b3010 	ldr	r3, [fp, #-16]
    23ac:	e0422003 	sub	r2, r2, r3
    23b0:	e51b3008 	ldr	r3, [fp, #-8]
    23b4:	e5832004 	str	r2, [r3, #4]
    23b8:	e51b3008 	ldr	r3, [fp, #-8]
    23bc:	e5933004 	ldr	r3, [r3, #4]
    23c0:	e1a03183 	lsl	r3, r3, #3
    23c4:	e51b2008 	ldr	r2, [fp, #-8]
    23c8:	e0823003 	add	r3, r2, r3
    23cc:	e50b3008 	str	r3, [fp, #-8]
    23d0:	e51b3008 	ldr	r3, [fp, #-8]
    23d4:	e51b2010 	ldr	r2, [fp, #-16]
    23d8:	e5832004 	str	r2, [r3, #4]
    23dc:	e59f2068 	ldr	r2, [pc, #104]	@ 244c <malloc+0x160>
    23e0:	e51b300c 	ldr	r3, [fp, #-12]
    23e4:	e5823000 	str	r3, [r2]
    23e8:	e51b3008 	ldr	r3, [fp, #-8]
    23ec:	e2833008 	add	r3, r3, #8
    23f0:	ea000012 	b	2440 <malloc+0x154>
    23f4:	e59f3050 	ldr	r3, [pc, #80]	@ 244c <malloc+0x160>
    23f8:	e5933000 	ldr	r3, [r3]
    23fc:	e51b2008 	ldr	r2, [fp, #-8]
    2400:	e1520003 	cmp	r2, r3
    2404:	1a000007 	bne	2428 <malloc+0x13c>
    2408:	e51b0010 	ldr	r0, [fp, #-16]
    240c:	ebffff94 	bl	2264 <morecore>
    2410:	e50b0008 	str	r0, [fp, #-8]
    2414:	e51b3008 	ldr	r3, [fp, #-8]
    2418:	e3530000 	cmp	r3, #0
    241c:	1a000001 	bne	2428 <malloc+0x13c>
    2420:	e3a03000 	mov	r3, #0
    2424:	ea000005 	b	2440 <malloc+0x154>
    2428:	e51b3008 	ldr	r3, [fp, #-8]
    242c:	e50b300c 	str	r3, [fp, #-12]
    2430:	e51b3008 	ldr	r3, [fp, #-8]
    2434:	e5933000 	ldr	r3, [r3]
    2438:	e50b3008 	str	r3, [fp, #-8]
    243c:	eaffffc8 	b	2364 <malloc+0x78>
    2440:	e1a00003 	mov	r0, r3
    2444:	e24bd004 	sub	sp, fp, #4
    2448:	e8bd8800 	pop	{fp, pc}
    244c:	00002794 	.word	0x00002794
    2450:	0000278c 	.word	0x0000278c

00002454 <__udivsi3>:
    2454:	e2512001 	subs	r2, r1, #1
    2458:	012fff1e 	bxeq	lr
    245c:	3a000036 	bcc	253c <__udivsi3+0xe8>
    2460:	e1500001 	cmp	r0, r1
    2464:	9a000022 	bls	24f4 <__udivsi3+0xa0>
    2468:	e1110002 	tst	r1, r2
    246c:	0a000023 	beq	2500 <__udivsi3+0xac>
    2470:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    2474:	01a01181 	lsleq	r1, r1, #3
    2478:	03a03008 	moveq	r3, #8
    247c:	13a03001 	movne	r3, #1
    2480:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    2484:	31510000 	cmpcc	r1, r0
    2488:	31a01201 	lslcc	r1, r1, #4
    248c:	31a03203 	lslcc	r3, r3, #4
    2490:	3afffffa 	bcc	2480 <__udivsi3+0x2c>
    2494:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    2498:	31510000 	cmpcc	r1, r0
    249c:	31a01081 	lslcc	r1, r1, #1
    24a0:	31a03083 	lslcc	r3, r3, #1
    24a4:	3afffffa 	bcc	2494 <__udivsi3+0x40>
    24a8:	e3a02000 	mov	r2, #0
    24ac:	e1500001 	cmp	r0, r1
    24b0:	20400001 	subcs	r0, r0, r1
    24b4:	21822003 	orrcs	r2, r2, r3
    24b8:	e15000a1 	cmp	r0, r1, lsr #1
    24bc:	204000a1 	subcs	r0, r0, r1, lsr #1
    24c0:	218220a3 	orrcs	r2, r2, r3, lsr #1
    24c4:	e1500121 	cmp	r0, r1, lsr #2
    24c8:	20400121 	subcs	r0, r0, r1, lsr #2
    24cc:	21822123 	orrcs	r2, r2, r3, lsr #2
    24d0:	e15001a1 	cmp	r0, r1, lsr #3
    24d4:	204001a1 	subcs	r0, r0, r1, lsr #3
    24d8:	218221a3 	orrcs	r2, r2, r3, lsr #3
    24dc:	e3500000 	cmp	r0, #0
    24e0:	11b03223 	lsrsne	r3, r3, #4
    24e4:	11a01221 	lsrne	r1, r1, #4
    24e8:	1affffef 	bne	24ac <__udivsi3+0x58>
    24ec:	e1a00002 	mov	r0, r2
    24f0:	e12fff1e 	bx	lr
    24f4:	03a00001 	moveq	r0, #1
    24f8:	13a00000 	movne	r0, #0
    24fc:	e12fff1e 	bx	lr
    2500:	e3510801 	cmp	r1, #65536	@ 0x10000
    2504:	21a01821 	lsrcs	r1, r1, #16
    2508:	23a02010 	movcs	r2, #16
    250c:	33a02000 	movcc	r2, #0
    2510:	e3510c01 	cmp	r1, #256	@ 0x100
    2514:	21a01421 	lsrcs	r1, r1, #8
    2518:	22822008 	addcs	r2, r2, #8
    251c:	e3510010 	cmp	r1, #16
    2520:	21a01221 	lsrcs	r1, r1, #4
    2524:	22822004 	addcs	r2, r2, #4
    2528:	e3510004 	cmp	r1, #4
    252c:	82822003 	addhi	r2, r2, #3
    2530:	908220a1 	addls	r2, r2, r1, lsr #1
    2534:	e1a00230 	lsr	r0, r0, r2
    2538:	e12fff1e 	bx	lr
    253c:	e3500000 	cmp	r0, #0
    2540:	13e00000 	mvnne	r0, #0
    2544:	ea000007 	b	2568 <__aeabi_idiv0>

00002548 <__aeabi_uidivmod>:
    2548:	e3510000 	cmp	r1, #0
    254c:	0afffffa 	beq	253c <__udivsi3+0xe8>
    2550:	e92d4003 	push	{r0, r1, lr}
    2554:	ebffffbe 	bl	2454 <__udivsi3>
    2558:	e8bd4006 	pop	{r1, r2, lr}
    255c:	e0030092 	mul	r3, r2, r0
    2560:	e0411003 	sub	r1, r1, r3
    2564:	e12fff1e 	bx	lr

00002568 <__aeabi_idiv0>:
    2568:	e12fff1e 	bx	lr
