.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_802E5FB0
/* 107830 802E5FB0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 107834 802E5FB4 AFB00018 */  sw    $s0, 0x18($sp)
/* 107838 802E5FB8 0080802D */  daddu $s0, $a0, $zero
/* 10783C 802E5FBC 3C048011 */  lui   $a0, 0x8011
/* 107840 802E5FC0 2484EFC8 */  addiu $a0, $a0, -0x1038
/* 107844 802E5FC4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 107848 802E5FC8 808300B4 */  lb    $v1, 0xb4($a0)
/* 10784C 802E5FCC 24020021 */  addiu $v0, $zero, 0x21
/* 107850 802E5FD0 10620020 */  beq   $v1, $v0, .L802E6054
/* 107854 802E5FD4 00000000 */   nop   
/* 107858 802E5FD8 92020006 */  lbu   $v0, 6($s0)
/* 10785C 802E5FDC 30420001 */  andi  $v0, $v0, 1
/* 107860 802E5FE0 1040001C */  beqz  $v0, .L802E6054
/* 107864 802E5FE4 24020005 */   addiu $v0, $zero, 5
/* 107868 802E5FE8 A08200C5 */  sb    $v0, 0xc5($a0)
/* 10786C 802E5FEC 8C820000 */  lw    $v0, ($a0)
/* 107870 802E5FF0 2403FFFB */  addiu $v1, $zero, -5
/* 107874 802E5FF4 00431024 */  and   $v0, $v0, $v1
/* 107878 802E5FF8 3C030080 */  lui   $v1, 0x80
/* 10787C 802E5FFC 00431025 */  or    $v0, $v0, $v1
/* 107880 802E6000 AC820000 */  sw    $v0, ($a0)
/* 107884 802E6004 86040014 */  lh    $a0, 0x14($s0)
/* 107888 802E6008 3C050000 */  lui   $a1, 0
/* 10788C 802E600C 24A501E4 */  addiu $a1, $a1, 0x1e4
/* 107890 802E6010 0C048052 */  jal   play_model_animation
/* 107894 802E6014 00000000 */   nop   
/* 107898 802E6018 0C04419E */  jal   func_80110678
/* 10789C 802E601C 0200202D */   daddu $a0, $s0, $zero
/* 1078A0 802E6020 10400003 */  beqz  $v0, .L802E6030
/* 1078A4 802E6024 00000000 */   nop   
/* 1078A8 802E6028 0C039769 */  jal   set_action_state
/* 1078AC 802E602C 24040026 */   addiu $a0, $zero, 0x26
.L802E6030:
/* 1078B0 802E6030 0C043F5A */  jal   func_8010FD68
/* 1078B4 802E6034 0200202D */   daddu $a0, $s0, $zero
/* 1078B8 802E6038 C6000050 */  lwc1  $f0, 0x50($s0)
/* 1078BC 802E603C 24042086 */  addiu $a0, $zero, 0x2086
/* 1078C0 802E6040 E7A00010 */  swc1  $f0, 0x10($sp)
/* 1078C4 802E6044 8E060048 */  lw    $a2, 0x48($s0)
/* 1078C8 802E6048 8E07004C */  lw    $a3, 0x4c($s0)
/* 1078CC 802E604C 0C052757 */  jal   play_sound_at_position
/* 1078D0 802E6050 0000282D */   daddu $a1, $zero, $zero
.L802E6054:
/* 1078D4 802E6054 8FBF001C */  lw    $ra, 0x1c($sp)
/* 1078D8 802E6058 8FB00018 */  lw    $s0, 0x18($sp)
/* 1078DC 802E605C 03E00008 */  jr    $ra
/* 1078E0 802E6060 27BD0020 */   addiu $sp, $sp, 0x20

/* 1078E4 802E6064 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 1078E8 802E6068 AFB00018 */  sw    $s0, 0x18($sp)
/* 1078EC 802E606C 0080802D */  daddu $s0, $a0, $zero
/* 1078F0 802E6070 3C058011 */  lui   $a1, 0x8011
/* 1078F4 802E6074 24A5EFC8 */  addiu $a1, $a1, -0x1038
/* 1078F8 802E6078 AFB1001C */  sw    $s1, 0x1c($sp)
/* 1078FC 802E607C 24030021 */  addiu $v1, $zero, 0x21
/* 107900 802E6080 AFBF0020 */  sw    $ra, 0x20($sp)
/* 107904 802E6084 80A200B4 */  lb    $v0, 0xb4($a1)
/* 107908 802E6088 8E040040 */  lw    $a0, 0x40($s0)
/* 10790C 802E608C 1043001D */  beq   $v0, $v1, .L802E6104
/* 107910 802E6090 00A0882D */   daddu $s1, $a1, $zero
/* 107914 802E6094 92020006 */  lbu   $v0, 6($s0)
/* 107918 802E6098 30420001 */  andi  $v0, $v0, 1
/* 10791C 802E609C 10400019 */  beqz  $v0, .L802E6104
/* 107920 802E60A0 00000000 */   nop   
/* 107924 802E60A4 8C820000 */  lw    $v0, ($a0)
/* 107928 802E60A8 28420046 */  slti  $v0, $v0, 0x46
/* 10792C 802E60AC 14400002 */  bnez  $v0, .L802E60B8
/* 107930 802E60B0 24020005 */   addiu $v0, $zero, 5
/* 107934 802E60B4 A0A200C5 */  sb    $v0, 0xc5($a1)
.L802E60B8:
/* 107938 802E60B8 86040014 */  lh    $a0, 0x14($s0)
/* 10793C 802E60BC 3C050000 */  lui   $a1, 0
/* 107940 802E60C0 24A501E4 */  addiu $a1, $a1, 0x1e4
/* 107944 802E60C4 0C048052 */  jal   play_model_animation
/* 107948 802E60C8 00000000 */   nop   
/* 10794C 802E60CC 0C04419E */  jal   func_80110678
/* 107950 802E60D0 0200202D */   daddu $a0, $s0, $zero
/* 107954 802E60D4 0C043F5A */  jal   func_8010FD68
/* 107958 802E60D8 0200202D */   daddu $a0, $s0, $zero
/* 10795C 802E60DC C6000050 */  lwc1  $f0, 0x50($s0)
/* 107960 802E60E0 24042086 */  addiu $a0, $zero, 0x2086
/* 107964 802E60E4 E7A00010 */  swc1  $f0, 0x10($sp)
/* 107968 802E60E8 8E060048 */  lw    $a2, 0x48($s0)
/* 10796C 802E60EC 8E07004C */  lw    $a3, 0x4c($s0)
/* 107970 802E60F0 0C052757 */  jal   play_sound_at_position
/* 107974 802E60F4 0000282D */   daddu $a1, $zero, $zero
/* 107978 802E60F8 0C03805E */  jal   func_800E0178
/* 10797C 802E60FC 00000000 */   nop   
/* 107980 802E6100 AE200054 */  sw    $zero, 0x54($s1)
.L802E6104:
/* 107984 802E6104 8FBF0020 */  lw    $ra, 0x20($sp)
/* 107988 802E6108 8FB1001C */  lw    $s1, 0x1c($sp)
/* 10798C 802E610C 8FB00018 */  lw    $s0, 0x18($sp)
/* 107990 802E6110 03E00008 */  jr    $ra
/* 107994 802E6114 27BD0028 */   addiu $sp, $sp, 0x28

