.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8004CF0C
/* 02830C 8004CF0C 8CA20000 */  lw    $v0, ($a1)
/* 028310 8004CF10 90A3009A */  lbu   $v1, 0x9a($a1)
/* 028314 8004CF14 90460000 */  lbu   $a2, ($v0)
/* 028318 8004CF18 24420001 */  addiu $v0, $v0, 1
/* 02831C 8004CF1C 30630020 */  andi  $v1, $v1, 0x20
/* 028320 8004CF20 10600002 */  beqz  $v1, .L8004CF2C
/* 028324 8004CF24 ACA20000 */   sw    $v0, ($a1)
/* 028328 8004CF28 9086008D */  lbu   $a2, 0x8d($a0)
.L8004CF2C:
/* 02832C 8004CF2C 24020001 */  addiu $v0, $zero, 1
/* 028330 8004CF30 A0A6009C */  sb    $a2, 0x9c($a1)
/* 028334 8004CF34 03E00008 */  jr    $ra
/* 028338 8004CF38 A0A20057 */   sb    $v0, 0x57($a1)

/* 02833C 8004CF3C 8CA20000 */  lw    $v0, ($a1)
/* 028340 8004CF40 8CA4001C */  lw    $a0, 0x1c($a1)
/* 028344 8004CF44 90430000 */  lbu   $v1, ($v0)
/* 028348 8004CF48 24420001 */  addiu $v0, $v0, 1
/* 02834C 8004CF4C ACA20000 */  sw    $v0, ($a1)
/* 028350 8004CF50 3063007F */  andi  $v1, $v1, 0x7f
/* 028354 8004CF54 A0A3009E */  sb    $v1, 0x9e($a1)
/* 028358 8004CF58 8C820000 */  lw    $v0, ($a0)
/* 02835C 8004CF5C ACA20020 */  sw    $v0, 0x20($a1)
/* 028360 8004CF60 8C820004 */  lw    $v0, 4($a0)
/* 028364 8004CF64 ACA20024 */  sw    $v0, 0x24($a1)
/* 028368 8004CF68 8C820008 */  lw    $v0, 8($a0)
/* 02836C 8004CF6C ACA20028 */  sw    $v0, 0x28($a1)
/* 028370 8004CF70 8C82000C */  lw    $v0, 0xc($a0)
/* 028374 8004CF74 ACA2002C */  sw    $v0, 0x2c($a1)
/* 028378 8004CF78 8C820010 */  lw    $v0, 0x10($a0)
/* 02837C 8004CF7C ACA20030 */  sw    $v0, 0x30($a1)
/* 028380 8004CF80 8C820014 */  lw    $v0, 0x14($a0)
/* 028384 8004CF84 ACA20034 */  sw    $v0, 0x34($a1)
/* 028388 8004CF88 8C820018 */  lw    $v0, 0x18($a0)
/* 02838C 8004CF8C ACA20038 */  sw    $v0, 0x38($a1)
/* 028390 8004CF90 9482001C */  lhu   $v0, 0x1c($a0)
/* 028394 8004CF94 A4A2003C */  sh    $v0, 0x3c($a1)
/* 028398 8004CF98 9482001E */  lhu   $v0, 0x1e($a0)
/* 02839C 8004CF9C A4A2003E */  sh    $v0, 0x3e($a1)
/* 0283A0 8004CFA0 C4800020 */  lwc1  $f0, 0x20($a0)
/* 0283A4 8004CFA4 E4A00040 */  swc1  $f0, 0x40($a1)
/* 0283A8 8004CFA8 90820024 */  lbu   $v0, 0x24($a0)
/* 0283AC 8004CFAC A0A20044 */  sb    $v0, 0x44($a1)
/* 0283B0 8004CFB0 90A2009E */  lbu   $v0, 0x9e($a1)
/* 0283B4 8004CFB4 90830025 */  lbu   $v1, 0x25($a0)
/* 0283B8 8004CFB8 00021080 */  sll   $v0, $v0, 2
/* 0283BC 8004CFBC A0A30045 */  sb    $v1, 0x45($a1)
/* 0283C0 8004CFC0 3C018008 */  lui   $at, 0x8008
/* 0283C4 8004CFC4 00220821 */  addu  $at, $at, $v0
/* 0283C8 8004CFC8 8C2283C0 */  lw    $v0, -0x7c40($at)
/* 0283CC 8004CFCC ACA2004C */  sw    $v0, 0x4c($a1)
/* 0283D0 8004CFD0 0040182D */  daddu $v1, $v0, $zero
/* 0283D4 8004CFD4 24A20020 */  addiu $v0, $a1, 0x20
/* 0283D8 8004CFD8 1060000A */  beqz  $v1, .L8004D004
/* 0283DC 8004CFDC ACA2001C */   sw    $v0, 0x1c($a1)
/* 0283E0 8004CFE0 90620000 */  lbu   $v0, ($v1)
/* 0283E4 8004CFE4 10400007 */  beqz  $v0, .L8004D004
/* 0283E8 8004CFE8 00000000 */   nop   
/* 0283EC 8004CFEC 94620004 */  lhu   $v0, 4($v1)
/* 0283F0 8004CFF0 00431021 */  addu  $v0, $v0, $v1
/* 0283F4 8004CFF4 ACA20010 */  sw    $v0, 0x10($a1)
/* 0283F8 8004CFF8 94620006 */  lhu   $v0, 6($v1)
/* 0283FC 8004CFFC 00431021 */  addu  $v0, $v0, $v1
/* 028400 8004D000 ACA20014 */  sw    $v0, 0x14($a1)
.L8004D004:
/* 028404 8004D004 03E00008 */  jr    $ra
/* 028408 8004D008 00000000 */   nop   

