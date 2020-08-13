.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_80038598
/* 013998 80038598 3C03800A */  lui   $v1, 0x800a
/* 01399C 8003859C 8C630B90 */  lw    $v1, 0xb90($v1)
/* 0139A0 800385A0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0139A4 800385A4 AFB20018 */  sw    $s2, 0x18($sp)
/* 0139A8 800385A8 0080902D */  daddu $s2, $a0, $zero
/* 0139AC 800385AC AFB3001C */  sw    $s3, 0x1c($sp)
/* 0139B0 800385B0 00A0982D */  daddu $s3, $a1, $zero
/* 0139B4 800385B4 AFB40020 */  sw    $s4, 0x20($sp)
/* 0139B8 800385B8 00C0A02D */  daddu $s4, $a2, $zero
/* 0139BC 800385BC AFB10014 */  sw    $s1, 0x14($sp)
/* 0139C0 800385C0 0000882D */  daddu $s1, $zero, $zero
/* 0139C4 800385C4 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0139C8 800385C8 AFB00010 */  sw    $s0, 0x10($sp)
.L800385CC:
/* 0139CC 800385CC 8C620000 */  lw    $v0, ($v1)
/* 0139D0 800385D0 10400006 */  beqz  $v0, .L800385EC
/* 0139D4 800385D4 2A220040 */   slti  $v0, $s1, 0x40
/* 0139D8 800385D8 26310001 */  addiu $s1, $s1, 1
/* 0139DC 800385DC 2A220040 */  slti  $v0, $s1, 0x40
/* 0139E0 800385E0 1440FFFA */  bnez  $v0, .L800385CC
/* 0139E4 800385E4 24630004 */   addiu $v1, $v1, 4
/* 0139E8 800385E8 2A220040 */  slti  $v0, $s1, 0x40
.L800385EC:
/* 0139EC 800385EC 14400003 */  bnez  $v0, .L800385FC
/* 0139F0 800385F0 00000000 */   nop   
.L800385F4:
/* 0139F4 800385F4 0800E17D */  j     .L800385F4
/* 0139F8 800385F8 00000000 */   nop   

.L800385FC:
/* 0139FC 800385FC 0C00AB39 */  jal   heap_malloc
/* 013A00 80038600 24040340 */   addiu $a0, $zero, 0x340
/* 013A04 80038604 00112080 */  sll   $a0, $s1, 2
/* 013A08 80038608 3C03800A */  lui   $v1, 0x800a
/* 013A0C 8003860C 8C630B90 */  lw    $v1, 0xb90($v1)
/* 013A10 80038610 3C05800A */  lui   $a1, 0x800a
/* 013A14 80038614 24A5A604 */  addiu $a1, $a1, -0x59fc
/* 013A18 80038618 00832021 */  addu  $a0, $a0, $v1
/* 013A1C 8003861C 94A30000 */  lhu   $v1, ($a1)
/* 013A20 80038620 0040802D */  daddu $s0, $v0, $zero
/* 013A24 80038624 AC900000 */  sw    $s0, ($a0)
/* 013A28 80038628 24630001 */  addiu $v1, $v1, 1
/* 013A2C 8003862C 16000003 */  bnez  $s0, .L8003863C
/* 013A30 80038630 A4A30000 */   sh    $v1, ($a1)
.L80038634:
/* 013A34 80038634 0800E18D */  j     .L80038634
/* 013A38 80038638 00000000 */   nop   

