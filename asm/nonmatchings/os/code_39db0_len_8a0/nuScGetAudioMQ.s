.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel nuScGetAudioMQ
/* 03A384 8005EF84 3C02800E */  lui   $v0, 0x800e
/* 03A388 8005EF88 03E00008 */  jr    $ra
/* 03A38C 8005EF8C 2442A444 */   addiu $v0, $v0, -0x5bbc

