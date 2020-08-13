.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8004C578
/* 027978 8004C578 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 02797C 8004C57C AFB20018 */  sw    $s2, 0x18($sp)
/* 027980 8004C580 0080902D */  daddu $s2, $a0, $zero
/* 027984 8004C584 AFB00010 */  sw    $s0, 0x10($sp)
/* 027988 8004C588 00A0802D */  daddu $s0, $a1, $zero
/* 02798C 8004C58C AFB10014 */  sw    $s1, 0x14($sp)
/* 027990 8004C590 00C0882D */  daddu $s1, $a2, $zero
/* 027994 8004C594 AFBF0020 */  sw    $ra, 0x20($sp)
/* 027998 8004C598 AFB3001C */  sw    $s3, 0x1c($sp)
/* 02799C 8004C59C 920300A9 */  lbu   $v1, 0xa9($s0)
/* 0279A0 8004C5A0 10600006 */  beqz  $v1, .L8004C5BC
/* 0279A4 8004C5A4 00E0982D */   daddu $s3, $a3, $zero
/* 0279A8 8004C5A8 24020001 */  addiu $v0, $zero, 1
/* 0279AC 8004C5AC 1062003D */  beq   $v1, $v0, .L8004C6A4
/* 0279B0 8004C5B0 0240202D */   daddu $a0, $s2, $zero
/* 0279B4 8004C5B4 08013208 */  j     .L8004C820
/* 0279B8 8004C5B8 AE000000 */   sw    $zero, ($s0)

