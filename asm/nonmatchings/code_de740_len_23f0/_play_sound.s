.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel _play_sound
/* 0E01B8 80149AB8 3C028007 */  lui   $v0, 0x8007
/* 0E01BC 80149ABC 8C42419C */  lw    $v0, 0x419c($v0)
/* 0E01C0 80149AC0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0E01C4 80149AC4 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0E01C8 80149AC8 80420071 */  lb    $v0, 0x71($v0)
/* 0E01CC 80149ACC 14400042 */  bnez  $v0, .L80149BD8
/* 0E01D0 80149AD0 00E0482D */   daddu $t1, $a3, $zero
/* 0E01D4 80149AD4 0483003C */  bgezl $a0, .L80149BC8
/* 0E01D8 80149AD8 30A500FF */   andi  $a1, $a1, 0xff
/* 0E01DC 80149ADC 00041702 */  srl   $v0, $a0, 0x1c
/* 0E01E0 80149AE0 30430007 */  andi  $v1, $v0, 7
/* 0E01E4 80149AE4 24020001 */  addiu $v0, $zero, 1
/* 0E01E8 80149AE8 10620018 */  beq   $v1, $v0, .L80149B4C
/* 0E01EC 80149AEC 308800FF */   andi  $t0, $a0, 0xff
/* 0E01F0 80149AF0 28620002 */  slti  $v0, $v1, 2
/* 0E01F4 80149AF4 10400005 */  beqz  $v0, .L80149B0C
/* 0E01F8 80149AF8 24020002 */   addiu $v0, $zero, 2
/* 0E01FC 80149AFC 10600009 */  beqz  $v1, .L80149B24
/* 0E0200 80149B00 00081080 */   sll   $v0, $t0, 2
/* 0E0204 80149B04 080526F2 */  j     .L80149BC8
/* 0E0208 80149B08 30A500FF */   andi  $a1, $a1, 0xff

.L80149B0C:
/* 0E020C 80149B0C 10620013 */  beq   $v1, $v0, .L80149B5C
/* 0E0210 80149B10 24020003 */   addiu $v0, $zero, 3
/* 0E0214 80149B14 1062001B */  beq   $v1, $v0, .L80149B84
/* 0E0218 80149B18 000810C0 */   sll   $v0, $t0, 3
/* 0E021C 80149B1C 080526F2 */  j     .L80149BC8
/* 0E0220 80149B20 30A500FF */   andi  $a1, $a1, 0xff

.L80149B24:
/* 0E0224 80149B24 3C048015 */  lui   $a0, 0x8015
/* 0E0228 80149B28 00822021 */  addu  $a0, $a0, $v0
/* 0E022C 80149B2C 8C84F2D0 */  lw    $a0, -0xd30($a0)
/* 0E0230 80149B30 30A500FF */  andi  $a1, $a1, 0xff
/* 0E0234 80149B34 30C600FF */  andi  $a2, $a2, 0xff
/* 0E0238 80149B38 00073C00 */  sll   $a3, $a3, 0x10
/* 0E023C 80149B3C 0C052642 */  jal   func_80149908
/* 0E0240 80149B40 00073C03 */   sra   $a3, $a3, 0x10
/* 0E0244 80149B44 080526F6 */  j     .L80149BD8
/* 0E0248 80149B48 00000000 */   nop   

.L80149B4C:
/* 0E024C 80149B4C 3C028015 */  lui   $v0, 0x8015
/* 0E0250 80149B50 94421340 */  lhu   $v0, 0x1340($v0)
/* 0E0254 80149B54 080526DA */  j     .L80149B68
/* 0E0258 80149B58 00081880 */   sll   $v1, $t0, 2

.L80149B5C:
/* 0E025C 80149B5C 3C028015 */  lui   $v0, 0x8015
/* 0E0260 80149B60 94421308 */  lhu   $v0, 0x1308($v0)
/* 0E0264 80149B64 00081880 */  sll   $v1, $t0, 2
.L80149B68:
/* 0E0268 80149B68 000210C0 */  sll   $v0, $v0, 3
/* 0E026C 80149B6C 00621821 */  addu  $v1, $v1, $v0
/* 0E0270 80149B70 3C048015 */  lui   $a0, 0x8015
/* 0E0274 80149B74 00832021 */  addu  $a0, $a0, $v1
/* 0E0278 80149B78 8C84F6B4 */  lw    $a0, -0x94c($a0)
/* 0E027C 80149B7C 080526F2 */  j     .L80149BC8
/* 0E0280 80149B80 30A500FF */   andi  $a1, $a1, 0xff

