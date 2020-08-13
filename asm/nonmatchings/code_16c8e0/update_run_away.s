.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel update_run_away
/* 1737E0 80244F00 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 1737E4 80244F04 AFB1001C */  sw    $s1, 0x1c($sp)
/* 1737E8 80244F08 3C11800E */  lui   $s1, 0x800e
/* 1737EC 80244F0C 2631C070 */  addiu $s1, $s1, -0x3f90
/* 1737F0 80244F10 AFB5002C */  sw    $s5, 0x2c($sp)
/* 1737F4 80244F14 3C158011 */  lui   $s5, 0x8011
/* 1737F8 80244F18 26B5F290 */  addiu $s5, $s5, -0xd70
/* 1737FC 80244F1C AFB40028 */  sw    $s4, 0x28($sp)
/* 173800 80244F20 3C14800E */  lui   $s4, 0x800e
/* 173804 80244F24 2694C4DC */  addiu $s4, $s4, -0x3b24
/* 173808 80244F28 AFBF0030 */  sw    $ra, 0x30($sp)
/* 17380C 80244F2C AFB30024 */  sw    $s3, 0x24($sp)
/* 173810 80244F30 AFB20020 */  sw    $s2, 0x20($sp)
/* 173814 80244F34 AFB00018 */  sw    $s0, 0x18($sp)
/* 173818 80244F38 8E3300D8 */  lw    $s3, 0xd8($s1)
/* 17381C 80244F3C 8E900000 */  lw    $s0, ($s4)
/* 173820 80244F40 8E3200DC */  lw    $s2, 0xdc($s1)
/* 173824 80244F44 12000005 */  beqz  $s0, .L80244F5C
/* 173828 80244F48 24020002 */   addiu $v0, $zero, 2
/* 17382C 80244F4C 12020060 */  beq   $s0, $v0, .L802450D0
/* 173830 80244F50 00000000 */   nop   
/* 173834 80244F54 0809146D */  j     .L802451B4
/* 173838 80244F58 00000000 */   nop   