.L8003863C:
/* 013A3C 8003863C 3C030041 */  lui   $v1, 0x41
/* 013A40 80038640 8E420000 */  lw    $v0, ($s2)
/* 013A44 80038644 34630011 */  ori   $v1, $v1, 0x11
/* 013A48 80038648 00431825 */  or    $v1, $v0, $v1
/* 013A4C 8003864C 12800004 */  beqz  $s4, .L80038660
/* 013A50 80038650 AE030000 */   sw    $v1, ($s0)
/* 013A54 80038654 3C024000 */  lui   $v0, 0x4000
/* 013A58 80038658 00621025 */  or    $v0, $v1, $v0
/* 013A5C 8003865C AE020000 */  sw    $v0, ($s0)
.L80038660:
/* 013A60 80038660 0000202D */  daddu $a0, $zero, $zero
/* 013A64 80038664 3C013F80 */  lui   $at, 0x3f80
/* 013A68 80038668 44810000 */  mtc1  $at, $f0
/* 013A6C 8003866C 3C014080 */  lui   $at, 0x4080
/* 013A70 80038670 44811000 */  mtc1  $at, $f2
/* 013A74 80038674 24020020 */  addiu $v0, $zero, 0x20
/* 013A78 80038678 A60200A6 */  sh    $v0, 0xa6($s0)
/* 013A7C 8003867C 24020040 */  addiu $v0, $zero, 0x40
/* 013A80 80038680 A60200A8 */  sh    $v0, 0xa8($s0)
/* 013A84 80038684 2402000D */  addiu $v0, $zero, 0xd
/* 013A88 80038688 A20200AA */  sb    $v0, 0xaa($s0)
/* 013A8C 8003868C 240200FF */  addiu $v0, $zero, 0xff
/* 013A90 80038690 AE000020 */  sw    $zero, 0x20($s0)
/* 013A94 80038694 AE00000C */  sw    $zero, 0xc($s0)
/* 013A98 80038698 AE00001C */  sw    $zero, 0x1c($s0)
/* 013A9C 8003869C AE000038 */  sw    $zero, 0x38($s0)
/* 013AA0 800386A0 AE00003C */  sw    $zero, 0x3c($s0)
/* 013AA4 800386A4 AE000040 */  sw    $zero, 0x40($s0)
/* 013AA8 800386A8 AE00006C */  sw    $zero, 0x6c($s0)
/* 013AAC 800386AC AE000070 */  sw    $zero, 0x70($s0)
/* 013AB0 800386B0 AE000074 */  sw    $zero, 0x74($s0)
/* 013AB4 800386B4 AE000050 */  sw    $zero, 0x50($s0)
/* 013AB8 800386B8 AE000044 */  sw    $zero, 0x44($s0)
/* 013ABC 800386BC AE000048 */  sw    $zero, 0x48($s0)
/* 013AC0 800386C0 AE00004C */  sw    $zero, 0x4c($s0)
/* 013AC4 800386C4 A6000090 */  sh    $zero, 0x90($s0)
/* 013AC8 800386C8 A6000092 */  sh    $zero, 0x92($s0)
/* 013ACC 800386CC A6000094 */  sh    $zero, 0x94($s0)
/* 013AD0 800386D0 A6000096 */  sh    $zero, 0x96($s0)
/* 013AD4 800386D4 A20000AB */  sb    $zero, 0xab($s0)
/* 013AD8 800386D8 A20200AC */  sb    $v0, 0xac($s0)
/* 013ADC 800386DC A20200AD */  sb    $v0, 0xad($s0)
/* 013AE0 800386E0 E6000014 */  swc1  $f0, 0x14($s0)
/* 013AE4 800386E4 E6020018 */  swc1  $f2, 0x18($s0)
/* 013AE8 800386E8 E6000054 */  swc1  $f0, 0x54($s0)
/* 013AEC 800386EC E6000058 */  swc1  $f0, 0x58($s0)
/* 013AF0 800386F0 E600005C */  swc1  $f0, 0x5c($s0)
/* 013AF4 800386F4 8E420004 */  lw    $v0, 4($s2)
/* 013AF8 800386F8 0200182D */  daddu $v1, $s0, $zero
/* 013AFC 800386FC E6000030 */  swc1  $f0, 0x30($s0)
/* 013B00 80038700 AE000034 */  sw    $zero, 0x34($s0)
/* 013B04 80038704 A6000098 */  sh    $zero, 0x98($s0)
/* 013B08 80038708 AE020028 */  sw    $v0, 0x28($s0)
/* 013B0C 8003870C 3C020002 */  lui   $v0, 2
/* 013B10 80038710 A60000A2 */  sh    $zero, 0xa2($s0)
/* 013B14 80038714 AE020080 */  sw    $v0, 0x80($s0)
/* 013B18 80038718 2402FFFF */  addiu $v0, $zero, -1
/* 013B1C 8003871C A6000088 */  sh    $zero, 0x88($s0)
/* 013B20 80038720 A600008A */  sh    $zero, 0x8a($s0)
/* 013B24 80038724 A600008C */  sh    $zero, 0x8c($s0)
/* 013B28 80038728 A6020084 */  sh    $v0, 0x84($s0)
/* 013B2C 8003872C A6020086 */  sh    $v0, 0x86($s0)
/* 013B30 80038730 A20000B4 */  sb    $zero, 0xb4($s0)
/* 013B34 80038734 A20000B5 */  sb    $zero, 0xb5($s0)
/* 013B38 80038738 AE000318 */  sw    $zero, 0x318($s0)
/* 013B3C 8003873C AE00031C */  sw    $zero, 0x31c($s0)
/* 013B40 80038740 E6000320 */  swc1  $f0, 0x320($s0)
.L80038744:
/* 013B44 80038744 AC600324 */  sw    $zero, 0x324($v1)
/* 013B48 80038748 02041021 */  addu  $v0, $s0, $a0
/* 013B4C 8003874C 24840001 */  addiu $a0, $a0, 1
/* 013B50 80038750 A040032C */  sb    $zero, 0x32c($v0)
/* 013B54 80038754 28820002 */  slti  $v0, $a0, 2
/* 013B58 80038758 1440FFFA */  bnez  $v0, .L80038744
/* 013B5C 8003875C 24630004 */   addiu $v1, $v1, 4
/* 013B60 80038760 8E420008 */  lw    $v0, 8($s2)
/* 013B64 80038764 14400004 */  bnez  $v0, .L80038778
/* 013B68 80038768 AE020004 */   sw    $v0, 4($s0)
/* 013B6C 8003876C 3C028004 */  lui   $v0, 0x8004
/* 013B70 80038770 24428470 */  addiu $v0, $v0, -0x7b90
/* 013B74 80038774 AE020004 */  sw    $v0, 4($s0)
.L80038778:
/* 013B78 80038778 8E42000C */  lw    $v0, 0xc($s2)
/* 013B7C 8003877C 14400004 */  bnez  $v0, .L80038790
/* 013B80 80038780 AE020008 */   sw    $v0, 8($s0)
/* 013B84 80038784 3C028004 */  lui   $v0, 0x8004
/* 013B88 80038788 24428470 */  addiu $v0, $v0, -0x7b90
/* 013B8C 8003878C AE020008 */  sw    $v0, 8($s0)
.L80038790:
/* 013B90 80038790 16800015 */  bnez  $s4, .L800387E8
/* 013B94 80038794 3C020100 */   lui   $v0, 0x100
/* 013B98 80038798 8E030000 */  lw    $v1, ($s0)
/* 013B9C 8003879C 00621024 */  and   $v0, $v1, $v0
/* 013BA0 800387A0 1440000F */  bnez  $v0, .L800387E0
/* 013BA4 800387A4 AE1300B0 */   sw    $s3, 0xb0($s0)
/* 013BA8 800387A8 3C020400 */  lui   $v0, 0x400
/* 013BAC 800387AC 00621024 */  and   $v0, $v1, $v0
/* 013BB0 800387B0 14400004 */  bnez  $v0, .L800387C4
/* 013BB4 800387B4 0260282D */   daddu $a1, $s3, $zero
/* 013BB8 800387B8 8E040028 */  lw    $a0, 0x28($s0)
/* 013BBC 800387BC 0800E1F4 */  j     .L800387D0
/* 013BC0 800387C0 00000000 */   nop   

