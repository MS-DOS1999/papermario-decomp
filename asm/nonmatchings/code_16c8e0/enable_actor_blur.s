.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel enable_actor_blur
/* 182BAC 802542CC 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 182BB0 802542D0 AFB3001C */  sw    $s3, 0x1c($sp)
/* 182BB4 802542D4 0080982D */  daddu $s3, $a0, $zero
/* 182BB8 802542D8 AFBF0030 */  sw    $ra, 0x30($sp)
/* 182BBC 802542DC AFB7002C */  sw    $s7, 0x2c($sp)
/* 182BC0 802542E0 AFB60028 */  sw    $s6, 0x28($sp)
/* 182BC4 802542E4 AFB50024 */  sw    $s5, 0x24($sp)
/* 182BC8 802542E8 AFB40020 */  sw    $s4, 0x20($sp)
/* 182BCC 802542EC AFB20018 */  sw    $s2, 0x18($sp)
/* 182BD0 802542F0 AFB10014 */  sw    $s1, 0x14($sp)
/* 182BD4 802542F4 AFB00010 */  sw    $s0, 0x10($sp)
/* 182BD8 802542F8 F7B60040 */  sdc1  $f22, 0x40($sp)
/* 182BDC 802542FC F7B40038 */  sdc1  $f20, 0x38($sp)
/* 182BE0 80254300 8E7201F4 */  lw    $s2, 0x1f4($s3)
/* 182BE4 80254304 8E4300C0 */  lw    $v1, 0xc0($s2)
/* 182BE8 80254308 906207DB */  lbu   $v0, 0x7db($v1)
/* 182BEC 8025430C 0000A82D */  daddu $s5, $zero, $zero
/* 182BF0 80254310 A06008AC */  sb    $zero, 0x8ac($v1)
/* 182BF4 80254314 24420001 */  addiu $v0, $v0, 1
/* 182BF8 80254318 A06207DB */  sb    $v0, 0x7db($v1)
/* 182BFC 8025431C 3C031000 */  lui   $v1, 0x1000
/* 182C00 80254320 8E7201F4 */  lw    $s2, 0x1f4($s3)
/* 182C04 80254324 8E620000 */  lw    $v0, ($s3)
/* 182C08 80254328 827701F3 */  lb    $s7, 0x1f3($s3)
/* 182C0C 8025432C 00431025 */  or    $v0, $v0, $v1
/* 182C10 80254330 1AE0007D */  blez  $s7, .L80254528
/* 182C14 80254334 AE620000 */   sw    $v0, ($s3)
/* 182C18 80254338 3C168000 */  lui   $s6, 0x8000
/* 182C1C 8025433C 3C013F00 */  lui   $at, 0x3f00
/* 182C20 80254340 4481B000 */  mtc1  $at, $f22
/* 182C24 80254344 3C014F00 */  lui   $at, 0x4f00
/* 182C28 80254348 4481A000 */  mtc1  $at, $f20
.L8025434C:
/* 182C2C 8025434C 8E420094 */  lw    $v0, 0x94($s2)
/* 182C30 80254350 10400070 */  beqz  $v0, .L80254514
/* 182C34 80254354 00000000 */   nop   
/* 182C38 80254358 8E420000 */  lw    $v0, ($s2)
/* 182C3C 8025435C 30420002 */  andi  $v0, $v0, 2
/* 182C40 80254360 1440006C */  bnez  $v0, .L80254514
/* 182C44 80254364 00000000 */   nop   
/* 182C48 80254368 8E4300C0 */  lw    $v1, 0xc0($s2)
/* 182C4C 8025436C 0000A02D */  daddu $s4, $zero, $zero
/* 182C50 80254370 0060802D */  daddu $s0, $v1, $zero
/* 182C54 80254374 0060882D */  daddu $s1, $v1, $zero
/* 182C58 80254378 A20007D8 */  sb    $zero, 0x7d8($s0)
/* 182C5C 8025437C A20007D9 */  sb    $zero, 0x7d9($s0)
.L80254380:
/* 182C60 80254380 C6400058 */  lwc1  $f0, 0x58($s2)
/* 182C64 80254384 4600010D */  trunc.w.s $f4, $f0
/* 182C68 80254388 44022000 */  mfc1  $v0, $f4
/* 182C6C 8025438C 00000000 */  nop   
/* 182C70 80254390 A60207FC */  sh    $v0, 0x7fc($s0)
/* 182C74 80254394 C640005C */  lwc1  $f0, 0x5c($s2)
/* 182C78 80254398 4600010D */  trunc.w.s $f4, $f0
/* 182C7C 8025439C 44022000 */  mfc1  $v0, $f4
/* 182C80 802543A0 00000000 */  nop   
/* 182C84 802543A4 A602081C */  sh    $v0, 0x81c($s0)
/* 182C88 802543A8 C6400060 */  lwc1  $f0, 0x60($s2)
/* 182C8C 802543AC 4600010D */  trunc.w.s $f4, $f0
/* 182C90 802543B0 44022000 */  mfc1  $v0, $f4
/* 182C94 802543B4 00000000 */  nop   
/* 182C98 802543B8 A602083C */  sh    $v0, 0x83c($s0)
/* 182C9C 802543BC C660018C */  lwc1  $f0, 0x18c($s3)
/* 182CA0 802543C0 4600010D */  trunc.w.s $f4, $f0
/* 182CA4 802543C4 44022000 */  mfc1  $v0, $f4
/* 182CA8 802543C8 00000000 */  nop   
/* 182CAC 802543CC A60207DC */  sh    $v0, 0x7dc($s0)
/* 182CB0 802543D0 86620168 */  lh    $v0, 0x168($s3)
/* 182CB4 802543D4 C6620188 */  lwc1  $f2, 0x188($s3)
/* 182CB8 802543D8 44820000 */  mtc1  $v0, $f0
/* 182CBC 802543DC 00000000 */  nop   
/* 182CC0 802543E0 46800020 */  cvt.s.w $f0, $f0
/* 182CC4 802543E4 46020002 */  mul.s $f0, $f0, $f2
/* 182CC8 802543E8 00000000 */  nop   
/* 182CCC 802543EC 4600010D */  trunc.w.s $f4, $f0
/* 182CD0 802543F0 44022000 */  mfc1  $v0, $f4
/* 182CD4 802543F4 00000000 */  nop   
/* 182CD8 802543F8 A222085C */  sb    $v0, 0x85c($s1)
/* 182CDC 802543FC 8662016A */  lh    $v0, 0x16a($s3)
/* 182CE0 80254400 C6620188 */  lwc1  $f2, 0x188($s3)
/* 182CE4 80254404 44820000 */  mtc1  $v0, $f0
/* 182CE8 80254408 00000000 */  nop   
/* 182CEC 8025440C 46800020 */  cvt.s.w $f0, $f0
/* 182CF0 80254410 46020002 */  mul.s $f0, $f0, $f2
/* 182CF4 80254414 00000000 */  nop   
/* 182CF8 80254418 4600010D */  trunc.w.s $f4, $f0
/* 182CFC 8025441C 44022000 */  mfc1  $v0, $f4
/* 182D00 80254420 00000000 */  nop   
/* 182D04 80254424 A222086C */  sb    $v0, 0x86c($s1)
/* 182D08 80254428 0C00A6C9 */  jal   clamp_angle
/* 182D0C 8025442C C66C015C */   lwc1  $f12, 0x15c($s3)
/* 182D10 80254430 46160002 */  mul.s $f0, $f0, $f22
/* 182D14 80254434 00000000 */  nop   
/* 182D18 80254438 4600A03E */  c.le.s $f20, $f0
/* 182D1C 8025443C 00000000 */  nop   
/* 182D20 80254440 45010005 */  bc1t  .L80254458
/* 182D24 80254444 2623087C */   addiu $v1, $s1, 0x87c
/* 182D28 80254448 4600010D */  trunc.w.s $f4, $f0
/* 182D2C 8025444C 44022000 */  mfc1  $v0, $f4
/* 182D30 80254450 0809511C */  j     .L80254470
/* 182D34 80254454 A0620000 */   sb    $v0, ($v1)

