.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8025B5C0
/* 189EA0 8025B5C0 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 189EA4 8025B5C4 AFB40028 */  sw    $s4, 0x28($sp)
/* 189EA8 8025B5C8 0080A02D */  daddu $s4, $a0, $zero
/* 189EAC 8025B5CC AFB1001C */  sw    $s1, 0x1c($sp)
/* 189EB0 8025B5D0 00A0882D */  daddu $s1, $a1, $zero
/* 189EB4 8025B5D4 AFB5002C */  sw    $s5, 0x2c($sp)
/* 189EB8 8025B5D8 00C0A82D */  daddu $s5, $a2, $zero
/* 189EBC 8025B5DC AFB60030 */  sw    $s6, 0x30($sp)
/* 189EC0 8025B5E0 AFBF0038 */  sw    $ra, 0x38($sp)
/* 189EC4 8025B5E4 AFB70034 */  sw    $s7, 0x34($sp)
/* 189EC8 8025B5E8 AFB30024 */  sw    $s3, 0x24($sp)
/* 189ECC 8025B5EC AFB20020 */  sw    $s2, 0x20($sp)
/* 189ED0 8025B5F0 AFB00018 */  sw    $s0, 0x18($sp)
/* 189ED4 8025B5F4 8E3000C0 */  lw    $s0, 0xc0($s1)
/* 189ED8 8025B5F8 8FB30050 */  lw    $s3, 0x50($sp)
/* 189EDC 8025B5FC 820206C1 */  lb    $v0, 0x6c1($s0)
/* 189EE0 8025B600 8FB20054 */  lw    $s2, 0x54($sp)
/* 189EE4 8025B604 10400078 */  beqz  $v0, .L8025B7E8
/* 189EE8 8025B608 00E0B02D */   daddu $s6, $a3, $zero
/* 189EEC 8025B60C 1680001B */  bnez  $s4, .L8025B67C
/* 189EF0 8025B610 00000000 */   nop   
/* 189EF4 8025B614 0C0B7830 */  jal   func_802DE0C0
/* 189EF8 8025B618 96240088 */   lhu   $a0, 0x88($s1)
/* 189EFC 8025B61C AE0206D0 */  sw    $v0, 0x6d0($s0)
/* 189F00 8025B620 0040202D */  daddu $a0, $v0, $zero
/* 189F04 8025B624 A20006CD */  sb    $zero, 0x6cd($s0)
/* 189F08 8025B628 8C830000 */  lw    $v1, ($a0)
/* 189F0C 8025B62C 2402FFFF */  addiu $v0, $zero, -1
/* 189F10 8025B630 1062000B */  beq   $v1, $v0, .L8025B660
/* 189F14 8025B634 0080182D */   daddu $v1, $a0, $zero
/* 189F18 8025B638 0040202D */  daddu $a0, $v0, $zero
.L8025B63C:
/* 189F1C 8025B63C 920206CD */  lbu   $v0, 0x6cd($s0)
/* 189F20 8025B640 24420001 */  addiu $v0, $v0, 1
/* 189F24 8025B644 A20206CD */  sb    $v0, 0x6cd($s0)
/* 189F28 8025B648 00021600 */  sll   $v0, $v0, 0x18
/* 189F2C 8025B64C 00021583 */  sra   $v0, $v0, 0x16
/* 189F30 8025B650 00431021 */  addu  $v0, $v0, $v1
/* 189F34 8025B654 8C420000 */  lw    $v0, ($v0)
/* 189F38 8025B658 1444FFF8 */  bne   $v0, $a0, .L8025B63C
/* 189F3C 8025B65C 00000000 */   nop   
.L8025B660:
/* 189F40 8025B660 3C02800E */  lui   $v0, 0x800e
/* 189F44 8025B664 8C42C074 */  lw    $v0, -0x3f8c($v0)
/* 189F48 8025B668 30420040 */  andi  $v0, $v0, 0x40
/* 189F4C 8025B66C 14400019 */  bnez  $v0, .L8025B6D4
/* 189F50 8025B670 24020004 */   addiu $v0, $zero, 4
/* 189F54 8025B674 08096DB5 */  j     .L8025B6D4
/* 189F58 8025B678 24020006 */   addiu $v0, $zero, 6

