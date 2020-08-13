.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel _Litob
/* 046D80 8006B980 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 046D84 8006B984 AFB10044 */  sw    $s1, 0x44($sp)
/* 046D88 8006B988 00808821 */  addu  $s1, $a0, $zero
/* 046D8C 8006B98C AFB60058 */  sw    $s6, 0x58($sp)
/* 046D90 8006B990 3C168009 */  lui   $s6, 0x8009
/* 046D94 8006B994 26D65940 */  addiu $s6, $s6, 0x5940
/* 046D98 8006B998 00A02021 */  addu  $a0, $a1, $zero
/* 046D9C 8006B99C 00052E00 */  sll   $a1, $a1, 0x18
/* 046DA0 8006B9A0 00052E03 */  sra   $a1, $a1, 0x18
/* 046DA4 8006B9A4 24020058 */  addiu $v0, $zero, 0x58
/* 046DA8 8006B9A8 AFBF005C */  sw    $ra, 0x5c($sp)
/* 046DAC 8006B9AC AFB50054 */  sw    $s5, 0x54($sp)
/* 046DB0 8006B9B0 AFB40050 */  sw    $s4, 0x50($sp)
/* 046DB4 8006B9B4 AFB3004C */  sw    $s3, 0x4c($sp)
/* 046DB8 8006B9B8 AFB20048 */  sw    $s2, 0x48($sp)
/* 046DBC 8006B9BC 14A20003 */  bne   $a1, $v0, .L8006B9CC
/* 046DC0 8006B9C0 AFB00040 */   sw    $s0, 0x40($sp)
/* 046DC4 8006B9C4 3C168009 */  lui   $s6, 0x8009
/* 046DC8 8006B9C8 26D65954 */  addiu $s6, $s6, 0x5954
.L8006B9CC:
/* 046DCC 8006B9CC 2402006F */  addiu $v0, $zero, 0x6f
/* 046DD0 8006B9D0 10A20009 */  beq   $a1, $v0, .L8006B9F8
/* 046DD4 8006B9D4 38A30078 */   xori  $v1, $a1, 0x78
/* 046DD8 8006B9D8 0003182B */  sltu  $v1, $zero, $v1
/* 046DDC 8006B9DC 38A20058 */  xori  $v0, $a1, 0x58
/* 046DE0 8006B9E0 0002102B */  sltu  $v0, $zero, $v0
/* 046DE4 8006B9E4 00621824 */  and   $v1, $v1, $v0
/* 046DE8 8006B9E8 10600004 */  beqz  $v1, .L8006B9FC
/* 046DEC 8006B9EC 24130010 */   addiu $s3, $zero, 0x10
/* 046DF0 8006B9F0 0801AE7F */  j     .L8006B9FC
/* 046DF4 8006B9F4 2413000A */   addiu $s3, $zero, 0xa