/* 02840C 8004D00C 8CA20000 */  lw    $v0, ($a1)
/* 028410 8004D010 80430000 */  lb    $v1, ($v0)
/* 028414 8004D014 24420001 */  addiu $v0, $v0, 1
/* 028418 8004D018 ACA20000 */  sw    $v0, ($a1)
/* 02841C 8004D01C 00031040 */  sll   $v0, $v1, 1
/* 028420 8004D020 00431021 */  addu  $v0, $v0, $v1
/* 028424 8004D024 000210C0 */  sll   $v0, $v0, 3
/* 028428 8004D028 00431021 */  addu  $v0, $v0, $v1
/* 02842C 8004D02C 00021080 */  sll   $v0, $v0, 2
/* 028430 8004D030 03E00008 */  jr    $ra
/* 028434 8004D034 A4A20092 */   sh    $v0, 0x92($a1)

/* 028438 8004D038 8CA20000 */  lw    $v0, ($a1)
/* 02843C 8004D03C 90430000 */  lbu   $v1, ($v0)
/* 028440 8004D040 24420001 */  addiu $v0, $v0, 1
/* 028444 8004D044 ACA20000 */  sw    $v0, ($a1)
/* 028448 8004D048 03E00008 */  jr    $ra
/* 02844C 8004D04C A0A30094 */   sb    $v1, 0x94($a1)

/* 028450 8004D050 8C820004 */  lw    $v0, 4($a0)
/* 028454 8004D054 90430045 */  lbu   $v1, 0x45($v0)
/* 028458 8004D058 908200BC */  lbu   $v0, 0xbc($a0)
/* 02845C 8004D05C 14620005 */  bne   $v1, $v0, .L8004D074
/* 028460 8004D060 24030002 */   addiu $v1, $zero, 2
/* 028464 8004D064 8CA20000 */  lw    $v0, ($a1)
/* 028468 8004D068 A4A3008E */  sh    $v1, 0x8e($a1)
/* 02846C 8004D06C 2442FFFF */  addiu $v0, $v0, -1
/* 028470 8004D070 ACA20000 */  sw    $v0, ($a1)
.L8004D074:
/* 028474 8004D074 03E00008 */  jr    $ra
/* 028478 8004D078 00000000 */   nop   