/* 107998 802E6118 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 10799C 802E611C AFB10014 */  sw    $s1, 0x14($sp)
/* 1079A0 802E6120 0080882D */  daddu $s1, $a0, $zero
/* 1079A4 802E6124 AFBF0018 */  sw    $ra, 0x18($sp)
/* 1079A8 802E6128 AFB00010 */  sw    $s0, 0x10($sp)
/* 1079AC 802E612C 8E300040 */  lw    $s0, 0x40($s1)
/* 1079B0 802E6130 0C039769 */  jal   set_action_state
/* 1079B4 802E6134 24040006 */   addiu $a0, $zero, 6
/* 1079B8 802E6138 3C014170 */  lui   $at, 0x4170
/* 1079BC 802E613C 44810000 */  mtc1  $at, $f0
/* 1079C0 802E6140 3C028011 */  lui   $v0, 0x8011
/* 1079C4 802E6144 2442EFC8 */  addiu $v0, $v0, -0x1038
/* 1079C8 802E6148 AC400074 */  sw    $zero, 0x74($v0)
/* 1079CC 802E614C E4400070 */  swc1  $f0, 0x70($v0)
/* 1079D0 802E6150 C6000000 */  lwc1  $f0, ($s0)
/* 1079D4 802E6154 46800020 */  cvt.s.w $f0, $f0
/* 1079D8 802E6158 E4400078 */  swc1  $f0, 0x78($v0)
/* 1079DC 802E615C C620004C */  lwc1  $f0, 0x4c($s1)
/* 1079E0 802E6160 E440007C */  swc1  $f0, 0x7c($v0)
/* 1079E4 802E6164 8FBF0018 */  lw    $ra, 0x18($sp)
/* 1079E8 802E6168 8FB10014 */  lw    $s1, 0x14($sp)
/* 1079EC 802E616C 8FB00010 */  lw    $s0, 0x10($sp)
/* 1079F0 802E6170 03E00008 */  jr    $ra
/* 1079F4 802E6174 27BD0020 */   addiu $sp, $sp, 0x20

/* 1079F8 802E6178 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1079FC 802E617C AFBF0010 */  sw    $ra, 0x10($sp)
/* 107A00 802E6180 0C038069 */  jal   func_800E01A4
/* 107A04 802E6184 00000000 */   nop   
/* 107A08 802E6188 8FBF0010 */  lw    $ra, 0x10($sp)
/* 107A0C 802E618C 03E00008 */  jr    $ra
/* 107A10 802E6190 27BD0018 */   addiu $sp, $sp, 0x18

/* 107A14 802E6194 03E00008 */  jr    $ra
/* 107A18 802E6198 00000000 */   nop   

/* 107A1C 802E619C 8C830040 */  lw    $v1, 0x40($a0)
/* 107A20 802E61A0 3C028016 */  lui   $v0, 0x8016
/* 107A24 802E61A4 8C42C7D0 */  lw    $v0, -0x3830($v0)
/* 107A28 802E61A8 03E00008 */  jr    $ra
/* 107A2C 802E61AC AC620000 */   sw    $v0, ($v1)

/* 107A30 802E61B0 27BDFF58 */  addiu $sp, $sp, -0xa8
/* 107A34 802E61B4 AFBF00A4 */  sw    $ra, 0xa4($sp)
/* 107A38 802E61B8 AFB400A0 */  sw    $s4, 0xa0($sp)
/* 107A3C 802E61BC AFB3009C */  sw    $s3, 0x9c($sp)
/* 107A40 802E61C0 AFB20098 */  sw    $s2, 0x98($sp)
/* 107A44 802E61C4 AFB10094 */  sw    $s1, 0x94($sp)
/* 107A48 802E61C8 0C04417A */  jal   get_entity_by_index
/* 107A4C 802E61CC AFB00090 */   sw    $s0, 0x90($sp)
/* 107A50 802E61D0 0040982D */  daddu $s3, $v0, $zero
/* 107A54 802E61D4 8E740040 */  lw    $s4, 0x40($s3)
/* 107A58 802E61D8 C662004C */  lwc1  $f2, 0x4c($s3)
/* 107A5C 802E61DC C6800024 */  lwc1  $f0, 0x24($s4)
/* 107A60 802E61E0 46001032 */  c.eq.s $f2, $f0
/* 107A64 802E61E4 00000000 */  nop   
/* 107A68 802E61E8 45010041 */  bc1t  .L802E62F0
/* 107A6C 802E61EC 00000000 */   nop   
/* 107A70 802E61F0 0C019D28 */  jal   guMtxIdentF
/* 107A74 802E61F4 27A40010 */   addiu $a0, $sp, 0x10
/* 107A78 802E61F8 27B00050 */  addiu $s0, $sp, 0x50
/* 107A7C 802E61FC 0200202D */  daddu $a0, $s0, $zero
/* 107A80 802E6200 C6820024 */  lwc1  $f2, 0x24($s4)
/* 107A84 802E6204 3C013F80 */  lui   $at, 0x3f80
/* 107A88 802E6208 44810000 */  mtc1  $at, $f0
/* 107A8C 802E620C 3C120001 */  lui   $s2, 1
/* 107A90 802E6210 46001080 */  add.s $f2, $f2, $f0
/* 107A94 802E6214 8E650048 */  lw    $a1, 0x48($s3)
/* 107A98 802E6218 8E670050 */  lw    $a3, 0x50($s3)
/* 107A9C 802E621C 44061000 */  mfc1  $a2, $f2
/* 107AA0 802E6220 0C019E40 */  jal   guTranslateF
/* 107AA4 802E6224 36521630 */   ori   $s2, $s2, 0x1630
/* 107AA8 802E6228 0200202D */  daddu $a0, $s0, $zero
/* 107AAC 802E622C 27A50010 */  addiu $a1, $sp, 0x10
/* 107AB0 802E6230 0C019D80 */  jal   guMtxCatF
/* 107AB4 802E6234 0200302D */   daddu $a2, $s0, $zero
/* 107AB8 802E6238 0200202D */  daddu $a0, $s0, $zero
/* 107ABC 802E623C 3C108007 */  lui   $s0, 0x8007
/* 107AC0 802E6240 261041F0 */  addiu $s0, $s0, 0x41f0
/* 107AC4 802E6244 3C11800A */  lui   $s1, 0x800a
/* 107AC8 802E6248 2631A674 */  addiu $s1, $s1, -0x598c
/* 107ACC 802E624C 96050000 */  lhu   $a1, ($s0)
/* 107AD0 802E6250 8E220000 */  lw    $v0, ($s1)
/* 107AD4 802E6254 00052980 */  sll   $a1, $a1, 6
/* 107AD8 802E6258 00B22821 */  addu  $a1, $a1, $s2
/* 107ADC 802E625C 0C019D40 */  jal   guMtxF2L
/* 107AE0 802E6260 00452821 */   addu  $a1, $v0, $a1
/* 107AE4 802E6264 3C03DA38 */  lui   $v1, 0xda38
/* 107AE8 802E6268 34630002 */  ori   $v1, $v1, 2
/* 107AEC 802E626C 3C07D838 */  lui   $a3, 0xd838
/* 107AF0 802E6270 3C05800A */  lui   $a1, 0x800a
/* 107AF4 802E6274 24A5A66C */  addiu $a1, $a1, -0x5994
/* 107AF8 802E6278 34E70002 */  ori   $a3, $a3, 2
/* 107AFC 802E627C 8CA40000 */  lw    $a0, ($a1)
/* 107B00 802E6280 96020000 */  lhu   $v0, ($s0)
/* 107B04 802E6284 0080302D */  daddu $a2, $a0, $zero
/* 107B08 802E6288 24840008 */  addiu $a0, $a0, 8
/* 107B0C 802E628C ACA40000 */  sw    $a0, ($a1)
/* 107B10 802E6290 ACC30000 */  sw    $v1, ($a2)
/* 107B14 802E6294 24430001 */  addiu $v1, $v0, 1
/* 107B18 802E6298 3042FFFF */  andi  $v0, $v0, 0xffff
/* 107B1C 802E629C 00021180 */  sll   $v0, $v0, 6
/* 107B20 802E62A0 A6030000 */  sh    $v1, ($s0)
/* 107B24 802E62A4 8E230000 */  lw    $v1, ($s1)
/* 107B28 802E62A8 00521021 */  addu  $v0, $v0, $s2
/* 107B2C 802E62AC 00621821 */  addu  $v1, $v1, $v0
/* 107B30 802E62B0 24820008 */  addiu $v0, $a0, 8
/* 107B34 802E62B4 ACC30004 */  sw    $v1, 4($a2)
/* 107B38 802E62B8 ACA20000 */  sw    $v0, ($a1)
/* 107B3C 802E62BC 3C02DE00 */  lui   $v0, 0xde00
/* 107B40 802E62C0 AC820000 */  sw    $v0, ($a0)
/* 107B44 802E62C4 8E630044 */  lw    $v1, 0x44($s3)
/* 107B48 802E62C8 24820010 */  addiu $v0, $a0, 0x10
/* 107B4C 802E62CC ACA20000 */  sw    $v0, ($a1)
/* 107B50 802E62D0 24020040 */  addiu $v0, $zero, 0x40
/* 107B54 802E62D4 AC82000C */  sw    $v0, 0xc($a0)
/* 107B58 802E62D8 3C020A00 */  lui   $v0, 0xa00
/* 107B5C 802E62DC 24420230 */  addiu $v0, $v0, 0x230
/* 107B60 802E62E0 3042FFFF */  andi  $v0, $v0, 0xffff
/* 107B64 802E62E4 AC870008 */  sw    $a3, 8($a0)
/* 107B68 802E62E8 00621821 */  addu  $v1, $v1, $v0
/* 107B6C 802E62EC AC830004 */  sw    $v1, 4($a0)
.L802E62F0:
/* 107B70 802E62F0 96840074 */  lhu   $a0, 0x74($s4)
/* 107B74 802E62F4 8E850078 */  lw    $a1, 0x78($s4)
/* 107B78 802E62F8 8E670044 */  lw    $a3, 0x44($s3)
/* 107B7C 802E62FC 0C0470CB */  jal   func_8011C32C
/* 107B80 802E6300 26860034 */   addiu $a2, $s4, 0x34
/* 107B84 802E6304 96850074 */  lhu   $a1, 0x74($s4)
/* 107B88 802E6308 3C04800A */  lui   $a0, 0x800a
/* 107B8C 802E630C 2484A66C */  addiu $a0, $a0, -0x5994
/* 107B90 802E6310 0C0475CB */  jal   func_8011D72C
/* 107B94 802E6314 00000000 */   nop   
/* 107B98 802E6318 8FBF00A4 */  lw    $ra, 0xa4($sp)
/* 107B9C 802E631C 8FB400A0 */  lw    $s4, 0xa0($sp)
/* 107BA0 802E6320 8FB3009C */  lw    $s3, 0x9c($sp)
/* 107BA4 802E6324 8FB20098 */  lw    $s2, 0x98($sp)
/* 107BA8 802E6328 8FB10094 */  lw    $s1, 0x94($sp)
/* 107BAC 802E632C 8FB00090 */  lw    $s0, 0x90($sp)
/* 107BB0 802E6330 03E00008 */  jr    $ra
/* 107BB4 802E6334 27BD00A8 */   addiu $sp, $sp, 0xa8