.L80244F5C:
/* 17383C 80244F5C 3C03FFFB */  lui   $v1, 0xfffb
/* 173840 80244F60 3463FFFF */  ori   $v1, $v1, 0xffff
/* 173844 80244F64 24040019 */  addiu $a0, $zero, 0x19
/* 173848 80244F68 8E220000 */  lw    $v0, ($s1)
/* 17384C 80244F6C 0000802D */  daddu $s0, $zero, $zero
/* 173850 80244F70 A220008C */  sb    $zero, 0x8c($s1)
/* 173854 80244F74 00431024 */  and   $v0, $v0, $v1
/* 173858 80244F78 AE220000 */  sw    $v0, ($s1)
/* 17385C 80244F7C 8E220004 */  lw    $v0, 4($s1)
/* 173860 80244F80 96A302A6 */  lhu   $v1, 0x2a6($s5)
/* 173864 80244F84 3442001E */  ori   $v0, $v0, 0x1e
/* 173868 80244F88 24630001 */  addiu $v1, $v1, 1
/* 17386C 80244F8C AE220004 */  sw    $v0, 4($s1)
/* 173870 80244F90 0C093903 */  jal   func_8024E40C
/* 173874 80244F94 A6A302A6 */   sh    $v1, 0x2a6($s5)
/* 173878 80244F98 0C09390F */  jal   cam_target_actor
/* 17387C 80244F9C 0200202D */   daddu $a0, $s0, $zero
/* 173880 80244FA0 0200302D */  daddu $a2, $s0, $zero
/* 173884 80244FA4 3C070040 */  lui   $a3, 0x40
/* 173888 80244FA8 0220282D */  daddu $a1, $s1, $zero
/* 17388C 80244FAC 44801000 */  mtc1  $zero, $f2
.L80244FB0:
/* 173890 80244FB0 8CA400E0 */  lw    $a0, 0xe0($a1)
/* 173894 80244FB4 50800017 */  beql  $a0, $zero, .L80245014
/* 173898 80244FB8 24C60001 */   addiu $a2, $a2, 1
/* 17389C 80244FBC 8C830000 */  lw    $v1, ($a0)
/* 1738A0 80244FC0 30624000 */  andi  $v0, $v1, 0x4000
/* 1738A4 80244FC4 54400013 */  bnezl $v0, .L80245014
/* 1738A8 80244FC8 24C60001 */   addiu $a2, $a2, 1
/* 1738AC 80244FCC 00671024 */  and   $v0, $v1, $a3
/* 1738B0 80244FD0 54400010 */  bnezl $v0, .L80245014
/* 1738B4 80244FD4 24C60001 */   addiu $a2, $a2, 1
/* 1738B8 80244FD8 8C820008 */  lw    $v0, 8($a0)
/* 1738BC 80244FDC 90430018 */  lbu   $v1, 0x18($v0)
/* 1738C0 80244FE0 90820210 */  lbu   $v0, 0x210($a0)
/* 1738C4 80244FE4 44830000 */  mtc1  $v1, $f0
/* 1738C8 80244FE8 00000000 */  nop   
/* 1738CC 80244FEC 46800020 */  cvt.s.w $f0, $f0
/* 1738D0 80244FF0 2442FFFD */  addiu $v0, $v0, -3
/* 1738D4 80244FF4 2C420006 */  sltiu $v0, $v0, 6
/* 1738D8 80244FF8 10400004 */  beqz  $v0, .L8024500C
/* 1738DC 80244FFC 26100001 */   addiu $s0, $s0, 1
/* 1738E0 80245000 3C0142C8 */  lui   $at, 0x42c8
/* 1738E4 80245004 44810000 */  mtc1  $at, $f0
/* 1738E8 80245008 00000000 */  nop   
.L8024500C:
/* 1738EC 8024500C 46001080 */  add.s $f2, $f2, $f0
/* 1738F0 80245010 24C60001 */  addiu $a2, $a2, 1
.L80245014:
/* 1738F4 80245014 28C20018 */  slti  $v0, $a2, 0x18
/* 1738F8 80245018 1440FFE5 */  bnez  $v0, .L80244FB0
/* 1738FC 8024501C 24A50004 */   addiu $a1, $a1, 4
/* 173900 80245020 44900000 */  mtc1  $s0, $f0
/* 173904 80245024 00000000 */  nop   
/* 173908 80245028 46800020 */  cvt.s.w $f0, $f0
/* 17390C 8024502C 46001003 */  div.s $f0, $f2, $f0
/* 173910 80245030 3C028007 */  lui   $v0, 0x8007
/* 173914 80245034 8C42419C */  lw    $v0, 0x419c($v0)
/* 173918 80245038 4600010D */  trunc.w.s $f4, $f0
/* 17391C 8024503C E6640088 */  swc1  $f4, 0x88($s3)
/* 173920 80245040 80430074 */  lb    $v1, 0x74($v0)
/* 173924 80245044 24020004 */  addiu $v0, $zero, 4
/* 173928 80245048 14620002 */  bne   $v1, $v0, .L80245054
/* 17392C 8024504C 24020064 */   addiu $v0, $zero, 0x64
/* 173930 80245050 AE620088 */  sw    $v0, 0x88($s3)
.L80245054:
/* 173934 80245054 3C048028 */  lui   $a0, 0x8028
/* 173938 80245058 24844EBC */  addiu $a0, $a0, 0x4ebc
/* 17393C 8024505C 2405000A */  addiu $a1, $zero, 0xa
/* 173940 80245060 0000302D */  daddu $a2, $zero, $zero
/* 173944 80245064 24020003 */  addiu $v0, $zero, 3
/* 173948 80245068 0C0B0CF8 */  jal   start_script
/* 17394C 8024506C A22201A7 */   sb    $v0, 0x1a7($s1)
/* 173950 80245070 0040182D */  daddu $v1, $v0, $zero
/* 173954 80245074 AE6301D4 */  sw    $v1, 0x1d4($s3)
/* 173958 80245078 8C620144 */  lw    $v0, 0x144($v1)
/* 17395C 8024507C AE6201E4 */  sw    $v0, 0x1e4($s3)
/* 173960 80245080 1240000E */  beqz  $s2, .L802450BC
/* 173964 80245084 AC600148 */   sw    $zero, 0x148($v1)
/* 173968 80245088 82420216 */  lb    $v0, 0x216($s2)
/* 17396C 8024508C 1440000C */  bnez  $v0, .L802450C0
/* 173970 80245090 24020002 */   addiu $v0, $zero, 2
/* 173974 80245094 2405000A */  addiu $a1, $zero, 0xa
/* 173978 80245098 8E4401C4 */  lw    $a0, 0x1c4($s2)
/* 17397C 8024509C 0C0B0CF8 */  jal   start_script
/* 173980 802450A0 0000302D */   daddu $a2, $zero, $zero
/* 173984 802450A4 0040182D */  daddu $v1, $v0, $zero
/* 173988 802450A8 AE4301D4 */  sw    $v1, 0x1d4($s2)
/* 17398C 802450AC 8C620144 */  lw    $v0, 0x144($v1)
/* 173990 802450B0 AE4201E4 */  sw    $v0, 0x1e4($s2)
/* 173994 802450B4 24020100 */  addiu $v0, $zero, 0x100
/* 173998 802450B8 AC620148 */  sw    $v0, 0x148($v1)
.L802450BC:
/* 17399C 802450BC 24020002 */  addiu $v0, $zero, 2
.L802450C0:
/* 1739A0 802450C0 3C01800E */  lui   $at, 0x800e
/* 1739A4 802450C4 AC22C4DC */  sw    $v0, -0x3b24($at)
/* 1739A8 802450C8 0809146D */  j     .L802451B4
/* 1739AC 802450CC 00000000 */   nop   

