.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8024EFE0
/* 17D8C0 8024EFE0 27BDFF98 */  addiu $sp, $sp, -0x68
/* 17D8C4 8024EFE4 F7BC0060 */  sdc1  $f28, 0x60($sp)
/* 17D8C8 8024EFE8 4486E000 */  mtc1  $a2, $f28
/* 17D8CC 8024EFEC F7B60048 */  sdc1  $f22, 0x48($sp)
/* 17D8D0 8024EFF0 3C013F80 */  lui   $at, 0x3f80
/* 17D8D4 8024EFF4 4481B000 */  mtc1  $at, $f22
/* 17D8D8 8024EFF8 AFB20020 */  sw    $s2, 0x20($sp)
/* 17D8DC 8024EFFC 8FB2007C */  lw    $s2, 0x7c($sp)
/* 17D8E0 8024F000 F7B80050 */  sdc1  $f24, 0x50($sp)
/* 17D8E4 8024F004 46006606 */  mov.s $f24, $f12
/* 17D8E8 8024F008 F7BA0058 */  sdc1  $f26, 0x58($sp)
/* 17D8EC 8024F00C 46007686 */  mov.s $f26, $f14
/* 17D8F0 8024F010 AFB5002C */  sw    $s5, 0x2c($sp)
/* 17D8F4 8024F014 00E0A82D */  daddu $s5, $a3, $zero
/* 17D8F8 8024F018 AFB70034 */  sw    $s7, 0x34($sp)
/* 17D8FC 8024F01C 0000B82D */  daddu $s7, $zero, $zero
/* 17D900 8024F020 AFB1001C */  sw    $s1, 0x1c($sp)
/* 17D904 8024F024 3C11800E */  lui   $s1, 0x800e
/* 17D908 8024F028 2631C070 */  addiu $s1, $s1, -0x3f90
/* 17D90C 8024F02C AFBF003C */  sw    $ra, 0x3c($sp)
/* 17D910 8024F030 AFBE0038 */  sw    $fp, 0x38($sp)
/* 17D914 8024F034 AFB60030 */  sw    $s6, 0x30($sp)
/* 17D918 8024F038 AFB40028 */  sw    $s4, 0x28($sp)
/* 17D91C 8024F03C AFB30024 */  sw    $s3, 0x24($sp)
/* 17D920 8024F040 AFB00018 */  sw    $s0, 0x18($sp)
/* 17D924 8024F044 F7B40040 */  sdc1  $f20, 0x40($sp)
/* 17D928 8024F048 1EA00009 */  bgtz  $s5, .L8024F070
/* 17D92C 8024F04C 4600B506 */   mov.s $f20, $f22
/* 17D930 8024F050 24150001 */  addiu $s5, $zero, 1
/* 17D934 8024F054 02A0B82D */  daddu $s7, $s5, $zero
/* 17D938 8024F058 3C013ECC */  lui   $at, 0x3ecc
/* 17D93C 8024F05C 3421CCCD */  ori   $at, $at, 0xcccd
/* 17D940 8024F060 4481B000 */  mtc1  $at, $f22
/* 17D944 8024F064 3C013F33 */  lui   $at, 0x3f33
/* 17D948 8024F068 34213333 */  ori   $at, $at, 0x3333
/* 17D94C 8024F06C 4481A000 */  mtc1  $at, $f20
.L8024F070:
/* 17D950 8024F070 8E220000 */  lw    $v0, ($s1)
/* 17D954 8024F074 30420240 */  andi  $v0, $v0, 0x240
/* 17D958 8024F078 10400004 */  beqz  $v0, .L8024F08C
/* 17D95C 8024F07C 00000000 */   nop   
/* 17D960 8024F080 4600B021 */  cvt.d.s $f0, $f22
/* 17D964 8024F084 46200000 */  add.d $f0, $f0, $f0
/* 17D968 8024F088 462005A0 */  cvt.s.d $f22, $f0
.L8024F08C:
/* 17D96C 8024F08C 0C093BDA */  jal   create_popup
/* 17D970 8024F090 00000000 */   nop   
/* 17D974 8024F094 0040802D */  daddu $s0, $v0, $zero
/* 17D978 8024F098 120000AD */  beqz  $s0, .L8024F350
/* 17D97C 8024F09C 00000000 */   nop   
/* 17D980 8024F0A0 06410003 */  bgez  $s2, .L8024F0B0
/* 17D984 8024F0A4 24140001 */   addiu $s4, $zero, 1
/* 17D988 8024F0A8 00129023 */  negu  $s2, $s2
/* 17D98C 8024F0AC 2414FFFF */  addiu $s4, $zero, -1
.L8024F0B0:
.L8024F0B0:
/* 17D990 8024F0B0 2A420006 */  slti  $v0, $s2, 6
/* 17D994 8024F0B4 14400003 */  bnez  $v0, .L8024F0C4
/* 17D998 8024F0B8 00152080 */   sll   $a0, $s5, 2
/* 17D99C 8024F0BC 08093C2C */  j     .L8024F0B0
/* 17D9A0 8024F0C0 2652FFFB */   addiu $s2, $s2, -5