.L8004C5BC:
/* 0279BC 8004C5BC 92230045 */  lbu   $v1, 0x45($s1)
/* 0279C0 8004C5C0 924200BC */  lbu   $v0, 0xbc($s2)
/* 0279C4 8004C5C4 54620096 */  bnel  $v1, $v0, .L8004C820
/* 0279C8 8004C5C8 AE000000 */   sw    $zero, ($s0)
/* 0279CC 8004C5CC 9202009A */  lbu   $v0, 0x9a($s0)
/* 0279D0 8004C5D0 30420010 */  andi  $v0, $v0, 0x10
/* 0279D4 8004C5D4 14400017 */  bnez  $v0, .L8004C634
/* 0279D8 8004C5D8 00000000 */   nop   
/* 0279DC 8004C5DC 8E02001C */  lw    $v0, 0x1c($s0)
/* 0279E0 8004C5E0 86040060 */  lh    $a0, 0x60($s0)
/* 0279E4 8004C5E4 9442001E */  lhu   $v0, 0x1e($v0)
/* 0279E8 8004C5E8 860300A4 */  lh    $v1, 0xa4($s0)
/* 0279EC 8004C5EC 00822023 */  subu  $a0, $a0, $v0
/* 0279F0 8004C5F0 0C014E3E */  jal   func_800538F8
/* 0279F4 8004C5F4 00832021 */   addu  $a0, $a0, $v1
/* 0279F8 8004C5F8 8E02001C */  lw    $v0, 0x1c($s0)
/* 0279FC 8004C5FC C4420020 */  lwc1  $f2, 0x20($v0)
/* 027A00 8004C600 46020002 */  mul.s $f0, $f0, $f2
/* 027A04 8004C604 00000000 */  nop   
/* 027A08 8004C608 E6000058 */  swc1  $f0, 0x58($s0)
/* 027A0C 8004C60C C6220004 */  lwc1  $f2, 4($s1)
/* 027A10 8004C610 46001032 */  c.eq.s $f2, $f0
/* 027A14 8004C614 00000000 */  nop   
/* 027A18 8004C618 45010006 */  bc1t  .L8004C634
/* 027A1C 8004C61C 00000000 */   nop   
/* 027A20 8004C620 92220043 */  lbu   $v0, 0x43($s1)
/* 027A24 8004C624 34420008 */  ori   $v0, $v0, 8
/* 027A28 8004C628 A2220043 */  sb    $v0, 0x43($s1)
/* 027A2C 8004C62C C6000058 */  lwc1  $f0, 0x58($s0)
/* 027A30 8004C630 E6200004 */  swc1  $f0, 4($s1)
.L8004C634:
/* 027A34 8004C634 9202009A */  lbu   $v0, 0x9a($s0)
/* 027A38 8004C638 30420008 */  andi  $v0, $v0, 8
/* 027A3C 8004C63C 14400004 */  bnez  $v0, .L8004C650
/* 027A40 8004C640 00000000 */   nop   
/* 027A44 8004C644 920200A8 */  lbu   $v0, 0xa8($s0)
/* 027A48 8004C648 14400002 */  bnez  $v0, .L8004C654
/* 027A4C 8004C64C 0040182D */   daddu $v1, $v0, $zero
.L8004C650:
/* 027A50 8004C650 9203009B */  lbu   $v1, 0x9b($s0)
.L8004C654:
/* 027A54 8004C654 9222000E */  lbu   $v0, 0xe($s1)
/* 027A58 8004C658 10430005 */  beq   $v0, $v1, .L8004C670
/* 027A5C 8004C65C 0240202D */   daddu $a0, $s2, $zero
/* 027A60 8004C660 92220043 */  lbu   $v0, 0x43($s1)
/* 027A64 8004C664 A223000E */  sb    $v1, 0xe($s1)
/* 027A68 8004C668 34420010 */  ori   $v0, $v0, 0x10
/* 027A6C 8004C66C A2220043 */  sb    $v0, 0x43($s1)
.L8004C670:
/* 027A70 8004C670 0C013211 */  jal   func_8004C844
/* 027A74 8004C674 0200282D */   daddu $a1, $s0, $zero
/* 027A78 8004C678 0040202D */  daddu $a0, $v0, $zero
/* 027A7C 8004C67C 86230040 */  lh    $v1, 0x40($s1)
/* 027A80 8004C680 00041400 */  sll   $v0, $a0, 0x10
/* 027A84 8004C684 00021403 */  sra   $v0, $v0, 0x10
/* 027A88 8004C688 10620067 */  beq   $v1, $v0, .L8004C828
/* 027A8C 8004C68C 00000000 */   nop   
/* 027A90 8004C690 9222003D */  lbu   $v0, 0x3d($s1)
/* 027A94 8004C694 A6240040 */  sh    $a0, 0x40($s1)
/* 027A98 8004C698 34420020 */  ori   $v0, $v0, 0x20
/* 027A9C 8004C69C 0801320A */  j     .L8004C828
/* 027AA0 8004C6A0 A222003D */   sb    $v0, 0x3d($s1)

.L8004C6A4:
/* 027AA4 8004C6A4 0C0133B1 */  jal   func_8004CEC4
/* 027AA8 8004C6A8 0200282D */   daddu $a1, $s0, $zero
/* 027AAC 8004C6AC 0240202D */  daddu $a0, $s2, $zero
/* 027AB0 8004C6B0 0C01339C */  jal   func_8004CE70
/* 027AB4 8004C6B4 0200282D */   daddu $a1, $s0, $zero
/* 027AB8 8004C6B8 0240202D */  daddu $a0, $s2, $zero
/* 027ABC 8004C6BC 0C0133A9 */  jal   func_8004CEA4
/* 027AC0 8004C6C0 0200282D */   daddu $a1, $s0, $zero
/* 027AC4 8004C6C4 0240202D */  daddu $a0, $s2, $zero
/* 027AC8 8004C6C8 0C0133C3 */  jal   func_8004CF0C
/* 027ACC 8004C6CC 0200282D */   daddu $a1, $s0, $zero
/* 027AD0 8004C6D0 8E040000 */  lw    $a0, ($s0)
/* 027AD4 8004C6D4 90830000 */  lbu   $v1, ($a0)
/* 027AD8 8004C6D8 24840001 */  addiu $a0, $a0, 1
/* 027ADC 8004C6DC AE040000 */  sw    $a0, ($s0)
/* 027AE0 8004C6E0 3063007F */  andi  $v1, $v1, 0x7f
/* 027AE4 8004C6E4 00031040 */  sll   $v0, $v1, 1
/* 027AE8 8004C6E8 00431021 */  addu  $v0, $v0, $v1
/* 027AEC 8004C6EC 000210C0 */  sll   $v0, $v0, 3
/* 027AF0 8004C6F0 00431821 */  addu  $v1, $v0, $v1
/* 027AF4 8004C6F4 90820000 */  lbu   $v0, ($a0)
/* 027AF8 8004C6F8 00033080 */  sll   $a2, $v1, 2
/* 027AFC 8004C6FC 3042000F */  andi  $v0, $v0, 0xf
/* 027B00 8004C700 000210C0 */  sll   $v0, $v0, 3
/* 027B04 8004C704 10400006 */  beqz  $v0, .L8004C720
/* 027B08 8004C708 A20200A1 */   sb    $v0, 0xa1($s0)
/* 027B0C 8004C70C 8E440060 */  lw    $a0, 0x60($s2)
/* 027B10 8004C710 0C01350A */  jal   func_8004D428
/* 027B14 8004C714 304500FF */   andi  $a1, $v0, 0xff
/* 027B18 8004C718 080131C9 */  j     .L8004C724
/* 027B1C 8004C71C 00021400 */   sll   $v0, $v0, 0x10