/* 02847C 8004D07C 00A0382D */  daddu $a3, $a1, $zero
/* 028480 8004D080 8CE20000 */  lw    $v0, ($a3)
/* 028484 8004D084 90430000 */  lbu   $v1, ($v0)
/* 028488 8004D088 90450001 */  lbu   $a1, 1($v0)
/* 02848C 8004D08C 90440002 */  lbu   $a0, 2($v0)
/* 028490 8004D090 24420003 */  addiu $v0, $v0, 3
/* 028494 8004D094 ACE20000 */  sw    $v0, ($a3)
/* 028498 8004D098 00031A00 */  sll   $v1, $v1, 8
/* 02849C 8004D09C 00A32821 */  addu  $a1, $a1, $v1
/* 0284A0 8004D0A0 00A0302D */  daddu $a2, $a1, $zero
/* 0284A4 8004D0A4 3084007F */  andi  $a0, $a0, 0x7f
/* 0284A8 8004D0A8 00041040 */  sll   $v0, $a0, 1
/* 0284AC 8004D0AC 00441021 */  addu  $v0, $v0, $a0
/* 0284B0 8004D0B0 000210C0 */  sll   $v0, $v0, 3
/* 0284B4 8004D0B4 00441821 */  addu  $v1, $v0, $a0
/* 0284B8 8004D0B8 00052C00 */  sll   $a1, $a1, 0x10
/* 0284BC 8004D0BC 1CA00002 */  bgtz  $a1, .L8004D0C8
/* 0284C0 8004D0C0 00032080 */   sll   $a0, $v1, 2
/* 0284C4 8004D0C4 24060001 */  addiu $a2, $zero, 1
.L8004D0C8:
/* 0284C8 8004D0C8 8CE20060 */  lw    $v0, 0x60($a3)
/* 0284CC 8004D0CC 00031C80 */  sll   $v1, $v1, 0x12
/* 0284D0 8004D0D0 00621823 */  subu  $v1, $v1, $v0
/* 0284D4 8004D0D4 00061400 */  sll   $v0, $a2, 0x10
/* 0284D8 8004D0D8 00021403 */  sra   $v0, $v0, 0x10
/* 0284DC 8004D0DC 14400002 */  bnez  $v0, .L8004D0E8
/* 0284E0 8004D0E0 0062001A */   div   $zero, $v1, $v0
/* 0284E4 8004D0E4 0007000D */  break 7
.L8004D0E8:
/* 0284E8 8004D0E8 2401FFFF */  addiu $at, $zero, -1
/* 0284EC 8004D0EC 14410004 */  bne   $v0, $at, .L8004D100
/* 0284F0 8004D0F0 3C018000 */   lui   $at, 0x8000
/* 0284F4 8004D0F4 14610002 */  bne   $v1, $at, .L8004D100
/* 0284F8 8004D0F8 00000000 */   nop   
/* 0284FC 8004D0FC 0006000D */  break 6
.L8004D100:
/* 028500 8004D100 00001812 */  mflo  $v1
/* 028504 8004D104 A4E60068 */  sh    $a2, 0x68($a3)
/* 028508 8004D108 A4E4006A */  sh    $a0, 0x6a($a3)
/* 02850C 8004D10C 03E00008 */  jr    $ra
/* 028510 8004D110 ACE30064 */   sw    $v1, 0x64($a3)

/* 028514 8004D114 8CA20000 */  lw    $v0, ($a1)
/* 028518 8004D118 90430000 */  lbu   $v1, ($v0)
/* 02851C 8004D11C 24420001 */  addiu $v0, $v0, 1
/* 028520 8004D120 ACA20000 */  sw    $v0, ($a1)
/* 028524 8004D124 ACA20088 */  sw    $v0, 0x88($a1)
/* 028528 8004D128 03E00008 */  jr    $ra
/* 02852C 8004D12C A0A3008C */   sb    $v1, 0x8c($a1)