.L8024F0C4:
/* 17D9A4 8024F0C4 00952021 */  addu  $a0, $a0, $s5
/* 17D9A8 8024F0C8 00042080 */  sll   $a0, $a0, 2
/* 17D9AC 8024F0CC 00952023 */  subu  $a0, $a0, $s5
/* 17D9B0 8024F0D0 00042080 */  sll   $a0, $a0, 2
/* 17D9B4 8024F0D4 3C028025 */  lui   $v0, 0x8025
/* 17D9B8 8024F0D8 2442F394 */  addiu $v0, $v0, -0xc6c
/* 17D9BC 8024F0DC A6200090 */  sh    $zero, 0x90($s1)
/* 17D9C0 8024F0E0 AE020004 */  sw    $v0, 4($s0)
/* 17D9C4 8024F0E4 3C028025 */  lui   $v0, 0x8025
/* 17D9C8 8024F0E8 2442F5AC */  addiu $v0, $v0, -0xa54
/* 17D9CC 8024F0EC AE020008 */  sw    $v0, 8($s0)
/* 17D9D0 8024F0F0 96020010 */  lhu   $v0, 0x10($s0)
/* 17D9D4 8024F0F4 24030001 */  addiu $v1, $zero, 1
/* 17D9D8 8024F0F8 AE000000 */  sw    $zero, ($s0)
/* 17D9DC 8024F0FC AE00000C */  sw    $zero, 0xc($s0)
/* 17D9E0 8024F100 A6030012 */  sh    $v1, 0x12($s0)
/* 17D9E4 8024F104 34420010 */  ori   $v0, $v0, 0x10
/* 17D9E8 8024F108 0C00AB39 */  jal   heap_malloc
/* 17D9EC 8024F10C A6020010 */   sh    $v0, 0x10($s0)
/* 17D9F0 8024F110 0040982D */  daddu $s3, $v0, $zero
/* 17D9F4 8024F114 16600003 */  bnez  $s3, .L8024F124
/* 17D9F8 8024F118 AE130018 */   sw    $s3, 0x18($s0)
.L8024F11C:
/* 17D9FC 8024F11C 08093C47 */  j     .L8024F11C
/* 17DA00 8024F120 00000000 */   nop   