/* 107BB8 802E6338 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 107BBC 802E633C AFBF0014 */  sw    $ra, 0x14($sp)
/* 107BC0 802E6340 AFB00010 */  sw    $s0, 0x10($sp)
/* 107BC4 802E6344 8C900040 */  lw    $s0, 0x40($a0)
/* 107BC8 802E6348 0C03A752 */  jal   is_ability_active
/* 107BCC 802E634C 24040029 */   addiu $a0, $zero, 0x29
/* 107BD0 802E6350 1040000B */  beqz  $v0, .L802E6380
/* 107BD4 802E6354 00000000 */   nop   
/* 107BD8 802E6358 0C05152F */  jal   get_global_flag
/* 107BDC 802E635C 96040006 */   lhu   $a0, 6($s0)
/* 107BE0 802E6360 14400007 */  bnez  $v0, .L802E6380
/* 107BE4 802E6364 00000000 */   nop   
/* 107BE8 802E6368 3C038016 */  lui   $v1, 0x8016
/* 107BEC 802E636C 2463A578 */  addiu $v1, $v1, -0x5a88
/* 107BF0 802E6370 80620002 */  lb    $v0, 2($v1)
/* 107BF4 802E6374 14400002 */  bnez  $v0, .L802E6380
/* 107BF8 802E6378 24020001 */   addiu $v0, $zero, 1
/* 107BFC 802E637C A0620002 */  sb    $v0, 2($v1)
.L802E6380:
/* 107C00 802E6380 8FBF0014 */  lw    $ra, 0x14($sp)
/* 107C04 802E6384 8FB00010 */  lw    $s0, 0x10($sp)
/* 107C08 802E6388 03E00008 */  jr    $ra
/* 107C0C 802E638C 27BD0018 */   addiu $sp, $sp, 0x18

/* 107C10 802E6390 8C820000 */  lw    $v0, ($a0)
/* 107C14 802E6394 2403FFDF */  addiu $v1, $zero, -0x21
/* 107C18 802E6398 00431024 */  and   $v0, $v0, $v1
/* 107C1C 802E639C 34420001 */  ori   $v0, $v0, 1
/* 107C20 802E63A0 03E00008 */  jr    $ra
/* 107C24 802E63A4 AC820000 */   sw    $v0, ($a0)

/* 107C28 802E63A8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 107C2C 802E63AC AFB3001C */  sw    $s3, 0x1c($sp)
/* 107C30 802E63B0 0080982D */  daddu $s3, $a0, $zero
/* 107C34 802E63B4 AFBF0020 */  sw    $ra, 0x20($sp)
/* 107C38 802E63B8 AFB20018 */  sw    $s2, 0x18($sp)
/* 107C3C 802E63BC AFB10014 */  sw    $s1, 0x14($sp)
/* 107C40 802E63C0 AFB00010 */  sw    $s0, 0x10($sp)
/* 107C44 802E63C4 92620006 */  lbu   $v0, 6($s3)
/* 107C48 802E63C8 8E720040 */  lw    $s2, 0x40($s3)
/* 107C4C 802E63CC 30420001 */  andi  $v0, $v0, 1
/* 107C50 802E63D0 5040000A */  beql  $v0, $zero, .L802E63FC
/* 107C54 802E63D4 A2400004 */   sb    $zero, 4($s2)
/* 107C58 802E63D8 82420004 */  lb    $v0, 4($s2)
/* 107C5C 802E63DC 14400008 */  bnez  $v0, .L802E6400
/* 107C60 802E63E0 2402FFFF */   addiu $v0, $zero, -1
/* 107C64 802E63E4 24020001 */  addiu $v0, $zero, 1
/* 107C68 802E63E8 A2420004 */  sb    $v0, 4($s2)
/* 107C6C 802E63EC 0C03BCF5 */  jal   func_800EF3D4
/* 107C70 802E63F0 24040001 */   addiu $a0, $zero, 1
/* 107C74 802E63F4 080B9900 */  j     .L802E6400
/* 107C78 802E63F8 2402FFFF */   addiu $v0, $zero, -1

