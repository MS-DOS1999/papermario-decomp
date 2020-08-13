.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8025AA80
/* 189360 8025AA80 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 189364 8025AA84 AFB20018 */  sw    $s2, 0x18($sp)
/* 189368 8025AA88 0080902D */  daddu $s2, $a0, $zero
/* 18936C 8025AA8C AFB10014 */  sw    $s1, 0x14($sp)
/* 189370 8025AA90 00A0882D */  daddu $s1, $a1, $zero
/* 189374 8025AA94 AFBF0024 */  sw    $ra, 0x24($sp)
/* 189378 8025AA98 AFB40020 */  sw    $s4, 0x20($sp)
/* 18937C 8025AA9C AFB3001C */  sw    $s3, 0x1c($sp)
/* 189380 8025AAA0 AFB00010 */  sw    $s0, 0x10($sp)
/* 189384 8025AAA4 8E3000C0 */  lw    $s0, 0xc0($s1)
/* 189388 8025AAA8 00C0982D */  daddu $s3, $a2, $zero
/* 18938C 8025AAAC 820206C1 */  lb    $v0, 0x6c1($s0)
/* 189390 8025AAB0 10400032 */  beqz  $v0, .L8025AB7C
/* 189394 8025AAB4 00E0A02D */   daddu $s4, $a3, $zero
/* 189398 8025AAB8 16400017 */  bnez  $s2, .L8025AB18
/* 18939C 8025AABC 00000000 */   nop   
/* 1893A0 8025AAC0 0C0B7830 */  jal   func_802DE0C0
/* 1893A4 8025AAC4 96240088 */   lhu   $a0, 0x88($s1)
/* 1893A8 8025AAC8 AE0206D0 */  sw    $v0, 0x6d0($s0)
/* 1893AC 8025AACC 0040202D */  daddu $a0, $v0, $zero
/* 1893B0 8025AAD0 A20006CD */  sb    $zero, 0x6cd($s0)
/* 1893B4 8025AAD4 8C830000 */  lw    $v1, ($a0)
/* 1893B8 8025AAD8 2402FFFF */  addiu $v0, $zero, -1
/* 1893BC 8025AADC 50620024 */  beql  $v1, $v0, .L8025AB70
/* 1893C0 8025AAE0 A20006C2 */   sb    $zero, 0x6c2($s0)
/* 1893C4 8025AAE4 0080182D */  daddu $v1, $a0, $zero
/* 1893C8 8025AAE8 0040202D */  daddu $a0, $v0, $zero
.L8025AAEC:
/* 1893CC 8025AAEC 920206CD */  lbu   $v0, 0x6cd($s0)
/* 1893D0 8025AAF0 24420001 */  addiu $v0, $v0, 1
/* 1893D4 8025AAF4 A20206CD */  sb    $v0, 0x6cd($s0)
/* 1893D8 8025AAF8 00021600 */  sll   $v0, $v0, 0x18
/* 1893DC 8025AAFC 00021583 */  sra   $v0, $v0, 0x16
/* 1893E0 8025AB00 00431021 */  addu  $v0, $v0, $v1
/* 1893E4 8025AB04 8C420000 */  lw    $v0, ($v0)
/* 1893E8 8025AB08 1444FFF8 */  bne   $v0, $a0, .L8025AAEC
/* 1893EC 8025AB0C 00000000 */   nop   
/* 1893F0 8025AB10 08096ADC */  j     .L8025AB70
/* 1893F4 8025AB14 A20006C2 */   sb    $zero, 0x6c2($s0)