.L8024F124:
/* 17DA04 8024F124 1AA0008A */  blez  $s5, .L8024F350
/* 17DA08 8024F128 0000882D */   daddu $s1, $zero, $zero
/* 17DA0C 8024F12C 3C038028 */  lui   $v1, 0x8028
/* 17DA10 8024F130 24633744 */  addiu $v1, $v1, 0x3744
/* 17DA14 8024F134 00151080 */  sll   $v0, $s5, 2
/* 17DA18 8024F138 00431021 */  addu  $v0, $v0, $v1
/* 17DA1C 8024F13C AFA20010 */  sw    $v0, 0x10($sp)
/* 17DA20 8024F140 3C168028 */  lui   $s6, 0x8028
/* 17DA24 8024F144 26D635DC */  addiu $s6, $s6, 0x35dc
/* 17DA28 8024F148 001410C0 */  sll   $v0, $s4, 3
/* 17DA2C 8024F14C 00541023 */  subu  $v0, $v0, $s4
/* 17DA30 8024F150 00021080 */  sll   $v0, $v0, 2
/* 17DA34 8024F154 00541023 */  subu  $v0, $v0, $s4
/* 17DA38 8024F158 00021080 */  sll   $v0, $v0, 2
/* 17DA3C 8024F15C 0054F023 */  subu  $fp, $v0, $s4
/* 17DA40 8024F160 26700048 */  addiu $s0, $s3, 0x48
.L8024F164:
/* 17DA44 8024F164 24020001 */  addiu $v0, $zero, 1
/* 17DA48 8024F168 AE620000 */  sw    $v0, ($s3)
/* 17DA4C 8024F16C 8FA80010 */  lw    $t0, 0x10($sp)
/* 17DA50 8024F170 0C048338 */  jal   func_80120CE0
/* 17DA54 8024F174 8D040000 */   lw    $a0, ($t0)
/* 17DA58 8024F178 0040202D */  daddu $a0, $v0, $zero
/* 17DA5C 8024F17C 24050020 */  addiu $a1, $zero, 0x20
/* 17DA60 8024F180 0C048BBA */  jal   func_80122EE8
/* 17DA64 8024F184 AE04FFBC */   sw    $a0, -0x44($s0)
/* 17DA68 8024F188 8E04FFBC */  lw    $a0, -0x44($s0)
/* 17DA6C 8024F18C 3C068025 */  lui   $a2, 0x8025
/* 17DA70 8024F190 24C6F768 */  addiu $a2, $a2, -0x898
/* 17DA74 8024F194 0C048BD9 */  jal   func_80122F64
/* 17DA78 8024F198 0260282D */   daddu $a1, $s3, $zero
/* 17DA7C 8024F19C 0240102D */  daddu $v0, $s2, $zero
/* 17DA80 8024F1A0 E618FFF0 */  swc1  $f24, -0x10($s0)
/* 17DA84 8024F1A4 E61AFFF4 */  swc1  $f26, -0xc($s0)
/* 17DA88 8024F1A8 06410002 */  bgez  $s2, .L8024F1B4
/* 17DA8C 8024F1AC E61CFFF8 */   swc1  $f28, -8($s0)
/* 17DA90 8024F1B0 26420007 */  addiu $v0, $s2, 7
.L8024F1B4:
/* 17DA94 8024F1B4 000218C3 */  sra   $v1, $v0, 3
/* 17DA98 8024F1B8 000310C0 */  sll   $v0, $v1, 3
/* 17DA9C 8024F1BC 02421823 */  subu  $v1, $s2, $v0
/* 17DAA0 8024F1C0 00031040 */  sll   $v0, $v1, 1
/* 17DAA4 8024F1C4 00431021 */  addu  $v0, $v0, $v1
/* 17DAA8 8024F1C8 00022080 */  sll   $a0, $v0, 2
/* 17DAAC 8024F1CC 00962021 */  addu  $a0, $a0, $s6
/* 17DAB0 8024F1D0 C4800000 */  lwc1  $f0, ($a0)
/* 17DAB4 8024F1D4 46000021 */  cvt.d.s $f0, $f0
/* 17DAB8 8024F1D8 46200000 */  add.d $f0, $f0, $f0
/* 17DABC 8024F1DC 44941000 */  mtc1  $s4, $f2
/* 17DAC0 8024F1E0 00000000 */  nop   
/* 17DAC4 8024F1E4 468010A1 */  cvt.d.w $f2, $f2
/* 17DAC8 8024F1E8 46220002 */  mul.d $f0, $f0, $f2
/* 17DACC 8024F1EC 00000000 */  nop   
/* 17DAD0 8024F1F0 4600A0A1 */  cvt.d.s $f2, $f20
/* 17DAD4 8024F1F4 46220002 */  mul.d $f0, $f0, $f2
/* 17DAD8 8024F1F8 00000000 */  nop   
/* 17DADC 8024F1FC 24430001 */  addiu $v1, $v0, 1
/* 17DAE0 8024F200 00031880 */  sll   $v1, $v1, 2
/* 17DAE4 8024F204 00761821 */  addu  $v1, $v1, $s6
/* 17DAE8 8024F208 46200020 */  cvt.s.d $f0, $f0
/* 17DAEC 8024F20C E600FFCC */  swc1  $f0, -0x34($s0)
/* 17DAF0 8024F210 C4600000 */  lwc1  $f0, ($v1)
/* 17DAF4 8024F214 46000021 */  cvt.d.s $f0, $f0
/* 17DAF8 8024F218 46200000 */  add.d $f0, $f0, $f0
/* 17DAFC 8024F21C 46220002 */  mul.d $f0, $f0, $f2
/* 17DB00 8024F220 00000000 */  nop   
/* 17DB04 8024F224 24420002 */  addiu $v0, $v0, 2
/* 17DB08 8024F228 00021080 */  sll   $v0, $v0, 2
/* 17DB0C 8024F22C 00561021 */  addu  $v0, $v0, $s6
/* 17DB10 8024F230 46200020 */  cvt.s.d $f0, $f0
/* 17DB14 8024F234 E600FFD0 */  swc1  $f0, -0x30($s0)
/* 17DB18 8024F238 C4400000 */  lwc1  $f0, ($v0)
/* 17DB1C 8024F23C 46000021 */  cvt.d.s $f0, $f0
/* 17DB20 8024F240 46200000 */  add.d $f0, $f0, $f0
/* 17DB24 8024F244 46220002 */  mul.d $f0, $f0, $f2
/* 17DB28 8024F248 00000000 */  nop   
/* 17DB2C 8024F24C 46200020 */  cvt.s.d $f0, $f0
/* 17DB30 8024F250 E600FFD4 */  swc1  $f0, -0x2c($s0)
/* 17DB34 8024F254 C4800000 */  lwc1  $f0, ($a0)
/* 17DB38 8024F258 44941000 */  mtc1  $s4, $f2
/* 17DB3C 8024F25C 00000000 */  nop   
/* 17DB40 8024F260 468010A0 */  cvt.s.w $f2, $f2
/* 17DB44 8024F264 46020002 */  mul.s $f0, $f0, $f2
/* 17DB48 8024F268 00000000 */  nop   
/* 17DB4C 8024F26C 46140002 */  mul.s $f0, $f0, $f20
/* 17DB50 8024F270 00000000 */  nop   
/* 17DB54 8024F274 E600FFC0 */  swc1  $f0, -0x40($s0)
/* 17DB58 8024F278 C4600000 */  lwc1  $f0, ($v1)
/* 17DB5C 8024F27C 46140002 */  mul.s $f0, $f0, $f20
/* 17DB60 8024F280 00000000 */  nop   
/* 17DB64 8024F284 E600FFC4 */  swc1  $f0, -0x3c($s0)
/* 17DB68 8024F288 C4400000 */  lwc1  $f0, ($v0)
/* 17DB6C 8024F28C 46140002 */  mul.s $f0, $f0, $f20
/* 17DB70 8024F290 00000000 */  nop   
/* 17DB74 8024F294 26520001 */  addiu $s2, $s2, 1
/* 17DB78 8024F298 0220102D */  daddu $v0, $s1, $zero
/* 17DB7C 8024F29C 06210002 */  bgez  $s1, .L8024F2A8
/* 17DB80 8024F2A0 E600FFC8 */   swc1  $f0, -0x38($s0)
/* 17DB84 8024F2A4 26220007 */  addiu $v0, $s1, 7
.L8024F2A8:
/* 17DB88 8024F2A8 000218C3 */  sra   $v1, $v0, 3
/* 17DB8C 8024F2AC 000310C0 */  sll   $v0, $v1, 3
/* 17DB90 8024F2B0 02221823 */  subu  $v1, $s1, $v0
/* 17DB94 8024F2B4 00031040 */  sll   $v0, $v1, 1
/* 17DB98 8024F2B8 00431021 */  addu  $v0, $v0, $v1
/* 17DB9C 8024F2BC 00021080 */  sll   $v0, $v0, 2
/* 17DBA0 8024F2C0 3C088028 */  lui   $t0, 0x8028
/* 17DBA4 8024F2C4 25083690 */  addiu $t0, $t0, 0x3690
/* 17DBA8 8024F2C8 00481021 */  addu  $v0, $v0, $t0
/* 17DBAC 8024F2CC C4420000 */  lwc1  $f2, ($v0)
/* 17DBB0 8024F2D0 46161082 */  mul.s $f2, $f2, $f22
/* 17DBB4 8024F2D4 00000000 */  nop   
/* 17DBB8 8024F2D8 3C014334 */  lui   $at, 0x4334
/* 17DBBC 8024F2DC 44816000 */  mtc1  $at, $f12
/* 17DBC0 8024F2E0 449E0000 */  mtc1  $fp, $f0
/* 17DBC4 8024F2E4 00000000 */  nop   
/* 17DBC8 8024F2E8 46800020 */  cvt.s.w $f0, $f0
/* 17DBCC 8024F2EC AE00FFE0 */  sw    $zero, -0x20($s0)
/* 17DBD0 8024F2F0 E600FFE4 */  swc1  $f0, -0x1c($s0)
/* 17DBD4 8024F2F4 E602FFEC */  swc1  $f2, -0x14($s0)
/* 17DBD8 8024F2F8 3C01800B */  lui   $at, 0x800b
/* 17DBDC 8024F2FC C4202344 */  lwc1  $f0, 0x2344($at)
/* 17DBE0 8024F300 0C00A6C9 */  jal   clamp_angle
/* 17DBE4 8024F304 46006301 */   sub.s $f12, $f12, $f0
/* 17DBE8 8024F308 2402000E */  addiu $v0, $zero, 0xe
/* 17DBEC 8024F30C E600FFE8 */  swc1  $f0, -0x18($s0)
/* 17DBF0 8024F310 AE02FFD8 */  sw    $v0, -0x28($s0)
/* 17DBF4 8024F314 8FA80078 */  lw    $t0, 0x78($sp)
/* 17DBF8 8024F318 240200F0 */  addiu $v0, $zero, 0xf0
/* 17DBFC 8024F31C AE02FFFC */  sw    $v0, -4($s0)
/* 17DC00 8024F320 12E00003 */  beqz  $s7, .L8024F330
/* 17DC04 8024F324 AE08FFDC */   sw    $t0, -0x24($s0)
/* 17DC08 8024F328 2402000A */  addiu $v0, $zero, 0xa
/* 17DC0C 8024F32C AE02FFFC */  sw    $v0, -4($s0)
.L8024F330:
/* 17DC10 8024F330 26310001 */  addiu $s1, $s1, 1
/* 17DC14 8024F334 2673004C */  addiu $s3, $s3, 0x4c
/* 17DC18 8024F338 3C01437F */  lui   $at, 0x437f
/* 17DC1C 8024F33C 44810000 */  mtc1  $at, $f0
/* 17DC20 8024F340 0235102A */  slt   $v0, $s1, $s5
/* 17DC24 8024F344 E6000000 */  swc1  $f0, ($s0)
/* 17DC28 8024F348 1440FF86 */  bnez  $v0, .L8024F164
/* 17DC2C 8024F34C 2610004C */   addiu $s0, $s0, 0x4c
.L8024F350:
/* 17DC30 8024F350 8FBF003C */  lw    $ra, 0x3c($sp)
/* 17DC34 8024F354 8FBE0038 */  lw    $fp, 0x38($sp)
/* 17DC38 8024F358 8FB70034 */  lw    $s7, 0x34($sp)
/* 17DC3C 8024F35C 8FB60030 */  lw    $s6, 0x30($sp)
/* 17DC40 8024F360 8FB5002C */  lw    $s5, 0x2c($sp)
/* 17DC44 8024F364 8FB40028 */  lw    $s4, 0x28($sp)
/* 17DC48 8024F368 8FB30024 */  lw    $s3, 0x24($sp)
/* 17DC4C 8024F36C 8FB20020 */  lw    $s2, 0x20($sp)
/* 17DC50 8024F370 8FB1001C */  lw    $s1, 0x1c($sp)
/* 17DC54 8024F374 8FB00018 */  lw    $s0, 0x18($sp)
/* 17DC58 8024F378 D7BC0060 */  ldc1  $f28, 0x60($sp)
/* 17DC5C 8024F37C D7BA0058 */  ldc1  $f26, 0x58($sp)
/* 17DC60 8024F380 D7B80050 */  ldc1  $f24, 0x50($sp)
/* 17DC64 8024F384 D7B60048 */  ldc1  $f22, 0x48($sp)
/* 17DC68 8024F388 D7B40040 */  ldc1  $f20, 0x40($sp)
/* 17DC6C 8024F38C 03E00008 */  jr    $ra
/* 17DC70 8024F390 27BD0068 */   addiu $sp, $sp, 0x68