.L8006B9F8:
/* 046DF8 8006B9F8 24130008 */  addiu $s3, $zero, 8
.L8006B9FC:
/* 046DFC 8006B9FC 8E340000 */  lw    $s4, ($s1)
/* 046E00 8006BA00 8E350004 */  lw    $s5, 4($s1)
/* 046E04 8006BA04 00041600 */  sll   $v0, $a0, 0x18
/* 046E08 8006BA08 00021603 */  sra   $v0, $v0, 0x18
/* 046E0C 8006BA0C 38430064 */  xori  $v1, $v0, 0x64
/* 046E10 8006BA10 2C630001 */  sltiu $v1, $v1, 1
/* 046E14 8006BA14 38420069 */  xori  $v0, $v0, 0x69
/* 046E18 8006BA18 2C420001 */  sltiu $v0, $v0, 1
/* 046E1C 8006BA1C 00621825 */  or    $v1, $v1, $v0
/* 046E20 8006BA20 10600008 */  beqz  $v1, .L8006BA44
/* 046E24 8006BA24 24120018 */   addiu $s2, $zero, 0x18
/* 046E28 8006BA28 8E220000 */  lw    $v0, ($s1)
/* 046E2C 8006BA2C 04410005 */  bgez  $v0, .L8006BA44
/* 046E30 8006BA30 00000000 */   nop   
/* 046E34 8006BA34 0015A823 */  negu  $s5, $s5
/* 046E38 8006BA38 0014A023 */  negu  $s4, $s4
/* 046E3C 8006BA3C 0015102B */  sltu  $v0, $zero, $s5
/* 046E40 8006BA40 0282A023 */  subu  $s4, $s4, $v0
.L8006BA44:
/* 046E44 8006BA44 56800007 */  bnel  $s4, $zero, .L8006BA64
/* 046E48 8006BA48 2652FFFF */   addiu $s2, $s2, -1
/* 046E4C 8006BA4C 56A00005 */  bnel  $s5, $zero, .L8006BA64
/* 046E50 8006BA50 2652FFFF */   addiu $s2, $s2, -1
/* 046E54 8006BA54 8E220024 */  lw    $v0, 0x24($s1)
/* 046E58 8006BA58 1040000D */  beqz  $v0, .L8006BA90
/* 046E5C 8006BA5C 02603821 */   addu  $a3, $s3, $zero
/* 046E60 8006BA60 2652FFFF */  addiu $s2, $s2, -1
.L8006BA64:
/* 046E64 8006BA64 02603821 */  addu  $a3, $s3, $zero
/* 046E68 8006BA68 00003021 */  addu  $a2, $zero, $zero
/* 046E6C 8006BA6C 02802021 */  addu  $a0, $s4, $zero
/* 046E70 8006BA70 02A02821 */  addu  $a1, $s5, $zero
/* 046E74 8006BA74 27B00018 */  addiu $s0, $sp, 0x18
/* 046E78 8006BA78 0C01BA1C */  jal   func_8006E870
/* 046E7C 8006BA7C 02128021 */   addu  $s0, $s0, $s2
/* 046E80 8006BA80 02C31021 */  addu  $v0, $s6, $v1
/* 046E84 8006BA84 90420000 */  lbu   $v0, ($v0)
/* 046E88 8006BA88 A2020000 */  sb    $v0, ($s0)
/* 046E8C 8006BA8C 02603821 */  addu  $a3, $s3, $zero
.L8006BA90:
/* 046E90 8006BA90 00003021 */  addu  $a2, $zero, $zero
/* 046E94 8006BA94 02802021 */  addu  $a0, $s4, $zero
/* 046E98 8006BA98 0C01B8C4 */  jal   func_8006E310
/* 046E9C 8006BA9C 02A02821 */   addu  $a1, $s5, $zero
/* 046EA0 8006BAA0 AE220000 */  sw    $v0, ($s1)
/* 046EA4 8006BAA4 AE230004 */  sw    $v1, 4($s1)
/* 046EA8 8006BAA8 27A20018 */  addiu $v0, $sp, 0x18
/* 046EAC 8006BAAC 02428021 */  addu  $s0, $s2, $v0
.L8006BAB0:
/* 046EB0 8006BAB0 8E220000 */  lw    $v0, ($s1)
/* 046EB4 8006BAB4 1C400006 */  bgtz  $v0, .L8006BAD0
/* 046EB8 8006BAB8 00001821 */   addu  $v1, $zero, $zero
/* 046EBC 8006BABC 14400006 */  bnez  $v0, .L8006BAD8
/* 046EC0 8006BAC0 0012102A */   slt   $v0, $zero, $s2
/* 046EC4 8006BAC4 8E220004 */  lw    $v0, 4($s1)
/* 046EC8 8006BAC8 10400003 */  beqz  $v0, .L8006BAD8
/* 046ECC 8006BACC 0012102A */   slt   $v0, $zero, $s2
.L8006BAD0:
/* 046ED0 8006BAD0 24030001 */  addiu $v1, $zero, 1
/* 046ED4 8006BAD4 0012102A */  slt   $v0, $zero, $s2
.L8006BAD8:
/* 046ED8 8006BAD8 00621024 */  and   $v0, $v1, $v0
/* 046EDC 8006BADC 10400014 */  beqz  $v0, .L8006BB30
/* 046EE0 8006BAE0 02601821 */   addu  $v1, $s3, $zero
/* 046EE4 8006BAE4 8E260000 */  lw    $a2, ($s1)
/* 046EE8 8006BAE8 8E270004 */  lw    $a3, 4($s1)
/* 046EEC 8006BAEC 001317C3 */  sra   $v0, $s3, 0x1f
/* 046EF0 8006BAF0 AFA20010 */  sw    $v0, 0x10($sp)
/* 046EF4 8006BAF4 AFA30014 */  sw    $v1, 0x14($sp)
/* 046EF8 8006BAF8 0C01B5A9 */  jal   lldiv
/* 046EFC 8006BAFC 27A40030 */   addiu $a0, $sp, 0x30
/* 046F00 8006BB00 8FA20030 */  lw    $v0, 0x30($sp)
/* 046F04 8006BB04 8FA30034 */  lw    $v1, 0x34($sp)
/* 046F08 8006BB08 AE220000 */  sw    $v0, ($s1)
/* 046F0C 8006BB0C AE230004 */  sw    $v1, 4($s1)
/* 046F10 8006BB10 8FA20038 */  lw    $v0, 0x38($sp)
/* 046F14 8006BB14 8FA3003C */  lw    $v1, 0x3c($sp)
/* 046F18 8006BB18 02C31021 */  addu  $v0, $s6, $v1
/* 046F1C 8006BB1C 90420000 */  lbu   $v0, ($v0)
/* 046F20 8006BB20 2610FFFF */  addiu $s0, $s0, -1
/* 046F24 8006BB24 2652FFFF */  addiu $s2, $s2, -1
/* 046F28 8006BB28 0801AEAC */  j     .L8006BAB0
/* 046F2C 8006BB2C A2020000 */   sb    $v0, ($s0)