.L8025B67C:
/* 189F5C 8025B67C 96240088 */  lhu   $a0, 0x88($s1)
/* 189F60 8025B680 0C0B7A90 */  jal   func_802DEA40
/* 189F64 8025B684 00000000 */   nop   
/* 189F68 8025B688 AE0206D0 */  sw    $v0, 0x6d0($s0)
/* 189F6C 8025B68C 0040202D */  daddu $a0, $v0, $zero
/* 189F70 8025B690 A20006CD */  sb    $zero, 0x6cd($s0)
/* 189F74 8025B694 8C830000 */  lw    $v1, ($a0)
/* 189F78 8025B698 2402FFFF */  addiu $v0, $zero, -1
/* 189F7C 8025B69C 1062000B */  beq   $v1, $v0, .L8025B6CC
/* 189F80 8025B6A0 0080182D */   daddu $v1, $a0, $zero
/* 189F84 8025B6A4 0040202D */  daddu $a0, $v0, $zero
.L8025B6A8:
/* 189F88 8025B6A8 920206CD */  lbu   $v0, 0x6cd($s0)
/* 189F8C 8025B6AC 24420001 */  addiu $v0, $v0, 1
/* 189F90 8025B6B0 A20206CD */  sb    $v0, 0x6cd($s0)
/* 189F94 8025B6B4 00021600 */  sll   $v0, $v0, 0x18
/* 189F98 8025B6B8 00021583 */  sra   $v0, $v0, 0x16
/* 189F9C 8025B6BC 00431021 */  addu  $v0, $v0, $v1
/* 189FA0 8025B6C0 8C420000 */  lw    $v0, ($v0)
/* 189FA4 8025B6C4 1444FFF8 */  bne   $v0, $a0, .L8025B6A8
/* 189FA8 8025B6C8 00000000 */   nop   
.L8025B6CC:
/* 189FAC 8025B6CC 0C0B7A9B */  jal   func_802DEA6C
/* 189FB0 8025B6D0 96240088 */   lhu   $a0, 0x88($s1)
.L8025B6D4:
.L8025B6D4:
/* 189FB4 8025B6D4 A20206CC */  sb    $v0, 0x6cc($s0)
/* 189FB8 8025B6D8 820306C1 */  lb    $v1, 0x6c1($s0)
/* 189FBC 8025B6DC 24020001 */  addiu $v0, $zero, 1
/* 189FC0 8025B6E0 14620004 */  bne   $v1, $v0, .L8025B6F4
/* 189FC4 8025B6E4 240200FF */   addiu $v0, $zero, 0xff
/* 189FC8 8025B6E8 A20006C2 */  sb    $zero, 0x6c2($s0)
/* 189FCC 8025B6EC 08096DBF */  j     .L8025B6FC
/* 189FD0 8025B6F0 A60006CA */   sh    $zero, 0x6ca($s0)