.L8025AB18:
/* 1893F8 8025AB18 96240088 */  lhu   $a0, 0x88($s1)
/* 1893FC 8025AB1C 0C0B7A90 */  jal   func_802DEA40
/* 189400 8025AB20 00000000 */   nop   
/* 189404 8025AB24 AE0206D0 */  sw    $v0, 0x6d0($s0)
/* 189408 8025AB28 0040202D */  daddu $a0, $v0, $zero
/* 18940C 8025AB2C A20006CD */  sb    $zero, 0x6cd($s0)
/* 189410 8025AB30 8C830000 */  lw    $v1, ($a0)
/* 189414 8025AB34 2402FFFF */  addiu $v0, $zero, -1
/* 189418 8025AB38 5062000D */  beql  $v1, $v0, .L8025AB70
/* 18941C 8025AB3C A20006C2 */   sb    $zero, 0x6c2($s0)
/* 189420 8025AB40 0080182D */  daddu $v1, $a0, $zero
/* 189424 8025AB44 0040202D */  daddu $a0, $v0, $zero
.L8025AB48:
/* 189428 8025AB48 920206CD */  lbu   $v0, 0x6cd($s0)
/* 18942C 8025AB4C 24420001 */  addiu $v0, $v0, 1
/* 189430 8025AB50 A20206CD */  sb    $v0, 0x6cd($s0)
/* 189434 8025AB54 00021600 */  sll   $v0, $v0, 0x18
/* 189438 8025AB58 00021583 */  sra   $v0, $v0, 0x16
/* 18943C 8025AB5C 00431021 */  addu  $v0, $v0, $v1
/* 189440 8025AB60 8C420000 */  lw    $v0, ($v0)
/* 189444 8025AB64 1444FFF8 */  bne   $v0, $a0, .L8025AB48
/* 189448 8025AB68 00000000 */   nop   
/* 18944C 8025AB6C A20006C2 */  sb    $zero, 0x6c2($s0)
.L8025AB70:
.L8025AB70:
/* 189450 8025AB70 A60006CA */  sh    $zero, 0x6ca($s0)
/* 189454 8025AB74 A20006C2 */  sb    $zero, 0x6c2($s0)
/* 189458 8025AB78 A20006C1 */  sb    $zero, 0x6c1($s0)
.L8025AB7C:
/* 18945C 8025AB7C 820206CD */  lb    $v0, 0x6cd($s0)
/* 189460 8025AB80 18400066 */  blez  $v0, .L8025AD1C
/* 189464 8025AB84 0000402D */   daddu $t0, $zero, $zero
/* 189468 8025AB88 3C0B8000 */  lui   $t3, 0x8000
/* 18946C 8025AB8C 3C01802A */  lui   $at, 0x802a
/* 189470 8025AB90 D428D408 */  ldc1  $f8, -0x2bf8($at)
/* 189474 8025AB94 3C0141E0 */  lui   $at, 0x41e0
/* 189478 8025AB98 44811800 */  mtc1  $at, $f3
/* 18947C 8025AB9C 44801000 */  mtc1  $zero, $f2
/* 189480 8025ABA0 3C01802A */  lui   $at, 0x802a
/* 189484 8025ABA4 D426D410 */  ldc1  $f6, -0x2bf0($at)
/* 189488 8025ABA8 3C01802A */  lui   $at, 0x802a
/* 18948C 8025ABAC D424D418 */  ldc1  $f4, -0x2be8($at)
.L8025ABB0:
/* 189490 8025ABB0 8E0206D0 */  lw    $v0, 0x6d0($s0)
/* 189494 8025ABB4 00081880 */  sll   $v1, $t0, 2
/* 189498 8025ABB8 00621821 */  addu  $v1, $v1, $v0
/* 18949C 8025ABBC 00081140 */  sll   $v0, $t0, 5
/* 1894A0 8025ABC0 8C670000 */  lw    $a3, ($v1)
/* 1894A4 8025ABC4 10E0004F */  beqz  $a3, .L8025AD04
/* 1894A8 8025ABC8 02025021 */   addu  $t2, $s0, $v0
/* 1894AC 8025ABCC 0000482D */  daddu $t1, $zero, $zero
.L8025ABD0:
/* 1894B0 8025ABD0 94E30000 */  lhu   $v1, ($a3)
/* 1894B4 8025ABD4 000312C2 */  srl   $v0, $v1, 0xb
/* 1894B8 8025ABD8 44820000 */  mtc1  $v0, $f0
/* 1894BC 8025ABDC 00000000 */  nop   
/* 1894C0 8025ABE0 46800021 */  cvt.d.w $f0, $f0
/* 1894C4 8025ABE4 46280002 */  mul.d $f0, $f0, $f8
/* 1894C8 8025ABE8 00000000 */  nop   
/* 1894CC 8025ABEC 90E40001 */  lbu   $a0, 1($a3)
/* 1894D0 8025ABF0 24E70002 */  addiu $a3, $a3, 2
/* 1894D4 8025ABF4 00031182 */  srl   $v0, $v1, 6
/* 1894D8 8025ABF8 3042001F */  andi  $v0, $v0, 0x1f
/* 1894DC 8025ABFC 00031842 */  srl   $v1, $v1, 1
/* 1894E0 8025AC00 3066001F */  andi  $a2, $v1, 0x1f
/* 1894E4 8025AC04 4620103E */  c.le.d $f2, $f0
/* 1894E8 8025AC08 00000000 */  nop   
/* 1894EC 8025AC0C 45010005 */  bc1t  .L8025AC24
/* 1894F0 8025AC10 30840001 */   andi  $a0, $a0, 1
/* 1894F4 8025AC14 4620028D */  trunc.w.d $f10, $f0
/* 1894F8 8025AC18 44035000 */  mfc1  $v1, $f10
/* 1894FC 8025AC1C 08096B0F */  j     .L8025AC3C
/* 189500 8025AC20 304200FF */   andi  $v0, $v0, 0xff

