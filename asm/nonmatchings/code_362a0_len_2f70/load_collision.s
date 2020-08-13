.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel load_collision
/* 036458 8005B058 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 03645C 8005B05C AFBF002C */  sw    $ra, 0x2c($sp)
/* 036460 8005B060 AFB60028 */  sw    $s6, 0x28($sp)
/* 036464 8005B064 AFB50024 */  sw    $s5, 0x24($sp)
/* 036468 8005B068 AFB40020 */  sw    $s4, 0x20($sp)
/* 03646C 8005B06C AFB3001C */  sw    $s3, 0x1c($sp)
/* 036470 8005B070 AFB20018 */  sw    $s2, 0x18($sp)
/* 036474 8005B074 AFB10014 */  sw    $s1, 0x14($sp)
/* 036478 8005B078 0C016BF0 */  jal   load_hit_asset
/* 03647C 8005B07C AFB00010 */   sw    $s0, 0x10($sp)
/* 036480 8005B080 3C13800B */  lui   $s3, 0x800b
/* 036484 8005B084 267342E0 */  addiu $s3, $s3, 0x42e0
/* 036488 8005B088 8662000C */  lh    $v0, 0xc($s3)
/* 03648C 8005B08C 3C11800A */  lui   $s1, 0x800a
/* 036490 8005B090 8E314264 */  lw    $s1, 0x4264($s1)
/* 036494 8005B094 1840001C */  blez  $v0, .L8005B108
/* 036498 8005B098 0000902D */   daddu $s2, $zero, $zero
/* 03649C 8005B09C 2416FFFF */  addiu $s6, $zero, -1
/* 0364A0 8005B0A0 3C158000 */  lui   $s5, 0x8000
/* 0364A4 8005B0A4 0240A02D */  daddu $s4, $s2, $zero
.L8005B0A8:
/* 0364A8 8005B0A8 8E620004 */  lw    $v0, 4($s3)
/* 0364AC 8005B0AC 8E230000 */  lw    $v1, ($s1)
/* 0364B0 8005B0B0 00542021 */  addu  $a0, $v0, $s4
/* 0364B4 8005B0B4 AC830000 */  sw    $v1, ($a0)
/* 0364B8 8005B0B8 96250004 */  lhu   $a1, 4($s1)
/* 0364BC 8005B0BC 0060102D */  daddu $v0, $v1, $zero
/* 0364C0 8005B0C0 1056000B */  beq   $v0, $s6, .L8005B0F0
/* 0364C4 8005B0C4 A4850008 */   sh    $a1, 8($a0)
/* 0364C8 8005B0C8 00551024 */  and   $v0, $v0, $s5
/* 0364CC 8005B0CC 10400008 */  beqz  $v0, .L8005B0F0
/* 0364D0 8005B0D0 00052C00 */   sll   $a1, $a1, 0x10
/* 0364D4 8005B0D4 00128400 */  sll   $s0, $s2, 0x10
/* 0364D8 8005B0D8 00108403 */  sra   $s0, $s0, 0x10
/* 0364DC 8005B0DC 0200202D */  daddu $a0, $s0, $zero
/* 0364E0 8005B0E0 0C016DE0 */  jal   parent_collider_to_model
/* 0364E4 8005B0E4 00052C03 */   sra   $a1, $a1, 0x10
/* 0364E8 8005B0E8 0C016E89 */  jal   update_collider_transform
/* 0364EC 8005B0EC 0200202D */   daddu $a0, $s0, $zero
.L8005B0F0:
/* 0364F0 8005B0F0 2694001C */  addiu $s4, $s4, 0x1c
/* 0364F4 8005B0F4 26520001 */  addiu $s2, $s2, 1
/* 0364F8 8005B0F8 8662000C */  lh    $v0, 0xc($s3)
/* 0364FC 8005B0FC 0242102A */  slt   $v0, $s2, $v0
/* 036500 8005B100 1440FFE9 */  bnez  $v0, .L8005B0A8
/* 036504 8005B104 26310008 */   addiu $s1, $s1, 8
.L8005B108:
/* 036508 8005B108 3C13800E */  lui   $s3, 0x800e
/* 03650C 8005B10C 267391D0 */  addiu $s3, $s3, -0x6e30
/* 036510 8005B110 8662000C */  lh    $v0, 0xc($s3)
/* 036514 8005B114 3C11800A */  lui   $s1, 0x800a
/* 036518 8005B118 8E314268 */  lw    $s1, 0x4268($s1)
/* 03651C 8005B11C 1840000E */  blez  $v0, .L8005B158
/* 036520 8005B120 0000902D */   daddu $s2, $zero, $zero
/* 036524 8005B124 0240282D */  daddu $a1, $s2, $zero
.L8005B128:
/* 036528 8005B128 26520001 */  addiu $s2, $s2, 1
/* 03652C 8005B12C 8E620004 */  lw    $v0, 4($s3)
/* 036530 8005B130 8E230000 */  lw    $v1, ($s1)
/* 036534 8005B134 00452021 */  addu  $a0, $v0, $a1
/* 036538 8005B138 AC830000 */  sw    $v1, ($a0)
/* 03653C 8005B13C 96220004 */  lhu   $v0, 4($s1)
/* 036540 8005B140 24A5001C */  addiu $a1, $a1, 0x1c
/* 036544 8005B144 A4820008 */  sh    $v0, 8($a0)
/* 036548 8005B148 8662000C */  lh    $v0, 0xc($s3)
/* 03654C 8005B14C 0242102A */  slt   $v0, $s2, $v0
/* 036550 8005B150 1440FFF5 */  bnez  $v0, .L8005B128
/* 036554 8005B154 26310008 */   addiu $s1, $s1, 8
.L8005B158:
/* 036558 8005B158 3C04800A */  lui   $a0, 0x800a
/* 03655C 8005B15C 8C844264 */  lw    $a0, 0x4264($a0)
/* 036560 8005B160 0C00AB1E */  jal   general_heap_free
/* 036564 8005B164 00000000 */   nop   
/* 036568 8005B168 3C04800A */  lui   $a0, 0x800a
/* 03656C 8005B16C 8C844268 */  lw    $a0, 0x4268($a0)
/* 036570 8005B170 0C00AB1E */  jal   general_heap_free
/* 036574 8005B174 00000000 */   nop   
/* 036578 8005B178 8FBF002C */  lw    $ra, 0x2c($sp)
/* 03657C 8005B17C 8FB60028 */  lw    $s6, 0x28($sp)
/* 036580 8005B180 8FB50024 */  lw    $s5, 0x24($sp)
/* 036584 8005B184 8FB40020 */  lw    $s4, 0x20($sp)
/* 036588 8005B188 8FB3001C */  lw    $s3, 0x1c($sp)
/* 03658C 8005B18C 8FB20018 */  lw    $s2, 0x18($sp)
/* 036590 8005B190 8FB10014 */  lw    $s1, 0x14($sp)
/* 036594 8005B194 8FB00010 */  lw    $s0, 0x10($sp)
/* 036598 8005B198 03E00008 */  jr    $ra
/* 03659C 8005B19C 27BD0030 */   addiu $sp, $sp, 0x30

