.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_801264B0
/* 0BCBB0 801264B0 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0BCBB4 801264B4 27A20020 */  addiu $v0, $sp, 0x20
/* 0BCBB8 801264B8 0000282D */  daddu $a1, $zero, $zero
/* 0BCBBC 801264BC 00A0302D */  daddu $a2, $a1, $zero
/* 0BCBC0 801264C0 00A0382D */  daddu $a3, $a1, $zero
/* 0BCBC4 801264C4 AFBF0028 */  sw    $ra, 0x28($sp)
/* 0BCBC8 801264C8 AFA20010 */  sw    $v0, 0x10($sp)
/* 0BCBCC 801264CC AFA00014 */  sw    $zero, 0x14($sp)
/* 0BCBD0 801264D0 AFA00018 */  sw    $zero, 0x18($sp)
/* 0BCBD4 801264D4 0C0497DA */  jal   get_string_properties
/* 0BCBD8 801264D8 AFA0001C */   sw    $zero, 0x1c($sp)
/* 0BCBDC 801264DC 8FA20020 */  lw    $v0, 0x20($sp)
/* 0BCBE0 801264E0 8FBF0028 */  lw    $ra, 0x28($sp)
/* 0BCBE4 801264E4 03E00008 */  jr    $ra
/* 0BCBE8 801264E8 27BD0030 */   addiu $sp, $sp, 0x30

