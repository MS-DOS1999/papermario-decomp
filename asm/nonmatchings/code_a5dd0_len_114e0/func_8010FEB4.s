.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8010FEB4
/* 0A65B4 8010FEB4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0A65B8 8010FEB8 AFB10014 */  sw    $s1, 0x14($sp)
/* 0A65BC 8010FEBC 0000882D */  daddu $s1, $zero, $zero
/* 0A65C0 8010FEC0 AFB20018 */  sw    $s2, 0x18($sp)
/* 0A65C4 8010FEC4 241200FF */  addiu $s2, $zero, 0xff
/* 0A65C8 8010FEC8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0A65CC 8010FECC AFB00010 */  sw    $s0, 0x10($sp)
.L8010FED0:
/* 0A65D0 8010FED0 0C04417A */  jal   get_entity_by_index
/* 0A65D4 8010FED4 0220202D */   daddu $a0, $s1, $zero
/* 0A65D8 8010FED8 0040802D */  daddu $s0, $v0, $zero
/* 0A65DC 8010FEDC 52000070 */  beql  $s0, $zero, .L801100A0
/* 0A65E0 8010FEE0 26310001 */   addiu $s1, $s1, 1
/* 0A65E4 8010FEE4 3C028007 */  lui   $v0, 0x8007
/* 0A65E8 8010FEE8 8C42419C */  lw    $v0, 0x419c($v0)
/* 0A65EC 8010FEEC 80420070 */  lb    $v0, 0x70($v0)
/* 0A65F0 8010FEF0 14400025 */  bnez  $v0, .L8010FF88
/* 0A65F4 8010FEF4 00000000 */   nop   
/* 0A65F8 8010FEF8 3C028015 */  lui   $v0, 0x8015
/* 0A65FC 8010FEFC 8C421310 */  lw    $v0, 0x1310($v0)
/* 0A6600 8010FF00 10400013 */  beqz  $v0, .L8010FF50
/* 0A6604 8010FF04 3C030008 */   lui   $v1, 8
/* 0A6608 8010FF08 8E020000 */  lw    $v0, ($s0)
/* 0A660C 8010FF0C 00431024 */  and   $v0, $v0, $v1
/* 0A6610 8010FF10 1440000F */  bnez  $v0, .L8010FF50
/* 0A6614 8010FF14 00000000 */   nop   
/* 0A6618 8010FF18 8E060048 */  lw    $a2, 0x48($s0)
/* 0A661C 8010FF1C 3C02800F */  lui   $v0, 0x800f
/* 0A6620 8010FF20 8C427B30 */  lw    $v0, 0x7b30($v0)
/* 0A6624 8010FF24 8E070050 */  lw    $a3, 0x50($s0)
/* 0A6628 8010FF28 C44C0028 */  lwc1  $f12, 0x28($v0)
/* 0A662C 8010FF2C 0C00A7B5 */  jal   dist2D
/* 0A6630 8010FF30 C44E0030 */   lwc1  $f14, 0x30($v0)
/* 0A6634 8010FF34 3C014348 */  lui   $at, 0x4348
/* 0A6638 8010FF38 44811000 */  mtc1  $at, $f2
/* 0A663C 8010FF3C 00000000 */  nop   
/* 0A6640 8010FF40 4600103C */  c.lt.s $f2, $f0
/* 0A6644 8010FF44 00000000 */  nop   
/* 0A6648 8010FF48 45030055 */  bc1tl .L801100A0
/* 0A664C 8010FF4C 26310001 */   addiu $s1, $s1, 1
.L8010FF50:
/* 0A6650 8010FF50 3C038015 */  lui   $v1, 0x8015
/* 0A6654 8010FF54 8C631310 */  lw    $v1, 0x1310($v1)
/* 0A6658 8010FF58 24020001 */  addiu $v0, $zero, 1
/* 0A665C 8010FF5C 54620004 */  bnel  $v1, $v0, .L8010FF70
/* 0A6660 8010FF60 24020002 */   addiu $v0, $zero, 2
/* 0A6664 8010FF64 8E020000 */  lw    $v0, ($s0)
/* 0A6668 8010FF68 08043FE0 */  j     .L8010FF80
/* 0A666C 8010FF6C 30420002 */   andi  $v0, $v0, 2

