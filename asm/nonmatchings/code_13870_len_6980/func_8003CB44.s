.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8003CB44
/* 017F44 8003CB44 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 017F48 8003CB48 AFB00018 */  sw    $s0, 0x18($sp)
/* 017F4C 8003CB4C 0080802D */  daddu $s0, $a0, $zero
/* 017F50 8003CB50 AFB1001C */  sw    $s1, 0x1c($sp)
/* 017F54 8003CB54 00A0882D */  daddu $s1, $a1, $zero
/* 017F58 8003CB58 AFB20020 */  sw    $s2, 0x20($sp)
/* 017F5C 8003CB5C 02119021 */  addu  $s2, $s0, $s1
/* 017F60 8003CB60 AFBF0024 */  sw    $ra, 0x24($sp)
/* 017F64 8003CB64 82430330 */  lb    $v1, 0x330($s2)
/* 017F68 8003CB68 10600005 */  beqz  $v1, .L8003CB80
/* 017F6C 8003CB6C 24020001 */   addiu $v0, $zero, 1
/* 017F70 8003CB70 10620023 */  beq   $v1, $v0, .L8003CC00
/* 017F74 8003CB74 00111080 */   sll   $v0, $s1, 2
/* 017F78 8003CB78 0800F31D */  j     .L8003CC74
/* 017F7C 8003CB7C 00000000 */   nop   

.L8003CB80:
/* 017F80 8003CB80 860200A8 */  lh    $v0, 0xa8($s0)
/* 017F84 8003CB84 3C013FE0 */  lui   $at, 0x3fe0
/* 017F88 8003CB88 44810800 */  mtc1  $at, $f1
/* 017F8C 8003CB8C 44800000 */  mtc1  $zero, $f0
/* 017F90 8003CB90 44821000 */  mtc1  $v0, $f2
/* 017F94 8003CB94 00000000 */  nop   
/* 017F98 8003CB98 468010A1 */  cvt.d.w $f2, $f2
/* 017F9C 8003CB9C 46201082 */  mul.d $f2, $f2, $f0
/* 017FA0 8003CBA0 00000000 */  nop   
/* 017FA4 8003CBA4 C6060040 */  lwc1  $f6, 0x40($s0)
/* 017FA8 8003CBA8 3C013F80 */  lui   $at, 0x3f80
/* 017FAC 8003CBAC 44812000 */  mtc1  $at, $f4
/* 017FB0 8003CBB0 C600003C */  lwc1  $f0, 0x3c($s0)
/* 017FB4 8003CBB4 AFA00014 */  sw    $zero, 0x14($sp)
/* 017FB8 8003CBB8 E7A40010 */  swc1  $f4, 0x10($sp)
/* 017FBC 8003CBBC 46000021 */  cvt.d.s $f0, $f0
/* 017FC0 8003CBC0 46220000 */  add.d $f0, $f0, $f2
/* 017FC4 8003CBC4 3C0140A0 */  lui   $at, 0x40a0
/* 017FC8 8003CBC8 44811000 */  mtc1  $at, $f2
/* 017FCC 8003CBCC 8E050038 */  lw    $a1, 0x38($s0)
/* 017FD0 8003CBD0 46023181 */  sub.s $f6, $f6, $f2
/* 017FD4 8003CBD4 46200020 */  cvt.s.d $f0, $f0
/* 017FD8 8003CBD8 44060000 */  mfc1  $a2, $f0
/* 017FDC 8003CBDC 44073000 */  mfc1  $a3, $f6
/* 017FE0 8003CBE0 0C01C5D4 */  jal   func_80071750
/* 017FE4 8003CBE4 24040002 */   addiu $a0, $zero, 2
/* 017FE8 8003CBE8 00111880 */  sll   $v1, $s1, 2
/* 017FEC 8003CBEC 02031821 */  addu  $v1, $s0, $v1
/* 017FF0 8003CBF0 AC620324 */  sw    $v0, 0x324($v1)
/* 017FF4 8003CBF4 24020001 */  addiu $v0, $zero, 1
/* 017FF8 8003CBF8 0800F31D */  j     .L8003CC74
/* 017FFC 8003CBFC A2420330 */   sb    $v0, 0x330($s2)

.L8003CC00:
/* 018000 8003CC00 02021021 */  addu  $v0, $s0, $v0
/* 018004 8003CC04 8C420324 */  lw    $v0, 0x324($v0)
/* 018008 8003CC08 C6000038 */  lwc1  $f0, 0x38($s0)
/* 01800C 8003CC0C 8C43000C */  lw    $v1, 0xc($v0)
/* 018010 8003CC10 E4600004 */  swc1  $f0, 4($v1)
/* 018014 8003CC14 860200A8 */  lh    $v0, 0xa8($s0)
/* 018018 8003CC18 3C013FE0 */  lui   $at, 0x3fe0
/* 01801C 8003CC1C 44810800 */  mtc1  $at, $f1
/* 018020 8003CC20 44800000 */  mtc1  $zero, $f0
/* 018024 8003CC24 44821000 */  mtc1  $v0, $f2
/* 018028 8003CC28 00000000 */  nop   
/* 01802C 8003CC2C 468010A1 */  cvt.d.w $f2, $f2
/* 018030 8003CC30 46201082 */  mul.d $f2, $f2, $f0
/* 018034 8003CC34 00000000 */  nop   
/* 018038 8003CC38 C600003C */  lwc1  $f0, 0x3c($s0)
/* 01803C 8003CC3C 46000021 */  cvt.d.s $f0, $f0
/* 018040 8003CC40 46220000 */  add.d $f0, $f0, $f2
/* 018044 8003CC44 46200020 */  cvt.s.d $f0, $f0
/* 018048 8003CC48 E4600008 */  swc1  $f0, 8($v1)
/* 01804C 8003CC4C C6020040 */  lwc1  $f2, 0x40($s0)
/* 018050 8003CC50 3C0140A0 */  lui   $at, 0x40a0
/* 018054 8003CC54 44810000 */  mtc1  $at, $f0
/* 018058 8003CC58 00000000 */  nop   
/* 01805C 8003CC5C 46001081 */  sub.s $f2, $f2, $f0
/* 018060 8003CC60 3C013F80 */  lui   $at, 0x3f80
/* 018064 8003CC64 44810000 */  mtc1  $at, $f0
/* 018068 8003CC68 00000000 */  nop   
/* 01806C 8003CC6C E4600030 */  swc1  $f0, 0x30($v1)
/* 018070 8003CC70 E462000C */  swc1  $f2, 0xc($v1)
.L8003CC74:
/* 018074 8003CC74 8FBF0024 */  lw    $ra, 0x24($sp)
/* 018078 8003CC78 8FB20020 */  lw    $s2, 0x20($sp)
/* 01807C 8003CC7C 8FB1001C */  lw    $s1, 0x1c($sp)
/* 018080 8003CC80 8FB00018 */  lw    $s0, 0x18($sp)
/* 018084 8003CC84 03E00008 */  jr    $ra
/* 018088 8003CC88 27BD0028 */   addiu $sp, $sp, 0x28