.L802450D0:
/* 1739B0 802450D0 0C0B1059 */  jal   does_script_exist
/* 1739B4 802450D4 8E6401E4 */   lw    $a0, 0x1e4($s3)
/* 1739B8 802450D8 14400036 */  bnez  $v0, .L802451B4
/* 1739BC 802450DC 00000000 */   nop   
/* 1739C0 802450E0 8222008C */  lb    $v0, 0x8c($s1)
/* 1739C4 802450E4 14400033 */  bnez  $v0, .L802451B4
/* 1739C8 802450E8 3C030004 */   lui   $v1, 4
/* 1739CC 802450EC 8E220000 */  lw    $v0, ($s1)
/* 1739D0 802450F0 00431024 */  and   $v0, $v0, $v1
/* 1739D4 802450F4 14400003 */  bnez  $v0, .L80245104
/* 1739D8 802450F8 24020003 */   addiu $v0, $zero, 3
/* 1739DC 802450FC 0809146D */  j     .L802451B4
/* 1739E0 80245100 AE820000 */   sw    $v0, ($s4)

.L80245104:
/* 1739E4 80245104 3C02800B */  lui   $v0, 0x800b
/* 1739E8 80245108 24420F10 */  addiu $v0, $v0, 0xf10
/* 1739EC 8024510C A0500009 */  sb    $s0, 9($v0)
/* 1739F0 80245110 0C03A752 */  jal   is_ability_active
/* 1739F4 80245114 24040017 */   addiu $a0, $zero, 0x17
/* 1739F8 80245118 14400003 */  bnez  $v0, .L80245128
/* 1739FC 8024511C 2402000B */   addiu $v0, $zero, 0xb
/* 173A00 80245120 0809146D */  j     .L802451B4
/* 173A04 80245124 AE820000 */   sw    $v0, ($s4)

