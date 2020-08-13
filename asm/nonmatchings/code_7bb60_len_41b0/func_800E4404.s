.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800E4404
/* 07D8B4 800E4404 27BDFF98 */  addiu $sp, $sp, -0x68
/* 07D8B8 800E4408 AFB50044 */  sw    $s5, 0x44($sp)
/* 07D8BC 800E440C 8FB50078 */  lw    $s5, 0x78($sp)
/* 07D8C0 800E4410 AFB20038 */  sw    $s2, 0x38($sp)
/* 07D8C4 800E4414 8FB2007C */  lw    $s2, 0x7c($sp)
/* 07D8C8 800E4418 F7B40050 */  sdc1  $f20, 0x50($sp)
/* 07D8CC 800E441C 4480A000 */  mtc1  $zero, $f20
/* 07D8D0 800E4420 F7B80060 */  sdc1  $f24, 0x60($sp)
/* 07D8D4 800E4424 3C0142B4 */  lui   $at, 0x42b4
/* 07D8D8 800E4428 4481C000 */  mtc1  $at, $f24
/* 07D8DC 800E442C AFB60048 */  sw    $s6, 0x48($sp)
/* 07D8E0 800E4430 0080B02D */  daddu $s6, $a0, $zero
/* 07D8E4 800E4434 AFB3003C */  sw    $s3, 0x3c($sp)
/* 07D8E8 800E4438 00E0982D */  daddu $s3, $a3, $zero
/* 07D8EC 800E443C AFB10034 */  sw    $s1, 0x34($sp)
/* 07D8F0 800E4440 2411FFFF */  addiu $s1, $zero, -1
/* 07D8F4 800E4444 AFB00030 */  sw    $s0, 0x30($sp)
/* 07D8F8 800E4448 0000802D */  daddu $s0, $zero, $zero
/* 07D8FC 800E444C F7B60058 */  sdc1  $f22, 0x58($sp)
/* 07D900 800E4450 4485B000 */  mtc1  $a1, $f22
/* 07D904 800E4454 00000000 */  nop   
/* 07D908 800E4458 4680B5A0 */  cvt.s.w $f22, $f22
/* 07D90C 800E445C AFB40040 */  sw    $s4, 0x40($sp)
/* 07D910 800E4460 27B40028 */  addiu $s4, $sp, 0x28
/* 07D914 800E4464 AFBF004C */  sw    $ra, 0x4c($sp)
.L800E4468:
/* 07D918 800E4468 C6600000 */  lwc1  $f0, ($s3)
/* 07D91C 800E446C E7A00020 */  swc1  $f0, 0x20($sp)
/* 07D920 800E4470 C6A00000 */  lwc1  $f0, ($s5)
/* 07D924 800E4474 02C0202D */  daddu $a0, $s6, $zero
/* 07D928 800E4478 46160000 */  add.s $f0, $f0, $f22
/* 07D92C 800E447C 3C05800F */  lui   $a1, 0x800f
/* 07D930 800E4480 8CA57B30 */  lw    $a1, 0x7b30($a1)
/* 07D934 800E4484 27A60020 */  addiu $a2, $sp, 0x20
/* 07D938 800E4488 E7A00024 */  swc1  $f0, 0x24($sp)
/* 07D93C 800E448C C6400000 */  lwc1  $f0, ($s2)
/* 07D940 800E4490 27A70024 */  addiu $a3, $sp, 0x24
/* 07D944 800E4494 E7A00028 */  swc1  $f0, 0x28($sp)
/* 07D948 800E4498 AFB40010 */  sw    $s4, 0x10($sp)
/* 07D94C 800E449C AFA00014 */  sw    $zero, 0x14($sp)
/* 07D950 800E44A0 0C037B01 */  jal   func_800DEC04
/* 07D954 800E44A4 E7B40018 */   swc1  $f20, 0x18($sp)
/* 07D958 800E44A8 04430001 */  bgezl $v0, .L800E44B0
/* 07D95C 800E44AC 0040882D */   daddu $s1, $v0, $zero
.L800E44B0:
/* 07D960 800E44B0 26100001 */  addiu $s0, $s0, 1
/* 07D964 800E44B4 C7A00020 */  lwc1  $f0, 0x20($sp)
/* 07D968 800E44B8 2A020004 */  slti  $v0, $s0, 4
/* 07D96C 800E44BC E6600000 */  swc1  $f0, ($s3)
/* 07D970 800E44C0 C7A00028 */  lwc1  $f0, 0x28($sp)
/* 07D974 800E44C4 4618A500 */  add.s $f20, $f20, $f24
/* 07D978 800E44C8 1440FFE7 */  bnez  $v0, .L800E4468
/* 07D97C 800E44CC E6400000 */   swc1  $f0, ($s2)
/* 07D980 800E44D0 0220102D */  daddu $v0, $s1, $zero
/* 07D984 800E44D4 8FBF004C */  lw    $ra, 0x4c($sp)
/* 07D988 800E44D8 8FB60048 */  lw    $s6, 0x48($sp)
/* 07D98C 800E44DC 8FB50044 */  lw    $s5, 0x44($sp)
/* 07D990 800E44E0 8FB40040 */  lw    $s4, 0x40($sp)
/* 07D994 800E44E4 8FB3003C */  lw    $s3, 0x3c($sp)
/* 07D998 800E44E8 8FB20038 */  lw    $s2, 0x38($sp)
/* 07D99C 800E44EC 8FB10034 */  lw    $s1, 0x34($sp)
/* 07D9A0 800E44F0 8FB00030 */  lw    $s0, 0x30($sp)
/* 07D9A4 800E44F4 D7B80060 */  ldc1  $f24, 0x60($sp)
/* 07D9A8 800E44F8 D7B60058 */  ldc1  $f22, 0x58($sp)
/* 07D9AC 800E44FC D7B40050 */  ldc1  $f20, 0x50($sp)
/* 07D9B0 800E4500 03E00008 */  jr    $ra
/* 07D9B4 800E4504 27BD0068 */   addiu $sp, $sp, 0x68