.L802E63FC:
/* 107C7C 802E63FC 2402FFFF */  addiu $v0, $zero, -1
.L802E6400:
/* 107C80 802E6400 3C038016 */  lui   $v1, 0x8016
/* 107C84 802E6404 2463A578 */  addiu $v1, $v1, -0x5a88
/* 107C88 802E6408 AE420008 */  sw    $v0, 8($s2)
/* 107C8C 802E640C AE40000C */  sw    $zero, 0xc($s2)
/* 107C90 802E6410 80620000 */  lb    $v0, ($v1)
/* 107C94 802E6414 10400050 */  beqz  $v0, .L802E6558
/* 107C98 802E6418 00000000 */   nop   
/* 107C9C 802E641C C4600008 */  lwc1  $f0, 8($v1)
/* 107CA0 802E6420 C662004C */  lwc1  $f2, 0x4c($s3)
/* 107CA4 802E6424 46020001 */  sub.s $f0, $f0, $f2
/* 107CA8 802E6428 3C014024 */  lui   $at, 0x4024
/* 107CAC 802E642C 44811800 */  mtc1  $at, $f3
/* 107CB0 802E6430 44801000 */  mtc1  $zero, $f2
/* 107CB4 802E6434 46000021 */  cvt.d.s $f0, $f0
/* 107CB8 802E6438 46200005 */  abs.d $f0, $f0
/* 107CBC 802E643C 4622003E */  c.le.d $f0, $f2
/* 107CC0 802E6440 00000000 */  nop   
/* 107CC4 802E6444 45000044 */  bc1f  .L802E6558
/* 107CC8 802E6448 2402000A */   addiu $v0, $zero, 0xa
/* 107CCC 802E644C A2420000 */  sb    $v0, ($s2)
/* 107CD0 802E6450 C66C0048 */  lwc1  $f12, 0x48($s3)
/* 107CD4 802E6454 0C038022 */  jal   func_800E0088
/* 107CD8 802E6458 C66E0050 */   lwc1  $f14, 0x50($s3)
/* 107CDC 802E645C 4600010D */  trunc.w.s $f4, $f0
/* 107CE0 802E6460 44102000 */  mfc1  $s0, $f4
/* 107CE4 802E6464 00000000 */  nop   
/* 107CE8 802E6468 2A020065 */  slti  $v0, $s0, 0x65
/* 107CEC 802E646C 1040003A */  beqz  $v0, .L802E6558
/* 107CF0 802E6470 00000000 */   nop   
/* 107CF4 802E6474 92620006 */  lbu   $v0, 6($s3)
/* 107CF8 802E6478 30420001 */  andi  $v0, $v0, 1
/* 107CFC 802E647C 10400005 */  beqz  $v0, .L802E6494
/* 107D00 802E6480 0260202D */   daddu $a0, $s3, $zero
/* 107D04 802E6484 3C013F00 */  lui   $at, 0x3f00
/* 107D08 802E6488 44810000 */  mtc1  $at, $f0
/* 107D0C 802E648C 080B9954 */  j     .L802E6550
/* 107D10 802E6490 00000000 */   nop   

.L802E6494:
/* 107D14 802E6494 0C0B9ADB */  jal   func_802E6B6C
/* 107D18 802E6498 0260202D */   daddu $a0, $s3, $zero
/* 107D1C 802E649C 10400005 */  beqz  $v0, .L802E64B4
/* 107D20 802E64A0 0260202D */   daddu $a0, $s3, $zero
/* 107D24 802E64A4 3C013F00 */  lui   $at, 0x3f00
/* 107D28 802E64A8 44810000 */  mtc1  $at, $f0
/* 107D2C 802E64AC 080B9954 */  j     .L802E6550
/* 107D30 802E64B0 00000000 */   nop   

.L802E64B4:
/* 107D34 802E64B4 0C00F475 */  jal   func_8003D1D4
/* 107D38 802E64B8 92640004 */   lbu   $a0, 4($s3)
/* 107D3C 802E64BC 0040882D */  daddu $s1, $v0, $zero
/* 107D40 802E64C0 06200016 */  bltz  $s1, .L802E651C
/* 107D44 802E64C4 00000000 */   nop   
/* 107D48 802E64C8 0C00E2B7 */  jal   get_npc_by_index
/* 107D4C 802E64CC 0220202D */   daddu $a0, $s1, $zero
/* 107D50 802E64D0 0040802D */  daddu $s0, $v0, $zero
/* 107D54 802E64D4 C66C0048 */  lwc1  $f12, 0x48($s3)
/* 107D58 802E64D8 C66E0050 */  lwc1  $f14, 0x50($s3)
/* 107D5C 802E64DC 8E060038 */  lw    $a2, 0x38($s0)
/* 107D60 802E64E0 0C00A7B5 */  jal   dist2D
/* 107D64 802E64E4 8E070040 */   lw    $a3, 0x40($s0)
/* 107D68 802E64E8 0260202D */  daddu $a0, $s3, $zero
/* 107D6C 802E64EC AE510008 */  sw    $s1, 8($s2)
/* 107D70 802E64F0 8E020000 */  lw    $v0, ($s0)
/* 107D74 802E64F4 2403FFF7 */  addiu $v1, $zero, -9
/* 107D78 802E64F8 30420208 */  andi  $v0, $v0, 0x208
/* 107D7C 802E64FC AE42000C */  sw    $v0, 0xc($s2)
/* 107D80 802E6500 8E020000 */  lw    $v0, ($s0)
/* 107D84 802E6504 3C013F00 */  lui   $at, 0x3f00
/* 107D88 802E6508 44810000 */  mtc1  $at, $f0
/* 107D8C 802E650C 00431024 */  and   $v0, $v0, $v1
/* 107D90 802E6510 34420200 */  ori   $v0, $v0, 0x200
/* 107D94 802E6514 080B9954 */  j     .L802E6550
/* 107D98 802E6518 AE020000 */   sw    $v0, ($s0)

.L802E651C:
/* 107D9C 802E651C 8E620000 */  lw    $v0, ($s3)
/* 107DA0 802E6520 34420020 */  ori   $v0, $v0, 0x20
/* 107DA4 802E6524 AE620000 */  sw    $v0, ($s3)
/* 107DA8 802E6528 2A02003D */  slti  $v0, $s0, 0x3d
/* 107DAC 802E652C 14400005 */  bnez  $v0, .L802E6544
/* 107DB0 802E6530 0260202D */   daddu $a0, $s3, $zero
/* 107DB4 802E6534 3C013F00 */  lui   $at, 0x3f00
/* 107DB8 802E6538 44810000 */  mtc1  $at, $f0
/* 107DBC 802E653C 080B9954 */  j     .L802E6550
/* 107DC0 802E6540 00000000 */   nop   

.L802E6544:
/* 107DC4 802E6544 3C014120 */  lui   $at, 0x4120
/* 107DC8 802E6548 44810000 */  mtc1  $at, $f0
/* 107DCC 802E654C A2400000 */  sb    $zero, ($s2)
.L802E6550:
/* 107DD0 802E6550 0C043F5A */  jal   func_8010FD68
/* 107DD4 802E6554 E6400028 */   swc1  $f0, 0x28($s2)
.L802E6558:
/* 107DD8 802E6558 8FBF0020 */  lw    $ra, 0x20($sp)
/* 107DDC 802E655C 8FB3001C */  lw    $s3, 0x1c($sp)
/* 107DE0 802E6560 8FB20018 */  lw    $s2, 0x18($sp)
/* 107DE4 802E6564 8FB10014 */  lw    $s1, 0x14($sp)
/* 107DE8 802E6568 8FB00010 */  lw    $s0, 0x10($sp)
/* 107DEC 802E656C 03E00008 */  jr    $ra
/* 107DF0 802E6570 27BD0028 */   addiu $sp, $sp, 0x28