/* 028530 8004D130 90A2008C */  lbu   $v0, 0x8c($a1)
/* 028534 8004D134 10400005 */  beqz  $v0, .L8004D14C
/* 028538 8004D138 2442FFFF */   addiu $v0, $v0, -1
/* 02853C 8004D13C A0A2008C */  sb    $v0, 0x8c($a1)
/* 028540 8004D140 304200FF */  andi  $v0, $v0, 0xff
/* 028544 8004D144 10400003 */  beqz  $v0, .L8004D154
/* 028548 8004D148 00000000 */   nop   
.L8004D14C:
/* 02854C 8004D14C 8CA20088 */  lw    $v0, 0x88($a1)
/* 028550 8004D150 ACA20000 */  sw    $v0, ($a1)
.L8004D154:
/* 028554 8004D154 03E00008 */  jr    $ra
/* 028558 8004D158 00000000 */   nop   

/* 02855C 8004D15C 94A20090 */  lhu   $v0, 0x90($a1)
/* 028560 8004D160 10400005 */  beqz  $v0, .L8004D178
/* 028564 8004D164 24030003 */   addiu $v1, $zero, 3
/* 028568 8004D168 8CA20000 */  lw    $v0, ($a1)
/* 02856C 8004D16C A4A3008E */  sh    $v1, 0x8e($a1)
/* 028570 8004D170 2442FFFF */  addiu $v0, $v0, -1
/* 028574 8004D174 ACA20000 */  sw    $v0, ($a1)
.L8004D178:
/* 028578 8004D178 03E00008 */  jr    $ra
/* 02857C 8004D17C 00000000 */   nop   

/* 028580 8004D180 8CA20000 */  lw    $v0, ($a1)
/* 028584 8004D184 90440000 */  lbu   $a0, ($v0)
/* 028588 8004D188 24420001 */  addiu $v0, $v0, 1
/* 02858C 8004D18C 10800005 */  beqz  $a0, .L8004D1A4
/* 028590 8004D190 ACA20000 */   sw    $v0, ($a1)
/* 028594 8004D194 3C0300FF */  lui   $v1, 0xff
/* 028598 8004D198 3463FFFF */  ori   $v1, $v1, 0xffff
/* 02859C 8004D19C 00041600 */  sll   $v0, $a0, 0x18
/* 0285A0 8004D1A0 00432025 */  or    $a0, $v0, $v1
.L8004D1A4:
/* 0285A4 8004D1A4 24020001 */  addiu $v0, $zero, 1
/* 0285A8 8004D1A8 ACA4006C */  sw    $a0, 0x6c($a1)
/* 0285AC 8004D1AC 03E00008 */  jr    $ra
/* 0285B0 8004D1B0 A0A20055 */   sb    $v0, 0x55($a1)