.L8025B6F4:
/* 189FD4 8025B6F4 A20006C2 */  sb    $zero, 0x6c2($s0)
/* 189FD8 8025B6F8 A60206CA */  sh    $v0, 0x6ca($s0)
.L8025B6FC:
/* 189FDC 8025B6FC 820206CD */  lb    $v0, 0x6cd($s0)
/* 189FE0 8025B700 18400017 */  blez  $v0, .L8025B760
/* 189FE4 8025B704 0000502D */   daddu $t2, $zero, $zero
/* 189FE8 8025B708 0200202D */  daddu $a0, $s0, $zero
.L8025B70C:
/* 189FEC 8025B70C 8E0206D0 */  lw    $v0, 0x6d0($s0)
/* 189FF0 8025B710 000A1880 */  sll   $v1, $t2, 2
/* 189FF4 8025B714 00621821 */  addu  $v1, $v1, $v0
/* 189FF8 8025B718 000A1140 */  sll   $v0, $t2, 5
/* 189FFC 8025B71C 8C670000 */  lw    $a3, ($v1)
/* 18A000 8025B720 02024821 */  addu  $t1, $s0, $v0
/* 18A004 8025B724 10E00009 */  beqz  $a3, .L8025B74C
/* 18A008 8025B728 AC8906D4 */   sw    $t1, 0x6d4($a0)
/* 18A00C 8025B72C 0000402D */  daddu $t0, $zero, $zero
.L8025B730:
/* 18A010 8025B730 94E20000 */  lhu   $v0, ($a3)
/* 18A014 8025B734 24E70002 */  addiu $a3, $a3, 2
/* 18A018 8025B738 25080001 */  addiu $t0, $t0, 1
/* 18A01C 8025B73C A5220000 */  sh    $v0, ($t1)
/* 18A020 8025B740 29020010 */  slti  $v0, $t0, 0x10
/* 18A024 8025B744 1440FFFA */  bnez  $v0, .L8025B730
/* 18A028 8025B748 25290002 */   addiu $t1, $t1, 2
.L8025B74C:
/* 18A02C 8025B74C 820206CD */  lb    $v0, 0x6cd($s0)
/* 18A030 8025B750 254A0001 */  addiu $t2, $t2, 1
/* 18A034 8025B754 0142102A */  slt   $v0, $t2, $v0
/* 18A038 8025B758 1440FFEC */  bnez  $v0, .L8025B70C
/* 18A03C 8025B75C 24840004 */   addiu $a0, $a0, 4
.L8025B760:
/* 18A040 8025B760 1240001D */  beqz  $s2, .L8025B7D8
/* 18A044 8025B764 2402000A */   addiu $v0, $zero, 0xa
/* 18A048 8025B768 820206CC */  lb    $v0, 0x6cc($s0)
/* 18A04C 8025B76C 920306CC */  lbu   $v1, 0x6cc($s0)
/* 18A050 8025B770 18400018 */  blez  $v0, .L8025B7D4
/* 18A054 8025B774 0000502D */   daddu $t2, $zero, $zero
/* 18A058 8025B778 000A1140 */  sll   $v0, $t2, 5
.L8025B77C:
/* 18A05C 8025B77C 02025821 */  addu  $t3, $s0, $v0
/* 18A060 8025B780 0000402D */  daddu $t0, $zero, $zero
/* 18A064 8025B784 00031600 */  sll   $v0, $v1, 0x18
/* 18A068 8025B788 00021603 */  sra   $v0, $v0, 0x18
/* 18A06C 8025B78C 004A1021 */  addu  $v0, $v0, $t2
/* 18A070 8025B790 8E0306D0 */  lw    $v1, 0x6d0($s0)
/* 18A074 8025B794 00021080 */  sll   $v0, $v0, 2
/* 18A078 8025B798 00431021 */  addu  $v0, $v0, $v1
/* 18A07C 8025B79C 8C470000 */  lw    $a3, ($v0)
.L8025B7A0:
/* 18A080 8025B7A0 94E20000 */  lhu   $v0, ($a3)
/* 18A084 8025B7A4 24E70002 */  addiu $a3, $a3, 2
/* 18A088 8025B7A8 25080001 */  addiu $t0, $t0, 1
/* 18A08C 8025B7AC A5620000 */  sh    $v0, ($t3)
/* 18A090 8025B7B0 29020010 */  slti  $v0, $t0, 0x10
/* 18A094 8025B7B4 1440FFFA */  bnez  $v0, .L8025B7A0
/* 18A098 8025B7B8 256B0002 */   addiu $t3, $t3, 2
/* 18A09C 8025B7BC 254A0001 */  addiu $t2, $t2, 1
/* 18A0A0 8025B7C0 820206CC */  lb    $v0, 0x6cc($s0)
/* 18A0A4 8025B7C4 920306CC */  lbu   $v1, 0x6cc($s0)
/* 18A0A8 8025B7C8 0142102A */  slt   $v0, $t2, $v0
/* 18A0AC 8025B7CC 1440FFEB */  bnez  $v0, .L8025B77C
/* 18A0B0 8025B7D0 000A1140 */   sll   $v0, $t2, 5
.L8025B7D4:
/* 18A0B4 8025B7D4 2402000A */  addiu $v0, $zero, 0xa
.L8025B7D8:
/* 18A0B8 8025B7D8 A60206C8 */  sh    $v0, 0x6c8($s0)
/* 18A0BC 8025B7DC A60006CA */  sh    $zero, 0x6ca($s0)
/* 18A0C0 8025B7E0 A20006C2 */  sb    $zero, 0x6c2($s0)
/* 18A0C4 8025B7E4 A20006C1 */  sb    $zero, 0x6c1($s0)
.L8025B7E8:
/* 18A0C8 8025B7E8 820206C2 */  lb    $v0, 0x6c2($s0)
/* 18A0CC 8025B7EC 14400085 */  bnez  $v0, .L8025BA04
/* 18A0D0 8025B7F0 00000000 */   nop   
/* 18A0D4 8025B7F4 56600011 */  bnezl $s3, .L8025B83C
/* 18A0D8 8025B7F8 3C0451EB */   lui   $a0, 0x51eb
/* 18A0DC 8025B7FC 860206C8 */  lh    $v0, 0x6c8($s0)
/* 18A0E0 8025B800 960306C8 */  lhu   $v1, 0x6c8($s0)
/* 18A0E4 8025B804 10400003 */  beqz  $v0, .L8025B814
/* 18A0E8 8025B808 2462FFFF */   addiu $v0, $v1, -1
/* 18A0EC 8025B80C 08096E81 */  j     .L8025BA04
/* 18A0F0 8025B810 A60206C8 */   sh    $v0, 0x6c8($s0)