.L80254458:
/* 182D38 80254458 46140001 */  sub.s $f0, $f0, $f20
/* 182D3C 8025445C 4600010D */  trunc.w.s $f4, $f0
/* 182D40 80254460 44022000 */  mfc1  $v0, $f4
/* 182D44 80254464 00000000 */  nop   
/* 182D48 80254468 00561025 */  or    $v0, $v0, $s6
/* 182D4C 8025446C A0620000 */  sb    $v0, ($v1)
.L80254470:
/* 182D50 80254470 0C00A6C9 */  jal   clamp_angle
/* 182D54 80254474 C66C0160 */   lwc1  $f12, 0x160($s3)
/* 182D58 80254478 46160002 */  mul.s $f0, $f0, $f22
/* 182D5C 8025447C 00000000 */  nop   
/* 182D60 80254480 4600A03E */  c.le.s $f20, $f0
/* 182D64 80254484 00000000 */  nop   
/* 182D68 80254488 45010005 */  bc1t  .L802544A0
/* 182D6C 8025448C 2623088C */   addiu $v1, $s1, 0x88c
/* 182D70 80254490 4600010D */  trunc.w.s $f4, $f0
/* 182D74 80254494 44022000 */  mfc1  $v0, $f4
/* 182D78 80254498 0809512E */  j     .L802544B8
/* 182D7C 8025449C A0620000 */   sb    $v0, ($v1)