.L80245128:
/* 173A08 80245128 0C03A6B9 */  jal   status_menu_start_blinking_starpoints
/* 173A0C 8024512C 00000000 */   nop   
/* 173A10 80245130 0C08F841 */  jal   func_8023E104
/* 173A14 80245134 00000000 */   nop   
/* 173A18 80245138 82230078 */  lb    $v1, 0x78($s1)
/* 173A1C 8024513C 00031040 */  sll   $v0, $v1, 1
/* 173A20 80245140 00431021 */  addu  $v0, $v0, $v1
/* 173A24 80245144 000210C0 */  sll   $v0, $v0, 3
/* 173A28 80245148 00431021 */  addu  $v0, $v0, $v1
/* 173A2C 8024514C 00021080 */  sll   $v0, $v0, 2
/* 173A30 80245150 24030014 */  addiu $v1, $zero, 0x14
/* 173A34 80245154 14600002 */  bnez  $v1, .L80245160
/* 173A38 80245158 0043001A */   div   $zero, $v0, $v1
/* 173A3C 8024515C 0007000D */  break 7
.L80245160:
/* 173A40 80245160 2401FFFF */  addiu $at, $zero, -1
/* 173A44 80245164 14610004 */  bne   $v1, $at, .L80245178
/* 173A48 80245168 3C018000 */   lui   $at, 0x8000
/* 173A4C 8024516C 14410002 */  bne   $v0, $at, .L80245178
/* 173A50 80245170 00000000 */   nop   
/* 173A54 80245174 0006000D */  break 6
.L80245178:
/* 173A58 80245178 00002012 */  mflo  $a0
/* 173A5C 8024517C 3C01802A */  lui   $at, 0x802a
/* 173A60 80245180 AC20F264 */  sw    $zero, -0xd9c($at)
/* 173A64 80245184 3C01802A */  lui   $at, 0x802a
/* 173A68 80245188 AC20F24C */  sw    $zero, -0xdb4($at)
/* 173A6C 8024518C 3C018028 */  lui   $at, 0x8028
/* 173A70 80245190 AC200A30 */  sw    $zero, 0xa30($at)
/* 173A74 80245194 3C01802A */  lui   $at, 0x802a
/* 173A78 80245198 AC23F250 */  sw    $v1, -0xdb0($at)
/* 173A7C 8024519C 2403000A */  addiu $v1, $zero, 0xa
/* 173A80 802451A0 AE830000 */  sw    $v1, ($s4)
/* 173A84 802451A4 3C01802A */  lui   $at, 0x802a
/* 173A88 802451A8 AC22F25C */  sw    $v0, -0xda4($at)
/* 173A8C 802451AC 3C01802A */  lui   $at, 0x802a
/* 173A90 802451B0 AC24F260 */  sw    $a0, -0xda0($at)
.L802451B4:
.L802451B4:
/* 173A94 802451B4 3C03800E */  lui   $v1, 0x800e
/* 173A98 802451B8 8C63C4DC */  lw    $v1, -0x3b24($v1)
/* 173A9C 802451BC 2402000A */  addiu $v0, $zero, 0xa
/* 173AA0 802451C0 14620043 */  bne   $v1, $v0, .L802452D0
/* 173AA4 802451C4 2402000B */   addiu $v0, $zero, 0xb
/* 173AA8 802451C8 82220078 */  lb    $v0, 0x78($s1)
/* 173AAC 802451CC 10400027 */  beqz  $v0, .L8024526C
/* 173AB0 802451D0 3C0551EB */   lui   $a1, 0x51eb
/* 173AB4 802451D4 3C04802A */  lui   $a0, 0x802a
/* 173AB8 802451D8 2484F25C */  addiu $a0, $a0, -0xda4
/* 173ABC 802451DC 8C820000 */  lw    $v0, ($a0)
/* 173AC0 802451E0 3C03802A */  lui   $v1, 0x802a
/* 173AC4 802451E4 8C63F260 */  lw    $v1, -0xda0($v1)
/* 173AC8 802451E8 34A5851F */  ori   $a1, $a1, 0x851f
/* 173ACC 802451EC 00431023 */  subu  $v0, $v0, $v1
/* 173AD0 802451F0 00450018 */  mult  $v0, $a1
/* 173AD4 802451F4 AC820000 */  sw    $v0, ($a0)
/* 173AD8 802451F8 000217C3 */  sra   $v0, $v0, 0x1f
/* 173ADC 802451FC 82240078 */  lb    $a0, 0x78($s1)
/* 173AE0 80245200 00004010 */  mfhi  $t0
/* 173AE4 80245204 00081943 */  sra   $v1, $t0, 5
/* 173AE8 80245208 00621823 */  subu  $v1, $v1, $v0
/* 173AEC 8024520C 00031600 */  sll   $v0, $v1, 0x18
/* 173AF0 80245210 00021603 */  sra   $v0, $v0, 0x18
/* 173AF4 80245214 00828023 */  subu  $s0, $a0, $v0
/* 173AF8 80245218 1A000003 */  blez  $s0, .L80245228
/* 173AFC 8024521C A2230078 */   sb    $v1, 0x78($s1)
/* 173B00 80245220 0C05272D */  jal   play_sound
/* 173B04 80245224 24040211 */   addiu $a0, $zero, 0x211
.L80245228:
/* 173B08 80245228 92A20010 */  lbu   $v0, 0x10($s5)
/* 173B0C 8024522C 3C038028 */  lui   $v1, 0x8028
/* 173B10 80245230 24630A30 */  addiu $v1, $v1, 0xa30
/* 173B14 80245234 00501021 */  addu  $v0, $v0, $s0
/* 173B18 80245238 A2A20010 */  sb    $v0, 0x10($s5)
/* 173B1C 8024523C 8C620000 */  lw    $v0, ($v1)
/* 173B20 80245240 3C04802A */  lui   $a0, 0x802a
/* 173B24 80245244 8C84F250 */  lw    $a0, -0xdb0($a0)
/* 173B28 80245248 24420001 */  addiu $v0, $v0, 1
/* 173B2C 8024524C 14800007 */  bnez  $a0, .L8024526C
/* 173B30 80245250 AC620000 */   sw    $v0, ($v1)
/* 173B34 80245254 82220078 */  lb    $v0, 0x78($s1)
/* 173B38 80245258 10400004 */  beqz  $v0, .L8024526C
/* 173B3C 8024525C 00000000 */   nop   
/* 173B40 80245260 92A20010 */  lbu   $v0, 0x10($s5)
/* 173B44 80245264 24420001 */  addiu $v0, $v0, 1
/* 173B48 80245268 A2A20010 */  sb    $v0, 0x10($s5)
.L8024526C:
/* 173B4C 8024526C 82A20010 */  lb    $v0, 0x10($s5)
/* 173B50 80245270 28420063 */  slti  $v0, $v0, 0x63
/* 173B54 80245274 14400002 */  bnez  $v0, .L80245280
/* 173B58 80245278 24020063 */   addiu $v0, $zero, 0x63
/* 173B5C 8024527C A2A20010 */  sb    $v0, 0x10($s5)
.L80245280:
/* 173B60 80245280 82220078 */  lb    $v0, 0x78($s1)
/* 173B64 80245284 1440000F */  bnez  $v0, .L802452C4
/* 173B68 80245288 00000000 */   nop   
/* 173B6C 8024528C 3C03802A */  lui   $v1, 0x802a
/* 173B70 80245290 2463F250 */  addiu $v1, $v1, -0xdb0
/* 173B74 80245294 8C620000 */  lw    $v0, ($v1)
/* 173B78 80245298 10400003 */  beqz  $v0, .L802452A8
/* 173B7C 8024529C 2442FFFF */   addiu $v0, $v0, -1
/* 173B80 802452A0 080914B1 */  j     .L802452C4
/* 173B84 802452A4 AC620000 */   sw    $v0, ($v1)

