.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_80057F20
/* 033320 80057F20 30A3000F */  andi  $v1, $a1, 0xf
/* 033324 80057F24 24020010 */  addiu $v0, $zero, 0x10
/* 033328 80057F28 00431823 */  subu  $v1, $v0, $v1
/* 03332C 80057F2C 10620003 */  beq   $v1, $v0, .L80057F3C
/* 033330 80057F30 00A31021 */   addu  $v0, $a1, $v1
/* 033334 80057F34 08015FD0 */  j     .L80057F40
/* 033338 80057F38 AC820000 */   sw    $v0, ($a0)

.L80057F3C:
/* 03333C 80057F3C AC850000 */  sw    $a1, ($a0)
.L80057F40:
/* 033340 80057F40 AC860008 */  sw    $a2, 8($a0)
/* 033344 80057F44 00C0102D */  daddu $v0, $a2, $zero
/* 033348 80057F48 0000282D */  daddu $a1, $zero, $zero
/* 03334C 80057F4C 8C830000 */  lw    $v1, ($a0)
/* 033350 80057F50 00021082 */  srl   $v0, $v0, 2
/* 033354 80057F54 AC80000C */  sw    $zero, 0xc($a0)
/* 033358 80057F58 1040000B */  beqz  $v0, .L80057F88
/* 03335C 80057F5C AC830004 */   sw    $v1, 4($a0)
.L80057F60:
/* 033360 80057F60 8C820000 */  lw    $v0, ($a0)
/* 033364 80057F64 00051880 */  sll   $v1, $a1, 2
/* 033368 80057F68 00621821 */  addu  $v1, $v1, $v0
/* 03336C 80057F6C AC600000 */  sw    $zero, ($v1)
/* 033370 80057F70 8C820008 */  lw    $v0, 8($a0)
/* 033374 80057F74 24A50001 */  addiu $a1, $a1, 1
/* 033378 80057F78 00021082 */  srl   $v0, $v0, 2
/* 03337C 80057F7C 00A2102B */  sltu  $v0, $a1, $v0
/* 033380 80057F80 1440FFF7 */  bnez  $v0, .L80057F60
/* 033384 80057F84 00000000 */   nop   
.L80057F88:
/* 033388 80057F88 03E00008 */  jr    $ra
/* 03338C 80057F8C 00000000 */   nop   