/* 17DC74 8024F394 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 17DC78 8024F398 AFB40020 */  sw    $s4, 0x20($sp)
/* 17DC7C 8024F39C 0080A02D */  daddu $s4, $a0, $zero
/* 17DC80 8024F3A0 AFB3001C */  sw    $s3, 0x1c($sp)
/* 17DC84 8024F3A4 0000982D */  daddu $s3, $zero, $zero
/* 17DC88 8024F3A8 AFB50024 */  sw    $s5, 0x24($sp)
/* 17DC8C 8024F3AC AFBF0028 */  sw    $ra, 0x28($sp)
/* 17DC90 8024F3B0 AFB20018 */  sw    $s2, 0x18($sp)
/* 17DC94 8024F3B4 AFB10014 */  sw    $s1, 0x14($sp)
/* 17DC98 8024F3B8 AFB00010 */  sw    $s0, 0x10($sp)
/* 17DC9C 8024F3BC F7B40030 */  sdc1  $f20, 0x30($sp)
/* 17DCA0 8024F3C0 86820012 */  lh    $v0, 0x12($s4)
/* 17DCA4 8024F3C4 8E920018 */  lw    $s2, 0x18($s4)
/* 17DCA8 8024F3C8 18400067 */  blez  $v0, .L8024F568
/* 17DCAC 8024F3CC 0260A82D */   daddu $s5, $s3, $zero
/* 17DCB0 8024F3D0 3C013FE0 */  lui   $at, 0x3fe0
/* 17DCB4 8024F3D4 4481A800 */  mtc1  $at, $f21
/* 17DCB8 8024F3D8 4480A000 */  mtc1  $zero, $f20
/* 17DCBC 8024F3DC 26500044 */  addiu $s0, $s2, 0x44
.L8024F3E0:
/* 17DCC0 8024F3E0 8E420000 */  lw    $v0, ($s2)
/* 17DCC4 8024F3E4 5040005B */  beql  $v0, $zero, .L8024F554
/* 17DCC8 8024F3E8 26730001 */   addiu $s3, $s3, 1
/* 17DCCC 8024F3EC 8E02FFE0 */  lw    $v0, -0x20($s0)
/* 17DCD0 8024F3F0 8E11FFC0 */  lw    $s1, -0x40($s0)
/* 17DCD4 8024F3F4 1040000B */  beqz  $v0, .L8024F424
/* 17DCD8 8024F3F8 24150001 */   addiu $s5, $zero, 1
/* 17DCDC 8024F3FC 2442FFFF */  addiu $v0, $v0, -1
/* 17DCE0 8024F400 14400004 */  bnez  $v0, .L8024F414
/* 17DCE4 8024F404 AE02FFE0 */   sw    $v0, -0x20($s0)
/* 17DCE8 8024F408 0220202D */  daddu $a0, $s1, $zero
/* 17DCEC 8024F40C 0C048BC9 */  jal   func_80122F24
/* 17DCF0 8024F410 24050020 */   addiu $a1, $zero, 0x20
.L8024F414:
/* 17DCF4 8024F414 0C0483C1 */  jal   func_80120F04
/* 17DCF8 8024F418 0220202D */   daddu $a0, $s1, $zero
/* 17DCFC 8024F41C 08093D5A */  j     .L8024F568
/* 17DD00 8024F420 00000000 */   nop   

