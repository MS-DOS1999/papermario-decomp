.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel test_ray_triangle_general
/* 037284 8005BE84 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 037288 8005BE88 F7BE0038 */  sdc1  $f30, 0x38($sp)
/* 03728C 8005BE8C F7BC0030 */  sdc1  $f28, 0x30($sp)
/* 037290 8005BE90 F7BA0028 */  sdc1  $f26, 0x28($sp)
/* 037294 8005BE94 F7B80020 */  sdc1  $f24, 0x20($sp)
/* 037298 8005BE98 F7B60018 */  sdc1  $f22, 0x18($sp)
/* 03729C 8005BE9C F7B40010 */  sdc1  $f20, 0x10($sp)
/* 0372A0 8005BEA0 C4800030 */  lwc1  $f0, 0x30($a0)
/* 0372A4 8005BEA4 44801000 */  mtc1  $zero, $f2
/* 0372A8 8005BEA8 00000000 */  nop   
/* 0372AC 8005BEAC 46020032 */  c.eq.s $f0, $f2
/* 0372B0 8005BEB0 00000000 */  nop   
/* 0372B4 8005BEB4 4500000B */  bc1f  .L8005BEE4
/* 0372B8 8005BEB8 00000000 */   nop   
/* 0372BC 8005BEBC C4800034 */  lwc1  $f0, 0x34($a0)
/* 0372C0 8005BEC0 46020032 */  c.eq.s $f0, $f2
/* 0372C4 8005BEC4 00000000 */  nop   
/* 0372C8 8005BEC8 45000006 */  bc1f  .L8005BEE4
/* 0372CC 8005BECC 00000000 */   nop   
/* 0372D0 8005BED0 C4800038 */  lwc1  $f0, 0x38($a0)
/* 0372D4 8005BED4 46020032 */  c.eq.s $f0, $f2
/* 0372D8 8005BED8 00000000 */  nop   
/* 0372DC 8005BEDC 45010167 */  bc1t  .L8005C47C
/* 0372E0 8005BEE0 0000102D */   daddu $v0, $zero, $zero
.L8005BEE4:
/* 0372E4 8005BEE4 8C820000 */  lw    $v0, ($a0)
/* 0372E8 8005BEE8 3C01800A */  lui   $at, 0x800a
/* 0372EC 8005BEEC C43A4230 */  lwc1  $f26, 0x4230($at)
/* 0372F0 8005BEF0 C4400000 */  lwc1  $f0, ($v0)
/* 0372F4 8005BEF4 4600D001 */  sub.s $f0, $f26, $f0
/* 0372F8 8005BEF8 E7A00008 */  swc1  $f0, 8($sp)
/* 0372FC 8005BEFC C48A0030 */  lwc1  $f10, 0x30($a0)
/* 037300 8005BF00 46005082 */  mul.s $f2, $f10, $f0
/* 037304 8005BF04 00000000 */  nop   
/* 037308 8005BF08 3C01800A */  lui   $at, 0x800a
/* 03730C 8005BF0C C43C4234 */  lwc1  $f28, 0x4234($at)
/* 037310 8005BF10 C4400004 */  lwc1  $f0, 4($v0)
/* 037314 8005BF14 4600E601 */  sub.s $f24, $f28, $f0
/* 037318 8005BF18 C4880034 */  lwc1  $f8, 0x34($a0)
/* 03731C 8005BF1C 3C01800A */  lui   $at, 0x800a
/* 037320 8005BF20 C4324238 */  lwc1  $f18, 0x4238($at)
/* 037324 8005BF24 46184102 */  mul.s $f4, $f8, $f24
/* 037328 8005BF28 00000000 */  nop   
/* 03732C 8005BF2C E7B20000 */  swc1  $f18, ($sp)
/* 037330 8005BF30 C4400008 */  lwc1  $f0, 8($v0)
/* 037334 8005BF34 46009581 */  sub.s $f22, $f18, $f0
/* 037338 8005BF38 C4860038 */  lwc1  $f6, 0x38($a0)
/* 03733C 8005BF3C 46163002 */  mul.s $f0, $f6, $f22
/* 037340 8005BF40 00000000 */  nop   
/* 037344 8005BF44 8C830004 */  lw    $v1, 4($a0)
/* 037348 8005BF48 46041080 */  add.s $f2, $f2, $f4
/* 03734C 8005BF4C 8C850008 */  lw    $a1, 8($a0)
/* 037350 8005BF50 8482003C */  lh    $v0, 0x3c($a0)
/* 037354 8005BF54 1040007E */  beqz  $v0, .L8005C150
/* 037358 8005BF58 46001500 */   add.s $f20, $f2, $f0
/* 03735C 8005BF5C 4480F000 */  mtc1  $zero, $f30
/* 037360 8005BF60 00000000 */  nop   
/* 037364 8005BF64 461EA03C */  c.lt.s $f20, $f30
/* 037368 8005BF68 00000000 */  nop   
/* 03736C 8005BF6C 45030143 */  bc1tl .L8005C47C
/* 037370 8005BF70 0000102D */   daddu $v0, $zero, $zero
/* 037374 8005BF74 3C01800A */  lui   $at, 0x800a
/* 037378 8005BF78 C430423C */  lwc1  $f16, 0x423c($at)
/* 03737C 8005BF7C 46105002 */  mul.s $f0, $f10, $f16
/* 037380 8005BF80 00000000 */  nop   
/* 037384 8005BF84 3C01800A */  lui   $at, 0x800a
/* 037388 8005BF88 C42E4240 */  lwc1  $f14, 0x4240($at)
/* 03738C 8005BF8C 460E4102 */  mul.s $f4, $f8, $f14
/* 037390 8005BF90 00000000 */  nop   
/* 037394 8005BF94 3C01800A */  lui   $at, 0x800a
/* 037398 8005BF98 C42C4244 */  lwc1  $f12, 0x4244($at)
/* 03739C 8005BF9C 460C3082 */  mul.s $f2, $f6, $f12
/* 0373A0 8005BFA0 00000000 */  nop   
/* 0373A4 8005BFA4 46040000 */  add.s $f0, $f0, $f4
/* 0373A8 8005BFA8 46020000 */  add.s $f0, $f0, $f2
/* 0373AC 8005BFAC 4600F03E */  c.le.s $f30, $f0
/* 0373B0 8005BFB0 00000000 */  nop   
/* 0373B4 8005BFB4 45010131 */  bc1t  .L8005C47C
/* 0373B8 8005BFB8 0000102D */   daddu $v0, $zero, $zero
/* 0373BC 8005BFBC C4880014 */  lwc1  $f8, 0x14($a0)
/* 0373C0 8005BFC0 460E4102 */  mul.s $f4, $f8, $f14
/* 0373C4 8005BFC4 00000000 */  nop   
/* 0373C8 8005BFC8 C4820010 */  lwc1  $f2, 0x10($a0)
/* 0373CC 8005BFCC 460C1002 */  mul.s $f0, $f2, $f12
/* 0373D0 8005BFD0 00000000 */  nop   
/* 0373D4 8005BFD4 46104202 */  mul.s $f8, $f8, $f16
/* 0373D8 8005BFD8 00000000 */  nop   
/* 0373DC 8005BFDC 46101082 */  mul.s $f2, $f2, $f16
/* 0373E0 8005BFE0 00000000 */  nop   
/* 0373E4 8005BFE4 46002101 */  sub.s $f4, $f4, $f0
/* 0373E8 8005BFE8 C486000C */  lwc1  $f6, 0xc($a0)
/* 0373EC 8005BFEC 460C3002 */  mul.s $f0, $f6, $f12
/* 0373F0 8005BFF0 00000000 */  nop   
/* 0373F4 8005BFF4 460E3182 */  mul.s $f6, $f6, $f14
/* 0373F8 8005BFF8 00000000 */  nop   
/* 0373FC 8005BFFC C7B20008 */  lwc1  $f18, 8($sp)
/* 037400 8005C000 46049102 */  mul.s $f4, $f18, $f4
/* 037404 8005C004 00000000 */  nop   
/* 037408 8005C008 46080001 */  sub.s $f0, $f0, $f8
/* 03740C 8005C00C 4600C002 */  mul.s $f0, $f24, $f0
/* 037410 8005C010 00000000 */  nop   
/* 037414 8005C014 46061081 */  sub.s $f2, $f2, $f6
/* 037418 8005C018 4602B082 */  mul.s $f2, $f22, $f2
/* 03741C 8005C01C 00000000 */  nop   
/* 037420 8005C020 46002100 */  add.s $f4, $f4, $f0
/* 037424 8005C024 46022100 */  add.s $f4, $f4, $f2
/* 037428 8005C028 461E203C */  c.lt.s $f4, $f30
/* 03742C 8005C02C 00000000 */  nop   
/* 037430 8005C030 45010112 */  bc1t  .L8005C47C
/* 037434 8005C034 00000000 */   nop   
/* 037438 8005C038 C48A0020 */  lwc1  $f10, 0x20($a0)
/* 03743C 8005C03C 460E5002 */  mul.s $f0, $f10, $f14
/* 037440 8005C040 00000000 */  nop   
/* 037444 8005C044 C488001C */  lwc1  $f8, 0x1c($a0)
/* 037448 8005C048 460C4102 */  mul.s $f4, $f8, $f12
/* 03744C 8005C04C 00000000 */  nop   
/* 037450 8005C050 46105282 */  mul.s $f10, $f10, $f16
/* 037454 8005C054 00000000 */  nop   
/* 037458 8005C058 46104202 */  mul.s $f8, $f8, $f16
/* 03745C 8005C05C 00000000 */  nop   
/* 037460 8005C060 C4620000 */  lwc1  $f2, ($v1)
/* 037464 8005C064 4602D081 */  sub.s $f2, $f26, $f2
/* 037468 8005C068 46040001 */  sub.s $f0, $f0, $f4
/* 03746C 8005C06C 46001082 */  mul.s $f2, $f2, $f0
/* 037470 8005C070 00000000 */  nop   
/* 037474 8005C074 C4860018 */  lwc1  $f6, 0x18($a0)
/* 037478 8005C078 460C3002 */  mul.s $f0, $f6, $f12
/* 03747C 8005C07C 00000000 */  nop   
/* 037480 8005C080 460E3182 */  mul.s $f6, $f6, $f14
/* 037484 8005C084 00000000 */  nop   
/* 037488 8005C088 C4640004 */  lwc1  $f4, 4($v1)
/* 03748C 8005C08C 4604E101 */  sub.s $f4, $f28, $f4
/* 037490 8005C090 460A0001 */  sub.s $f0, $f0, $f10
/* 037494 8005C094 46002102 */  mul.s $f4, $f4, $f0
/* 037498 8005C098 00000000 */  nop   
/* 03749C 8005C09C C7B20000 */  lwc1  $f18, ($sp)
/* 0374A0 8005C0A0 46064201 */  sub.s $f8, $f8, $f6
/* 0374A4 8005C0A4 C4600008 */  lwc1  $f0, 8($v1)
/* 0374A8 8005C0A8 46009001 */  sub.s $f0, $f18, $f0
/* 0374AC 8005C0AC 46080002 */  mul.s $f0, $f0, $f8
/* 0374B0 8005C0B0 00000000 */  nop   
/* 0374B4 8005C0B4 46041080 */  add.s $f2, $f2, $f4
/* 0374B8 8005C0B8 46001080 */  add.s $f2, $f2, $f0
/* 0374BC 8005C0BC 461E103C */  c.lt.s $f2, $f30
/* 0374C0 8005C0C0 00000000 */  nop   
/* 0374C4 8005C0C4 450100ED */  bc1t  .L8005C47C
/* 0374C8 8005C0C8 00000000 */   nop   
/* 0374CC 8005C0CC C48A002C */  lwc1  $f10, 0x2c($a0)
/* 0374D0 8005C0D0 460E5002 */  mul.s $f0, $f10, $f14
/* 0374D4 8005C0D4 00000000 */  nop   
/* 0374D8 8005C0D8 C4880028 */  lwc1  $f8, 0x28($a0)
/* 0374DC 8005C0DC 460C4102 */  mul.s $f4, $f8, $f12
/* 0374E0 8005C0E0 00000000 */  nop   
/* 0374E4 8005C0E4 46105282 */  mul.s $f10, $f10, $f16
/* 0374E8 8005C0E8 00000000 */  nop   
/* 0374EC 8005C0EC 46104202 */  mul.s $f8, $f8, $f16
/* 0374F0 8005C0F0 00000000 */  nop   
/* 0374F4 8005C0F4 C4A20000 */  lwc1  $f2, ($a1)
/* 0374F8 8005C0F8 4602D081 */  sub.s $f2, $f26, $f2
/* 0374FC 8005C0FC 46040001 */  sub.s $f0, $f0, $f4
/* 037500 8005C100 46001082 */  mul.s $f2, $f2, $f0
/* 037504 8005C104 00000000 */  nop   
/* 037508 8005C108 C4860024 */  lwc1  $f6, 0x24($a0)
/* 03750C 8005C10C 460C3002 */  mul.s $f0, $f6, $f12
/* 037510 8005C110 00000000 */  nop   
/* 037514 8005C114 460E3182 */  mul.s $f6, $f6, $f14
/* 037518 8005C118 00000000 */  nop   
/* 03751C 8005C11C C4A40004 */  lwc1  $f4, 4($a1)
/* 037520 8005C120 4604E101 */  sub.s $f4, $f28, $f4
/* 037524 8005C124 460A0001 */  sub.s $f0, $f0, $f10
/* 037528 8005C128 46002102 */  mul.s $f4, $f4, $f0
/* 03752C 8005C12C 00000000 */  nop   
/* 037530 8005C130 46064201 */  sub.s $f8, $f8, $f6
/* 037534 8005C134 C4A00008 */  lwc1  $f0, 8($a1)
/* 037538 8005C138 46009001 */  sub.s $f0, $f18, $f0
/* 03753C 8005C13C 46080002 */  mul.s $f0, $f0, $f8
/* 037540 8005C140 00000000 */  nop   
/* 037544 8005C144 46041080 */  add.s $f2, $f2, $f4
/* 037548 8005C148 080170D4 */  j     .L8005C350
/* 03754C 8005C14C 46001080 */   add.s $f2, $f2, $f0

