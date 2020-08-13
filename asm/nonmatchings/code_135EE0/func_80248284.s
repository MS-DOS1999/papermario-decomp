.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_80248284
/* 13B5C4 80248284 00000000 */  nop   
/* 13B5C8 80248288 30630FFF */  andi  $v1, $v1, 0xfff
/* 13B5CC 8024828C 00641825 */  or    $v1, $v1, $a0
/* 13B5D0 80248290 00431025 */  or    $v0, $v0, $v1
/* 13B5D4 80248294 44880000 */  mtc1  $t0, $f0
/* 13B5D8 80248298 00000000 */  nop   
/* 13B5DC 8024829C 46800020 */  cvt.s.w $f0, $f0
/* 13B5E0 802482A0 46040002 */  mul.s $f0, $f0, $f4
/* 13B5E4 802482A4 00000000 */  nop   
/* 13B5E8 802482A8 ACA20000 */  sw    $v0, ($a1)
/* 13B5EC 802482AC 4600118D */  trunc.w.s $f6, $f2
/* 13B5F0 802482B0 44023000 */  mfc1  $v0, $f6
/* 13B5F4 802482B4 00000000 */  nop   
/* 13B5F8 802482B8 30420FFF */  andi  $v0, $v0, 0xfff
/* 13B5FC 802482BC 00021300 */  sll   $v0, $v0, 0xc
/* 13B600 802482C0 4600018D */  trunc.w.s $f6, $f0
/* 13B604 802482C4 44033000 */  mfc1  $v1, $f6
/* 13B608 802482C8 00000000 */  nop   
/* 13B60C 802482CC 30630FFF */  andi  $v1, $v1, 0xfff
/* 13B610 802482D0 00431025 */  or    $v0, $v0, $v1
/* 13B614 802482D4 3C038027 */  lui   $v1, 0x8027
/* 13B618 802482D8 806300D4 */  lb    $v1, 0xd4($v1)
/* 13B61C 802482DC ACA20004 */  sw    $v0, 4($a1)
/* 13B620 802482E0 24020002 */  addiu $v0, $zero, 2
/* 13B624 802482E4 1462002A */  bne   $v1, $v0, .L80248390
/* 13B628 802482E8 24020001 */   addiu $v0, $zero, 1
/* 13B62C 802482EC 3C038027 */  lui   $v1, 0x8027
/* 13B630 802482F0 8C630398 */  lw    $v1, 0x398($v1)
/* 13B634 802482F4 14620026 */  bne   $v1, $v0, .L80248390
/* 13B638 802482F8 00000000 */   nop   
/* 13B63C 802482FC 3C118027 */  lui   $s1, 0x8027
/* 13B640 80248300 26310280 */  addiu $s1, $s1, 0x280
/* 13B644 80248304 8E220000 */  lw    $v0, ($s1)
/* 13B648 80248308 1840000E */  blez  $v0, .L80248344
/* 13B64C 8024830C 24420001 */   addiu $v0, $v0, 1
/* 13B650 80248310 3C108027 */  lui   $s0, 0x8027
/* 13B654 80248314 261003A8 */  addiu $s0, $s0, 0x3a8
/* 13B658 80248318 8FAB00C4 */  lw    $t3, 0xc4($sp)
/* 13B65C 8024831C 8E040044 */  lw    $a0, 0x44($s0)
/* 13B660 80248320 8FAA00C8 */  lw    $t2, 0xc8($sp)
/* 13B664 80248324 25650116 */  addiu $a1, $t3, 0x116
/* 13B668 80248328 0C051261 */  jal   set_icon_render_pos
/* 13B66C 8024832C 2546000E */   addiu $a2, $t2, 0xe
/* 13B670 80248330 8E040044 */  lw    $a0, 0x44($s0)
/* 13B674 80248334 0C0511F8 */  jal   func_801447E0
/* 13B678 80248338 00000000 */   nop   
/* 13B67C 8024833C 8E220000 */  lw    $v0, ($s1)
/* 13B680 80248340 24420001 */  addiu $v0, $v0, 1
.L80248344:
/* 13B684 80248344 00021840 */  sll   $v1, $v0, 1
/* 13B688 80248348 00621821 */  addu  $v1, $v1, $v0
/* 13B68C 8024834C 00031880 */  sll   $v1, $v1, 2
/* 13B690 80248350 3C028027 */  lui   $v0, 0x8027
/* 13B694 80248354 00431021 */  addu  $v0, $v0, $v1
/* 13B698 80248358 90420288 */  lbu   $v0, 0x288($v0)
/* 13B69C 8024835C 1040000C */  beqz  $v0, .L80248390
/* 13B6A0 80248360 00000000 */   nop   
/* 13B6A4 80248364 3C108027 */  lui   $s0, 0x8027
/* 13B6A8 80248368 261003A8 */  addiu $s0, $s0, 0x3a8
/* 13B6AC 8024836C 8FAB00C4 */  lw    $t3, 0xc4($sp)
/* 13B6B0 80248370 8E040048 */  lw    $a0, 0x48($s0)
/* 13B6B4 80248374 8FAA00C8 */  lw    $t2, 0xc8($sp)
/* 13B6B8 80248378 25650116 */  addiu $a1, $t3, 0x116
/* 13B6BC 8024837C 0C051261 */  jal   set_icon_render_pos
/* 13B6C0 80248380 25460092 */   addiu $a2, $t2, 0x92
/* 13B6C4 80248384 8E040048 */  lw    $a0, 0x48($s0)
/* 13B6C8 80248388 0C0511F8 */  jal   func_801447E0
/* 13B6CC 8024838C 00000000 */   nop   
.L80248390:
/* 13B6D0 80248390 3C108027 */  lui   $s0, 0x8027
/* 13B6D4 80248394 261003A8 */  addiu $s0, $s0, 0x3a8
/* 13B6D8 80248398 8FAB00C4 */  lw    $t3, 0xc4($sp)
/* 13B6DC 8024839C 8E040040 */  lw    $a0, 0x40($s0)
/* 13B6E0 802483A0 8FAA00C8 */  lw    $t2, 0xc8($sp)
/* 13B6E4 802483A4 2565002B */  addiu $a1, $t3, 0x2b
/* 13B6E8 802483A8 0C051261 */  jal   set_icon_render_pos
/* 13B6EC 802483AC 25460051 */   addiu $a2, $t2, 0x51
/* 13B6F0 802483B0 8E040040 */  lw    $a0, 0x40($s0)
/* 13B6F4 802483B4 0C0511F8 */  jal   func_801447E0
