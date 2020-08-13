.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel is_ability_active
/* 0831F8 800E9D48 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0831FC 800E9D4C AFBF0028 */  sw    $ra, 0x28($sp)
/* 083200 800E9D50 0080482D */  daddu $t1, $a0, $zero
/* 083204 800E9D54 3C088011 */  lui   $t0, 0x8011
/* 083208 800E9D58 2508F290 */  addiu $t0, $t0, -0xd70
/* 08320C 800E9D5C 0000282D */  daddu $a1, $zero, $zero
/* 083210 800E9D60 00A0202D */  daddu $a0, $a1, $zero
/* 083214 800E9D64 24070005 */  addiu $a3, $zero, 5
/* 083218 800E9D68 27A20024 */  addiu $v0, $sp, 0x24
.L800E9D6C:
/* 08321C 800E9D6C AC400000 */  sw    $zero, ($v0)
/* 083220 800E9D70 24E7FFFF */  addiu $a3, $a3, -1
/* 083224 800E9D74 04E1FFFD */  bgez  $a3, .L800E9D6C
/* 083228 800E9D78 2442FFFC */   addiu $v0, $v0, -4
/* 08322C 800E9D7C 3C028007 */  lui   $v0, 0x8007
/* 083230 800E9D80 8C42419C */  lw    $v0, 0x419c($v0)
/* 083234 800E9D84 9042007E */  lbu   $v0, 0x7e($v0)
/* 083238 800E9D88 30420001 */  andi  $v0, $v0, 1
/* 08323C 800E9D8C 144000C7 */  bnez  $v0, .L800EA0AC
/* 083240 800E9D90 0000102D */   daddu $v0, $zero, $zero
/* 083244 800E9D94 0000382D */  daddu $a3, $zero, $zero
/* 083248 800E9D98 3C038011 */  lui   $v1, 0x8011
/* 08324C 800E9D9C 2463BF60 */  addiu $v1, $v1, -0x40a0
/* 083250 800E9DA0 00091080 */  sll   $v0, $t1, 2
/* 083254 800E9DA4 00435021 */  addu  $t2, $v0, $v1
/* 083258 800E9DA8 27A30010 */  addiu $v1, $sp, 0x10
/* 08325C 800E9DAC 00041080 */  sll   $v0, $a0, 2
/* 083260 800E9DB0 00433021 */  addu  $a2, $v0, $v1
/* 083264 800E9DB4 00071040 */  sll   $v0, $a3, 1
.L800E9DB8:
/* 083268 800E9DB8 01021021 */  addu  $v0, $t0, $v0
/* 08326C 800E9DBC 84430208 */  lh    $v1, 0x208($v0)
/* 083270 800E9DC0 10600004 */  beqz  $v1, .L800E9DD4
/* 083274 800E9DC4 00031140 */   sll   $v0, $v1, 5
/* 083278 800E9DC8 3C038008 */  lui   $v1, 0x8008
/* 08327C 800E9DCC 00621821 */  addu  $v1, $v1, $v0
/* 083280 800E9DD0 906378FA */  lbu   $v1, 0x78fa($v1)
.L800E9DD4:
/* 083284 800E9DD4 2D220038 */  sltiu $v0, $t1, 0x38
/* 083288 800E9DD8 504000A9 */  beql  $v0, $zero, .L800EA080
/* 08328C 800E9DDC 24E70001 */   addiu $a3, $a3, 1
/* 083290 800E9DE0 8D420000 */  lw    $v0, ($t2)
/* 083294 800E9DE4 00400008 */  jr    $v0
/* 083298 800E9DE8 00000000 */   nop   
/* 08329C 800E9DEC 0803A81D */  j     .L800EA074
/* 0832A0 800E9DF0 2402004C */   addiu $v0, $zero, 0x4c

/* 0832A4 800E9DF4 0803A81D */  j     .L800EA074
/* 0832A8 800E9DF8 24020040 */   addiu $v0, $zero, 0x40

/* 0832AC 800E9DFC 0803A81D */  j     .L800EA074
/* 0832B0 800E9E00 2402004D */   addiu $v0, $zero, 0x4d

/* 0832B4 800E9E04 0803A81D */  j     .L800EA074
/* 0832B8 800E9E08 24020052 */   addiu $v0, $zero, 0x52

/* 0832BC 800E9E0C 0803A81D */  j     .L800EA074
/* 0832C0 800E9E10 24020035 */   addiu $v0, $zero, 0x35