.L8005C150:
/* 037550 8005C150 3C01800A */  lui   $at, 0x800a
/* 037554 8005C154 C430423C */  lwc1  $f16, 0x423c($at)
/* 037558 8005C158 46105002 */  mul.s $f0, $f10, $f16
/* 03755C 8005C15C 00000000 */  nop   
/* 037560 8005C160 3C01800A */  lui   $at, 0x800a
/* 037564 8005C164 C42E4240 */  lwc1  $f14, 0x4240($at)
/* 037568 8005C168 460E4102 */  mul.s $f4, $f8, $f14
/* 03756C 8005C16C 00000000 */  nop   
/* 037570 8005C170 3C01800A */  lui   $at, 0x800a
/* 037574 8005C174 C42C4244 */  lwc1  $f12, 0x4244($at)
/* 037578 8005C178 460C3082 */  mul.s $f2, $f6, $f12
/* 03757C 8005C17C 00000000 */  nop   
/* 037580 8005C180 46040000 */  add.s $f0, $f0, $f4
/* 037584 8005C184 46020000 */  add.s $f0, $f0, $f2
/* 037588 8005C188 46140002 */  mul.s $f0, $f0, $f20
/* 03758C 8005C18C 00000000 */  nop   
/* 037590 8005C190 4480F000 */  mtc1  $zero, $f30
/* 037594 8005C194 00000000 */  nop   
/* 037598 8005C198 4600F03E */  c.le.s $f30, $f0
/* 03759C 8005C19C 00000000 */  nop   
/* 0375A0 8005C1A0 450100B6 */  bc1t  .L8005C47C
/* 0375A4 8005C1A4 0000102D */   daddu $v0, $zero, $zero
/* 0375A8 8005C1A8 C4880014 */  lwc1  $f8, 0x14($a0)
/* 0375AC 8005C1AC 460E4002 */  mul.s $f0, $f8, $f14
/* 0375B0 8005C1B0 00000000 */  nop   
/* 0375B4 8005C1B4 C4840010 */  lwc1  $f4, 0x10($a0)
/* 0375B8 8005C1B8 460C2082 */  mul.s $f2, $f4, $f12
/* 0375BC 8005C1BC 00000000 */  nop   
/* 0375C0 8005C1C0 46104202 */  mul.s $f8, $f8, $f16
/* 0375C4 8005C1C4 00000000 */  nop   
/* 0375C8 8005C1C8 46102102 */  mul.s $f4, $f4, $f16
/* 0375CC 8005C1CC 00000000 */  nop   
/* 0375D0 8005C1D0 46020001 */  sub.s $f0, $f0, $f2
/* 0375D4 8005C1D4 C486000C */  lwc1  $f6, 0xc($a0)
/* 0375D8 8005C1D8 460C3082 */  mul.s $f2, $f6, $f12
/* 0375DC 8005C1DC 00000000 */  nop   
/* 0375E0 8005C1E0 460E3182 */  mul.s $f6, $f6, $f14
/* 0375E4 8005C1E4 00000000 */  nop   
/* 0375E8 8005C1E8 C7B20008 */  lwc1  $f18, 8($sp)
/* 0375EC 8005C1EC 46009002 */  mul.s $f0, $f18, $f0
/* 0375F0 8005C1F0 00000000 */  nop   
/* 0375F4 8005C1F4 46081081 */  sub.s $f2, $f2, $f8
/* 0375F8 8005C1F8 4602C082 */  mul.s $f2, $f24, $f2
/* 0375FC 8005C1FC 00000000 */  nop   
/* 037600 8005C200 46062101 */  sub.s $f4, $f4, $f6
/* 037604 8005C204 4604B102 */  mul.s $f4, $f22, $f4
/* 037608 8005C208 00000000 */  nop   
/* 03760C 8005C20C 46020000 */  add.s $f0, $f0, $f2
/* 037610 8005C210 46040000 */  add.s $f0, $f0, $f4
/* 037614 8005C214 46140002 */  mul.s $f0, $f0, $f20
/* 037618 8005C218 00000000 */  nop   
/* 03761C 8005C21C 461E003C */  c.lt.s $f0, $f30
/* 037620 8005C220 00000000 */  nop   
/* 037624 8005C224 45010095 */  bc1t  .L8005C47C
/* 037628 8005C228 00000000 */   nop   
/* 03762C 8005C22C C48A0020 */  lwc1  $f10, 0x20($a0)
/* 037630 8005C230 460E5002 */  mul.s $f0, $f10, $f14
/* 037634 8005C234 00000000 */  nop   
/* 037638 8005C238 C488001C */  lwc1  $f8, 0x1c($a0)
/* 03763C 8005C23C 460C4102 */  mul.s $f4, $f8, $f12
/* 037640 8005C240 00000000 */  nop   
/* 037644 8005C244 46105282 */  mul.s $f10, $f10, $f16
/* 037648 8005C248 00000000 */  nop   
/* 03764C 8005C24C 46104202 */  mul.s $f8, $f8, $f16
/* 037650 8005C250 00000000 */  nop   
/* 037654 8005C254 C4620000 */  lwc1  $f2, ($v1)
/* 037658 8005C258 4602D081 */  sub.s $f2, $f26, $f2
/* 03765C 8005C25C 46040001 */  sub.s $f0, $f0, $f4
/* 037660 8005C260 46001082 */  mul.s $f2, $f2, $f0
/* 037664 8005C264 00000000 */  nop   
/* 037668 8005C268 C4860018 */  lwc1  $f6, 0x18($a0)
/* 03766C 8005C26C 460C3002 */  mul.s $f0, $f6, $f12
/* 037670 8005C270 00000000 */  nop   
/* 037674 8005C274 460E3182 */  mul.s $f6, $f6, $f14
/* 037678 8005C278 00000000 */  nop   
/* 03767C 8005C27C C4640004 */  lwc1  $f4, 4($v1)
/* 037680 8005C280 4604E101 */  sub.s $f4, $f28, $f4
/* 037684 8005C284 460A0001 */  sub.s $f0, $f0, $f10
/* 037688 8005C288 46002102 */  mul.s $f4, $f4, $f0
/* 03768C 8005C28C 00000000 */  nop   
/* 037690 8005C290 C7B20000 */  lwc1  $f18, ($sp)
/* 037694 8005C294 46064201 */  sub.s $f8, $f8, $f6
/* 037698 8005C298 C4600008 */  lwc1  $f0, 8($v1)
/* 03769C 8005C29C 46009001 */  sub.s $f0, $f18, $f0
/* 0376A0 8005C2A0 46080002 */  mul.s $f0, $f0, $f8
/* 0376A4 8005C2A4 00000000 */  nop   
/* 0376A8 8005C2A8 46041080 */  add.s $f2, $f2, $f4
/* 0376AC 8005C2AC 46001080 */  add.s $f2, $f2, $f0
/* 0376B0 8005C2B0 46141082 */  mul.s $f2, $f2, $f20
/* 0376B4 8005C2B4 00000000 */  nop   
/* 0376B8 8005C2B8 461E103C */  c.lt.s $f2, $f30
/* 0376BC 8005C2BC 00000000 */  nop   
/* 0376C0 8005C2C0 4501006E */  bc1t  .L8005C47C
/* 0376C4 8005C2C4 00000000 */   nop   
/* 0376C8 8005C2C8 C48A002C */  lwc1  $f10, 0x2c($a0)
/* 0376CC 8005C2CC 460E5002 */  mul.s $f0, $f10, $f14
/* 0376D0 8005C2D0 00000000 */  nop   
/* 0376D4 8005C2D4 C4880028 */  lwc1  $f8, 0x28($a0)
/* 0376D8 8005C2D8 460C4102 */  mul.s $f4, $f8, $f12
/* 0376DC 8005C2DC 00000000 */  nop   
/* 0376E0 8005C2E0 46105282 */  mul.s $f10, $f10, $f16
/* 0376E4 8005C2E4 00000000 */  nop   
/* 0376E8 8005C2E8 46104202 */  mul.s $f8, $f8, $f16
/* 0376EC 8005C2EC 00000000 */  nop   
/* 0376F0 8005C2F0 C4A20000 */  lwc1  $f2, ($a1)
/* 0376F4 8005C2F4 4602D081 */  sub.s $f2, $f26, $f2
/* 0376F8 8005C2F8 46040001 */  sub.s $f0, $f0, $f4
/* 0376FC 8005C2FC 46001082 */  mul.s $f2, $f2, $f0
/* 037700 8005C300 00000000 */  nop   
/* 037704 8005C304 C4860024 */  lwc1  $f6, 0x24($a0)
/* 037708 8005C308 460C3002 */  mul.s $f0, $f6, $f12
/* 03770C 8005C30C 00000000 */  nop   
/* 037710 8005C310 460E3182 */  mul.s $f6, $f6, $f14
/* 037714 8005C314 00000000 */  nop   
/* 037718 8005C318 C4A40004 */  lwc1  $f4, 4($a1)
/* 03771C 8005C31C 4604E101 */  sub.s $f4, $f28, $f4
/* 037720 8005C320 460A0001 */  sub.s $f0, $f0, $f10
/* 037724 8005C324 46002102 */  mul.s $f4, $f4, $f0
/* 037728 8005C328 00000000 */  nop   
/* 03772C 8005C32C 46064201 */  sub.s $f8, $f8, $f6
/* 037730 8005C330 C4A00008 */  lwc1  $f0, 8($a1)
/* 037734 8005C334 46009001 */  sub.s $f0, $f18, $f0
/* 037738 8005C338 46080002 */  mul.s $f0, $f0, $f8
/* 03773C 8005C33C 00000000 */  nop   
/* 037740 8005C340 46041080 */  add.s $f2, $f2, $f4
/* 037744 8005C344 46001080 */  add.s $f2, $f2, $f0
/* 037748 8005C348 46141082 */  mul.s $f2, $f2, $f20
/* 03774C 8005C34C 00000000 */  nop   
.L8005C350:
/* 037750 8005C350 461E103C */  c.lt.s $f2, $f30
/* 037754 8005C354 00000000 */  nop   
/* 037758 8005C358 45030048 */  bc1tl .L8005C47C
/* 03775C 8005C35C 0000102D */   daddu $v0, $zero, $zero
/* 037760 8005C360 C4860030 */  lwc1  $f6, 0x30($a0)
/* 037764 8005C364 3C01800A */  lui   $at, 0x800a
/* 037768 8005C368 C420423C */  lwc1  $f0, 0x423c($at)
/* 03776C 8005C36C 46003182 */  mul.s $f6, $f6, $f0
/* 037770 8005C370 00000000 */  nop   
/* 037774 8005C374 C4820034 */  lwc1  $f2, 0x34($a0)
/* 037778 8005C378 3C01800A */  lui   $at, 0x800a
/* 03777C 8005C37C C4204240 */  lwc1  $f0, 0x4240($at)
/* 037780 8005C380 46001082 */  mul.s $f2, $f2, $f0
/* 037784 8005C384 00000000 */  nop   
/* 037788 8005C388 C4840038 */  lwc1  $f4, 0x38($a0)
/* 03778C 8005C38C 3C01800A */  lui   $at, 0x800a
/* 037790 8005C390 C4204244 */  lwc1  $f0, 0x4244($at)
/* 037794 8005C394 46002102 */  mul.s $f4, $f4, $f0
/* 037798 8005C398 00000000 */  nop   
/* 03779C 8005C39C 3C01800A */  lui   $at, 0x800a
/* 0377A0 8005C3A0 C4284254 */  lwc1  $f8, 0x4254($at)
/* 0377A4 8005C3A4 46023180 */  add.s $f6, $f6, $f2
/* 0377A8 8005C3A8 44800000 */  mtc1  $zero, $f0
/* 0377AC 8005C3AC 00000000 */  nop   
/* 0377B0 8005C3B0 4608003E */  c.le.s $f0, $f8
/* 0377B4 8005C3B4 00000000 */  nop   
/* 0377B8 8005C3B8 45000007 */  bc1f  .L8005C3D8
/* 0377BC 8005C3BC 46043180 */   add.s $f6, $f6, $f4
/* 0377C0 8005C3C0 4600A007 */  neg.s $f0, $f20
/* 0377C4 8005C3C4 46060003 */  div.s $f0, $f0, $f6
/* 0377C8 8005C3C8 4600403E */  c.le.s $f8, $f0
/* 0377CC 8005C3CC 00000000 */  nop   
/* 0377D0 8005C3D0 4501002A */  bc1t  .L8005C47C
/* 0377D4 8005C3D4 0000102D */   daddu $v0, $zero, $zero
.L8005C3D8:
/* 0377D8 8005C3D8 4600A007 */  neg.s $f0, $f20
/* 0377DC 8005C3DC 3C01800A */  lui   $at, 0x800a
/* 0377E0 8005C3E0 C422423C */  lwc1  $f2, 0x423c($at)
/* 0377E4 8005C3E4 46060003 */  div.s $f0, $f0, $f6
/* 0377E8 8005C3E8 46001082 */  mul.s $f2, $f2, $f0
/* 0377EC 8005C3EC 00000000 */  nop   
/* 0377F0 8005C3F0 3C01800A */  lui   $at, 0x800a
/* 0377F4 8005C3F4 C42A4240 */  lwc1  $f10, 0x4240($at)
/* 0377F8 8005C3F8 46005282 */  mul.s $f10, $f10, $f0
/* 0377FC 8005C3FC 00000000 */  nop   
/* 037800 8005C400 3C01800A */  lui   $at, 0x800a
/* 037804 8005C404 C42C4230 */  lwc1  $f12, 0x4230($at)
/* 037808 8005C408 3C01800A */  lui   $at, 0x800a
/* 03780C 8005C40C C4284244 */  lwc1  $f8, 0x4244($at)
/* 037810 8005C410 C4840030 */  lwc1  $f4, 0x30($a0)
/* 037814 8005C414 C4860038 */  lwc1  $f6, 0x38($a0)
/* 037818 8005C418 46004202 */  mul.s $f8, $f8, $f0
/* 03781C 8005C41C 00000000 */  nop   
/* 037820 8005C420 3C01800A */  lui   $at, 0x800a
/* 037824 8005C424 E4204254 */  swc1  $f0, 0x4254($at)
/* 037828 8005C428 3C01800A */  lui   $at, 0x800a
/* 03782C 8005C42C C4204234 */  lwc1  $f0, 0x4234($at)
/* 037830 8005C430 24020001 */  addiu $v0, $zero, 1
/* 037834 8005C434 3C01800A */  lui   $at, 0x800a
/* 037838 8005C438 E4244258 */  swc1  $f4, 0x4258($at)
/* 03783C 8005C43C 46026300 */  add.s $f12, $f12, $f2
/* 037840 8005C440 C4840034 */  lwc1  $f4, 0x34($a0)
/* 037844 8005C444 3C01800A */  lui   $at, 0x800a
/* 037848 8005C448 C4224238 */  lwc1  $f2, 0x4238($at)
/* 03784C 8005C44C 460A0000 */  add.s $f0, $f0, $f10
/* 037850 8005C450 3C01800A */  lui   $at, 0x800a
/* 037854 8005C454 E4264260 */  swc1  $f6, 0x4260($at)
/* 037858 8005C458 3C01800A */  lui   $at, 0x800a
/* 03785C 8005C45C E424425C */  swc1  $f4, 0x425c($at)
/* 037860 8005C460 46081080 */  add.s $f2, $f2, $f8
/* 037864 8005C464 3C01800A */  lui   $at, 0x800a
/* 037868 8005C468 E42C4248 */  swc1  $f12, 0x4248($at)
/* 03786C 8005C46C 3C01800A */  lui   $at, 0x800a
/* 037870 8005C470 E420424C */  swc1  $f0, 0x424c($at)
/* 037874 8005C474 3C01800A */  lui   $at, 0x800a
/* 037878 8005C478 E4224250 */  swc1  $f2, 0x4250($at)
.L8005C47C:
/* 03787C 8005C47C D7BE0038 */  ldc1  $f30, 0x38($sp)
/* 037880 8005C480 D7BC0030 */  ldc1  $f28, 0x30($sp)
/* 037884 8005C484 D7BA0028 */  ldc1  $f26, 0x28($sp)
/* 037888 8005C488 D7B80020 */  ldc1  $f24, 0x20($sp)
/* 03788C 8005C48C D7B60018 */  ldc1  $f22, 0x18($sp)
/* 037890 8005C490 D7B40010 */  ldc1  $f20, 0x10($sp)
/* 037894 8005C494 03E00008 */  jr    $ra
/* 037898 8005C498 27BD0040 */   addiu $sp, $sp, 0x40