.L8025B814:
/* 18A0F4 8025B814 960206CA */  lhu   $v0, 0x6ca($s0)
/* 18A0F8 8025B818 24420A00 */  addiu $v0, $v0, 0xa00
/* 18A0FC 8025B81C A60206CA */  sh    $v0, 0x6ca($s0)
/* 18A100 8025B820 00021400 */  sll   $v0, $v0, 0x10
/* 18A104 8025B824 00021403 */  sra   $v0, $v0, 0x10
/* 18A108 8025B828 2842639D */  slti  $v0, $v0, 0x639d
/* 18A10C 8025B82C 14400003 */  bnez  $v0, .L8025B83C
/* 18A110 8025B830 3C0451EB */   lui   $a0, 0x51eb
/* 18A114 8025B834 2402639C */  addiu $v0, $zero, 0x639c
/* 18A118 8025B838 A60206CA */  sh    $v0, 0x6ca($s0)
.L8025B83C:
/* 18A11C 8025B83C 960306CA */  lhu   $v1, 0x6ca($s0)
/* 18A120 8025B840 3484851F */  ori   $a0, $a0, 0x851f
/* 18A124 8025B844 00031C00 */  sll   $v1, $v1, 0x10
/* 18A128 8025B848 00031403 */  sra   $v0, $v1, 0x10
/* 18A12C 8025B84C 00440018 */  mult  $v0, $a0
/* 18A130 8025B850 0000502D */  daddu $t2, $zero, $zero
/* 18A134 8025B854 00031FC3 */  sra   $v1, $v1, 0x1f
/* 18A138 8025B858 820206CC */  lb    $v0, 0x6cc($s0)
/* 18A13C 8025B85C 0000B810 */  mfhi  $s7
/* 18A140 8025B860 00172143 */  sra   $a0, $s7, 5
/* 18A144 8025B864 18400062 */  blez  $v0, .L8025B9F0
/* 18A148 8025B868 0083C823 */   subu  $t9, $a0, $v1
/* 18A14C 8025B86C 332E00FF */  andi  $t6, $t9, 0xff
/* 18A150 8025B870 240200FF */  addiu $v0, $zero, 0xff
/* 18A154 8025B874 004EC023 */  subu  $t8, $v0, $t6
/* 18A158 8025B878 3C0F8080 */  lui   $t7, 0x8080
/* 18A15C 8025B87C 35EF8081 */  ori   $t7, $t7, 0x8081
.L8025B880:
/* 18A160 8025B880 16400004 */  bnez  $s2, .L8025B894
/* 18A164 8025B884 000A1080 */   sll   $v0, $t2, 2
/* 18A168 8025B888 8E0306D0 */  lw    $v1, 0x6d0($s0)
/* 18A16C 8025B88C 08096E2A */  j     .L8025B8A8
/* 18A170 8025B890 00431021 */   addu  $v0, $v0, $v1

