.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_801235C0
/* 0B9CC0 801235C0 3C028007 */  lui   $v0, 0x8007
/* 0B9CC4 801235C4 8C42419C */  lw    $v0, 0x419c($v0)
/* 0B9CC8 801235C8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0B9CCC 801235CC AFBF0018 */  sw    $ra, 0x18($sp)
/* 0B9CD0 801235D0 AFB10014 */  sw    $s1, 0x14($sp)
/* 0B9CD4 801235D4 AFB00010 */  sw    $s0, 0x10($sp)
/* 0B9CD8 801235D8 80420070 */  lb    $v0, 0x70($v0)
/* 0B9CDC 801235DC 10400003 */  beqz  $v0, .L801235EC
/* 0B9CE0 801235E0 30820800 */   andi  $v0, $a0, 0x800
/* 0B9CE4 801235E4 10400010 */  beqz  $v0, .L80123628
/* 0B9CE8 801235E8 00000000 */   nop   
.L801235EC:
/* 0B9CEC 801235EC 2402F7FF */  addiu $v0, $zero, -0x801
/* 0B9CF0 801235F0 00822024 */  and   $a0, $a0, $v0
/* 0B9CF4 801235F4 3C118015 */  lui   $s1, 0x8015
/* 0B9CF8 801235F8 26314420 */  addiu $s1, $s1, 0x4420
/* 0B9CFC 801235FC 8E220000 */  lw    $v0, ($s1)
/* 0B9D00 80123600 00048080 */  sll   $s0, $a0, 2
/* 0B9D04 80123604 02021021 */  addu  $v0, $s0, $v0
/* 0B9D08 80123608 8C440000 */  lw    $a0, ($v0)
/* 0B9D0C 8012360C 10800006 */  beqz  $a0, .L80123628
/* 0B9D10 80123610 00000000 */   nop   
/* 0B9D14 80123614 0C00AB4B */  jal   heap_free
/* 0B9D18 80123618 00000000 */   nop   
/* 0B9D1C 8012361C 8E220000 */  lw    $v0, ($s1)
/* 0B9D20 80123620 02021021 */  addu  $v0, $s0, $v0
/* 0B9D24 80123624 AC400000 */  sw    $zero, ($v0)
.L80123628:
/* 0B9D28 80123628 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0B9D2C 8012362C 8FB10014 */  lw    $s1, 0x14($sp)
/* 0B9D30 80123630 8FB00010 */  lw    $s0, 0x10($sp)
/* 0B9D34 80123634 03E00008 */  jr    $ra
/* 0B9D38 80123638 27BD0020 */   addiu $sp, $sp, 0x20

