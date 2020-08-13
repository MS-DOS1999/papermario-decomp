.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_80027088
/* 002488 80027088 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 00248C 8002708C 0080282D */  daddu $a1, $a0, $zero
/* 002490 80027090 2CA20005 */  sltiu $v0, $a1, 5
/* 002494 80027094 1040003B */  beqz  $v0, .L80027184
/* 002498 80027098 AFBF0010 */   sw    $ra, 0x10($sp)
/* 00249C 8002709C 00051080 */  sll   $v0, $a1, 2
/* 0024A0 800270A0 3C018009 */  lui   $at, 0x8009
/* 0024A4 800270A4 00220821 */  addu  $at, $at, $v0
/* 0024A8 800270A8 8C227D48 */  lw    $v0, 0x7d48($at)
/* 0024AC 800270AC 00400008 */  jr    $v0
/* 0024B0 800270B0 00000000 */   nop   
/* 0024B4 800270B4 24040003 */  addiu $a0, $zero, 3
/* 0024B8 800270B8 3C02800A */  lui   $v0, 0x800a
/* 0024BC 800270BC 2442A650 */  addiu $v0, $v0, -0x59b0
/* 0024C0 800270C0 3C01800A */  lui   $at, 0x800a
/* 0024C4 800270C4 AC25A5D8 */  sw    $a1, -0x5a28($at)
/* 0024C8 800270C8 8C430000 */  lw    $v1, ($v0)
/* 0024CC 800270CC 2405F0FF */  addiu $a1, $zero, -0xf01
/* 0024D0 800270D0 00651824 */  and   $v1, $v1, $a1
/* 0024D4 800270D4 0C0B1192 */  jal   resume_all_group
/* 0024D8 800270D8 AC430000 */   sw    $v1, ($v0)
/* 0024DC 800270DC 08009C61 */  j     .L80027184
/* 0024E0 800270E0 00000000 */   nop   

/* 0024E4 800270E4 24040001 */  addiu $a0, $zero, 1
/* 0024E8 800270E8 3C02800A */  lui   $v0, 0x800a
/* 0024EC 800270EC 2442A650 */  addiu $v0, $v0, -0x59b0
/* 0024F0 800270F0 3C01800A */  lui   $at, 0x800a
/* 0024F4 800270F4 AC25A5D8 */  sw    $a1, -0x5a28($at)
/* 0024F8 800270F8 8C430000 */  lw    $v1, ($v0)
/* 0024FC 800270FC 2405F1FF */  addiu $a1, $zero, -0xe01
/* 002500 80027100 00651824 */  and   $v1, $v1, $a1
/* 002504 80027104 08009C56 */  j     .L80027158
/* 002508 80027108 34630100 */   ori   $v1, $v1, 0x100

/* 00250C 8002710C 24040002 */  addiu $a0, $zero, 2
/* 002510 80027110 3C02800A */  lui   $v0, 0x800a
/* 002514 80027114 2442A650 */  addiu $v0, $v0, -0x59b0
/* 002518 80027118 3C01800A */  lui   $at, 0x800a
/* 00251C 8002711C AC25A5D8 */  sw    $a1, -0x5a28($at)
/* 002520 80027120 8C430000 */  lw    $v1, ($v0)
/* 002524 80027124 2405F3FF */  addiu $a1, $zero, -0xc01
/* 002528 80027128 00651824 */  and   $v1, $v1, $a1
/* 00252C 8002712C 08009C56 */  j     .L80027158
/* 002530 80027130 34630300 */   ori   $v1, $v1, 0x300

/* 002534 80027134 24040002 */  addiu $a0, $zero, 2
/* 002538 80027138 3C02800A */  lui   $v0, 0x800a
/* 00253C 8002713C 2442A650 */  addiu $v0, $v0, -0x59b0
/* 002540 80027140 3C01800A */  lui   $at, 0x800a
/* 002544 80027144 AC25A5D8 */  sw    $a1, -0x5a28($at)
/* 002548 80027148 8C430000 */  lw    $v1, ($v0)
/* 00254C 8002714C 2405F7FF */  addiu $a1, $zero, -0x801
/* 002550 80027150 00651824 */  and   $v1, $v1, $a1
/* 002554 80027154 34630700 */  ori   $v1, $v1, 0x700
.L80027158:
/* 002558 80027158 0C0B117A */  jal   suspend_all_group
/* 00255C 8002715C AC430000 */   sw    $v1, ($v0)
/* 002560 80027160 08009C61 */  j     .L80027184
/* 002564 80027164 00000000 */   nop   

/* 002568 80027168 3C03800A */  lui   $v1, 0x800a
/* 00256C 8002716C 2463A650 */  addiu $v1, $v1, -0x59b0
/* 002570 80027170 8C620000 */  lw    $v0, ($v1)
/* 002574 80027174 3C01800A */  lui   $at, 0x800a
/* 002578 80027178 AC25A5D8 */  sw    $a1, -0x5a28($at)
/* 00257C 8002717C 34420F00 */  ori   $v0, $v0, 0xf00
/* 002580 80027180 AC620000 */  sw    $v0, ($v1)
.L80027184:
/* 002584 80027184 8FBF0010 */  lw    $ra, 0x10($sp)
/* 002588 80027188 03E00008 */  jr    $ra
/* 00258C 8002718C 27BD0018 */   addiu $sp, $sp, 0x18