/* 0832C4 800E9E14 24020053 */  addiu $v0, $zero, 0x53
/* 0832C8 800E9E18 50620001 */  beql  $v1, $v0, .L800E9E20
/* 0832CC 800E9E1C 24A50001 */   addiu $a1, $a1, 1
.L800E9E20:
/* 0832D0 800E9E20 8102000A */  lb    $v0, 0xa($t0)
/* 0832D4 800E9E24 50400096 */  beql  $v0, $zero, .L800EA080
/* 0832D8 800E9E28 24E70001 */   addiu $a3, $a3, 1
/* 0832DC 800E9E2C 0803A81F */  j     .L800EA07C
/* 0832E0 800E9E30 24A50001 */   addiu $a1, $a1, 1

/* 0832E4 800E9E34 0803A81D */  j     .L800EA074
/* 0832E8 800E9E38 24020041 */   addiu $v0, $zero, 0x41

/* 0832EC 800E9E3C 0803A81D */  j     .L800EA074
/* 0832F0 800E9E40 24020042 */   addiu $v0, $zero, 0x42

/* 0832F4 800E9E44 0803A81D */  j     .L800EA074
/* 0832F8 800E9E48 2402005A */   addiu $v0, $zero, 0x5a

/* 0832FC 800E9E4C 0803A81D */  j     .L800EA074
/* 083300 800E9E50 2402003C */   addiu $v0, $zero, 0x3c

/* 083304 800E9E54 0803A81D */  j     .L800EA074
/* 083308 800E9E58 2402004E */   addiu $v0, $zero, 0x4e

/* 08330C 800E9E5C 0803A81D */  j     .L800EA074
/* 083310 800E9E60 2402005B */   addiu $v0, $zero, 0x5b

/* 083314 800E9E64 0803A81D */  j     .L800EA074
/* 083318 800E9E68 2402003D */   addiu $v0, $zero, 0x3d

/* 08331C 800E9E6C 0803A81D */  j     .L800EA074
/* 083320 800E9E70 24020043 */   addiu $v0, $zero, 0x43

/* 083324 800E9E74 24020054 */  addiu $v0, $zero, 0x54
/* 083328 800E9E78 14620007 */  bne   $v1, $v0, .L800E9E98
/* 08332C 800E9E7C 24020055 */   addiu $v0, $zero, 0x55
/* 083330 800E9E80 24020001 */  addiu $v0, $zero, 1
/* 083334 800E9E84 ACC20000 */  sw    $v0, ($a2)
/* 083338 800E9E88 24C60004 */  addiu $a2, $a2, 4
/* 08333C 800E9E8C 00822021 */  addu  $a0, $a0, $v0
/* 083340 800E9E90 2405FFFF */  addiu $a1, $zero, -1
/* 083344 800E9E94 24020055 */  addiu $v0, $zero, 0x55
.L800E9E98:
/* 083348 800E9E98 14620007 */  bne   $v1, $v0, .L800E9EB8
/* 08334C 800E9E9C 24020056 */   addiu $v0, $zero, 0x56
/* 083350 800E9EA0 24020002 */  addiu $v0, $zero, 2
/* 083354 800E9EA4 ACC20000 */  sw    $v0, ($a2)
/* 083358 800E9EA8 24C60004 */  addiu $a2, $a2, 4
/* 08335C 800E9EAC 24840001 */  addiu $a0, $a0, 1
/* 083360 800E9EB0 2405FFFF */  addiu $a1, $zero, -1
/* 083364 800E9EB4 24020056 */  addiu $v0, $zero, 0x56
.L800E9EB8:
/* 083368 800E9EB8 14620007 */  bne   $v1, $v0, .L800E9ED8
/* 08336C 800E9EBC 24020057 */   addiu $v0, $zero, 0x57
/* 083370 800E9EC0 24020003 */  addiu $v0, $zero, 3
/* 083374 800E9EC4 ACC20000 */  sw    $v0, ($a2)
/* 083378 800E9EC8 24C60004 */  addiu $a2, $a2, 4
/* 08337C 800E9ECC 24840001 */  addiu $a0, $a0, 1
/* 083380 800E9ED0 2405FFFF */  addiu $a1, $zero, -1
/* 083384 800E9ED4 24020057 */  addiu $v0, $zero, 0x57
.L800E9ED8:
/* 083388 800E9ED8 14620007 */  bne   $v1, $v0, .L800E9EF8
/* 08338C 800E9EDC 24020058 */   addiu $v0, $zero, 0x58
/* 083390 800E9EE0 24020004 */  addiu $v0, $zero, 4
/* 083394 800E9EE4 ACC20000 */  sw    $v0, ($a2)
/* 083398 800E9EE8 00C23021 */  addu  $a2, $a2, $v0
/* 08339C 800E9EEC 24840001 */  addiu $a0, $a0, 1
/* 0833A0 800E9EF0 2405FFFF */  addiu $a1, $zero, -1
/* 0833A4 800E9EF4 24020058 */  addiu $v0, $zero, 0x58
.L800E9EF8:
/* 0833A8 800E9EF8 14620007 */  bne   $v1, $v0, .L800E9F18
/* 0833AC 800E9EFC 24020059 */   addiu $v0, $zero, 0x59
/* 0833B0 800E9F00 24020005 */  addiu $v0, $zero, 5
/* 0833B4 800E9F04 ACC20000 */  sw    $v0, ($a2)
/* 0833B8 800E9F08 24C60004 */  addiu $a2, $a2, 4
/* 0833BC 800E9F0C 24840001 */  addiu $a0, $a0, 1
/* 0833C0 800E9F10 2405FFFF */  addiu $a1, $zero, -1
/* 0833C4 800E9F14 24020059 */  addiu $v0, $zero, 0x59
.L800E9F18:
/* 0833C8 800E9F18 54620059 */  bnel  $v1, $v0, .L800EA080
/* 0833CC 800E9F1C 24E70001 */   addiu $a3, $a3, 1
/* 0833D0 800E9F20 24020006 */  addiu $v0, $zero, 6
/* 0833D4 800E9F24 ACC20000 */  sw    $v0, ($a2)
/* 0833D8 800E9F28 24C60004 */  addiu $a2, $a2, 4
/* 0833DC 800E9F2C 24840001 */  addiu $a0, $a0, 1
/* 0833E0 800E9F30 0803A81F */  j     .L800EA07C
/* 0833E4 800E9F34 2405FFFF */   addiu $a1, $zero, -1

