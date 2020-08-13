.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_80243E60
/* 1371A0 80243E60 AFA20014 */  sw    $v0, 0x14($sp)
/* 1371A4 80243E64 AFA00018 */  sw    $zero, 0x18($sp)
/* 1371A8 80243E68 0C0497DA */  jal   get_string_properties
/* 1371AC 80243E6C AFB4001C */   sw    $s4, 0x1c($sp)
/* 1371B0 80243E70 8FB000C0 */  lw    $s0, 0xc0($sp)
/* 1371B4 80243E74 8FAF012C */  lw    $t7, 0x12c($sp)
/* 1371B8 80243E78 8E240000 */  lw    $a0, ($s1)
/* 1371BC 80243E7C 01F08023 */  subu  $s0, $t7, $s0
/* 1371C0 80243E80 0C093BA0 */  jal   func_8024EE80
/* 1371C4 80243E84 02908007 */   srav  $s0, $s0, $s4
/* 1371C8 80243E88 0040202D */  daddu $a0, $v0, $zero
/* 1371CC 80243E8C 240700FF */  addiu $a3, $zero, 0xff
/* 1371D0 80243E90 2416000A */  addiu $s6, $zero, 0xa
/* 1371D4 80243E94 001230C0 */  sll   $a2, $s2, 3
/* 1371D8 80243E98 00D23021 */  addu  $a2, $a2, $s2
/* 1371DC 80243E9C 00063080 */  sll   $a2, $a2, 2
/* 1371E0 80243EA0 00D23023 */  subu  $a2, $a2, $s2
/* 1371E4 80243EA4 00063080 */  sll   $a2, $a2, 2
/* 1371E8 80243EA8 8FAE0124 */  lw    $t6, 0x124($sp)
/* 1371EC 80243EAC 24C6000D */  addiu $a2, $a2, 0xd
/* 1371F0 80243EB0 AFB60010 */  sw    $s6, 0x10($sp)
/* 1371F4 80243EB4 AFB40014 */  sw    $s4, 0x14($sp)
/* 1371F8 80243EB8 8E620000 */  lw    $v0, ($s3)
/* 1371FC 80243EBC 8FAF0128 */  lw    $t7, 0x128($sp)
/* 137200 80243EC0 01D02821 */  addu  $a1, $t6, $s0
/* 137204 80243EC4 01E63021 */  addu  $a2, $t7, $a2
/* 137208 80243EC8 0C04993B */  jal   draw_string
/* 13720C 80243ECC 00C23023 */   subu  $a2, $a2, $v0
/* 137210 80243ED0 8EA30000 */  lw    $v1, ($s5)
/* 137214 80243ED4 8FAE012C */  lw    $t6, 0x12c($sp)
/* 137218 80243ED8 8FAF0124 */  lw    $t7, 0x124($sp)
/* 13721C 80243EDC 00031880 */  sll   $v1, $v1, 2
/* 137220 80243EE0 000E17C2 */  srl   $v0, $t6, 0x1f
/* 137224 80243EE4 01C21021 */  addu  $v0, $t6, $v0
/* 137228 80243EE8 02821007 */  srav  $v0, $v0, $s4
/* 13722C 80243EEC 01E28821 */  addu  $s1, $t7, $v0
/* 137230 80243EF0 2625FFFE */  addiu $a1, $s1, -2
/* 137234 80243EF4 3C028025 */  lui   $v0, 0x8025
/* 137238 80243EF8 00431021 */  addu  $v0, $v0, $v1
/* 13723C 80243EFC 8C42F090 */  lw    $v0, -0xf70($v0)
/* 137240 80243F00 8FAE0128 */  lw    $t6, 0x128($sp)
/* 137244 80243F04 00021080 */  sll   $v0, $v0, 2
/* 137248 80243F08 3C048027 */  lui   $a0, 0x8027
/* 13724C 80243F0C 00822021 */  addu  $a0, $a0, $v0
/* 137250 80243F10 8C8400E8 */  lw    $a0, 0xe8($a0)
/* 137254 80243F14 0C051261 */  jal   set_icon_render_pos
/* 137258 80243F18 25C60034 */   addiu $a2, $t6, 0x34
/* 13725C 80243F1C 8EA20000 */  lw    $v0, ($s5)
/* 137260 80243F20 00021080 */  sll   $v0, $v0, 2
/* 137264 80243F24 3C018025 */  lui   $at, 0x8025
/* 137268 80243F28 00220821 */  addu  $at, $at, $v0
/* 13726C 80243F2C 8C22F090 */  lw    $v0, -0xf70($at)
/* 137270 80243F30 00021080 */  sll   $v0, $v0, 2
/* 137274 80243F34 3C048027 */  lui   $a0, 0x8027
/* 137278 80243F38 00822021 */  addu  $a0, $a0, $v0
/* 13727C 80243F3C 8C8400E8 */  lw    $a0, 0xe8($a0)
/* 137280 80243F40 0C051280 */  jal   set_icon_flags
/* 137284 80243F44 34058000 */   ori   $a1, $zero, 0x8000
/* 137288 80243F48 8EA20000 */  lw    $v0, ($s5)
/* 13728C 80243F4C 00021080 */  sll   $v0, $v0, 2
/* 137290 80243F50 3C018025 */  lui   $at, 0x8025
/* 137294 80243F54 00220821 */  addu  $at, $at, $v0
/* 137298 80243F58 8C22F090 */  lw    $v0, -0xf70($at)
/* 13729C 80243F5C 3C053F00 */  lui   $a1, 0x3f00
/* 1372A0 80243F60 00021080 */  sll   $v0, $v0, 2
/* 1372A4 80243F64 3C048027 */  lui   $a0, 0x8027
/* 1372A8 80243F68 00822021 */  addu  $a0, $a0, $v0
/* 1372AC 80243F6C 8C8400E8 */  lw    $a0, 0xe8($a0)
/* 1372B0 80243F70 0C051308 */  jal   func_80144C20
/* 1372B4 80243F74 00000000 */   nop   
/* 1372B8 80243F78 8EA20000 */  lw    $v0, ($s5)
/* 1372BC 80243F7C 00021080 */  sll   $v0, $v0, 2
/* 1372C0 80243F80 3C018025 */  lui   $at, 0x8025
/* 1372C4 80243F84 00220821 */  addu  $at, $at, $v0
/* 1372C8 80243F88 8C22F090 */  lw    $v0, -0xf70($at)
/* 1372CC 80243F8C 00021080 */  sll   $v0, $v0, 2
/* 1372D0 80243F90 3C048027 */  lui   $a0, 0x8027
/* 1372D4 80243F94 00822021 */  addu  $a0, $a0, $v0
/* 1372D8 80243F98 8C8400E8 */  lw    $a0, 0xe8($a0)
/* 1372DC 80243F9C 0C0511F8 */  jal   func_801447E0
/* 1372E0 80243FA0 00000000 */   nop   
/* 1372E4 80243FA4 8EA20000 */  lw    $v0, ($s5)
/* 1372E8 80243FA8 3C108027 */  lui   $s0, 0x8027
/* 1372EC 80243FAC 261000E8 */  addiu $s0, $s0, 0xe8
/* 1372F0 80243FB0 00021080 */  sll   $v0, $v0, 2
/* 1372F4 80243FB4 3C038025 */  lui   $v1, 0x8025
/* 1372F8 80243FB8 00621821 */  addu  $v1, $v1, $v0
/* 1372FC 80243FBC 8C63F090 */  lw    $v1, -0xf70($v1)
/* 137300 80243FC0 24020006 */  addiu $v0, $zero, 6
/* 137304 80243FC4 14620008 */  bne   $v1, $v0, .L80243FE8
/* 137308 80243FC8 02342821 */   addu  $a1, $s1, $s4
/* 13730C 80243FCC 8FAF0128 */  lw    $t7, 0x128($sp)
/* 137310 80243FD0 8E04001C */  lw    $a0, 0x1c($s0)
/* 137314 80243FD4 0C051261 */  jal   set_icon_render_pos
/* 137318 80243FD8 25E60032 */   addiu $a2, $t7, 0x32
/* 13731C 80243FDC 8E04001C */  lw    $a0, 0x1c($s0)
/* 137320 80243FE0 0C0511F8 */  jal   func_801447E0
/* 137324 80243FE4 00000000 */   nop   
.L80243FE8:
/* 137328 80243FE8 8EA20000 */  lw    $v0, ($s5)
/* 13732C 80243FEC 00021080 */  sll   $v0, $v0, 2
/* 137330 80243FF0 3C048025 */  lui   $a0, 0x8025
/* 137334 80243FF4 00822021 */  addu  $a0, $a0, $v0
/* 137338 80243FF8 0C093BA0 */  jal   func_8024EE80
/* 13733C 80243FFC 8C84F058 */   lw    $a0, -0xfa8($a0)
/* 137340 80244000 0040202D */  daddu $a0, $v0, $zero
/* 137344 80244004 2625000A */  addiu $a1, $s1, 0xa
/* 137348 80244008 8FAE0128 */  lw    $t6, 0x128($sp)
/* 13734C 8024400C 240700FF */  addiu $a3, $zero, 0xff
/* 137350 80244010 AFB60010 */  sw    $s6, 0x10($sp)
/* 137354 80244014 AFA00014 */  sw    $zero, 0x14($sp)
/* 137358 80244018 0C04993B */  jal   draw_string
/* 13735C 8024401C 25C6002C */   addiu $a2, $t6, 0x2c
.L80244020:
/* 137360 80244020 8FBF00FC */  lw    $ra, 0xfc($sp)
/* 137364 80244024 8FBE00F8 */  lw    $fp, 0xf8($sp)
/* 137368 80244028 8FB700F4 */  lw    $s7, 0xf4($sp)
/* 13736C 8024402C 8FB600F0 */  lw    $s6, 0xf0($sp)
/* 137370 80244030 8FB500EC */  lw    $s5, 0xec($sp)
/* 137374 80244034 8FB400E8 */  lw    $s4, 0xe8($sp)
/* 137378 80244038 8FB300E4 */  lw    $s3, 0xe4($sp)
/* 13737C 8024403C 8FB200E0 */  lw    $s2, 0xe0($sp)
/* 137380 80244040 8FB100DC */  lw    $s1, 0xdc($sp)
/* 137384 80244044 8FB000D8 */  lw    $s0, 0xd8($sp)
/* 137388 80244048 D7BA0118 */  ldc1  $f26, 0x118($sp)
/* 13738C 8024404C D7B80110 */  ldc1  $f24, 0x110($sp)
/* 137390 80244050 D7B60108 */  ldc1  $f22, 0x108($sp)
/* 137394 80244054 D7B40100 */  ldc1  $f20, 0x100($sp)
/* 137398 80244058 03E00008 */  jr    $ra
/* 13739C 8024405C 27BD0120 */   addiu $sp, $sp, 0x120