.L8004C720:
/* 027B20 8004C720 00031480 */  sll   $v0, $v1, 0x12
.L8004C724:
/* 027B24 8004C724 AE020060 */  sw    $v0, 0x60($s0)
/* 027B28 8004C728 9202009A */  lbu   $v0, 0x9a($s0)
/* 027B2C 8004C72C 30420010 */  andi  $v0, $v0, 0x10
/* 027B30 8004C730 10400006 */  beqz  $v0, .L8004C74C
/* 027B34 8004C734 00000000 */   nop   
/* 027B38 8004C738 8E02001C */  lw    $v0, 0x1c($s0)
/* 027B3C 8004C73C 86030060 */  lh    $v1, 0x60($s0)
/* 027B40 8004C740 9442001E */  lhu   $v0, 0x1e($v0)
/* 027B44 8004C744 080131D9 */  j     .L8004C764
/* 027B48 8004C748 00623023 */   subu  $a2, $v1, $v0

.L8004C74C:
/* 027B4C 8004C74C 8E03001C */  lw    $v1, 0x1c($s0)
/* 027B50 8004C750 86020060 */  lh    $v0, 0x60($s0)
/* 027B54 8004C754 9463001E */  lhu   $v1, 0x1e($v1)
/* 027B58 8004C758 860400A4 */  lh    $a0, 0xa4($s0)
/* 027B5C 8004C75C 00431023 */  subu  $v0, $v0, $v1
/* 027B60 8004C760 00443021 */  addu  $a2, $v0, $a0
.L8004C764:
/* 027B64 8004C764 0C014E3E */  jal   func_800538F8
/* 027B68 8004C768 00C0202D */   daddu $a0, $a2, $zero
/* 027B6C 8004C76C 8E02001C */  lw    $v0, 0x1c($s0)
/* 027B70 8004C770 C4420020 */  lwc1  $f2, 0x20($v0)
/* 027B74 8004C774 46020002 */  mul.s $f0, $f0, $f2
/* 027B78 8004C778 00000000 */  nop   
/* 027B7C 8004C77C E6000058 */  swc1  $f0, 0x58($s0)
/* 027B80 8004C780 92230045 */  lbu   $v1, 0x45($s1)
/* 027B84 8004C784 924200BC */  lbu   $v0, 0xbc($s2)
/* 027B88 8004C788 0043102B */  sltu  $v0, $v0, $v1
/* 027B8C 8004C78C 54400026 */  bnel  $v0, $zero, .L8004C828
/* 027B90 8004C790 A20000A9 */   sb    $zero, 0xa9($s0)
/* 027B94 8004C794 0220202D */  daddu $a0, $s1, $zero
/* 027B98 8004C798 0C014E22 */  jal   func_80053888
/* 027B9C 8004C79C 326500FF */   andi  $a1, $s3, 0xff
/* 027BA0 8004C7A0 9202009A */  lbu   $v0, 0x9a($s0)
/* 027BA4 8004C7A4 30420008 */  andi  $v0, $v0, 8
/* 027BA8 8004C7A8 14400004 */  bnez  $v0, .L8004C7BC
/* 027BAC 8004C7AC 00000000 */   nop   
/* 027BB0 8004C7B0 920200A8 */  lbu   $v0, 0xa8($s0)
/* 027BB4 8004C7B4 54400003 */  bnel  $v0, $zero, .L8004C7C4
/* 027BB8 8004C7B8 A222000E */   sb    $v0, 0xe($s1)
.L8004C7BC:
/* 027BBC 8004C7BC 9202009B */  lbu   $v0, 0x9b($s0)
/* 027BC0 8004C7C0 A222000E */  sb    $v0, 0xe($s1)
.L8004C7C4:
/* 027BC4 8004C7C4 0240202D */  daddu $a0, $s2, $zero
/* 027BC8 8004C7C8 9202009C */  lbu   $v0, 0x9c($s0)
/* 027BCC 8004C7CC 0200282D */  daddu $a1, $s0, $zero
/* 027BD0 8004C7D0 0C013211 */  jal   func_8004C844
/* 027BD4 8004C7D4 A222000F */   sb    $v0, 0xf($s1)
/* 027BD8 8004C7D8 A6220040 */  sh    $v0, 0x40($s1)
/* 027BDC 8004C7DC 8E020010 */  lw    $v0, 0x10($s0)
/* 027BE0 8004C7E0 AE220014 */  sw    $v0, 0x14($s1)
/* 027BE4 8004C7E4 8E020014 */  lw    $v0, 0x14($s0)
/* 027BE8 8004C7E8 AE220018 */  sw    $v0, 0x18($s1)
/* 027BEC 8004C7EC 8E02001C */  lw    $v0, 0x1c($s0)
/* 027BF0 8004C7F0 AE220000 */  sw    $v0, ($s1)
/* 027BF4 8004C7F4 C6000058 */  lwc1  $f0, 0x58($s0)
/* 027BF8 8004C7F8 24020002 */  addiu $v0, $zero, 2
/* 027BFC 8004C7FC A2220043 */  sb    $v0, 0x43($s1)
/* 027C00 8004C800 E6200004 */  swc1  $f0, 4($s1)
/* 027C04 8004C804 924200BC */  lbu   $v0, 0xbc($s2)
/* 027C08 8004C808 A2220045 */  sb    $v0, 0x45($s1)
/* 027C0C 8004C80C A2220044 */  sb    $v0, 0x44($s1)
/* 027C10 8004C810 924200BE */  lbu   $v0, 0xbe($s2)
/* 027C14 8004C814 A2220010 */  sb    $v0, 0x10($s1)
/* 027C18 8004C818 0801320A */  j     .L8004C828
/* 027C1C 8004C81C A20000A9 */   sb    $zero, 0xa9($s0)

.L8004C820:
/* 027C20 8004C820 A6000096 */  sh    $zero, 0x96($s0)
/* 027C24 8004C824 A2000098 */  sb    $zero, 0x98($s0)
.L8004C828:
/* 027C28 8004C828 8FBF0020 */  lw    $ra, 0x20($sp)
/* 027C2C 8004C82C 8FB3001C */  lw    $s3, 0x1c($sp)
/* 027C30 8004C830 8FB20018 */  lw    $s2, 0x18($sp)
/* 027C34 8004C834 8FB10014 */  lw    $s1, 0x14($sp)
/* 027C38 8004C838 8FB00010 */  lw    $s0, 0x10($sp)
/* 027C3C 8004C83C 03E00008 */  jr    $ra
/* 027C40 8004C840 27BD0028 */   addiu $sp, $sp, 0x28