/* 107DF4 802E6574 3C01800B */  lui   $at, 0x800b
/* 107DF8 802E6578 C4201DEC */  lwc1  $f0, 0x1dec($at)
/* 107DFC 802E657C 3C014234 */  lui   $at, 0x4234
/* 107E00 802E6580 44816000 */  mtc1  $at, $f12
/* 107E04 802E6584 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 107E08 802E6588 AFB1001C */  sw    $s1, 0x1c($sp)
/* 107E0C 802E658C 0080882D */  daddu $s1, $a0, $zero
/* 107E10 802E6590 AFBF0024 */  sw    $ra, 0x24($sp)
/* 107E14 802E6594 AFB20020 */  sw    $s2, 0x20($sp)
/* 107E18 802E6598 AFB00018 */  sw    $s0, 0x18($sp)
/* 107E1C 802E659C F7B60030 */  sdc1  $f22, 0x30($sp)
/* 107E20 802E65A0 F7B40028 */  sdc1  $f20, 0x28($sp)
/* 107E24 802E65A4 8E300040 */  lw    $s0, 0x40($s1)
/* 107E28 802E65A8 0C00A6C9 */  jal   clamp_angle
/* 107E2C 802E65AC 460C0300 */   add.s $f12, $f0, $f12
/* 107E30 802E65B0 3C0142B4 */  lui   $at, 0x42b4
/* 107E34 802E65B4 44811000 */  mtc1  $at, $f2
/* 107E38 802E65B8 46000106 */  mov.s $f4, $f0
/* 107E3C 802E65BC 4602203C */  c.lt.s $f4, $f2
/* 107E40 802E65C0 00000000 */  nop   
/* 107E44 802E65C4 4501000F */  bc1t  .L802E6604
/* 107E48 802E65C8 00000000 */   nop   
/* 107E4C 802E65CC 3C014334 */  lui   $at, 0x4334
/* 107E50 802E65D0 44810000 */  mtc1  $at, $f0
/* 107E54 802E65D4 00000000 */  nop   
/* 107E58 802E65D8 4604003E */  c.le.s $f0, $f4
/* 107E5C 802E65DC 00000000 */  nop   
/* 107E60 802E65E0 4500000B */  bc1f  .L802E6610
/* 107E64 802E65E4 00000000 */   nop   
/* 107E68 802E65E8 3C014387 */  lui   $at, 0x4387
/* 107E6C 802E65EC 44810000 */  mtc1  $at, $f0
/* 107E70 802E65F0 00000000 */  nop   
/* 107E74 802E65F4 4600203C */  c.lt.s $f4, $f0
/* 107E78 802E65F8 00000000 */  nop   
/* 107E7C 802E65FC 45000004 */  bc1f  .L802E6610
/* 107E80 802E6600 00000000 */   nop   
.L802E6604:
/* 107E84 802E6604 C6340068 */  lwc1  $f20, 0x68($s1)
/* 107E88 802E6608 080B9986 */  j     .L802E6618
/* 107E8C 802E660C 24120001 */   addiu $s2, $zero, 1

.L802E6610:
/* 107E90 802E6610 C6340060 */  lwc1  $f20, 0x60($s1)
/* 107E94 802E6614 0000902D */  daddu $s2, $zero, $zero
.L802E6618:
/* 107E98 802E6618 82030000 */  lb    $v1, ($s0)
/* 107E9C 802E661C 2C62000D */  sltiu $v0, $v1, 0xd
/* 107EA0 802E6620 1040012C */  beqz  $v0, .L802E6AD4
/* 107EA4 802E6624 00031080 */   sll   $v0, $v1, 2
/* 107EA8 802E6628 3C01802F */  lui   $at, 0x802f
/* 107EAC 802E662C 00220821 */  addu  $at, $at, $v0
/* 107EB0 802E6630 8C22B2B0 */  lw    $v0, -0x4d50($at)
/* 107EB4 802E6634 00400008 */  jr    $v0
/* 107EB8 802E6638 00000000 */   nop   
/* 107EBC 802E663C 0C05272D */  jal   play_sound
/* 107EC0 802E6640 240420AB */   addiu $a0, $zero, 0x20ab
/* 107EC4 802E6644 24040001 */  addiu $a0, $zero, 1
/* 107EC8 802E6648 3C0142B4 */  lui   $at, 0x42b4
/* 107ECC 802E664C 44810000 */  mtc1  $at, $f0
/* 107ED0 802E6650 3C014282 */  lui   $at, 0x4282
/* 107ED4 802E6654 44811000 */  mtc1  $at, $f2
/* 107ED8 802E6658 0080102D */  daddu $v0, $a0, $zero
/* 107EDC 802E665C A2020000 */  sb    $v0, ($s0)
/* 107EE0 802E6660 A2020002 */  sb    $v0, 2($s0)
/* 107EE4 802E6664 E600002C */  swc1  $f0, 0x2c($s0)
/* 107EE8 802E6668 0C009C22 */  jal   func_80027088
/* 107EEC 802E666C E6020030 */   swc1  $f2, 0x30($s0)
/* 107EF0 802E6670 0C038045 */  jal   enable_player_physics
/* 107EF4 802E6674 00000000 */   nop   
/* 107EF8 802E6678 3C03800F */  lui   $v1, 0x800f
/* 107EFC 802E667C 8C637B30 */  lw    $v1, 0x7b30($v1)
/* 107F00 802E6680 8C620004 */  lw    $v0, 4($v1)
/* 107F04 802E6684 34420800 */  ori   $v0, $v0, 0x800
/* 107F08 802E6688 AC620004 */  sw    $v0, 4($v1)
/* 107F0C 802E668C 82020003 */  lb    $v0, 3($s0)
/* 107F10 802E6690 10400013 */  beqz  $v0, .L802E66E0
/* 107F14 802E6694 24020005 */   addiu $v0, $zero, 5
/* 107F18 802E6698 A2000003 */  sb    $zero, 3($s0)
/* 107F1C 802E669C C620004C */  lwc1  $f0, 0x4c($s1)
/* 107F20 802E66A0 AFA20010 */  sw    $v0, 0x10($sp)
/* 107F24 802E66A4 96020006 */  lhu   $v0, 6($s0)
/* 107F28 802E66A8 3C014000 */  lui   $at, 0x4000
/* 107F2C 802E66AC 44811800 */  mtc1  $at, $f3
/* 107F30 802E66B0 44801000 */  mtc1  $zero, $f2
/* 107F34 802E66B4 46000021 */  cvt.d.s $f0, $f0
/* 107F38 802E66B8 46220000 */  add.d $f0, $f0, $f2
/* 107F3C 802E66BC AFA20014 */  sw    $v0, 0x14($sp)
/* 107F40 802E66C0 8E040010 */  lw    $a0, 0x10($s0)
/* 107F44 802E66C4 8E250048 */  lw    $a1, 0x48($s1)
/* 107F48 802E66C8 8E270050 */  lw    $a3, 0x50($s1)
/* 107F4C 802E66CC 46200020 */  cvt.s.d $f0, $f0
/* 107F50 802E66D0 44060000 */  mfc1  $a2, $f0
/* 107F54 802E66D4 0C04C6A5 */  jal   make_item_entity_nodelay
/* 107F58 802E66D8 00000000 */   nop   
/* 107F5C 802E66DC AE020014 */  sw    $v0, 0x14($s0)
.L802E66E0:
/* 107F60 802E66E0 8E220000 */  lw    $v0, ($s1)
/* 107F64 802E66E4 2403FFFE */  addiu $v1, $zero, -2
/* 107F68 802E66E8 00431024 */  and   $v0, $v0, $v1
/* 107F6C 802E66EC 080B9AB5 */  j     .L802E6AD4
/* 107F70 802E66F0 AE220000 */   sw    $v0, ($s1)