.L8024F424:
/* 17DD04 8024F424 0C0483C1 */  jal   func_80120F04
/* 17DD08 8024F428 0220202D */   daddu $a0, $s1, $zero
/* 17DD0C 8024F42C 8E02FFDC */  lw    $v0, -0x24($s0)
/* 17DD10 8024F430 0440000D */  bltz  $v0, .L8024F468
/* 17DD14 8024F434 00000000 */   nop   
/* 17DD18 8024F438 C606FFF4 */  lwc1  $f6, -0xc($s0)
/* 17DD1C 8024F43C C600FFD0 */  lwc1  $f0, -0x30($s0)
/* 17DD20 8024F440 C604FFF8 */  lwc1  $f4, -8($s0)
/* 17DD24 8024F444 46003180 */  add.s $f6, $f6, $f0
/* 17DD28 8024F448 C600FFD4 */  lwc1  $f0, -0x2c($s0)
/* 17DD2C 8024F44C C602FFFC */  lwc1  $f2, -4($s0)
/* 17DD30 8024F450 46002100 */  add.s $f4, $f4, $f0
/* 17DD34 8024F454 C600FFD8 */  lwc1  $f0, -0x28($s0)
/* 17DD38 8024F458 46001080 */  add.s $f2, $f2, $f0
/* 17DD3C 8024F45C E606FFF4 */  swc1  $f6, -0xc($s0)
/* 17DD40 8024F460 E604FFF8 */  swc1  $f4, -8($s0)
/* 17DD44 8024F464 E602FFFC */  swc1  $f2, -4($s0)
.L8024F468:
/* 17DD48 8024F468 3C01800B */  lui   $at, 0x800b
/* 17DD4C 8024F46C C4202344 */  lwc1  $f0, 0x2344($at)
/* 17DD50 8024F470 3C014334 */  lui   $at, 0x4334
/* 17DD54 8024F474 44816000 */  mtc1  $at, $f12
/* 17DD58 8024F478 0C00A6C9 */  jal   clamp_angle
/* 17DD5C 8024F47C 46006301 */   sub.s $f12, $f12, $f0
/* 17DD60 8024F480 C60CFFE4 */  lwc1  $f12, -0x1c($s0)
/* 17DD64 8024F484 C602FFE8 */  lwc1  $f2, -0x18($s0)
/* 17DD68 8024F488 46026300 */  add.s $f12, $f12, $f2
/* 17DD6C 8024F48C E600FFEC */  swc1  $f0, -0x14($s0)
/* 17DD70 8024F490 0C00A6C9 */  jal   clamp_angle
/* 17DD74 8024F494 E60CFFE4 */   swc1  $f12, -0x1c($s0)
/* 17DD78 8024F498 C602FFE8 */  lwc1  $f2, -0x18($s0)
/* 17DD7C 8024F49C 3C01802A */  lui   $at, 0x802a
/* 17DD80 8024F4A0 D424CD90 */  ldc1  $f4, -0x3270($at)
/* 17DD84 8024F4A4 460010A1 */  cvt.d.s $f2, $f2
/* 17DD88 8024F4A8 46241082 */  mul.d $f2, $f2, $f4
/* 17DD8C 8024F4AC 00000000 */  nop   
/* 17DD90 8024F4B0 8E02FFDC */  lw    $v0, -0x24($s0)
/* 17DD94 8024F4B4 E600FFE4 */  swc1  $f0, -0x1c($s0)
/* 17DD98 8024F4B8 2842000A */  slti  $v0, $v0, 0xa
/* 17DD9C 8024F4BC 462010A0 */  cvt.s.d $f2, $f2
/* 17DDA0 8024F4C0 10400018 */  beqz  $v0, .L8024F524
/* 17DDA4 8024F4C4 E602FFE8 */   swc1  $f2, -0x18($s0)
/* 17DDA8 8024F4C8 C604FFC4 */  lwc1  $f4, -0x3c($s0)
/* 17DDAC 8024F4CC 46002121 */  cvt.d.s $f4, $f4
/* 17DDB0 8024F4D0 46342102 */  mul.d $f4, $f4, $f20
/* 17DDB4 8024F4D4 00000000 */  nop   
/* 17DDB8 8024F4D8 C600FFCC */  lwc1  $f0, -0x34($s0)
/* 17DDBC 8024F4DC 46000021 */  cvt.d.s $f0, $f0
/* 17DDC0 8024F4E0 46340002 */  mul.d $f0, $f0, $f20
/* 17DDC4 8024F4E4 00000000 */  nop   
/* 17DDC8 8024F4E8 C602FFC8 */  lwc1  $f2, -0x38($s0)
/* 17DDCC 8024F4EC 460010A1 */  cvt.d.s $f2, $f2
/* 17DDD0 8024F4F0 46341082 */  mul.d $f2, $f2, $f20
/* 17DDD4 8024F4F4 00000000 */  nop   
/* 17DDD8 8024F4F8 46202120 */  cvt.s.d $f4, $f4
/* 17DDDC 8024F4FC 46200020 */  cvt.s.d $f0, $f0
/* 17DDE0 8024F500 E604FFC4 */  swc1  $f4, -0x3c($s0)
/* 17DDE4 8024F504 E600FFCC */  swc1  $f0, -0x34($s0)
/* 17DDE8 8024F508 46002006 */  mov.s $f0, $f4
/* 17DDEC 8024F50C C604FFCC */  lwc1  $f4, -0x34($s0)
/* 17DDF0 8024F510 462010A0 */  cvt.s.d $f2, $f2
/* 17DDF4 8024F514 E602FFC8 */  swc1  $f2, -0x38($s0)
/* 17DDF8 8024F518 E600FFD0 */  swc1  $f0, -0x30($s0)
/* 17DDFC 8024F51C E602FFD4 */  swc1  $f2, -0x2c($s0)
/* 17DE00 8024F520 E604FFD8 */  swc1  $f4, -0x28($s0)
.L8024F524:
/* 17DE04 8024F524 8E02FFDC */  lw    $v0, -0x24($s0)
/* 17DE08 8024F528 2442FFFF */  addiu $v0, $v0, -1
/* 17DE0C 8024F52C 04410008 */  bgez  $v0, .L8024F550
/* 17DE10 8024F530 AE02FFDC */   sw    $v0, -0x24($s0)
/* 17DE14 8024F534 8E020000 */  lw    $v0, ($s0)
/* 17DE18 8024F538 2442FFFF */  addiu $v0, $v0, -1
/* 17DE1C 8024F53C 04410004 */  bgez  $v0, .L8024F550
/* 17DE20 8024F540 AE020000 */   sw    $v0, ($s0)
/* 17DE24 8024F544 0C048B7F */  jal   func_80122DFC
/* 17DE28 8024F548 0220202D */   daddu $a0, $s1, $zero
/* 17DE2C 8024F54C AE400000 */  sw    $zero, ($s2)
.L8024F550:
/* 17DE30 8024F550 26730001 */  addiu $s3, $s3, 1
.L8024F554:
/* 17DE34 8024F554 2610004C */  addiu $s0, $s0, 0x4c
/* 17DE38 8024F558 86820012 */  lh    $v0, 0x12($s4)
/* 17DE3C 8024F55C 0262102A */  slt   $v0, $s3, $v0
/* 17DE40 8024F560 1440FF9F */  bnez  $v0, .L8024F3E0
/* 17DE44 8024F564 2652004C */   addiu $s2, $s2, 0x4c
.L8024F568:
.L8024F568:
/* 17DE48 8024F568 16A00006 */  bnez  $s5, .L8024F584
/* 17DE4C 8024F56C 00000000 */   nop   
/* 17DE50 8024F570 0C00AB4B */  jal   heap_free
/* 17DE54 8024F574 8E840018 */   lw    $a0, 0x18($s4)
/* 17DE58 8024F578 0280202D */  daddu $a0, $s4, $zero
/* 17DE5C 8024F57C 0C093BE9 */  jal   func_8024EFA4
/* 17DE60 8024F580 AC800018 */   sw    $zero, 0x18($a0)
.L8024F584:
/* 17DE64 8024F584 8FBF0028 */  lw    $ra, 0x28($sp)
/* 17DE68 8024F588 8FB50024 */  lw    $s5, 0x24($sp)
/* 17DE6C 8024F58C 8FB40020 */  lw    $s4, 0x20($sp)
/* 17DE70 8024F590 8FB3001C */  lw    $s3, 0x1c($sp)
/* 17DE74 8024F594 8FB20018 */  lw    $s2, 0x18($sp)
/* 17DE78 8024F598 8FB10014 */  lw    $s1, 0x14($sp)
/* 17DE7C 8024F59C 8FB00010 */  lw    $s0, 0x10($sp)
/* 17DE80 8024F5A0 D7B40030 */  ldc1  $f20, 0x30($sp)
/* 17DE84 8024F5A4 03E00008 */  jr    $ra
/* 17DE88 8024F5A8 27BD0038 */   addiu $sp, $sp, 0x38