.L8010FF70:
/* 0A6670 8010FF70 14620005 */  bne   $v1, $v0, .L8010FF88
/* 0A6674 8010FF74 3C030004 */   lui   $v1, 4
/* 0A6678 8010FF78 8E020000 */  lw    $v0, ($s0)
/* 0A667C 8010FF7C 00431024 */  and   $v0, $v0, $v1
.L8010FF80:
/* 0A6680 8010FF80 50400047 */  beql  $v0, $zero, .L801100A0
/* 0A6684 8010FF84 26310001 */   addiu $s1, $s1, 1
.L8010FF88:
/* 0A6688 8010FF88 8E030000 */  lw    $v1, ($s0)
/* 0A668C 8010FF8C 30620001 */  andi  $v0, $v1, 1
/* 0A6690 8010FF90 54400043 */  bnel  $v0, $zero, .L801100A0
/* 0A6694 8010FF94 26310001 */   addiu $s1, $s1, 1
/* 0A6698 8010FF98 30620008 */  andi  $v0, $v1, 8
/* 0A669C 8010FF9C 1040001F */  beqz  $v0, .L8011001C
/* 0A66A0 8010FFA0 00000000 */   nop   
/* 0A66A4 8010FFA4 3C028015 */  lui   $v0, 0x8015
/* 0A66A8 8010FFA8 8C42AFB0 */  lw    $v0, -0x5050($v0)
/* 0A66AC 8010FFAC 14520007 */  bne   $v0, $s2, .L8010FFCC
/* 0A66B0 8010FFB0 00000000 */   nop   
/* 0A66B4 8010FFB4 8E06003C */  lw    $a2, 0x3c($s0)
/* 0A66B8 8010FFB8 10C0000A */  beqz  $a2, .L8010FFE4
/* 0A66BC 8010FFBC 00000000 */   nop   
/* 0A66C0 8010FFC0 86040014 */  lh    $a0, 0x14($s0)
/* 0A66C4 8010FFC4 08043FF7 */  j     .L8010FFDC
/* 0A66C8 8010FFC8 92050004 */   lbu   $a1, 4($s0)

.L8010FFCC:
/* 0A66CC 8010FFCC 86040014 */  lh    $a0, 0x14($s0)
/* 0A66D0 8010FFD0 92050004 */  lbu   $a1, 4($s0)
/* 0A66D4 8010FFD4 3C068011 */  lui   $a2, 0x8011
/* 0A66D8 8010FFD8 24C6FE44 */  addiu $a2, $a2, -0x1bc
.L8010FFDC:
/* 0A66DC 8010FFDC 0C048000 */  jal   func_80120000
/* 0A66E0 8010FFE0 00000000 */   nop   
.L8010FFE4:
/* 0A66E4 8010FFE4 8E070044 */  lw    $a3, 0x44($s0)
/* 0A66E8 8010FFE8 14E00006 */  bnez  $a3, .L80110004
/* 0A66EC 8010FFEC 00000000 */   nop   
/* 0A66F0 8010FFF0 86040014 */  lh    $a0, 0x14($s0)
/* 0A66F4 8010FFF4 0C047CC1 */  jal   func_8011F304
/* 0A66F8 8010FFF8 260500B8 */   addiu $a1, $s0, 0xb8
/* 0A66FC 8010FFFC 08044028 */  j     .L801100A0
/* 0A6700 80110000 26310001 */   addiu $s1, $s1, 1