/* 0285B4 8004D1B4 8CA20000 */  lw    $v0, ($a1)
/* 0285B8 8004D1B8 90470002 */  lbu   $a3, 2($v0)
/* 0285BC 8004D1BC 90430000 */  lbu   $v1, ($v0)
/* 0285C0 8004D1C0 90440001 */  lbu   $a0, 1($v0)
/* 0285C4 8004D1C4 24420003 */  addiu $v0, $v0, 3
/* 0285C8 8004D1C8 ACA20000 */  sw    $v0, ($a1)
/* 0285CC 8004D1CC 00031A00 */  sll   $v1, $v1, 8
/* 0285D0 8004D1D0 00832021 */  addu  $a0, $a0, $v1
/* 0285D4 8004D1D4 10E00003 */  beqz  $a3, .L8004D1E4
/* 0285D8 8004D1D8 0080302D */   daddu $a2, $a0, $zero
/* 0285DC 8004D1DC 00071200 */  sll   $v0, $a3, 8
/* 0285E0 8004D1E0 344700FF */  ori   $a3, $v0, 0xff
.L8004D1E4:
/* 0285E4 8004D1E4 00041400 */  sll   $v0, $a0, 0x10
/* 0285E8 8004D1E8 58400001 */  blezl $v0, .L8004D1F0
/* 0285EC 8004D1EC 24060001 */   addiu $a2, $zero, 1
.L8004D1F0:
/* 0285F0 8004D1F0 8CA2006C */  lw    $v0, 0x6c($a1)
/* 0285F4 8004D1F4 00071C00 */  sll   $v1, $a3, 0x10
/* 0285F8 8004D1F8 00621823 */  subu  $v1, $v1, $v0
/* 0285FC 8004D1FC 00061400 */  sll   $v0, $a2, 0x10
/* 028600 8004D200 00021403 */  sra   $v0, $v0, 0x10
/* 028604 8004D204 14400002 */  bnez  $v0, .L8004D210
/* 028608 8004D208 0062001A */   div   $zero, $v1, $v0
/* 02860C 8004D20C 0007000D */  break 7
.L8004D210:
/* 028610 8004D210 2401FFFF */  addiu $at, $zero, -1
/* 028614 8004D214 14410004 */  bne   $v0, $at, .L8004D228
/* 028618 8004D218 3C018000 */   lui   $at, 0x8000
/* 02861C 8004D21C 14610002 */  bne   $v1, $at, .L8004D228
/* 028620 8004D220 00000000 */   nop   
/* 028624 8004D224 0006000D */  break 6
.L8004D228:
/* 028628 8004D228 00001812 */  mflo  $v1
/* 02862C 8004D22C A4A60074 */  sh    $a2, 0x74($a1)
/* 028630 8004D230 A4A70076 */  sh    $a3, 0x76($a1)
/* 028634 8004D234 03E00008 */  jr    $ra
/* 028638 8004D238 ACA30070 */   sw    $v1, 0x70($a1)

/* 02863C 8004D23C 00A0382D */  daddu $a3, $a1, $zero
/* 028640 8004D240 8CE20000 */  lw    $v0, ($a3)
/* 028644 8004D244 8C860008 */  lw    $a2, 8($a0)
/* 028648 8004D248 90430001 */  lbu   $v1, 1($v0)
/* 02864C 8004D24C 90450002 */  lbu   $a1, 2($v0)
/* 028650 8004D250 90440000 */  lbu   $a0, ($v0)
/* 028654 8004D254 24420003 */  addiu $v0, $v0, 3
/* 028658 8004D258 ACE20000 */  sw    $v0, ($a3)
/* 02865C 8004D25C 24020002 */  addiu $v0, $zero, 2
/* 028660 8004D260 00031A00 */  sll   $v1, $v1, 8
/* 028664 8004D264 00651821 */  addu  $v1, $v1, $a1
/* 028668 8004D268 A0E40084 */  sb    $a0, 0x84($a3)
/* 02866C 8004D26C 308400FF */  andi  $a0, $a0, 0xff
/* 028670 8004D270 1082000B */  beq   $a0, $v0, .L8004D2A0
/* 028674 8004D274 00661821 */   addu  $v1, $v1, $a2
/* 028678 8004D278 28820003 */  slti  $v0, $a0, 3
/* 02867C 8004D27C 10400005 */  beqz  $v0, .L8004D294
/* 028680 8004D280 24020001 */   addiu $v0, $zero, 1
/* 028684 8004D284 10820006 */  beq   $a0, $v0, .L8004D2A0
/* 028688 8004D288 00000000 */   nop   
/* 02868C 8004D28C 03E00008 */  jr    $ra
/* 028690 8004D290 ACE00080 */   sw    $zero, 0x80($a3)

.L8004D294:
/* 028694 8004D294 24020003 */  addiu $v0, $zero, 3
/* 028698 8004D298 54820003 */  bnel  $a0, $v0, .L8004D2A8
/* 02869C 8004D29C ACE00080 */   sw    $zero, 0x80($a3)
.L8004D2A0:
/* 0286A0 8004D2A0 03E00008 */  jr    $ra
/* 0286A4 8004D2A4 ACE30080 */   sw    $v1, 0x80($a3)

.L8004D2A8:
/* 0286A8 8004D2A8 03E00008 */  jr    $ra
/* 0286AC 8004D2AC 00000000 */   nop   