/* 0833E8 800E9F38 0803A81D */  j     .L800EA074
/* 0833EC 800E9F3C 2402005C */   addiu $v0, $zero, 0x5c

/* 0833F0 800E9F40 0803A81D */  j     .L800EA074
/* 0833F4 800E9F44 2402005D */   addiu $v0, $zero, 0x5d

/* 0833F8 800E9F48 0803A81D */  j     .L800EA074
/* 0833FC 800E9F4C 2402005E */   addiu $v0, $zero, 0x5e

/* 083400 800E9F50 0803A81D */  j     .L800EA074
/* 083404 800E9F54 24020044 */   addiu $v0, $zero, 0x44

/* 083408 800E9F58 0803A81D */  j     .L800EA074
/* 08340C 800E9F5C 2402005F */   addiu $v0, $zero, 0x5f

/* 083410 800E9F60 0803A81D */  j     .L800EA074
/* 083414 800E9F64 24020060 */   addiu $v0, $zero, 0x60

/* 083418 800E9F68 0803A81D */  j     .L800EA074
/* 08341C 800E9F6C 2402004F */   addiu $v0, $zero, 0x4f

/* 083420 800E9F70 0803A81D */  j     .L800EA074
/* 083424 800E9F74 24020061 */   addiu $v0, $zero, 0x61

/* 083428 800E9F78 0803A81D */  j     .L800EA074
/* 08342C 800E9F7C 24020062 */   addiu $v0, $zero, 0x62

/* 083430 800E9F80 0803A81D */  j     .L800EA074
/* 083434 800E9F84 24020063 */   addiu $v0, $zero, 0x63

/* 083438 800E9F88 0803A81D */  j     .L800EA074
/* 08343C 800E9F8C 24020045 */   addiu $v0, $zero, 0x45

/* 083440 800E9F90 0803A81D */  j     .L800EA074
/* 083444 800E9F94 2402003B */   addiu $v0, $zero, 0x3b

/* 083448 800E9F98 0803A81D */  j     .L800EA074
/* 08344C 800E9F9C 2402006E */   addiu $v0, $zero, 0x6e

/* 083450 800E9FA0 0803A81D */  j     .L800EA074
/* 083454 800E9FA4 24020064 */   addiu $v0, $zero, 0x64

/* 083458 800E9FA8 0803A81D */  j     .L800EA074
/* 08345C 800E9FAC 24020065 */   addiu $v0, $zero, 0x65

/* 083460 800E9FB0 0803A81D */  j     .L800EA074
/* 083464 800E9FB4 24020046 */   addiu $v0, $zero, 0x46

/* 083468 800E9FB8 0803A81D */  j     .L800EA074
/* 08346C 800E9FBC 24020047 */   addiu $v0, $zero, 0x47

/* 083470 800E9FC0 0803A81D */  j     .L800EA074
/* 083474 800E9FC4 2402003E */   addiu $v0, $zero, 0x3e

/* 083478 800E9FC8 0803A81D */  j     .L800EA074
/* 08347C 800E9FCC 24020048 */   addiu $v0, $zero, 0x48

/* 083480 800E9FD0 0803A81D */  j     .L800EA074
/* 083484 800E9FD4 24020066 */   addiu $v0, $zero, 0x66

