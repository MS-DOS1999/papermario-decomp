.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_802DD634
/* 100724 802DD634 8C820000 */  lw    $v0, ($a0)
/* 100728 802DD638 10400026 */  beqz  $v0, .L802DD6D4
/* 10072C 802DD63C 24020100 */   addiu $v0, $zero, 0x100
/* 100730 802DD640 C480001C */  lwc1  $f0, 0x1c($a0)
/* 100734 802DD644 C4820020 */  lwc1  $f2, 0x20($a0)
/* 100738 802DD648 8C880004 */  lw    $t0, 4($a0)
/* 10073C 802DD64C C4840024 */  lwc1  $f4, 0x24($a0)
/* 100740 802DD650 31030F00 */  andi  $v1, $t0, 0xf00
/* 100744 802DD654 E4800028 */  swc1  $f0, 0x28($a0)
/* 100748 802DD658 E482002C */  swc1  $f2, 0x2c($a0)
/* 10074C 802DD65C 14620010 */  bne   $v1, $v0, .L802DD6A0
/* 100750 802DD660 E4840030 */   swc1  $f4, 0x30($a0)
/* 100754 802DD664 310200FF */  andi  $v0, $t0, 0xff
/* 100758 802DD668 00021080 */  sll   $v0, $v0, 2
/* 10075C 802DD66C 00451021 */  addu  $v0, $v0, $a1
/* 100760 802DD670 8C420000 */  lw    $v0, ($v0)
/* 100764 802DD674 C4420028 */  lwc1  $f2, 0x28($v0)
/* 100768 802DD678 46020000 */  add.s $f0, $f0, $f2
/* 10076C 802DD67C E4800028 */  swc1  $f0, 0x28($a0)
/* 100770 802DD680 C480002C */  lwc1  $f0, 0x2c($a0)
/* 100774 802DD684 C442002C */  lwc1  $f2, 0x2c($v0)
/* 100778 802DD688 46020000 */  add.s $f0, $f0, $f2
/* 10077C 802DD68C E480002C */  swc1  $f0, 0x2c($a0)
/* 100780 802DD690 C4420030 */  lwc1  $f2, 0x30($v0)
/* 100784 802DD694 46002006 */  mov.s $f0, $f4
/* 100788 802DD698 46020000 */  add.s $f0, $f0, $f2
/* 10078C 802DD69C E4800030 */  swc1  $f0, 0x30($a0)
.L802DD6A0:
/* 100790 802DD6A0 8C820014 */  lw    $v0, 0x14($a0)
/* 100794 802DD6A4 2405FFFF */  addiu $a1, $zero, -1
/* 100798 802DD6A8 1045000A */  beq   $v0, $a1, .L802DD6D4
/* 10079C 802DD6AC 00021080 */   sll   $v0, $v0, 2
/* 1007A0 802DD6B0 00461021 */  addu  $v0, $v0, $a2
/* 1007A4 802DD6B4 8C830018 */  lw    $v1, 0x18($a0)
/* 1007A8 802DD6B8 14650006 */  bne   $v1, $a1, .L802DD6D4
/* 1007AC 802DD6BC 8C420000 */   lw    $v0, ($v0)
/* 1007B0 802DD6C0 80420006 */  lb    $v0, 6($v0)
/* 1007B4 802DD6C4 10E00003 */  beqz  $a3, .L802DD6D4
/* 1007B8 802DD6C8 AC820018 */   sw    $v0, 0x18($a0)
/* 1007BC 802DD6CC 50400001 */  beql  $v0, $zero, .L802DD6D4
/* 1007C0 802DD6D0 AC870018 */   sw    $a3, 0x18($a0)
.L802DD6D4:
/* 1007C4 802DD6D4 03E00008 */  jr    $ra
/* 1007C8 802DD6D8 00000000 */   nop   