.L80149B84:
/* 0E0284 80149B84 3C038015 */  lui   $v1, 0x8015
/* 0E0288 80149B88 2463F5A4 */  addiu $v1, $v1, -0xa5c
/* 0E028C 80149B8C 00432021 */  addu  $a0, $v0, $v1
/* 0E0290 80149B90 84820006 */  lh    $v0, 6($a0)
/* 0E0294 80149B94 84830004 */  lh    $v1, 4($a0)
/* 0E0298 80149B98 0043102A */  slt   $v0, $v0, $v1
/* 0E029C 80149B9C 50400001 */  beql  $v0, $zero, .L80149BA4
/* 0E02A0 80149BA0 A4800006 */   sh    $zero, 6($a0)
.L80149BA4:
/* 0E02A4 80149BA4 94820006 */  lhu   $v0, 6($a0)
/* 0E02A8 80149BA8 24430001 */  addiu $v1, $v0, 1
/* 0E02AC 80149BAC 00021400 */  sll   $v0, $v0, 0x10
/* 0E02B0 80149BB0 A4830006 */  sh    $v1, 6($a0)
/* 0E02B4 80149BB4 8C830000 */  lw    $v1, ($a0)
/* 0E02B8 80149BB8 00021383 */  sra   $v0, $v0, 0xe
/* 0E02BC 80149BBC 00431021 */  addu  $v0, $v0, $v1
/* 0E02C0 80149BC0 8C440000 */  lw    $a0, ($v0)
/* 0E02C4 80149BC4 30A500FF */  andi  $a1, $a1, 0xff
.L80149BC8:
/* 0E02C8 80149BC8 30C600FF */  andi  $a2, $a2, 0xff
/* 0E02CC 80149BCC 00093C00 */  sll   $a3, $t1, 0x10
/* 0E02D0 80149BD0 0C015490 */  jal   func_80055240
/* 0E02D4 80149BD4 00073C03 */   sra   $a3, $a3, 0x10
.L80149BD8:
/* 0E02D8 80149BD8 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0E02DC 80149BDC 03E00008 */  jr    $ra
/* 0E02E0 80149BE0 27BD0018 */   addiu $sp, $sp, 0x18

/* 0E02E4 80149BE4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0E02E8 80149BE8 AFB00010 */  sw    $s0, 0x10($sp)
/* 0E02EC 80149BEC 00A0802D */  daddu $s0, $a1, $zero
/* 0E02F0 80149BF0 AFB10014 */  sw    $s1, 0x14($sp)
/* 0E02F4 80149BF4 00C0882D */  daddu $s1, $a2, $zero
/* 0E02F8 80149BF8 AFB20018 */  sw    $s2, 0x18($sp)
/* 0E02FC 80149BFC 00E0902D */  daddu $s2, $a3, $zero
/* 0E0300 80149C00 0200282D */  daddu $a1, $s0, $zero
/* 0E0304 80149C04 0220302D */  daddu $a2, $s1, $zero
/* 0E0308 80149C08 0481000D */  bgez  $a0, .L80149C40
/* 0E030C 80149C0C AFBF001C */   sw    $ra, 0x1c($sp)
/* 0E0310 80149C10 3082FFFF */  andi  $v0, $a0, 0xffff
/* 0E0314 80149C14 00021080 */  sll   $v0, $v0, 2
/* 0E0318 80149C18 3C048015 */  lui   $a0, 0x8015
/* 0E031C 80149C1C 00822021 */  addu  $a0, $a0, $v0
/* 0E0320 80149C20 0C052631 */  jal   func_801498C4
/* 0E0324 80149C24 8C84F2D0 */   lw    $a0, -0xd30($a0)
/* 0E0328 80149C28 1040000A */  beqz  $v0, .L80149C54
/* 0E032C 80149C2C 00000000 */   nop   
/* 0E0330 80149C30 A050000C */  sb    $s0, 0xc($v0)
/* 0E0334 80149C34 A051000D */  sb    $s1, 0xd($v0)
/* 0E0338 80149C38 08052715 */  j     .L80149C54
/* 0E033C 80149C3C A452000E */   sh    $s2, 0xe($v0)

.L80149C40:
/* 0E0340 80149C40 00123C00 */  sll   $a3, $s2, 0x10
/* 0E0344 80149C44 30A500FF */  andi  $a1, $a1, 0xff
/* 0E0348 80149C48 30C600FF */  andi  $a2, $a2, 0xff
/* 0E034C 80149C4C 0C0154CC */  jal   func_80055330
/* 0E0350 80149C50 00073C03 */   sra   $a3, $a3, 0x10
.L80149C54:
/* 0E0354 80149C54 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0E0358 80149C58 8FB20018 */  lw    $s2, 0x18($sp)
/* 0E035C 80149C5C 8FB10014 */  lw    $s1, 0x14($sp)
/* 0E0360 80149C60 8FB00010 */  lw    $s0, 0x10($sp)
/* 0E0364 80149C64 03E00008 */  jr    $ra
/* 0E0368 80149C68 27BD0020 */   addiu $sp, $sp, 0x20