/* 0286B0 8004D2B0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0286B4 8004D2B4 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0286B8 8004D2B8 8C860004 */  lw    $a2, 4($a0)
/* 0286BC 8004D2BC 908200BC */  lbu   $v0, 0xbc($a0)
/* 0286C0 8004D2C0 90C30045 */  lbu   $v1, 0x45($a2)
/* 0286C4 8004D2C4 14620004 */  bne   $v1, $v0, .L8004D2D8
/* 0286C8 8004D2C8 00000000 */   nop   
/* 0286CC 8004D2CC 908500BF */  lbu   $a1, 0xbf($a0)
/* 0286D0 8004D2D0 0C014E31 */  jal   func_800538C4
/* 0286D4 8004D2D4 00C0202D */   daddu $a0, $a2, $zero
.L8004D2D8:
/* 0286D8 8004D2D8 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0286DC 8004D2DC 03E00008 */  jr    $ra
/* 0286E0 8004D2E0 27BD0018 */   addiu $sp, $sp, 0x18

/* 0286E4 8004D2E4 8CA30000 */  lw    $v1, ($a1)
/* 0286E8 8004D2E8 24620002 */  addiu $v0, $v1, 2
/* 0286EC 8004D2EC ACA20050 */  sw    $v0, 0x50($a1)
/* 0286F0 8004D2F0 90620000 */  lbu   $v0, ($v1)
/* 0286F4 8004D2F4 90630001 */  lbu   $v1, 1($v1)
/* 0286F8 8004D2F8 8C840008 */  lw    $a0, 8($a0)
/* 0286FC 8004D2FC 00021200 */  sll   $v0, $v0, 8
/* 028700 8004D300 00431021 */  addu  $v0, $v0, $v1
/* 028704 8004D304 00441021 */  addu  $v0, $v0, $a0
/* 028708 8004D308 03E00008 */  jr    $ra
/* 02870C 8004D30C ACA20000 */   sw    $v0, ($a1)

/* 028710 8004D310 8CA20050 */  lw    $v0, 0x50($a1)
/* 028714 8004D314 03E00008 */  jr    $ra
/* 028718 8004D318 ACA20000 */   sw    $v0, ($a1)

/* 02871C 8004D31C 03E00008 */  jr    $ra
/* 028720 8004D320 00000000 */   nop   

/* 028724 8004D324 8CA20000 */  lw    $v0, ($a1)
/* 028728 8004D328 90430000 */  lbu   $v1, ($v0)
/* 02872C 8004D32C 24420001 */  addiu $v0, $v0, 1
/* 028730 8004D330 ACA20000 */  sw    $v0, ($a1)
/* 028734 8004D334 03E00008 */  jr    $ra
/* 028738 8004D338 A0A300A1 */   sb    $v1, 0xa1($a1)

/* 02873C 8004D33C 8CA20000 */  lw    $v0, ($a1)
/* 028740 8004D340 90430000 */  lbu   $v1, ($v0)
/* 028744 8004D344 24420001 */  addiu $v0, $v0, 1
/* 028748 8004D348 ACA20000 */  sw    $v0, ($a1)
/* 02874C 8004D34C 03E00008 */  jr    $ra
/* 028750 8004D350 A0A300A2 */   sb    $v1, 0xa2($a1)

/* 028754 8004D354 8CA20000 */  lw    $v0, ($a1)
/* 028758 8004D358 90430000 */  lbu   $v1, ($v0)
/* 02875C 8004D35C 24420001 */  addiu $v0, $v0, 1
/* 028760 8004D360 ACA20000 */  sw    $v0, ($a1)
/* 028764 8004D364 03E00008 */  jr    $ra
/* 028768 8004D368 A0A300A3 */   sb    $v1, 0xa3($a1)