.L802452A8:
/* 173B88 802452A8 0C03A6C3 */  jal   status_menu_stop_blinking_starpoints
/* 173B8C 802452AC 00000000 */   nop   
/* 173B90 802452B0 0C08F847 */  jal   func_8023E11C
/* 173B94 802452B4 00000000 */   nop   
/* 173B98 802452B8 2402000B */  addiu $v0, $zero, 0xb
/* 173B9C 802452BC 3C01800E */  lui   $at, 0x800e
/* 173BA0 802452C0 AC22C4DC */  sw    $v0, -0x3b24($at)
.L802452C4:
.L802452C4:
/* 173BA4 802452C4 3C03800E */  lui   $v1, 0x800e
/* 173BA8 802452C8 8C63C4DC */  lw    $v1, -0x3b24($v1)
/* 173BAC 802452CC 2402000B */  addiu $v0, $zero, 0xb
.L802452D0:
/* 173BB0 802452D0 14620011 */  bne   $v1, $v0, .L80245318
/* 173BB4 802452D4 3C030200 */   lui   $v1, 0x200
/* 173BB8 802452D8 96A202A8 */  lhu   $v0, 0x2a8($s5)
/* 173BBC 802452DC 24420001 */  addiu $v0, $v0, 1
/* 173BC0 802452E0 A6A202A8 */  sh    $v0, 0x2a8($s5)
/* 173BC4 802452E4 3C02800E */  lui   $v0, 0x800e
/* 173BC8 802452E8 8C42C074 */  lw    $v0, -0x3f8c($v0)
/* 173BCC 802452EC 00431024 */  and   $v0, $v0, $v1
/* 173BD0 802452F0 14400007 */  bnez  $v0, .L80245310
/* 173BD4 802452F4 24020008 */   addiu $v0, $zero, 8
/* 173BD8 802452F8 AFA20010 */  sw    $v0, 0x10($sp)
/* 173BDC 802452FC 0000202D */  daddu $a0, $zero, $zero
/* 173BE0 80245300 2405FFFF */  addiu $a1, $zero, -1
/* 173BE4 80245304 0080302D */  daddu $a2, $a0, $zero
/* 173BE8 80245308 0C052A46 */  jal   set_music_track
/* 173BEC 8024530C 240705DC */   addiu $a3, $zero, 0x5dc
.L80245310:
/* 173BF0 80245310 0C090464 */  jal   func_80241190
/* 173BF4 80245314 24040020 */   addiu $a0, $zero, 0x20
.L80245318:
/* 173BF8 80245318 3C03800E */  lui   $v1, 0x800e
/* 173BFC 8024531C 8C63C4DC */  lw    $v1, -0x3b24($v1)
/* 173C00 80245320 24020003 */  addiu $v0, $zero, 3
/* 173C04 80245324 10620005 */  beq   $v1, $v0, .L8024533C
/* 173C08 80245328 24020004 */   addiu $v0, $zero, 4
/* 173C0C 8024532C 10620022 */  beq   $v1, $v0, .L802453B8
/* 173C10 80245330 00000000 */   nop   
/* 173C14 80245334 08091505 */  j     .L80245414
/* 173C18 80245338 00000000 */   nop   