/* 083488 800E9FD8 0803A81D */  j     .L800EA074
/* 08348C 800E9FDC 24020049 */   addiu $v0, $zero, 0x49

/* 083490 800E9FE0 0803A81D */  j     .L800EA074
/* 083494 800E9FE4 24020067 */   addiu $v0, $zero, 0x67

/* 083498 800E9FE8 0803A81D */  j     .L800EA074
/* 08349C 800E9FEC 2402006D */   addiu $v0, $zero, 0x6d

/* 0834A0 800E9FF0 0803A81D */  j     .L800EA074
/* 0834A4 800E9FF4 2402006A */   addiu $v0, $zero, 0x6a

/* 0834A8 800E9FF8 0803A81D */  j     .L800EA074
/* 0834AC 800E9FFC 2402006C */   addiu $v0, $zero, 0x6c

/* 0834B0 800EA000 0803A81D */  j     .L800EA074
/* 0834B4 800EA004 24020050 */   addiu $v0, $zero, 0x50

/* 0834B8 800EA008 0803A81D */  j     .L800EA074
/* 0834BC 800EA00C 24020038 */   addiu $v0, $zero, 0x38

/* 0834C0 800EA010 0803A81D */  j     .L800EA074
/* 0834C4 800EA014 24020068 */   addiu $v0, $zero, 0x68

/* 0834C8 800EA018 0803A81D */  j     .L800EA074
/* 0834CC 800EA01C 24020069 */   addiu $v0, $zero, 0x69

/* 0834D0 800EA020 0803A81D */  j     .L800EA074
/* 0834D4 800EA024 2402006B */   addiu $v0, $zero, 0x6b

/* 0834D8 800EA028 0803A81D */  j     .L800EA074
/* 0834DC 800EA02C 2402006F */   addiu $v0, $zero, 0x6f

/* 0834E0 800EA030 0803A81D */  j     .L800EA074
/* 0834E4 800EA034 24020070 */   addiu $v0, $zero, 0x70

/* 0834E8 800EA038 0803A81D */  j     .L800EA074
/* 0834EC 800EA03C 24020071 */   addiu $v0, $zero, 0x71

/* 0834F0 800EA040 0803A81D */  j     .L800EA074
/* 0834F4 800EA044 24020072 */   addiu $v0, $zero, 0x72

/* 0834F8 800EA048 0803A81D */  j     .L800EA074
/* 0834FC 800EA04C 24020073 */   addiu $v0, $zero, 0x73

/* 083500 800EA050 0803A81D */  j     .L800EA074
/* 083504 800EA054 24020033 */   addiu $v0, $zero, 0x33

/* 083508 800EA058 0803A81D */  j     .L800EA074
/* 08350C 800EA05C 24020074 */   addiu $v0, $zero, 0x74

/* 083510 800EA060 0803A81D */  j     .L800EA074
/* 083514 800EA064 24020075 */   addiu $v0, $zero, 0x75

/* 083518 800EA068 0803A81D */  j     .L800EA074
/* 08351C 800EA06C 24020076 */   addiu $v0, $zero, 0x76

/* 083520 800EA070 2402004A */  addiu $v0, $zero, 0x4a
.L800EA074:
/* 083524 800EA074 50620001 */  beql  $v1, $v0, .L800EA07C
/* 083528 800EA078 24A50001 */   addiu $a1, $a1, 1
.L800EA07C:
/* 08352C 800EA07C 24E70001 */  addiu $a3, $a3, 1
.L800EA080:
/* 083530 800EA080 28E20040 */  slti  $v0, $a3, 0x40
/* 083534 800EA084 1440FF4C */  bnez  $v0, .L800E9DB8
/* 083538 800EA088 00071040 */   sll   $v0, $a3, 1
/* 08353C 800EA08C 04A10007 */  bgez  $a1, .L800EA0AC
/* 083540 800EA090 00A0102D */   daddu $v0, $a1, $zero
/* 083544 800EA094 0C00A67F */  jal   rand_int
/* 083548 800EA098 2484FFFF */   addiu $a0, $a0, -1
/* 08354C 800EA09C 00021080 */  sll   $v0, $v0, 2
/* 083550 800EA0A0 03A21021 */  addu  $v0, $sp, $v0
/* 083554 800EA0A4 8C450010 */  lw    $a1, 0x10($v0)
/* 083558 800EA0A8 00A0102D */  daddu $v0, $a1, $zero
.L800EA0AC:
/* 08355C 800EA0AC 8FBF0028 */  lw    $ra, 0x28($sp)
/* 083560 800EA0B0 03E00008 */  jr    $ra
/* 083564 800EA0B4 27BD0030 */   addiu $sp, $sp, 0x30