/* 02876C 8004D36C 8CA60000 */  lw    $a2, ($a1)
/* 028770 8004D370 90C20000 */  lbu   $v0, ($a2)
/* 028774 8004D374 90C30001 */  lbu   $v1, 1($a2)
/* 028778 8004D378 00021200 */  sll   $v0, $v0, 8
/* 02877C 8004D37C 00431821 */  addu  $v1, $v0, $v1
/* 028780 8004D380 50600004 */  beql  $v1, $zero, .L8004D394
/* 028784 8004D384 ACA00018 */   sw    $zero, 0x18($a1)
/* 028788 8004D388 8C820008 */  lw    $v0, 8($a0)
/* 02878C 8004D38C 00621021 */  addu  $v0, $v1, $v0
/* 028790 8004D390 ACA20018 */  sw    $v0, 0x18($a1)
.L8004D394:
/* 028794 8004D394 24C20002 */  addiu $v0, $a2, 2
/* 028798 8004D398 03E00008 */  jr    $ra
/* 02879C 8004D39C ACA20000 */   sw    $v0, ($a1)

/* 0287A0 8004D3A0 8CA60000 */  lw    $a2, ($a1)
/* 0287A4 8004D3A4 0000182D */  daddu $v1, $zero, $zero
.L8004D3A8:
/* 0287A8 8004D3A8 948200A0 */  lhu   $v0, 0xa0($a0)
/* 0287AC 8004D3AC 1440000C */  bnez  $v0, .L8004D3E0
/* 0287B0 8004D3B0 24630001 */   addiu $v1, $v1, 1
/* 0287B4 8004D3B4 90C20000 */  lbu   $v0, ($a2)
/* 0287B8 8004D3B8 90C30001 */  lbu   $v1, 1($a2)
/* 0287BC 8004D3BC 00021200 */  sll   $v0, $v0, 8
/* 0287C0 8004D3C0 00621821 */  addu  $v1, $v1, $v0
/* 0287C4 8004D3C4 A48300A0 */  sh    $v1, 0xa0($a0)
/* 0287C8 8004D3C8 90C20002 */  lbu   $v0, 2($a2)
/* 0287CC 8004D3CC 90C30003 */  lbu   $v1, 3($a2)
/* 0287D0 8004D3D0 00021200 */  sll   $v0, $v0, 8
/* 0287D4 8004D3D4 00621821 */  addu  $v1, $v1, $v0
/* 0287D8 8004D3D8 080134FB */  j     .L8004D3EC
/* 0287DC 8004D3DC A48300A2 */   sh    $v1, 0xa2($a0)

.L8004D3E0:
/* 0287E0 8004D3E0 2C620004 */  sltiu $v0, $v1, 4
/* 0287E4 8004D3E4 1440FFF0 */  bnez  $v0, .L8004D3A8
/* 0287E8 8004D3E8 24840006 */   addiu $a0, $a0, 6
.L8004D3EC:
/* 0287EC 8004D3EC 24C20004 */  addiu $v0, $a2, 4
/* 0287F0 8004D3F0 03E00008 */  jr    $ra
/* 0287F4 8004D3F4 ACA20000 */   sw    $v0, ($a1)

/* 0287F8 8004D3F8 8CA20000 */  lw    $v0, ($a1)
/* 0287FC 8004D3FC 90430000 */  lbu   $v1, ($v0)
/* 028800 8004D400 24420001 */  addiu $v0, $v0, 1
/* 028804 8004D404 ACA20000 */  sw    $v0, ($a1)
/* 028808 8004D408 A4A3005E */  sh    $v1, 0x5e($a1)
/* 02880C 8004D40C 84A2005E */  lh    $v0, 0x5e($a1)
/* 028810 8004D410 10400003 */  beqz  $v0, .L8004D420
/* 028814 8004D414 00031200 */   sll   $v0, $v1, 8
/* 028818 8004D418 344200FF */  ori   $v0, $v0, 0xff
/* 02881C 8004D41C A4A2005E */  sh    $v0, 0x5e($a1)
.L8004D420:
/* 028820 8004D420 03E00008 */  jr    $ra
/* 028824 8004D424 00000000 */   nop   