/* 107F74 802E66F4 C60C002C */  lwc1  $f12, 0x2c($s0)
/* 107F78 802E66F8 3C0140C9 */  lui   $at, 0x40c9
/* 107F7C 802E66FC 34210FD0 */  ori   $at, $at, 0xfd0
/* 107F80 802E6700 44810000 */  mtc1  $at, $f0
/* 107F84 802E6704 00000000 */  nop   
/* 107F88 802E6708 46006302 */  mul.s $f12, $f12, $f0
/* 107F8C 802E670C 00000000 */  nop   
/* 107F90 802E6710 3C0143B4 */  lui   $at, 0x43b4
/* 107F94 802E6714 4481B000 */  mtc1  $at, $f22
/* 107F98 802E6718 0C00A85B */  jal   sin_rad
/* 107F9C 802E671C 46166303 */   div.s $f12, $f12, $f22
/* 107FA0 802E6720 C6020028 */  lwc1  $f2, 0x28($s0)
/* 107FA4 802E6724 46001082 */  mul.s $f2, $f2, $f0
/* 107FA8 802E6728 00000000 */  nop   
/* 107FAC 802E672C C620004C */  lwc1  $f0, 0x4c($s1)
/* 107FB0 802E6730 46020000 */  add.s $f0, $f0, $f2
/* 107FB4 802E6734 E620004C */  swc1  $f0, 0x4c($s1)
/* 107FB8 802E6738 C6020024 */  lwc1  $f2, 0x24($s0)
/* 107FBC 802E673C 4602003E */  c.le.s $f0, $f2
/* 107FC0 802E6740 00000000 */  nop   
/* 107FC4 802E6744 45000006 */  bc1f  .L802E6760
/* 107FC8 802E6748 2402000A */   addiu $v0, $zero, 0xa
/* 107FCC 802E674C AE200068 */  sw    $zero, 0x68($s1)
/* 107FD0 802E6750 C6340068 */  lwc1  $f20, 0x68($s1)
/* 107FD4 802E6754 E622004C */  swc1  $f2, 0x4c($s1)
/* 107FD8 802E6758 AE200060 */  sw    $zero, 0x60($s1)
/* 107FDC 802E675C A2020001 */  sb    $v0, 1($s0)
.L802E6760:
/* 107FE0 802E6760 C600002C */  lwc1  $f0, 0x2c($s0)
/* 107FE4 802E6764 3C014120 */  lui   $at, 0x4120
/* 107FE8 802E6768 44811000 */  mtc1  $at, $f2
/* 107FEC 802E676C 00000000 */  nop   
/* 107FF0 802E6770 46020000 */  add.s $f0, $f0, $f2
/* 107FF4 802E6774 3C014334 */  lui   $at, 0x4334
/* 107FF8 802E6778 44811000 */  mtc1  $at, $f2
/* 107FFC 802E677C 00000000 */  nop   
/* 108000 802E6780 4600103E */  c.le.s $f2, $f0
/* 108004 802E6784 00000000 */  nop   
/* 108008 802E6788 45000007 */  bc1f  .L802E67A8
/* 10800C 802E678C E600002C */   swc1  $f0, 0x2c($s0)
/* 108010 802E6790 92020000 */  lbu   $v0, ($s0)
/* 108014 802E6794 24030007 */  addiu $v1, $zero, 7
/* 108018 802E6798 E602002C */  swc1  $f2, 0x2c($s0)
/* 10801C 802E679C A2030001 */  sb    $v1, 1($s0)
/* 108020 802E67A0 24420001 */  addiu $v0, $v0, 1
/* 108024 802E67A4 A2020000 */  sb    $v0, ($s0)
.L802E67A8:
/* 108028 802E67A8 C602002C */  lwc1  $f2, 0x2c($s0)
/* 10802C 802E67AC 3C0142DC */  lui   $at, 0x42dc
/* 108030 802E67B0 44810000 */  mtc1  $at, $f0
/* 108034 802E67B4 00000000 */  nop   
/* 108038 802E67B8 4602003C */  c.lt.s $f0, $f2
/* 10803C 802E67BC 00000000 */  nop   
/* 108040 802E67C0 450000C4 */  bc1f  .L802E6AD4
/* 108044 802E67C4 00000000 */   nop   
/* 108048 802E67C8 C6000030 */  lwc1  $f0, 0x30($s0)
/* 10804C 802E67CC 4600A500 */  add.s $f20, $f20, $f0
/* 108050 802E67D0 4614B03E */  c.le.s $f22, $f20
/* 108054 802E67D4 00000000 */  nop   
/* 108058 802E67D8 450300BE */  bc1tl .L802E6AD4
/* 10805C 802E67DC 4616A501 */   sub.s $f20, $f20, $f22
/* 108060 802E67E0 080B9AB5 */  j     .L802E6AD4
/* 108064 802E67E4 00000000 */   nop   

/* 108068 802E67E8 C6000030 */  lwc1  $f0, 0x30($s0)
/* 10806C 802E67EC 3C014000 */  lui   $at, 0x4000
/* 108070 802E67F0 44811000 */  mtc1  $at, $f2
/* 108074 802E67F4 00000000 */  nop   
/* 108078 802E67F8 46020001 */  sub.s $f0, $f0, $f2
/* 10807C 802E67FC 44801000 */  mtc1  $zero, $f2
/* 108080 802E6800 00000000 */  nop   
/* 108084 802E6804 4602003E */  c.le.s $f0, $f2
/* 108088 802E6808 00000000 */  nop   
/* 10808C 802E680C 45000002 */  bc1f  .L802E6818
/* 108090 802E6810 E6000030 */   swc1  $f0, 0x30($s0)
/* 108094 802E6814 E6020030 */  swc1  $f2, 0x30($s0)
.L802E6818:
/* 108098 802E6818 C6000030 */  lwc1  $f0, 0x30($s0)
/* 10809C 802E681C 4600A500 */  add.s $f20, $f20, $f0
/* 1080A0 802E6820 3C0143B4 */  lui   $at, 0x43b4
/* 1080A4 802E6824 44810000 */  mtc1  $at, $f0
/* 1080A8 802E6828 00000000 */  nop   
/* 1080AC 802E682C 4614003E */  c.le.s $f0, $f20
/* 1080B0 802E6830 00000000 */  nop   
/* 1080B4 802E6834 45030001 */  bc1tl .L802E683C
/* 1080B8 802E6838 4600A501 */   sub.s $f20, $f20, $f0
.L802E683C:
/* 1080BC 802E683C 92020001 */  lbu   $v0, 1($s0)
/* 1080C0 802E6840 2442FFFF */  addiu $v0, $v0, -1
/* 1080C4 802E6844 A2020001 */  sb    $v0, 1($s0)
/* 1080C8 802E6848 00021600 */  sll   $v0, $v0, 0x18
/* 1080CC 802E684C 1840004B */  blez  $v0, .L802E697C
/* 1080D0 802E6850 00000000 */   nop   
/* 1080D4 802E6854 080B9AB5 */  j     .L802E6AD4
/* 1080D8 802E6858 00000000 */   nop   