.L802544A0:
/* 182D80 802544A0 46140001 */  sub.s $f0, $f0, $f20
/* 182D84 802544A4 4600010D */  trunc.w.s $f4, $f0
/* 182D88 802544A8 44022000 */  mfc1  $v0, $f4
/* 182D8C 802544AC 00000000 */  nop   
/* 182D90 802544B0 00561025 */  or    $v0, $v0, $s6
/* 182D94 802544B4 A0620000 */  sb    $v0, ($v1)
.L802544B8:
/* 182D98 802544B8 0C00A6C9 */  jal   clamp_angle
/* 182D9C 802544BC C66C0164 */   lwc1  $f12, 0x164($s3)
/* 182DA0 802544C0 46160002 */  mul.s $f0, $f0, $f22
/* 182DA4 802544C4 00000000 */  nop   
/* 182DA8 802544C8 4600A03E */  c.le.s $f20, $f0
/* 182DAC 802544CC 00000000 */  nop   
/* 182DB0 802544D0 45010005 */  bc1t  .L802544E8
/* 182DB4 802544D4 2623089C */   addiu $v1, $s1, 0x89c
/* 182DB8 802544D8 4600010D */  trunc.w.s $f4, $f0
/* 182DBC 802544DC 44022000 */  mfc1  $v0, $f4
/* 182DC0 802544E0 08095140 */  j     .L80254500
/* 182DC4 802544E4 A0620000 */   sb    $v0, ($v1)

.L802544E8:
/* 182DC8 802544E8 46140001 */  sub.s $f0, $f0, $f20
/* 182DCC 802544EC 4600010D */  trunc.w.s $f4, $f0
/* 182DD0 802544F0 44022000 */  mfc1  $v0, $f4
/* 182DD4 802544F4 00000000 */  nop   
/* 182DD8 802544F8 00561025 */  or    $v0, $v0, $s6
/* 182DDC 802544FC A0620000 */  sb    $v0, ($v1)
.L80254500:
/* 182DE0 80254500 26310001 */  addiu $s1, $s1, 1
/* 182DE4 80254504 26940001 */  addiu $s4, $s4, 1
/* 182DE8 80254508 2A820010 */  slti  $v0, $s4, 0x10
/* 182DEC 8025450C 1440FF9C */  bnez  $v0, .L80254380
/* 182DF0 80254510 26100002 */   addiu $s0, $s0, 2
.L80254514:
/* 182DF4 80254514 8E52000C */  lw    $s2, 0xc($s2)
/* 182DF8 80254518 26B50001 */  addiu $s5, $s5, 1
/* 182DFC 8025451C 02B7102A */  slt   $v0, $s5, $s7
/* 182E00 80254520 1440FF8A */  bnez  $v0, .L8025434C
/* 182E04 80254524 00000000 */   nop   
.L80254528:
/* 182E08 80254528 8FBF0030 */  lw    $ra, 0x30($sp)
/* 182E0C 8025452C 8FB7002C */  lw    $s7, 0x2c($sp)
/* 182E10 80254530 8FB60028 */  lw    $s6, 0x28($sp)
/* 182E14 80254534 8FB50024 */  lw    $s5, 0x24($sp)
/* 182E18 80254538 8FB40020 */  lw    $s4, 0x20($sp)
/* 182E1C 8025453C 8FB3001C */  lw    $s3, 0x1c($sp)
/* 182E20 80254540 8FB20018 */  lw    $s2, 0x18($sp)
/* 182E24 80254544 8FB10014 */  lw    $s1, 0x14($sp)
/* 182E28 80254548 8FB00010 */  lw    $s0, 0x10($sp)
/* 182E2C 8025454C D7B60040 */  ldc1  $f22, 0x40($sp)
/* 182E30 80254550 D7B40038 */  ldc1  $f20, 0x38($sp)
/* 182E34 80254554 03E00008 */  jr    $ra
/* 182E38 80254558 27BD0048 */   addiu $sp, $sp, 0x48