.L8025AC24:
/* 189504 8025AC24 46220001 */  sub.d $f0, $f0, $f2
/* 189508 8025AC28 4620028D */  trunc.w.d $f10, $f0
/* 18950C 8025AC2C 44035000 */  mfc1  $v1, $f10
/* 189510 8025AC30 00000000 */  nop   
/* 189514 8025AC34 006B1825 */  or    $v1, $v1, $t3
/* 189518 8025AC38 304200FF */  andi  $v0, $v0, 0xff
.L8025AC3C:
/* 18951C 8025AC3C 44820000 */  mtc1  $v0, $f0
/* 189520 8025AC40 00000000 */  nop   
/* 189524 8025AC44 46800021 */  cvt.d.w $f0, $f0
/* 189528 8025AC48 46260002 */  mul.d $f0, $f0, $f6
/* 18952C 8025AC4C 00000000 */  nop   
/* 189530 8025AC50 4620103E */  c.le.d $f2, $f0
/* 189534 8025AC54 00000000 */  nop   
/* 189538 8025AC58 45030005 */  bc1tl .L8025AC70
/* 18953C 8025AC5C 46220001 */   sub.d $f0, $f0, $f2
/* 189540 8025AC60 4620028D */  trunc.w.d $f10, $f0
/* 189544 8025AC64 44055000 */  mfc1  $a1, $f10
/* 189548 8025AC68 08096B21 */  j     .L8025AC84
/* 18954C 8025AC6C 30C200FF */   andi  $v0, $a2, 0xff

.L8025AC70:
/* 189550 8025AC70 4620028D */  trunc.w.d $f10, $f0
/* 189554 8025AC74 44055000 */  mfc1  $a1, $f10
/* 189558 8025AC78 00000000 */  nop   
/* 18955C 8025AC7C 00AB2825 */  or    $a1, $a1, $t3
/* 189560 8025AC80 30C200FF */  andi  $v0, $a2, 0xff
.L8025AC84:
/* 189564 8025AC84 44820000 */  mtc1  $v0, $f0
/* 189568 8025AC88 00000000 */  nop   
/* 18956C 8025AC8C 46800021 */  cvt.d.w $f0, $f0
/* 189570 8025AC90 46240002 */  mul.d $f0, $f0, $f4
/* 189574 8025AC94 00000000 */  nop   
/* 189578 8025AC98 4620103E */  c.le.d $f2, $f0
/* 18957C 8025AC9C 00000000 */  nop   
/* 189580 8025ACA0 45010005 */  bc1t  .L8025ACB8
/* 189584 8025ACA4 00A0102D */   daddu $v0, $a1, $zero
/* 189588 8025ACA8 4620028D */  trunc.w.d $f10, $f0
/* 18958C 8025ACAC 44055000 */  mfc1  $a1, $f10
/* 189590 8025ACB0 08096B34 */  j     .L8025ACD0
/* 189594 8025ACB4 306300FF */   andi  $v1, $v1, 0xff