/* 1080DC 802E685C C6000030 */  lwc1  $f0, 0x30($s0)
/* 1080E0 802E6860 3C0140A0 */  lui   $at, 0x40a0
/* 1080E4 802E6864 44811000 */  mtc1  $at, $f2
/* 1080E8 802E6868 00000000 */  nop   
/* 1080EC 802E686C 46020001 */  sub.s $f0, $f0, $f2
/* 1080F0 802E6870 4480B000 */  mtc1  $zero, $f22
/* 1080F4 802E6874 00000000 */  nop   
/* 1080F8 802E6878 4616003E */  c.le.s $f0, $f22
/* 1080FC 802E687C 00000000 */  nop   
/* 108100 802E6880 45000002 */  bc1f  .L802E688C
/* 108104 802E6884 E6000030 */   swc1  $f0, 0x30($s0)
/* 108108 802E6888 E6160030 */  swc1  $f22, 0x30($s0)
.L802E688C:
/* 10810C 802E688C C6000030 */  lwc1  $f0, 0x30($s0)
/* 108110 802E6890 4600A500 */  add.s $f20, $f20, $f0
/* 108114 802E6894 3C0143B4 */  lui   $at, 0x43b4
/* 108118 802E6898 44811000 */  mtc1  $at, $f2
/* 10811C 802E689C 00000000 */  nop   
/* 108120 802E68A0 4614103E */  c.le.s $f2, $f20
/* 108124 802E68A4 00000000 */  nop   
/* 108128 802E68A8 45030001 */  bc1tl .L802E68B0
/* 10812C 802E68AC 46001506 */   mov.s $f20, $f2
.L802E68B0:
/* 108130 802E68B0 C60C002C */  lwc1  $f12, 0x2c($s0)
/* 108134 802E68B4 3C0140C9 */  lui   $at, 0x40c9
/* 108138 802E68B8 34210FD0 */  ori   $at, $at, 0xfd0
/* 10813C 802E68BC 44810000 */  mtc1  $at, $f0
/* 108140 802E68C0 00000000 */  nop   
/* 108144 802E68C4 46006302 */  mul.s $f12, $f12, $f0
/* 108148 802E68C8 00000000 */  nop   
/* 10814C 802E68CC 0C00A85B */  jal   sin_rad
/* 108150 802E68D0 46026303 */   div.s $f12, $f12, $f2
/* 108154 802E68D4 C6020028 */  lwc1  $f2, 0x28($s0)
/* 108158 802E68D8 46001082 */  mul.s $f2, $f2, $f0
/* 10815C 802E68DC 00000000 */  nop   
/* 108160 802E68E0 C620004C */  lwc1  $f0, 0x4c($s1)
/* 108164 802E68E4 46020000 */  add.s $f0, $f0, $f2
/* 108168 802E68E8 3C014120 */  lui   $at, 0x4120
/* 10816C 802E68EC 44811000 */  mtc1  $at, $f2
/* 108170 802E68F0 E620004C */  swc1  $f0, 0x4c($s1)
/* 108174 802E68F4 C600002C */  lwc1  $f0, 0x2c($s0)
/* 108178 802E68F8 46020000 */  add.s $f0, $f0, $f2
/* 10817C 802E68FC 3C014387 */  lui   $at, 0x4387
/* 108180 802E6900 44811000 */  mtc1  $at, $f2
/* 108184 802E6904 00000000 */  nop   
/* 108188 802E6908 4600103C */  c.lt.s $f2, $f0
/* 10818C 802E690C 00000000 */  nop   
/* 108190 802E6910 45000002 */  bc1f  .L802E691C
/* 108194 802E6914 E600002C */   swc1  $f0, 0x2c($s0)
/* 108198 802E6918 E602002C */  swc1  $f2, 0x2c($s0)
.L802E691C:
/* 10819C 802E691C C622004C */  lwc1  $f2, 0x4c($s1)
/* 1081A0 802E6920 C6000024 */  lwc1  $f0, 0x24($s0)
/* 1081A4 802E6924 4600103E */  c.le.s $f2, $f0
/* 1081A8 802E6928 00000000 */  nop   
/* 1081AC 802E692C 45000069 */  bc1f  .L802E6AD4
/* 1081B0 802E6930 0000202D */   daddu $a0, $zero, $zero
/* 1081B4 802E6934 4600B506 */  mov.s $f20, $f22
/* 1081B8 802E6938 24050002 */  addiu $a1, $zero, 2
/* 1081BC 802E693C 24060001 */  addiu $a2, $zero, 1
/* 1081C0 802E6940 92020000 */  lbu   $v0, ($s0)
/* 1081C4 802E6944 3C073E4C */  lui   $a3, 0x3e4c
/* 1081C8 802E6948 34E7CCCD */  ori   $a3, $a3, 0xcccd
/* 1081CC 802E694C 00461021 */  addu  $v0, $v0, $a2
/* 1081D0 802E6950 A2020000 */  sb    $v0, ($s0)
/* 1081D4 802E6954 2402000A */  addiu $v0, $zero, 0xa
/* 1081D8 802E6958 E620004C */  swc1  $f0, 0x4c($s1)
/* 1081DC 802E695C E6340060 */  swc1  $f20, 0x60($s1)
/* 1081E0 802E6960 E6340068 */  swc1  $f20, 0x68($s1)
/* 1081E4 802E6964 0C0B2D72 */  jal   exec_ShakeCamX
/* 1081E8 802E6968 A2020001 */   sb    $v0, 1($s0)
/* 1081EC 802E696C 0C05272D */  jal   play_sound
/* 1081F0 802E6970 240420AC */   addiu $a0, $zero, 0x20ac
/* 1081F4 802E6974 080B9AB5 */  j     .L802E6AD4
/* 1081F8 802E6978 00000000 */   nop   

.L802E697C:
/* 1081FC 802E697C 92020000 */  lbu   $v0, ($s0)
/* 108200 802E6980 24420001 */  addiu $v0, $v0, 1
/* 108204 802E6984 080B9AB5 */  j     .L802E6AD4
/* 108208 802E6988 A2020000 */   sb    $v0, ($s0)

/* 10820C 802E698C 2402000B */  addiu $v0, $zero, 0xb
/* 108210 802E6990 A2020000 */  sb    $v0, ($s0)
/* 108214 802E6994 C620004C */  lwc1  $f0, 0x4c($s1)
/* 108218 802E6998 3C014000 */  lui   $at, 0x4000
/* 10821C 802E699C 44811000 */  mtc1  $at, $f2
/* 108220 802E69A0 080B9A76 */  j     .L802E69D8
/* 108224 802E69A4 46020000 */   add.s $f0, $f0, $f2

/* 108228 802E69A8 2403FFFE */  addiu $v1, $zero, -2
/* 10822C 802E69AC 8E220000 */  lw    $v0, ($s1)
/* 108230 802E69B0 3C0140C0 */  lui   $at, 0x40c0
/* 108234 802E69B4 44811000 */  mtc1  $at, $f2
/* 108238 802E69B8 00431024 */  and   $v0, $v0, $v1
/* 10823C 802E69BC AE220000 */  sw    $v0, ($s1)
/* 108240 802E69C0 92020000 */  lbu   $v0, ($s0)
/* 108244 802E69C4 A2000002 */  sb    $zero, 2($s0)
/* 108248 802E69C8 24420001 */  addiu $v0, $v0, 1
/* 10824C 802E69CC A2020000 */  sb    $v0, ($s0)
/* 108250 802E69D0 C620004C */  lwc1  $f0, 0x4c($s1)
/* 108254 802E69D4 46020000 */  add.s $f0, $f0, $f2
.L802E69D8:
/* 108258 802E69D8 080B9AB5 */  j     .L802E6AD4
/* 10825C 802E69DC E620004C */   swc1  $f0, 0x4c($s1)

