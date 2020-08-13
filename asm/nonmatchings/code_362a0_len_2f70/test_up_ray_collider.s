.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel test_up_ray_collider
/* 0386DC 8005D2DC 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 0386E0 8005D2E0 F7B80040 */  sdc1  $f24, 0x40($sp)
/* 0386E4 8005D2E4 4486C000 */  mtc1  $a2, $f24
/* 0386E8 8005D2E8 F7BA0048 */  sdc1  $f26, 0x48($sp)
/* 0386EC 8005D2EC 4487D000 */  mtc1  $a3, $f26
/* 0386F0 8005D2F0 C7AC0070 */  lwc1  $f12, 0x70($sp)
/* 0386F4 8005D2F4 3C0140C9 */  lui   $at, 0x40c9
/* 0386F8 8005D2F8 34210FD0 */  ori   $at, $at, 0xfd0
/* 0386FC 8005D2FC 44810000 */  mtc1  $at, $f0
/* 038700 8005D300 F7BC0050 */  sdc1  $f28, 0x50($sp)
/* 038704 8005D304 3C01BF80 */  lui   $at, 0xbf80
/* 038708 8005D308 4481E000 */  mtc1  $at, $f28
/* 03870C 8005D30C AFB1001C */  sw    $s1, 0x1c($sp)
/* 038710 8005D310 0080882D */  daddu $s1, $a0, $zero
/* 038714 8005D314 AFB00018 */  sw    $s0, 0x18($sp)
/* 038718 8005D318 00A0802D */  daddu $s0, $a1, $zero
/* 03871C 8005D31C F7B40030 */  sdc1  $f20, 0x30($sp)
/* 038720 8005D320 C7B40068 */  lwc1  $f20, 0x68($sp)
/* 038724 8005D324 27A50010 */  addiu $a1, $sp, 0x10
/* 038728 8005D328 F7B60038 */  sdc1  $f22, 0x38($sp)
/* 03872C 8005D32C C7B6006C */  lwc1  $f22, 0x6c($sp)
/* 038730 8005D330 46006302 */  mul.s $f12, $f12, $f0
/* 038734 8005D334 00000000 */  nop   
/* 038738 8005D338 3C0143B4 */  lui   $at, 0x43b4
/* 03873C 8005D33C 44810000 */  mtc1  $at, $f0
/* 038740 8005D340 27A60014 */  addiu $a2, $sp, 0x14
/* 038744 8005D344 AFBF0028 */  sw    $ra, 0x28($sp)
/* 038748 8005D348 AFB30024 */  sw    $s3, 0x24($sp)
/* 03874C 8005D34C AFB20020 */  sw    $s2, 0x20($sp)
/* 038750 8005D350 0C00A82D */  jal   sin_cos_rad
/* 038754 8005D354 46006303 */   div.s $f12, $f12, $f0
/* 038758 8005D358 3C13800B */  lui   $s3, 0x800b
/* 03875C 8005D35C 267342E0 */  addiu $s3, $s3, 0x42e0
/* 038760 8005D360 001010C0 */  sll   $v0, $s0, 3
/* 038764 8005D364 00501023 */  subu  $v0, $v0, $s0
/* 038768 8005D368 00021080 */  sll   $v0, $v0, 2
/* 03876C 8005D36C 8E630004 */  lw    $v1, 4($s3)
/* 038770 8005D370 C7A00010 */  lwc1  $f0, 0x10($sp)
/* 038774 8005D374 00629021 */  addu  $s2, $v1, $v0
/* 038778 8005D378 8E420000 */  lw    $v0, ($s2)
/* 03877C 8005D37C 3C01800A */  lui   $at, 0x800a
/* 038780 8005D380 AC204240 */  sw    $zero, 0x4240($at)
/* 038784 8005D384 3C01800A */  lui   $at, 0x800a
/* 038788 8005D388 E4384230 */  swc1  $f24, 0x4230($at)
/* 03878C 8005D38C 3C01800A */  lui   $at, 0x800a
/* 038790 8005D390 E43A4234 */  swc1  $f26, 0x4234($at)
/* 038794 8005D394 3C01800A */  lui   $at, 0x800a
/* 038798 8005D398 E4344238 */  swc1  $f20, 0x4238($at)
/* 03879C 8005D39C 3C01800A */  lui   $at, 0x800a
/* 0387A0 8005D3A0 E4364254 */  swc1  $f22, 0x4254($at)
/* 0387A4 8005D3A4 3C01800A */  lui   $at, 0x800a
/* 0387A8 8005D3A8 E420423C */  swc1  $f0, 0x423c($at)
/* 0387AC 8005D3AC C7A00014 */  lwc1  $f0, 0x14($sp)
/* 0387B0 8005D3B0 00511024 */  and   $v0, $v0, $s1
/* 0387B4 8005D3B4 46000007 */  neg.s $f0, $f0
/* 0387B8 8005D3B8 3C01800A */  lui   $at, 0x800a
/* 0387BC 8005D3BC E4204244 */  swc1  $f0, 0x4244($at)
/* 0387C0 8005D3C0 14400015 */  bnez  $v0, .L8005D418
/* 0387C4 8005D3C4 4600E006 */   mov.s $f0, $f28
/* 0387C8 8005D3C8 8642000A */  lh    $v0, 0xa($s2)
/* 0387CC 8005D3CC 10400012 */  beqz  $v0, .L8005D418
/* 0387D0 8005D3D0 00000000 */   nop   
/* 0387D4 8005D3D4 8E51000C */  lw    $s1, 0xc($s2)
/* 0387D8 8005D3D8 1840000F */  blez  $v0, .L8005D418
/* 0387DC 8005D3DC 0000802D */   daddu $s0, $zero, $zero
/* 0387E0 8005D3E0 0220202D */  daddu $a0, $s1, $zero
.L8005D3E4:
/* 0387E4 8005D3E4 8E650000 */  lw    $a1, ($s3)
/* 0387E8 8005D3E8 0C0171E9 */  jal   test_up_ray_triangle
/* 0387EC 8005D3EC 26310040 */   addiu $s1, $s1, 0x40
/* 0387F0 8005D3F0 10400003 */  beqz  $v0, .L8005D400
/* 0387F4 8005D3F4 00000000 */   nop   
/* 0387F8 8005D3F8 3C01800A */  lui   $at, 0x800a
/* 0387FC 8005D3FC C43C4254 */  lwc1  $f28, 0x4254($at)
.L8005D400:
/* 038800 8005D400 8642000A */  lh    $v0, 0xa($s2)
/* 038804 8005D404 26100001 */  addiu $s0, $s0, 1
/* 038808 8005D408 0202102A */  slt   $v0, $s0, $v0
/* 03880C 8005D40C 1440FFF5 */  bnez  $v0, .L8005D3E4
/* 038810 8005D410 0220202D */   daddu $a0, $s1, $zero
/* 038814 8005D414 4600E006 */  mov.s $f0, $f28
.L8005D418:
/* 038818 8005D418 8FBF0028 */  lw    $ra, 0x28($sp)
/* 03881C 8005D41C 8FB30024 */  lw    $s3, 0x24($sp)
/* 038820 8005D420 8FB20020 */  lw    $s2, 0x20($sp)
/* 038824 8005D424 8FB1001C */  lw    $s1, 0x1c($sp)
/* 038828 8005D428 8FB00018 */  lw    $s0, 0x18($sp)
/* 03882C 8005D42C D7BC0050 */  ldc1  $f28, 0x50($sp)
/* 038830 8005D430 D7BA0048 */  ldc1  $f26, 0x48($sp)
/* 038834 8005D434 D7B80040 */  ldc1  $f24, 0x40($sp)
/* 038838 8005D438 D7B60038 */  ldc1  $f22, 0x38($sp)
/* 03883C 8005D43C D7B40030 */  ldc1  $f20, 0x30($sp)
/* 038840 8005D440 03E00008 */  jr    $ra
/* 038844 8005D444 27BD0058 */   addiu $sp, $sp, 0x58