/* 17DE8C 8024F5AC 27BDFD60 */  addiu $sp, $sp, -0x2a0
/* 17DE90 8024F5B0 AFB40278 */  sw    $s4, 0x278($sp)
/* 17DE94 8024F5B4 AFBF028C */  sw    $ra, 0x28c($sp)
/* 17DE98 8024F5B8 AFBE0288 */  sw    $fp, 0x288($sp)
/* 17DE9C 8024F5BC AFB70284 */  sw    $s7, 0x284($sp)
/* 17DEA0 8024F5C0 AFB60280 */  sw    $s6, 0x280($sp)
/* 17DEA4 8024F5C4 AFB5027C */  sw    $s5, 0x27c($sp)
/* 17DEA8 8024F5C8 AFB30274 */  sw    $s3, 0x274($sp)
/* 17DEAC 8024F5CC AFB20270 */  sw    $s2, 0x270($sp)
/* 17DEB0 8024F5D0 AFB1026C */  sw    $s1, 0x26c($sp)
/* 17DEB4 8024F5D4 AFB00268 */  sw    $s0, 0x268($sp)
/* 17DEB8 8024F5D8 F7B60298 */  sdc1  $f22, 0x298($sp)
/* 17DEBC 8024F5DC F7B40290 */  sdc1  $f20, 0x290($sp)
/* 17DEC0 8024F5E0 AFA40258 */  sw    $a0, 0x258($sp)
/* 17DEC4 8024F5E4 84820012 */  lh    $v0, 0x12($a0)
/* 17DEC8 8024F5E8 8C930018 */  lw    $s3, 0x18($a0)
/* 17DECC 8024F5EC 18400050 */  blez  $v0, .L8024F730
/* 17DED0 8024F5F0 0000A02D */   daddu $s4, $zero, $zero
/* 17DED4 8024F5F4 27A30058 */  addiu $v1, $sp, 0x58
/* 17DED8 8024F5F8 AFA3025C */  sw    $v1, 0x25c($sp)
/* 17DEDC 8024F5FC 27A30098 */  addiu $v1, $sp, 0x98
/* 17DEE0 8024F600 AFA30260 */  sw    $v1, 0x260($sp)
/* 17DEE4 8024F604 27A300D8 */  addiu $v1, $sp, 0xd8
/* 17DEE8 8024F608 27BE01D8 */  addiu $fp, $sp, 0x1d8
/* 17DEEC 8024F60C 27B20158 */  addiu $s2, $sp, 0x158
/* 17DEF0 8024F610 27B70118 */  addiu $s7, $sp, 0x118
/* 17DEF4 8024F614 27B60198 */  addiu $s6, $sp, 0x198
/* 17DEF8 8024F618 27B50218 */  addiu $s5, $sp, 0x218
/* 17DEFC 8024F61C 4480A000 */  mtc1  $zero, $f20
/* 17DF00 8024F620 3C013F80 */  lui   $at, 0x3f80
/* 17DF04 8024F624 4481B000 */  mtc1  $at, $f22
/* 17DF08 8024F628 26710034 */  addiu $s1, $s3, 0x34
/* 17DF0C 8024F62C AFA30264 */  sw    $v1, 0x264($sp)
.L8024F630:
/* 17DF10 8024F630 8E620000 */  lw    $v0, ($s3)
/* 17DF14 8024F634 50400038 */  beql  $v0, $zero, .L8024F718
/* 17DF18 8024F638 26940001 */   addiu $s4, $s4, 1
/* 17DF1C 8024F63C 8E22FFF0 */  lw    $v0, -0x10($s1)
/* 17DF20 8024F640 1440003B */  bnez  $v0, .L8024F730
/* 17DF24 8024F644 00000000 */   nop   
/* 17DF28 8024F648 8E250004 */  lw    $a1, 4($s1)
/* 17DF2C 8024F64C 8E260008 */  lw    $a2, 8($s1)
/* 17DF30 8024F650 8E27000C */  lw    $a3, 0xc($s1)
/* 17DF34 8024F654 8E30FFD0 */  lw    $s0, -0x30($s1)
/* 17DF38 8024F658 0C019E40 */  jal   guTranslateF
/* 17DF3C 8024F65C 27A40018 */   addiu $a0, $sp, 0x18
/* 17DF40 8024F660 4405A000 */  mfc1  $a1, $f20
/* 17DF44 8024F664 4406B000 */  mfc1  $a2, $f22
/* 17DF48 8024F668 4407A000 */  mfc1  $a3, $f20
/* 17DF4C 8024F66C 8FA4025C */  lw    $a0, 0x25c($sp)
/* 17DF50 8024F670 0C019EC8 */  jal   guRotateF
/* 17DF54 8024F674 E7B40010 */   swc1  $f20, 0x10($sp)
/* 17DF58 8024F678 E7B40010 */  swc1  $f20, 0x10($sp)
/* 17DF5C 8024F67C 8E25FFFC */  lw    $a1, -4($s1)
/* 17DF60 8024F680 4406A000 */  mfc1  $a2, $f20
/* 17DF64 8024F684 4407B000 */  mfc1  $a3, $f22
/* 17DF68 8024F688 8FA40260 */  lw    $a0, 0x260($sp)
/* 17DF6C 8024F68C 0C019EC8 */  jal   guRotateF
/* 17DF70 8024F690 26940001 */   addiu $s4, $s4, 1
/* 17DF74 8024F694 E7B60010 */  swc1  $f22, 0x10($sp)
/* 17DF78 8024F698 8E25FFF4 */  lw    $a1, -0xc($s1)
/* 17DF7C 8024F69C 4406A000 */  mfc1  $a2, $f20
/* 17DF80 8024F6A0 4407A000 */  mfc1  $a3, $f20
/* 17DF84 8024F6A4 0C019EC8 */  jal   guRotateF
/* 17DF88 8024F6A8 8FA40264 */   lw    $a0, 0x264($sp)
/* 17DF8C 8024F6AC 8E250000 */  lw    $a1, ($s1)
/* 17DF90 8024F6B0 03C0202D */  daddu $a0, $fp, $zero
/* 17DF94 8024F6B4 00A0302D */  daddu $a2, $a1, $zero
/* 17DF98 8024F6B8 0C019DF0 */  jal   guScaleF
/* 17DF9C 8024F6BC 00A0382D */   daddu $a3, $a1, $zero
/* 17DFA0 8024F6C0 8FA40264 */  lw    $a0, 0x264($sp)
/* 17DFA4 8024F6C4 8FA5025C */  lw    $a1, 0x25c($sp)
/* 17DFA8 8024F6C8 0C019D80 */  jal   guMtxCatF
/* 17DFAC 8024F6CC 0240302D */   daddu $a2, $s2, $zero
/* 17DFB0 8024F6D0 0240202D */  daddu $a0, $s2, $zero
/* 17DFB4 8024F6D4 8FA50260 */  lw    $a1, 0x260($sp)
/* 17DFB8 8024F6D8 0C019D80 */  jal   guMtxCatF
/* 17DFBC 8024F6DC 02E0302D */   daddu $a2, $s7, $zero
/* 17DFC0 8024F6E0 03C0202D */  daddu $a0, $fp, $zero
/* 17DFC4 8024F6E4 02E0282D */  daddu $a1, $s7, $zero
/* 17DFC8 8024F6E8 0C019D80 */  jal   guMtxCatF
/* 17DFCC 8024F6EC 0240302D */   daddu $a2, $s2, $zero
/* 17DFD0 8024F6F0 0240202D */  daddu $a0, $s2, $zero
/* 17DFD4 8024F6F4 27A50018 */  addiu $a1, $sp, 0x18
/* 17DFD8 8024F6F8 0C019D80 */  jal   guMtxCatF
/* 17DFDC 8024F6FC 02C0302D */   daddu $a2, $s6, $zero
/* 17DFE0 8024F700 02C0202D */  daddu $a0, $s6, $zero
/* 17DFE4 8024F704 0C019D40 */  jal   guMtxF2L
/* 17DFE8 8024F708 02A0282D */   daddu $a1, $s5, $zero
/* 17DFEC 8024F70C 0200202D */  daddu $a0, $s0, $zero
/* 17DFF0 8024F710 0C04873A */  jal   func_80121CE8
/* 17DFF4 8024F714 02A0282D */   daddu $a1, $s5, $zero
.L8024F718:
/* 17DFF8 8024F718 8FA30258 */  lw    $v1, 0x258($sp)
/* 17DFFC 8024F71C 2631004C */  addiu $s1, $s1, 0x4c
/* 17E000 8024F720 84620012 */  lh    $v0, 0x12($v1)
/* 17E004 8024F724 0282102A */  slt   $v0, $s4, $v0
/* 17E008 8024F728 1440FFC1 */  bnez  $v0, .L8024F630
/* 17E00C 8024F72C 2673004C */   addiu $s3, $s3, 0x4c
.L8024F730:
/* 17E010 8024F730 8FBF028C */  lw    $ra, 0x28c($sp)
/* 17E014 8024F734 8FBE0288 */  lw    $fp, 0x288($sp)
/* 17E018 8024F738 8FB70284 */  lw    $s7, 0x284($sp)
/* 17E01C 8024F73C 8FB60280 */  lw    $s6, 0x280($sp)
/* 17E020 8024F740 8FB5027C */  lw    $s5, 0x27c($sp)
/* 17E024 8024F744 8FB40278 */  lw    $s4, 0x278($sp)
/* 17E028 8024F748 8FB30274 */  lw    $s3, 0x274($sp)
/* 17E02C 8024F74C 8FB20270 */  lw    $s2, 0x270($sp)
/* 17E030 8024F750 8FB1026C */  lw    $s1, 0x26c($sp)
/* 17E034 8024F754 8FB00268 */  lw    $s0, 0x268($sp)
/* 17E038 8024F758 D7B60298 */  ldc1  $f22, 0x298($sp)
/* 17E03C 8024F75C D7B40290 */  ldc1  $f20, 0x290($sp)
/* 17E040 8024F760 03E00008 */  jr    $ra
/* 17E044 8024F764 27BD02A0 */   addiu $sp, $sp, 0x2a0