.L80110004:
/* 0A6704 80110004 86040014 */  lh    $a0, 0x14($s0)
/* 0A6708 80110008 86060012 */  lh    $a2, 0x12($s0)
/* 0A670C 8011000C 0C047CFA */  jal   func_8011F3E8
/* 0A6710 80110010 260500B8 */   addiu $a1, $s0, 0xb8
/* 0A6714 80110014 08044028 */  j     .L801100A0
/* 0A6718 80110018 26310001 */   addiu $s1, $s1, 1

.L8011001C:
/* 0A671C 8011001C 3C028015 */  lui   $v0, 0x8015
/* 0A6720 80110020 8C42AFB0 */  lw    $v0, -0x5050($v0)
/* 0A6724 80110024 1452000B */  bne   $v0, $s2, .L80110054
/* 0A6728 80110028 00000000 */   nop   
/* 0A672C 8011002C 8E06003C */  lw    $a2, 0x3c($s0)
/* 0A6730 80110030 10C00004 */  beqz  $a2, .L80110044
/* 0A6734 80110034 00000000 */   nop   
/* 0A6738 80110038 86040014 */  lh    $a0, 0x14($s0)
/* 0A673C 8011003C 08044019 */  j     .L80110064
/* 0A6740 80110040 92050004 */   lbu   $a1, 4($s0)

.L80110044:
/* 0A6744 80110044 0C048B77 */  jal   func_80122DDC
/* 0A6748 80110048 86040014 */   lh    $a0, 0x14($s0)
/* 0A674C 8011004C 0804401B */  j     .L8011006C
/* 0A6750 80110050 AC400060 */   sw    $zero, 0x60($v0)

.L80110054:
/* 0A6754 80110054 86040014 */  lh    $a0, 0x14($s0)
/* 0A6758 80110058 92050004 */  lbu   $a1, 4($s0)
/* 0A675C 8011005C 3C068011 */  lui   $a2, 0x8011
/* 0A6760 80110060 24C6FE44 */  addiu $a2, $a2, -0x1bc
.L80110064:
/* 0A6764 80110064 0C048BD9 */  jal   func_80122F64
/* 0A6768 80110068 00000000 */   nop   
.L8011006C:
/* 0A676C 8011006C 8E070044 */  lw    $a3, 0x44($s0)
/* 0A6770 80110070 14E00006 */  bnez  $a3, .L8011008C
/* 0A6774 80110074 00000000 */   nop   
/* 0A6778 80110078 86040014 */  lh    $a0, 0x14($s0)
/* 0A677C 8011007C 0C04873A */  jal   func_80121CE8
/* 0A6780 80110080 260500B8 */   addiu $a1, $s0, 0xb8
/* 0A6784 80110084 08044028 */  j     .L801100A0
/* 0A6788 80110088 26310001 */   addiu $s1, $s1, 1

.L8011008C:
/* 0A678C 8011008C 86040014 */  lh    $a0, 0x14($s0)
/* 0A6790 80110090 86060012 */  lh    $a2, 0x12($s0)
/* 0A6794 80110094 0C0487AE */  jal   func_80121EB8
/* 0A6798 80110098 260500B8 */   addiu $a1, $s0, 0xb8
/* 0A679C 8011009C 26310001 */  addiu $s1, $s1, 1
.L801100A0:
/* 0A67A0 801100A0 2A22001E */  slti  $v0, $s1, 0x1e
/* 0A67A4 801100A4 1440FF8A */  bnez  $v0, .L8010FED0
/* 0A67A8 801100A8 00000000 */   nop   
/* 0A67AC 801100AC 0C044033 */  jal   func_801100CC
/* 0A67B0 801100B0 00000000 */   nop   
/* 0A67B4 801100B4 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0A67B8 801100B8 8FB20018 */  lw    $s2, 0x18($sp)
/* 0A67BC 801100BC 8FB10014 */  lw    $s1, 0x14($sp)
/* 0A67C0 801100C0 8FB00010 */  lw    $s0, 0x10($sp)
/* 0A67C4 801100C4 03E00008 */  jr    $ra
/* 0A67C8 801100C8 27BD0020 */   addiu $sp, $sp, 0x20