.L8024533C:
/* 173C1C 8024533C 3C048028 */  lui   $a0, 0x8028
/* 173C20 80245340 24844EBC */  addiu $a0, $a0, 0x4ebc
/* 173C24 80245344 2405000A */  addiu $a1, $zero, 0xa
/* 173C28 80245348 0000302D */  daddu $a2, $zero, $zero
/* 173C2C 8024534C 24020007 */  addiu $v0, $zero, 7
/* 173C30 80245350 0C0B0CF8 */  jal   start_script
/* 173C34 80245354 A22201A7 */   sb    $v0, 0x1a7($s1)
/* 173C38 80245358 0040182D */  daddu $v1, $v0, $zero
/* 173C3C 8024535C AE6301D4 */  sw    $v1, 0x1d4($s3)
/* 173C40 80245360 8C620144 */  lw    $v0, 0x144($v1)
/* 173C44 80245364 AE6201E4 */  sw    $v0, 0x1e4($s3)
/* 173C48 80245368 1240000E */  beqz  $s2, .L802453A4
/* 173C4C 8024536C AC600148 */   sw    $zero, 0x148($v1)
/* 173C50 80245370 82420216 */  lb    $v0, 0x216($s2)
/* 173C54 80245374 1440000C */  bnez  $v0, .L802453A8
/* 173C58 80245378 24020004 */   addiu $v0, $zero, 4
/* 173C5C 8024537C 2405000A */  addiu $a1, $zero, 0xa
/* 173C60 80245380 8E4401C4 */  lw    $a0, 0x1c4($s2)
/* 173C64 80245384 0C0B0CF8 */  jal   start_script
/* 173C68 80245388 0000302D */   daddu $a2, $zero, $zero
/* 173C6C 8024538C 0040182D */  daddu $v1, $v0, $zero
/* 173C70 80245390 AE4301D4 */  sw    $v1, 0x1d4($s2)
/* 173C74 80245394 8C620144 */  lw    $v0, 0x144($v1)
/* 173C78 80245398 AE4201E4 */  sw    $v0, 0x1e4($s2)
/* 173C7C 8024539C 24020100 */  addiu $v0, $zero, 0x100
/* 173C80 802453A0 AC620148 */  sw    $v0, 0x148($v1)
.L802453A4:
/* 173C84 802453A4 24020004 */  addiu $v0, $zero, 4
.L802453A8:
/* 173C88 802453A8 3C01800E */  lui   $at, 0x800e
/* 173C8C 802453AC AC22C4DC */  sw    $v0, -0x3b24($at)
/* 173C90 802453B0 08091505 */  j     .L80245414
/* 173C94 802453B4 00000000 */   nop   