/* 108260 802E69E0 C620004C */  lwc1  $f0, 0x4c($s1)
/* 108264 802E69E4 3C013F80 */  lui   $at, 0x3f80
/* 108268 802E69E8 44811000 */  mtc1  $at, $f2
/* 10826C 802E69EC 00000000 */  nop   
/* 108270 802E69F0 46020001 */  sub.s $f0, $f0, $f2
/* 108274 802E69F4 E620004C */  swc1  $f0, 0x4c($s1)
/* 108278 802E69F8 C6020024 */  lwc1  $f2, 0x24($s0)
/* 10827C 802E69FC 4602003E */  c.le.s $f0, $f2
/* 108280 802E6A00 00000000 */  nop   
/* 108284 802E6A04 45000033 */  bc1f  .L802E6AD4
/* 108288 802E6A08 24030001 */   addiu $v1, $zero, 1
/* 10828C 802E6A0C E622004C */  swc1  $f2, 0x4c($s1)
/* 108290 802E6A10 92020000 */  lbu   $v0, ($s0)
/* 108294 802E6A14 A2030001 */  sb    $v1, 1($s0)
/* 108298 802E6A18 24420001 */  addiu $v0, $v0, 1
/* 10829C 802E6A1C A2020000 */  sb    $v0, ($s0)
/* 1082A0 802E6A20 8E220000 */  lw    $v0, ($s1)
/* 1082A4 802E6A24 34420021 */  ori   $v0, $v0, 0x21
/* 1082A8 802E6A28 AE220000 */  sw    $v0, ($s1)
/* 1082AC 802E6A2C 82020002 */  lb    $v0, 2($s0)
/* 1082B0 802E6A30 10400028 */  beqz  $v0, .L802E6AD4
/* 1082B4 802E6A34 00000000 */   nop   
/* 1082B8 802E6A38 0C038050 */  jal   disable_player_physics
/* 1082BC 802E6A3C 00000000 */   nop   
/* 1082C0 802E6A40 080B9AB5 */  j     .L802E6AD4
/* 1082C4 802E6A44 00000000 */   nop   

/* 1082C8 802E6A48 92020001 */  lbu   $v0, 1($s0)
/* 1082CC 802E6A4C 2442FFFF */  addiu $v0, $v0, -1
/* 1082D0 802E6A50 A2020001 */  sb    $v0, 1($s0)
/* 1082D4 802E6A54 00021600 */  sll   $v0, $v0, 0x18
/* 1082D8 802E6A58 0441001E */  bgez  $v0, .L802E6AD4
/* 1082DC 802E6A5C 0220202D */   daddu $a0, $s1, $zero
/* 1082E0 802E6A60 0C043F5A */  jal   func_8010FD68
/* 1082E4 802E6A64 A2000000 */   sb    $zero, ($s0)
/* 1082E8 802E6A68 82020002 */  lb    $v0, 2($s0)
/* 1082EC 802E6A6C 10400009 */  beqz  $v0, .L802E6A94
/* 1082F0 802E6A70 00000000 */   nop   
/* 1082F4 802E6A74 0C009C22 */  jal   func_80027088
/* 1082F8 802E6A78 0000202D */   daddu $a0, $zero, $zero
/* 1082FC 802E6A7C 3C02800F */  lui   $v0, 0x800f
/* 108300 802E6A80 8C427B30 */  lw    $v0, 0x7b30($v0)
/* 108304 802E6A84 8C430004 */  lw    $v1, 4($v0)
/* 108308 802E6A88 2404F7FF */  addiu $a0, $zero, -0x801
/* 10830C 802E6A8C 00641824 */  and   $v1, $v1, $a0
/* 108310 802E6A90 AC430004 */  sw    $v1, 4($v0)
.L802E6A94:
/* 108314 802E6A94 8E220000 */  lw    $v0, ($s1)
/* 108318 802E6A98 2403FFDF */  addiu $v1, $zero, -0x21
/* 10831C 802E6A9C 00431024 */  and   $v0, $v0, $v1
/* 108320 802E6AA0 AE220000 */  sw    $v0, ($s1)
/* 108324 802E6AA4 8E040008 */  lw    $a0, 8($s0)
/* 108328 802E6AA8 0480000A */  bltz  $a0, .L802E6AD4
/* 10832C 802E6AAC 00000000 */   nop   
/* 108330 802E6AB0 0C00E2B7 */  jal   get_npc_by_index
/* 108334 802E6AB4 00000000 */   nop   
/* 108338 802E6AB8 8C430000 */  lw    $v1, ($v0)
/* 10833C 802E6ABC 2404FDF7 */  addiu $a0, $zero, -0x209
/* 108340 802E6AC0 00641824 */  and   $v1, $v1, $a0
/* 108344 802E6AC4 AC430000 */  sw    $v1, ($v0)
/* 108348 802E6AC8 8E04000C */  lw    $a0, 0xc($s0)
/* 10834C 802E6ACC 00641825 */  or    $v1, $v1, $a0
/* 108350 802E6AD0 AC430000 */  sw    $v1, ($v0)
.L802E6AD4:
/* 108354 802E6AD4 56400002 */  bnel  $s2, $zero, .L802E6AE0
/* 108358 802E6AD8 E6340068 */   swc1  $f20, 0x68($s1)
/* 10835C 802E6ADC E6340060 */  swc1  $f20, 0x60($s1)
.L802E6AE0:
/* 108360 802E6AE0 8E040014 */  lw    $a0, 0x14($s0)
/* 108364 802E6AE4 04800019 */  bltz  $a0, .L802E6B4C
/* 108368 802E6AE8 00000000 */   nop   
/* 10836C 802E6AEC 0C04C3D6 */  jal   get_item_entity
/* 108370 802E6AF0 00000000 */   nop   
/* 108374 802E6AF4 0040182D */  daddu $v1, $v0, $zero
/* 108378 802E6AF8 10600013 */  beqz  $v1, .L802E6B48
/* 10837C 802E6AFC 2402FFFF */   addiu $v0, $zero, -1
/* 108380 802E6B00 8C620000 */  lw    $v0, ($v1)
/* 108384 802E6B04 30420010 */  andi  $v0, $v0, 0x10
/* 108388 802E6B08 1040000B */  beqz  $v0, .L802E6B38
/* 10838C 802E6B0C 34028000 */   ori   $v0, $zero, 0x8000
/* 108390 802E6B10 C4600008 */  lwc1  $f0, 8($v1)
/* 108394 802E6B14 4600018D */  trunc.w.s $f6, $f0
/* 108398 802E6B18 E6060018 */  swc1  $f6, 0x18($s0)
/* 10839C 802E6B1C C460000C */  lwc1  $f0, 0xc($v1)
/* 1083A0 802E6B20 4600018D */  trunc.w.s $f6, $f0
/* 1083A4 802E6B24 E606001C */  swc1  $f6, 0x1c($s0)
/* 1083A8 802E6B28 C4600010 */  lwc1  $f0, 0x10($v1)
/* 1083AC 802E6B2C 4600018D */  trunc.w.s $f6, $f0
/* 1083B0 802E6B30 080B9AD3 */  j     .L802E6B4C
/* 1083B4 802E6B34 E6060020 */   swc1  $f6, 0x20($s0)

.L802E6B38:
/* 1083B8 802E6B38 AE020018 */  sw    $v0, 0x18($s0)
/* 1083BC 802E6B3C AE02001C */  sw    $v0, 0x1c($s0)
/* 1083C0 802E6B40 080B9AD3 */  j     .L802E6B4C
/* 1083C4 802E6B44 AE020020 */   sw    $v0, 0x20($s0)

.L802E6B48:
/* 1083C8 802E6B48 AE020014 */  sw    $v0, 0x14($s0)
.L802E6B4C:
/* 1083CC 802E6B4C 8FBF0024 */  lw    $ra, 0x24($sp)
/* 1083D0 802E6B50 8FB20020 */  lw    $s2, 0x20($sp)
/* 1083D4 802E6B54 8FB1001C */  lw    $s1, 0x1c($sp)
/* 1083D8 802E6B58 8FB00018 */  lw    $s0, 0x18($sp)
/* 1083DC 802E6B5C D7B60030 */  ldc1  $f22, 0x30($sp)
/* 1083E0 802E6B60 D7B40028 */  ldc1  $f20, 0x28($sp)
/* 1083E4 802E6B64 03E00008 */  jr    $ra
/* 1083E8 802E6B68 27BD0038 */   addiu $sp, $sp, 0x38