.L800387C4:
/* 013BC4 800387C4 8E020028 */  lw    $v0, 0x28($s0)
/* 013BC8 800387C8 3C048000 */  lui   $a0, 0x8000
/* 013BCC 800387CC 00442025 */  or    $a0, $v0, $a0
.L800387D0:
/* 013BD0 800387D0 0C0B783B */  jal   func_802DE0EC
/* 013BD4 800387D4 00000000 */   nop   
/* 013BD8 800387D8 0800E1FA */  j     .L800387E8
/* 013BDC 800387DC AE020024 */   sw    $v0, 0x24($s0)

.L800387E0:
/* 013BE0 800387E0 34620002 */  ori   $v0, $v1, 2
/* 013BE4 800387E4 AE020000 */  sw    $v0, ($s0)
.L800387E8:
/* 013BE8 800387E8 8E050038 */  lw    $a1, 0x38($s0)
/* 013BEC 800387EC 8E06003C */  lw    $a2, 0x3c($s0)
/* 013BF0 800387F0 8E070040 */  lw    $a3, 0x40($s0)
/* 013BF4 800387F4 0C044898 */  jal   create_shadow_type
/* 013BF8 800387F8 0000202D */   daddu $a0, $zero, $zero
/* 013BFC 800387FC 3C013F80 */  lui   $at, 0x3f80
/* 013C00 80038800 44810000 */  mtc1  $at, $f0
/* 013C04 80038804 3C038007 */  lui   $v1, 0x8007
/* 013C08 80038808 8C63419C */  lw    $v1, 0x419c($v1)
/* 013C0C 8003880C AE020078 */  sw    $v0, 0x78($s0)
/* 013C10 80038810 E600007C */  swc1  $f0, 0x7c($s0)
/* 013C14 80038814 80620070 */  lb    $v0, 0x70($v1)
/* 013C18 80038818 54400001 */  bnel  $v0, $zero, .L80038820
/* 013C1C 8003881C 36310800 */   ori   $s1, $s1, 0x800
.L80038820:
/* 013C20 80038820 0220102D */  daddu $v0, $s1, $zero
/* 013C24 80038824 8FBF0024 */  lw    $ra, 0x24($sp)
/* 013C28 80038828 8FB40020 */  lw    $s4, 0x20($sp)
/* 013C2C 8003882C 8FB3001C */  lw    $s3, 0x1c($sp)
/* 013C30 80038830 8FB20018 */  lw    $s2, 0x18($sp)
/* 013C34 80038834 8FB10014 */  lw    $s1, 0x14($sp)
/* 013C38 80038838 8FB00010 */  lw    $s0, 0x10($sp)
/* 013C3C 8003883C 03E00008 */  jr    $ra
/* 013C40 80038840 27BD0028 */   addiu $sp, $sp, 0x28