.L8025B894:
/* 18A174 8025B894 820206CC */  lb    $v0, 0x6cc($s0)
/* 18A178 8025B898 8E0306D0 */  lw    $v1, 0x6d0($s0)
/* 18A17C 8025B89C 004A1021 */  addu  $v0, $v0, $t2
/* 18A180 8025B8A0 00021080 */  sll   $v0, $v0, 2
/* 18A184 8025B8A4 00431021 */  addu  $v0, $v0, $v1
.L8025B8A8:
/* 18A188 8025B8A8 8C470000 */  lw    $a3, ($v0)
/* 18A18C 8025B8AC 000A1140 */  sll   $v0, $t2, 5
/* 18A190 8025B8B0 02025821 */  addu  $t3, $s0, $v0
/* 18A194 8025B8B4 0000402D */  daddu $t0, $zero, $zero
/* 18A198 8025B8B8 820206CC */  lb    $v0, 0x6cc($s0)
/* 18A19C 8025B8BC 8E0306D0 */  lw    $v1, 0x6d0($s0)
/* 18A1A0 8025B8C0 00021040 */  sll   $v0, $v0, 1
/* 18A1A4 8025B8C4 004A1021 */  addu  $v0, $v0, $t2
/* 18A1A8 8025B8C8 00021080 */  sll   $v0, $v0, 2
/* 18A1AC 8025B8CC 00431021 */  addu  $v0, $v0, $v1
/* 18A1B0 8025B8D0 8C490000 */  lw    $t1, ($v0)
.L8025B8D4:
/* 18A1B4 8025B8D4 94E30000 */  lhu   $v1, ($a3)
/* 18A1B8 8025B8D8 000312C2 */  srl   $v0, $v1, 0xb
/* 18A1BC 8025B8DC 00580018 */  mult  $v0, $t8
/* 18A1C0 8025B8E0 95240000 */  lhu   $a0, ($t1)
/* 18A1C4 8025B8E4 00002812 */  mflo  $a1
/* 18A1C8 8025B8E8 000412C2 */  srl   $v0, $a0, 0xb
/* 18A1CC 8025B8EC 00000000 */  nop   
/* 18A1D0 8025B8F0 004E0018 */  mult  $v0, $t6
/* 18A1D4 8025B8F4 00006012 */  mflo  $t4
/* 18A1D8 8025B8F8 00AC2821 */  addu  $a1, $a1, $t4
/* 18A1DC 8025B8FC 00000000 */  nop   
/* 18A1E0 8025B900 00AF0018 */  mult  $a1, $t7
/* 18A1E4 8025B904 00009810 */  mfhi  $s3
/* 18A1E8 8025B908 00031182 */  srl   $v0, $v1, 6
/* 18A1EC 8025B90C 3042001F */  andi  $v0, $v0, 0x1f
/* 18A1F0 8025B910 00580018 */  mult  $v0, $t8
/* 18A1F4 8025B914 00006812 */  mflo  $t5
/* 18A1F8 8025B918 00041182 */  srl   $v0, $a0, 6
/* 18A1FC 8025B91C 3042001F */  andi  $v0, $v0, 0x1f
/* 18A200 8025B920 004E0018 */  mult  $v0, $t6
/* 18A204 8025B924 00001012 */  mflo  $v0
/* 18A208 8025B928 00031842 */  srl   $v1, $v1, 1
/* 18A20C 8025B92C 3063001F */  andi  $v1, $v1, 0x1f
/* 18A210 8025B930 00780018 */  mult  $v1, $t8
/* 18A214 8025B934 24E70002 */  addiu $a3, $a3, 2
/* 18A218 8025B938 91260001 */  lbu   $a2, 1($t1)
/* 18A21C 8025B93C 25290002 */  addiu $t1, $t1, 2
/* 18A220 8025B940 25080001 */  addiu $t0, $t0, 1
/* 18A224 8025B944 00006012 */  mflo  $t4
/* 18A228 8025B948 00042042 */  srl   $a0, $a0, 1
/* 18A22C 8025B94C 3084001F */  andi  $a0, $a0, 0x1f
/* 18A230 8025B950 008E0018 */  mult  $a0, $t6
/* 18A234 8025B954 30C60001 */  andi  $a2, $a2, 1
/* 18A238 8025B958 01A21021 */  addu  $v0, $t5, $v0
/* 18A23C 8025B95C 02652021 */  addu  $a0, $s3, $a1
/* 18A240 8025B960 000421C3 */  sra   $a0, $a0, 7
/* 18A244 8025B964 0000B812 */  mflo  $s7
/* 18A248 8025B968 00052FC3 */  sra   $a1, $a1, 0x1f
/* 18A24C 8025B96C 00852023 */  subu  $a0, $a0, $a1
/* 18A250 8025B970 004F0018 */  mult  $v0, $t7
/* 18A254 8025B974 308400FF */  andi  $a0, $a0, 0xff
/* 18A258 8025B978 000422C0 */  sll   $a0, $a0, 0xb
/* 18A25C 8025B97C AFB70010 */  sw    $s7, 0x10($sp)
/* 18A260 8025B980 01972821 */  addu  $a1, $t4, $s7
/* 18A264 8025B984 00001810 */  mfhi  $v1
/* 18A268 8025B988 00621821 */  addu  $v1, $v1, $v0
/* 18A26C 8025B98C 000319C3 */  sra   $v1, $v1, 7
/* 18A270 8025B990 000217C3 */  sra   $v0, $v0, 0x1f
/* 18A274 8025B994 00AF0018 */  mult  $a1, $t7
/* 18A278 8025B998 00621823 */  subu  $v1, $v1, $v0
/* 18A27C 8025B99C 306300FF */  andi  $v1, $v1, 0xff
/* 18A280 8025B9A0 00031980 */  sll   $v1, $v1, 6
/* 18A284 8025B9A4 00832025 */  or    $a0, $a0, $v1
/* 18A288 8025B9A8 00006010 */  mfhi  $t4
/* 18A28C 8025B9AC 01851021 */  addu  $v0, $t4, $a1
/* 18A290 8025B9B0 000211C3 */  sra   $v0, $v0, 7
/* 18A294 8025B9B4 00052FC3 */  sra   $a1, $a1, 0x1f
/* 18A298 8025B9B8 00451023 */  subu  $v0, $v0, $a1
/* 18A29C 8025B9BC 304200FF */  andi  $v0, $v0, 0xff
/* 18A2A0 8025B9C0 00021040 */  sll   $v0, $v0, 1
/* 18A2A4 8025B9C4 00822025 */  or    $a0, $a0, $v0
/* 18A2A8 8025B9C8 00C43025 */  or    $a2, $a2, $a0
/* 18A2AC 8025B9CC A5660000 */  sh    $a2, ($t3)
/* 18A2B0 8025B9D0 29020010 */  slti  $v0, $t0, 0x10
/* 18A2B4 8025B9D4 1440FFBF */  bnez  $v0, .L8025B8D4
/* 18A2B8 8025B9D8 256B0002 */   addiu $t3, $t3, 2
/* 18A2BC 8025B9DC 820206CC */  lb    $v0, 0x6cc($s0)
/* 18A2C0 8025B9E0 254A0001 */  addiu $t2, $t2, 1
/* 18A2C4 8025B9E4 0142102A */  slt   $v0, $t2, $v0
/* 18A2C8 8025B9E8 1440FFA5 */  bnez  $v0, .L8025B880
/* 18A2CC 8025B9EC 00000000 */   nop   
.L8025B9F0:
/* 18A2D0 8025B9F0 332300FF */  andi  $v1, $t9, 0xff
/* 18A2D4 8025B9F4 240200FF */  addiu $v0, $zero, 0xff
/* 18A2D8 8025B9F8 14620002 */  bne   $v1, $v0, .L8025BA04
/* 18A2DC 8025B9FC 24020001 */   addiu $v0, $zero, 1
/* 18A2E0 8025BA00 A20206C2 */  sb    $v0, 0x6c2($s0)
.L8025BA04:
.L8025BA04:
/* 18A2E4 8025BA04 820206CD */  lb    $v0, 0x6cd($s0)
/* 18A2E8 8025BA08 1840000A */  blez  $v0, .L8025BA34
/* 18A2EC 8025BA0C 0000502D */   daddu $t2, $zero, $zero
/* 18A2F0 8025BA10 0200202D */  daddu $a0, $s0, $zero
/* 18A2F4 8025BA14 0200182D */  daddu $v1, $s0, $zero
.L8025BA18:
/* 18A2F8 8025BA18 AC6406D4 */  sw    $a0, 0x6d4($v1)
/* 18A2FC 8025BA1C 24840020 */  addiu $a0, $a0, 0x20
/* 18A300 8025BA20 820206CD */  lb    $v0, 0x6cd($s0)
/* 18A304 8025BA24 254A0001 */  addiu $t2, $t2, 1
/* 18A308 8025BA28 0142102A */  slt   $v0, $t2, $v0
/* 18A30C 8025BA2C 1440FFFA */  bnez  $v0, .L8025BA18
/* 18A310 8025BA30 24630004 */   addiu $v1, $v1, 4
.L8025BA34:
/* 18A314 8025BA34 820306C2 */  lb    $v1, 0x6c2($s0)
/* 18A318 8025BA38 28620002 */  slti  $v0, $v1, 2
/* 18A31C 8025BA3C 1040000D */  beqz  $v0, .L8025BA74
/* 18A320 8025BA40 00000000 */   nop   
/* 18A324 8025BA44 0460000B */  bltz  $v1, .L8025BA74
/* 18A328 8025BA48 00000000 */   nop   
/* 18A32C 8025BA4C 16800006 */  bnez  $s4, .L8025BA68
/* 18A330 8025BA50 0220202D */   daddu $a0, $s1, $zero
/* 18A334 8025BA54 02A0282D */  daddu $a1, $s5, $zero
/* 18A338 8025BA58 0C096657 */  jal   func_8025995C
/* 18A33C 8025BA5C 02C0302D */   daddu $a2, $s6, $zero
/* 18A340 8025BA60 08096E9D */  j     .L8025BA74
/* 18A344 8025BA64 00000000 */   nop   