.L8025ACB8:
/* 189598 8025ACB8 46220001 */  sub.d $f0, $f0, $f2
/* 18959C 8025ACBC 4620028D */  trunc.w.d $f10, $f0
/* 1895A0 8025ACC0 44055000 */  mfc1  $a1, $f10
/* 1895A4 8025ACC4 00000000 */  nop   
/* 1895A8 8025ACC8 00AB2825 */  or    $a1, $a1, $t3
/* 1895AC 8025ACCC 306300FF */  andi  $v1, $v1, 0xff
.L8025ACD0:
/* 1895B0 8025ACD0 00031AC0 */  sll   $v1, $v1, 0xb
/* 1895B4 8025ACD4 304200FF */  andi  $v0, $v0, 0xff
/* 1895B8 8025ACD8 00021180 */  sll   $v0, $v0, 6
/* 1895BC 8025ACDC 00621825 */  or    $v1, $v1, $v0
/* 1895C0 8025ACE0 30A200FF */  andi  $v0, $a1, 0xff
/* 1895C4 8025ACE4 00021040 */  sll   $v0, $v0, 1
/* 1895C8 8025ACE8 00621825 */  or    $v1, $v1, $v0
/* 1895CC 8025ACEC 00831825 */  or    $v1, $a0, $v1
/* 1895D0 8025ACF0 A5430000 */  sh    $v1, ($t2)
/* 1895D4 8025ACF4 25290001 */  addiu $t1, $t1, 1
/* 1895D8 8025ACF8 29220010 */  slti  $v0, $t1, 0x10
/* 1895DC 8025ACFC 1440FFB4 */  bnez  $v0, .L8025ABD0
/* 1895E0 8025AD00 254A0002 */   addiu $t2, $t2, 2
.L8025AD04:
/* 1895E4 8025AD04 820206CD */  lb    $v0, 0x6cd($s0)
/* 1895E8 8025AD08 25080001 */  addiu $t0, $t0, 1
/* 1895EC 8025AD0C 0102102A */  slt   $v0, $t0, $v0
/* 1895F0 8025AD10 1440FFA7 */  bnez  $v0, .L8025ABB0
/* 1895F4 8025AD14 00000000 */   nop   
/* 1895F8 8025AD18 820206CD */  lb    $v0, 0x6cd($s0)
.L8025AD1C:
/* 1895FC 8025AD1C 1840000A */  blez  $v0, .L8025AD48
/* 189600 8025AD20 0000402D */   daddu $t0, $zero, $zero
/* 189604 8025AD24 0200202D */  daddu $a0, $s0, $zero
/* 189608 8025AD28 0200182D */  daddu $v1, $s0, $zero
.L8025AD2C:
/* 18960C 8025AD2C AC6406D4 */  sw    $a0, 0x6d4($v1)
/* 189610 8025AD30 24840020 */  addiu $a0, $a0, 0x20
/* 189614 8025AD34 820206CD */  lb    $v0, 0x6cd($s0)
/* 189618 8025AD38 25080001 */  addiu $t0, $t0, 1
/* 18961C 8025AD3C 0102102A */  slt   $v0, $t0, $v0
/* 189620 8025AD40 1440FFFA */  bnez  $v0, .L8025AD2C
/* 189624 8025AD44 24630004 */   addiu $v1, $v1, 4
.L8025AD48:
/* 189628 8025AD48 16400006 */  bnez  $s2, .L8025AD64
/* 18962C 8025AD4C 0220202D */   daddu $a0, $s1, $zero
/* 189630 8025AD50 0260282D */  daddu $a1, $s3, $zero
/* 189634 8025AD54 0C096657 */  jal   func_8025995C
/* 189638 8025AD58 0280302D */   daddu $a2, $s4, $zero
/* 18963C 8025AD5C 08096B5C */  j     .L8025AD70
/* 189640 8025AD60 00000000 */   nop   

.L8025AD64:
/* 189644 8025AD64 0260282D */  daddu $a1, $s3, $zero
/* 189648 8025AD68 0C0965B0 */  jal   func_802596C0
/* 18964C 8025AD6C 0280302D */   daddu $a2, $s4, $zero
.L8025AD70:
/* 189650 8025AD70 8FBF0024 */  lw    $ra, 0x24($sp)
/* 189654 8025AD74 8FB40020 */  lw    $s4, 0x20($sp)
/* 189658 8025AD78 8FB3001C */  lw    $s3, 0x1c($sp)
/* 18965C 8025AD7C 8FB20018 */  lw    $s2, 0x18($sp)
/* 189660 8025AD80 8FB10014 */  lw    $s1, 0x14($sp)
/* 189664 8025AD84 8FB00010 */  lw    $s0, 0x10($sp)
/* 189668 8025AD88 03E00008 */  jr    $ra
/* 18966C 8025AD8C 27BD0028 */   addiu $sp, $sp, 0x28