.L8006BB30:
/* 046F30 8006BB30 8E240008 */  lw    $a0, 8($s1)
/* 046F34 8006BB34 27A50018 */  addiu $a1, $sp, 0x18
/* 046F38 8006BB38 00B22821 */  addu  $a1, $a1, $s2
/* 046F3C 8006BB3C 24060018 */  addiu $a2, $zero, 0x18
/* 046F40 8006BB40 00D23023 */  subu  $a2, $a2, $s2
/* 046F44 8006BB44 0C01929D */  jal   memcpy
/* 046F48 8006BB48 AE260014 */   sw    $a2, 0x14($s1)
/* 046F4C 8006BB4C 8E240014 */  lw    $a0, 0x14($s1)
/* 046F50 8006BB50 8E230024 */  lw    $v1, 0x24($s1)
/* 046F54 8006BB54 0083102A */  slt   $v0, $a0, $v1
/* 046F58 8006BB58 10400002 */  beqz  $v0, .L8006BB64
/* 046F5C 8006BB5C 00641023 */   subu  $v0, $v1, $a0
/* 046F60 8006BB60 AE220010 */  sw    $v0, 0x10($s1)
.L8006BB64:
/* 046F64 8006BB64 8E220024 */  lw    $v0, 0x24($s1)
/* 046F68 8006BB68 0441000F */  bgez  $v0, .L8006BBA8
/* 046F6C 8006BB6C 24030010 */   addiu $v1, $zero, 0x10
/* 046F70 8006BB70 8E220030 */  lw    $v0, 0x30($s1)
/* 046F74 8006BB74 30420014 */  andi  $v0, $v0, 0x14
/* 046F78 8006BB78 1443000B */  bne   $v0, $v1, .L8006BBA8
/* 046F7C 8006BB7C 00000000 */   nop   
/* 046F80 8006BB80 8E220028 */  lw    $v0, 0x28($s1)
/* 046F84 8006BB84 8E23000C */  lw    $v1, 0xc($s1)
/* 046F88 8006BB88 8E250010 */  lw    $a1, 0x10($s1)
/* 046F8C 8006BB8C 8E240014 */  lw    $a0, 0x14($s1)
/* 046F90 8006BB90 00431023 */  subu  $v0, $v0, $v1
/* 046F94 8006BB94 00451023 */  subu  $v0, $v0, $a1
/* 046F98 8006BB98 00449023 */  subu  $s2, $v0, $a0
/* 046F9C 8006BB9C 1A400002 */  blez  $s2, .L8006BBA8
/* 046FA0 8006BBA0 00B21021 */   addu  $v0, $a1, $s2
/* 046FA4 8006BBA4 AE220010 */  sw    $v0, 0x10($s1)
.L8006BBA8:
/* 046FA8 8006BBA8 8FBF005C */  lw    $ra, 0x5c($sp)
/* 046FAC 8006BBAC 8FB60058 */  lw    $s6, 0x58($sp)
/* 046FB0 8006BBB0 8FB50054 */  lw    $s5, 0x54($sp)
/* 046FB4 8006BBB4 8FB40050 */  lw    $s4, 0x50($sp)
/* 046FB8 8006BBB8 8FB3004C */  lw    $s3, 0x4c($sp)
/* 046FBC 8006BBBC 8FB20048 */  lw    $s2, 0x48($sp)
/* 046FC0 8006BBC0 8FB10044 */  lw    $s1, 0x44($sp)
/* 046FC4 8006BBC4 8FB00040 */  lw    $s0, 0x40($sp)
/* 046FC8 8006BBC8 03E00008 */  jr    $ra
/* 046FCC 8006BBCC 27BD0060 */   addiu $sp, $sp, 0x60