.L8025BA68:
/* 18A348 8025BA68 02A0282D */  daddu $a1, $s5, $zero
/* 18A34C 8025BA6C 0C0965B0 */  jal   func_802596C0
/* 18A350 8025BA70 02C0302D */   daddu $a2, $s6, $zero
.L8025BA74:
.L8025BA74:
/* 18A354 8025BA74 8FBF0038 */  lw    $ra, 0x38($sp)
/* 18A358 8025BA78 8FB70034 */  lw    $s7, 0x34($sp)
/* 18A35C 8025BA7C 8FB60030 */  lw    $s6, 0x30($sp)
/* 18A360 8025BA80 8FB5002C */  lw    $s5, 0x2c($sp)
/* 18A364 8025BA84 8FB40028 */  lw    $s4, 0x28($sp)
/* 18A368 8025BA88 8FB30024 */  lw    $s3, 0x24($sp)
/* 18A36C 8025BA8C 8FB20020 */  lw    $s2, 0x20($sp)
/* 18A370 8025BA90 8FB1001C */  lw    $s1, 0x1c($sp)
/* 18A374 8025BA94 8FB00018 */  lw    $s0, 0x18($sp)
/* 18A378 8025BA98 03E00008 */  jr    $ra
/* 18A37C 8025BA9C 27BD0040 */   addiu $sp, $sp, 0x40