.L802453B8:
/* 173C98 802453B8 3C03802A */  lui   $v1, 0x802a
/* 173C9C 802453BC 2463F248 */  addiu $v1, $v1, -0xdb8
/* 173CA0 802453C0 8C620000 */  lw    $v0, ($v1)
/* 173CA4 802453C4 10400003 */  beqz  $v0, .L802453D4
/* 173CA8 802453C8 2442FFFF */   addiu $v0, $v0, -1
/* 173CAC 802453CC 08091505 */  j     .L80245414
/* 173CB0 802453D0 AC620000 */   sw    $v0, ($v1)

.L802453D4:
/* 173CB4 802453D4 8E6401E4 */  lw    $a0, 0x1e4($s3)
/* 173CB8 802453D8 0C0B1059 */  jal   does_script_exist
/* 173CBC 802453DC 00000000 */   nop   
/* 173CC0 802453E0 1440000C */  bnez  $v0, .L80245414
/* 173CC4 802453E4 00000000 */   nop   
/* 173CC8 802453E8 12400005 */  beqz  $s2, .L80245400
/* 173CCC 802453EC 00000000 */   nop   
/* 173CD0 802453F0 0C0B1059 */  jal   does_script_exist
/* 173CD4 802453F4 8E4401E4 */   lw    $a0, 0x1e4($s2)
/* 173CD8 802453F8 14400006 */  bnez  $v0, .L80245414
/* 173CDC 802453FC 00000000 */   nop   
.L80245400:
/* 173CE0 80245400 8222008C */  lb    $v0, 0x8c($s1)
/* 173CE4 80245404 14400003 */  bnez  $v0, .L80245414
/* 173CE8 80245408 00000000 */   nop   
/* 173CEC 8024540C 0C090464 */  jal   func_80241190
/* 173CF0 80245410 24040009 */   addiu $a0, $zero, 9
.L80245414:
.L80245414:
/* 173CF4 80245414 8FBF0030 */  lw    $ra, 0x30($sp)
/* 173CF8 80245418 8FB5002C */  lw    $s5, 0x2c($sp)
/* 173CFC 8024541C 8FB40028 */  lw    $s4, 0x28($sp)
/* 173D00 80245420 8FB30024 */  lw    $s3, 0x24($sp)
/* 173D04 80245424 8FB20020 */  lw    $s2, 0x20($sp)
/* 173D08 80245428 8FB1001C */  lw    $s1, 0x1c($sp)
/* 173D0C 8024542C 8FB00018 */  lw    $s0, 0x18($sp)
/* 173D10 80245430 03E00008 */  jr    $ra
/* 173D14 80245434 27BD0038 */   addiu $sp, $sp, 0x38