/* 17E048 8024F768 8C870044 */  lw    $a3, 0x44($a0)
/* 17E04C 8024F76C 28E2000B */  slti  $v0, $a3, 0xb
/* 17E050 8024F770 50400001 */  beql  $v0, $zero, .L8024F778
/* 17E054 8024F774 2407000A */   addiu $a3, $zero, 0xa
.L8024F778:
/* 17E058 8024F778 3C056666 */  lui   $a1, 0x6666
/* 17E05C 8024F77C 3C04800A */  lui   $a0, 0x800a
/* 17E060 8024F780 2484A66C */  addiu $a0, $a0, -0x5994
/* 17E064 8024F784 34A56667 */  ori   $a1, $a1, 0x6667
/* 17E068 8024F788 00071A00 */  sll   $v1, $a3, 8
/* 17E06C 8024F78C 00671823 */  subu  $v1, $v1, $a3
/* 17E070 8024F790 00650018 */  mult  $v1, $a1
/* 17E074 8024F794 8C820000 */  lw    $v0, ($a0)
/* 17E078 8024F798 00031FC3 */  sra   $v1, $v1, 0x1f
/* 17E07C 8024F79C 0040302D */  daddu $a2, $v0, $zero
/* 17E080 8024F7A0 24420008 */  addiu $v0, $v0, 8
/* 17E084 8024F7A4 AC820000 */  sw    $v0, ($a0)
/* 17E088 8024F7A8 3C02FA00 */  lui   $v0, 0xfa00
/* 17E08C 8024F7AC ACC20000 */  sw    $v0, ($a2)
/* 17E090 8024F7B0 00004010 */  mfhi  $t0
/* 17E094 8024F7B4 00081083 */  sra   $v0, $t0, 2
/* 17E098 8024F7B8 00431023 */  subu  $v0, $v0, $v1
/* 17E09C 8024F7BC 304200FF */  andi  $v0, $v0, 0xff
/* 17E0A0 8024F7C0 03E00008 */  jr    $ra
/* 17E0A4 8024F7C4 ACC20004 */   sw    $v0, 4($a2)

