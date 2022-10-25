#include "common.h"
#include "battle/battle.h"
#include "script_api/battle.h"
#include "sprite/npc/Fuzzy.h"
#include "effects.h"

s32 N(defenseTable)[] = {
    ELEMENT_NORMAL, 0,
    ELEMENT_END,
};

s32 N(statusTable)[] = {
    STATUS_NORMAL, 0,
    STATUS_DEFAULT, 0,
    STATUS_SLEEP, 95,
    STATUS_POISON, 90,
    STATUS_FROZEN, 100,
    STATUS_DIZZY, 90,
    STATUS_FEAR, 0,
    STATUS_STATIC, 70,
    STATUS_PARALYZE, 75,
    STATUS_SHRINK, 75,
    STATUS_STOP, 100,
    STATUS_DEFAULT_TURN_MOD, 0,
    STATUS_SLEEP_TURN_MOD, 0,
    STATUS_POISON_TURN_MOD, 0,
    STATUS_FROZEN_TURN_MOD, 0,
    STATUS_DIZZY_TURN_MOD, 0,
    STATUS_FEAR_TURN_MOD, 0,
    STATUS_STATIC_TURN_MOD, 0,
    STATUS_PARALYZE_TURN_MOD, 0,
    STATUS_SHRINK_TURN_MOD, 0,
    STATUS_STOP_TURN_MOD, 0,
    STATUS_END,
};

extern s32 N(idleAnimations)[];

ActorPartBlueprint N(parts)[] = {
    {
        .flags = ACTOR_PART_FLAG_MULTI_TARGET,
        .index = 1,
        .posOffset = { 0, 0, 0 },
        .targetOffset = { 0, 20 },
        .opacity = 255,
        .idleAnimations = N(idleAnimations),
        .defenseTable = N(defenseTable),
        .eventFlags = ACTOR_EVENT_FLAG_0,
        .elementImmunityFlags = 0,
        .unk_1D = 246,
    },
};

extern EvtScript N(init);

ActorBlueprint NAMESPACE = {
    .flags = 0,
    .type = ACTOR_TYPE_FUZZY,
    .level = 6,
    .maxHP = 3,
    .partCount = ARRAY_COUNT(N(parts)),
    .partsData = N(parts),
    .script = &N(init),
    .statusTable = N(statusTable),
    .escapeChance = 50,
    .airLiftChance = 95,
    .spookChance = 95,
    .baseStatusChance = 95,
    .upAndAwayChance = 95,
    .spinSmashReq = 0,
    .powerBounceChance = 100,
    .coinReward = 1,
    .size = { 33, 28 },
    .hpBarOffset = { 0, 0 },
    .statusIconOffset = { -10, 20 },
    .statusMessageOffset = { 10, 20 },
};

s32 N(idleAnimations)[] = {
    STATUS_NORMAL,    ANIM_Fuzzy_Anim01,
    STATUS_STONE,     ANIM_Fuzzy_Anim00,
    STATUS_SLEEP,     ANIM_Fuzzy_Anim0E,
    STATUS_POISON,    ANIM_Fuzzy_Anim01,
    STATUS_STOP,      ANIM_Fuzzy_Anim00,
    STATUS_STATIC,    ANIM_Fuzzy_Anim01,
    STATUS_PARALYZE,  ANIM_Fuzzy_Anim00,
    STATUS_DIZZY,     ANIM_Fuzzy_Anim0F,
    STATUS_FEAR,      ANIM_Fuzzy_Anim0F,
    STATUS_END,
};

extern EvtScript N(takeTurn);
extern EvtScript N(idle);
extern EvtScript N(handleEvent);

EvtScript N(init) = {
    EVT_CALL(BindTakeTurn, ACTOR_SELF, EVT_PTR(N(takeTurn)))
    EVT_CALL(BindIdle, ACTOR_SELF, EVT_PTR(N(idle)))
    EVT_CALL(BindHandleEvent, ACTOR_SELF, EVT_PTR(N(handleEvent)))
    EVT_RETURN
    EVT_END
};

EvtScript N(idle) = {
    EVT_RETURN
    EVT_END
};

EvtScript N(handleEvent) = {
    EVT_CALL(UseIdleAnimation, ACTOR_SELF, FALSE)
    EVT_CALL(EnableIdleScript, ACTOR_SELF, 0)
    EVT_CALL(SetActorScale, ACTOR_SELF, EVT_FLOAT(1.0), EVT_FLOAT(1.0), EVT_FLOAT(1.0))
    EVT_CALL(GetLastEvent, ACTOR_SELF, LVar0)
    EVT_SWITCH(LVar0)
        EVT_CASE_OR_EQ(EVENT_HIT_COMBO)
        EVT_CASE_OR_EQ(EVENT_HIT)
            EVT_CALL(GetLastElement, LVar0)
            EVT_IF_FLAG(LVar0, DAMAGE_TYPE_ELECTRIC)
                EVT_SET_CONST(LVar0, 1)
                EVT_SET_CONST(LVar1, ANIM_Fuzzy_Anim13)
            EVT_ELSE
                EVT_SET_CONST(LVar0, 1)
                EVT_SET_CONST(LVar1, ANIM_Fuzzy_Anim08)
            EVT_END_IF
            EVT_EXEC_WAIT(DoNormalHit)
        EVT_END_CASE_GROUP
        EVT_CASE_EQ(EVENT_BURN_HIT)
            EVT_SET_CONST(LVar0, 1)
            EVT_SET_CONST(LVar1, ANIM_Fuzzy_Anim10)
            EVT_SET_CONST(LVar2, ANIM_Fuzzy_Anim12)
            EVT_EXEC_WAIT(DoBurnHit)
        EVT_CASE_EQ(EVENT_BURN_DEATH)
            EVT_SET_CONST(LVar0, 1)
            EVT_SET_CONST(LVar1, ANIM_Fuzzy_Anim10)
            EVT_SET_CONST(LVar2, ANIM_Fuzzy_Anim12)
            EVT_EXEC_WAIT(DoBurnHit)
            EVT_SET_CONST(LVar0, 1)
            EVT_SET_CONST(LVar1, ANIM_Fuzzy_Anim12)
            EVT_EXEC_WAIT(DoDeath)
            EVT_RETURN
        EVT_CASE_EQ(EVENT_SPIN_SMASH_HIT)
            EVT_SET_CONST(LVar0, 1)
            EVT_SET_CONST(LVar1, ANIM_Fuzzy_Anim08)
            EVT_EXEC_WAIT(DoSpinSmashHit)
        EVT_CASE_EQ(EVENT_SPIN_SMASH_DEATH)
            EVT_SET_CONST(LVar0, 1)
            EVT_SET_CONST(LVar1, ANIM_Fuzzy_Anim08)
            EVT_EXEC_WAIT(DoSpinSmashHit)
            EVT_SET_CONST(LVar0, 1)
            EVT_SET_CONST(LVar1, ANIM_Fuzzy_Anim08)
            EVT_EXEC_WAIT(DoDeath)
            EVT_RETURN
        EVT_CASE_EQ(EVENT_SHOCK_HIT)
            EVT_SET_CONST(LVar0, 1)
            EVT_SET_CONST(LVar1, ANIM_Fuzzy_Anim13)
            EVT_EXEC_WAIT(DoShockHit)
            EVT_SET_CONST(LVar0, 1)
            EVT_SET_CONST(LVar1, ANIM_Fuzzy_Anim13)
            EVT_EXEC_WAIT(DoJumpBack)
            EVT_CALL(JumpToGoal, ACTOR_SELF, 5, FALSE, TRUE, FALSE)
            EVT_SET_CONST(LVar0, 1)
            EVT_SET_CONST(LVar1, ANIM_Fuzzy_Anim03)
            EVT_EXEC_WAIT(D_8029C0A4)
            EVT_CALL(SetActorJumpGravity, ACTOR_SELF, EVT_FLOAT(1.6))
            EVT_CALL(JumpToGoal, ACTOR_SELF, 5, FALSE, TRUE, FALSE)
        EVT_CASE_EQ(EVENT_SHOCK_DEATH)
            EVT_SET_CONST(LVar0, 1)
            EVT_SET_CONST(LVar1, ANIM_Fuzzy_Anim13)
            EVT_EXEC_WAIT(DoShockHit)
            EVT_SET_CONST(LVar0, 1)
            EVT_SET_CONST(LVar1, ANIM_Fuzzy_Anim08)
            EVT_EXEC_WAIT(DoDeath)
            EVT_RETURN
        EVT_CASE_OR_EQ(EVENT_UNKNOWN_TRIGGER)
        EVT_CASE_OR_EQ(EVENT_IMMUNE)
        EVT_CASE_OR_EQ(EVENT_AIR_LIFT_FAILED)
            EVT_SET_CONST(LVar0, 1)
            EVT_SET_CONST(LVar1, ANIM_Fuzzy_Anim01)
            EVT_EXEC_WAIT(DoImmune)
        EVT_END_CASE_GROUP
        EVT_CASE_EQ(EVENT_DEATH)
            EVT_CALL(GetLastElement, LVar0)
            EVT_IF_FLAG(LVar0, DAMAGE_TYPE_ELECTRIC)
                EVT_SET_CONST(LVar0, 1)
                EVT_SET_CONST(LVar1, ANIM_Fuzzy_Anim13)
                EVT_EXEC_WAIT(DoNormalHit)
                EVT_WAIT(10)
                EVT_SET_CONST(LVar0, 1)
                EVT_SET_CONST(LVar1, ANIM_Fuzzy_Anim13)
                EVT_EXEC_WAIT(DoDeath)
            EVT_ELSE
                EVT_SET_CONST(LVar0, 1)
                EVT_SET_CONST(LVar1, ANIM_Fuzzy_Anim08)
                EVT_EXEC_WAIT(DoNormalHit)
                EVT_WAIT(10)
                EVT_SET_CONST(LVar0, 1)
                EVT_SET_CONST(LVar1, ANIM_Fuzzy_Anim08)
                EVT_EXEC_WAIT(DoDeath)
            EVT_END_IF
            EVT_RETURN
        EVT_CASE_EQ(EVENT_RECOVER_STATUS)
            EVT_SET_CONST(LVar0, 1)
            EVT_SET_CONST(LVar1, ANIM_Fuzzy_Anim01)
            EVT_EXEC_WAIT(DoRecover)
        EVT_CASE_EQ(EVENT_SCARE_AWAY)
            EVT_SET_CONST(LVar0, 1)
            EVT_SET_CONST(LVar1, ANIM_Fuzzy_Anim03)
            EVT_SET_CONST(LVar2, ANIM_Fuzzy_Anim09)
            EVT_EXEC_WAIT(DoScareAway)
            EVT_RETURN
        EVT_CASE_EQ(EVENT_BEGIN_AIR_LIFT)
            EVT_SET_CONST(LVar0, 1)
            EVT_SET_CONST(LVar1, ANIM_Fuzzy_Anim03)
            EVT_EXEC_WAIT(DoAirLift)
        EVT_CASE_EQ(EVENT_BLOW_AWAY)
            EVT_SET_CONST(LVar0, 1)
            EVT_SET_CONST(LVar1, ANIM_Fuzzy_Anim03)
            EVT_EXEC_WAIT(DoBlowAway)
            EVT_RETURN
        EVT_CASE_DEFAULT
    EVT_END_SWITCH
    EVT_CALL(EnableIdleScript, ACTOR_SELF, 1)
    EVT_CALL(UseIdleAnimation, ACTOR_SELF, TRUE)
    EVT_RETURN
    EVT_END
};

#include "common/UnkBattleFunc2.inc.c"

EvtScript N(takeTurn) = {
    EVT_CALL(UseIdleAnimation, ACTOR_SELF, FALSE)
    EVT_CALL(EnableIdleScript, ACTOR_SELF, 0)
    EVT_CALL(SetTargetActor, ACTOR_SELF, ACTOR_PLAYER)
    EVT_CALL(UseBattleCamPreset, BTL_CAM_PRESET_63)
    EVT_CALL(BattleCamTargetActor, ACTOR_SELF)
    EVT_CALL(func_8024ECF8, -1, 1, 0)
    EVT_CALL(GetBattlePhase, LVar0)
    EVT_IF_EQ(LVar0, PHASE_FIRST_STRIKE)
        EVT_CALL(SetGoalToTarget, ACTOR_SELF)
        EVT_CALL(GetGoalPos, ACTOR_SELF, LVar0, LVar1, LVar2)
        EVT_ADD(LVar0, 50)
        EVT_SET(LVar1, 0)
        EVT_CALL(SetActorPos, ACTOR_SELF, LVar0, LVar1, LVar2)
        EVT_GOTO(100)
    EVT_END_IF
    EVT_CALL(SetAnimation, ACTOR_SELF, 1, ANIM_Fuzzy_Anim03)
    EVT_CALL(SetGoalToTarget, ACTOR_SELF)
    EVT_CALL(GetGoalPos, ACTOR_SELF, LVar0, LVar1, LVar2)
    EVT_ADD(LVar0, 50)
    EVT_SET(LVar1, 0)
    EVT_CALL(SetActorSpeed, ACTOR_SELF, EVT_FLOAT(6.0))
    EVT_CALL(SetActorJumpGravity, ACTOR_SELF, EVT_FLOAT(1.8))
    EVT_EXEC_WAIT(D_8029C12C)
    EVT_CALL(SetAnimation, ACTOR_SELF, 1, ANIM_Fuzzy_Anim01)
    EVT_LABEL(100)
    EVT_CALL(SetActorDispOffset, ACTOR_SELF, 0, 10, 0)
    EVT_CALL(SetAnimation, ACTOR_SELF, 1, ANIM_Fuzzy_Anim04)
    EVT_CALL(SetActorDispOffset, ACTOR_SELF, 0, 9, 0)
    EVT_WAIT(1)
    EVT_CALL(SetActorDispOffset, ACTOR_SELF, 0, 8, 0)
    EVT_WAIT(5)
    EVT_CALL(EnemyTestTarget, ACTOR_SELF, LVar0, DAMAGE_TYPE_IGNORE_DEFENSE, 0, 1, BS_FLAGS1_10)
    EVT_SWITCH(LVar0)
        EVT_CASE_OR_EQ(HIT_RESULT_MISS)
        EVT_CASE_OR_EQ(HIT_RESULT_LUCKY)
            EVT_SET(LVarA, LVar0)
            EVT_CALL(SetGoalToTarget, ACTOR_SELF)
            EVT_CALL(GetGoalPos, ACTOR_SELF, LVar0, LVar1, LVar2)
            EVT_SUB(LVar0, 5)
            EVT_SET(LVar1, 0)
            EVT_SUB(LVar2, 5)
            EVT_CALL(SetActorJumpGravity, ACTOR_SELF, EVT_FLOAT(3.0))
            EVT_CALL(SetAnimation, ACTOR_SELF, 1, ANIM_Fuzzy_Anim05)
            EVT_CALL(SetGoalPos, ACTOR_SELF, LVar0, LVar1, LVar2)
            EVT_CALL(JumpToGoal, ACTOR_SELF, 11, FALSE, TRUE, FALSE)
            EVT_CALL(SetActorDispOffset, ACTOR_SELF, 0, 0, 0)
            EVT_CALL(SetAnimation, ACTOR_SELF, 1, ANIM_Fuzzy_Anim09)
            EVT_CALL(GetGoalPos, ACTOR_SELF, LVar0, LVar1, LVar2)
            EVT_SUB(LVar0, 20)
            EVT_CALL(SetActorJumpGravity, ACTOR_SELF, EVT_FLOAT(3.0))
            EVT_CALL(SetGoalPos, ACTOR_SELF, LVar0, LVar1, LVar2)
            EVT_CALL(JumpToGoal, ACTOR_SELF, 6, FALSE, TRUE, FALSE)
            EVT_CALL(GetGoalPos, ACTOR_SELF, LVar0, LVar1, LVar2)
            EVT_SUB(LVar0, 15)
            EVT_CALL(SetActorJumpGravity, ACTOR_SELF, EVT_FLOAT(3.0))
            EVT_CALL(SetGoalPos, ACTOR_SELF, LVar0, LVar1, LVar2)
            EVT_CALL(JumpToGoal, ACTOR_SELF, 5, FALSE, TRUE, FALSE)
            EVT_CALL(GetGoalPos, ACTOR_SELF, LVar0, LVar1, LVar2)
            EVT_WAIT(4)
            EVT_WAIT(5)
            EVT_IF_EQ(LVarA, HIT_RESULT_LUCKY)
                EVT_CALL(EnemyTestTarget, ACTOR_SELF, LVar0, DAMAGE_TYPE_TRIGGER_LUCKY, 0, 0, 0)
            EVT_END_IF
            EVT_WAIT(5)
            EVT_CALL(UseBattleCamPreset, BTL_CAM_PRESET_C)
            EVT_CALL(YieldTurn)
            EVT_CALL(SetActorYaw, ACTOR_SELF, 180)
            EVT_CALL(AddActorDecoration, ACTOR_SELF, 1, 0, 2)
            EVT_CALL(SetAnimation, ACTOR_SELF, 1, ANIM_Fuzzy_Anim03)
            EVT_CALL(SetGoalToHome, ACTOR_SELF)
            EVT_CALL(GetGoalPos, ACTOR_SELF, LVar0, LVar1, LVar2)
            EVT_CALL(SetActorSpeed, ACTOR_SELF, EVT_FLOAT(8.0))
            EVT_CALL(SetActorJumpGravity, ACTOR_SELF, EVT_FLOAT(1.8))
            EVT_EXEC_WAIT(D_8029C12C)
            EVT_CALL(RemoveActorDecoration, ACTOR_SELF, 1, 0)
            EVT_CALL(SetActorYaw, ACTOR_SELF, 0)
            EVT_CALL(EnableIdleScript, ACTOR_SELF, 1)
            EVT_CALL(UseIdleAnimation, ACTOR_SELF, TRUE)
            EVT_RETURN
        EVT_END_CASE_GROUP
        EVT_CASE_EQ(HIT_RESULT_HIT_STATIC)
            EVT_CALL(GetStatusFlags, ACTOR_SELF, LVar0)
            EVT_IF_FLAG(LVar0, STATUS_FLAG_STATIC)
                EVT_SET(LocalFlag(0), 0)
            EVT_ELSE
                EVT_SET(LocalFlag(0), 1)
            EVT_END_IF
    EVT_END_SWITCH
    EVT_CALL(SetGoalToTarget, ACTOR_SELF)
    EVT_CALL(AddGoalPos, ACTOR_SELF, -3, -12, -15)
    EVT_CALL(SetActorJumpGravity, ACTOR_SELF, EVT_FLOAT(3.0))
    EVT_CALL(SetAnimation, ACTOR_SELF, 1, ANIM_Fuzzy_Anim05)
    EVT_CALL(JumpToGoal, ACTOR_SELF, 8, FALSE, TRUE, FALSE)
    EVT_IF_EQ(LocalFlag(0), 1)
        EVT_CALL(EnemyDamageTarget, ACTOR_SELF, LVar0, DAMAGE_TYPE_IGNORE_DEFENSE, 0, 0, 0, BS_FLAGS1_SP_EVT_ACTIVE)
        EVT_RETURN
    EVT_END_IF
    EVT_WAIT(10)
    EVT_CALL(UseIdleAnimation, ACTOR_PLAYER, FALSE)
    EVT_CALL(SetAnimation, ACTOR_PLAYER, 0, ANIM_Mario_3000C)
    EVT_CALL(PlaySoundAtActor, ACTOR_SELF, SOUND_3E0)
    EVT_CALL(SetAnimation, ACTOR_SELF, 1, ANIM_Fuzzy_Anim07)
    EVT_WAIT(21)
    EVT_CALL(SetAnimation, ACTOR_SELF, 1, ANIM_Fuzzy_Anim00)
    EVT_CALL(SetActorRotation, ACTOR_SELF, 0, 0, 330)
    EVT_CALL(PlaySoundAtActor, ACTOR_SELF, SOUND_3E0)
    EVT_CALL(SetActorDispOffset, ACTOR_SELF, -3, -2, 0)
    EVT_CALL(SetActorScale, ACTOR_SELF, EVT_FLOAT(1.0), EVT_FLOAT(1.0), EVT_FLOAT(1.0))
    EVT_WAIT(1)
    EVT_CALL(SetActorScale, ACTOR_SELF, EVT_FLOAT(0.9), EVT_FLOAT(1.2), EVT_FLOAT(1.0))
    EVT_WAIT(1)
    EVT_CALL(SetActorScale, ACTOR_SELF, EVT_FLOAT(0.8), EVT_FLOAT(1.3), EVT_FLOAT(1.0))
    EVT_WAIT(1)
    EVT_CALL(SetActorScale, ACTOR_SELF, EVT_FLOAT(0.7), EVT_FLOAT(1.4), EVT_FLOAT(1.0))
    EVT_WAIT(1)
    EVT_CALL(SetActorScale, ACTOR_SELF, EVT_FLOAT(0.7), EVT_FLOAT(1.5), EVT_FLOAT(1.0))
    EVT_WAIT(2)
    EVT_CALL(SetActorScale, ACTOR_SELF, EVT_FLOAT(0.6), EVT_FLOAT(1.6), EVT_FLOAT(1.0))
    EVT_WAIT(10)
    EVT_WAIT(2)
    EVT_CALL(EnemyDamageTarget, ACTOR_SELF, LVar0, DAMAGE_TYPE_IGNORE_DEFENSE, 0, 0, 1, BS_FLAGS1_SP_EVT_ACTIVE)
    EVT_CALL(SetActorDispOffset, ACTOR_SELF, 0, 0, 0)
    EVT_CALL(SetAnimation, ACTOR_SELF, 1, ANIM_Fuzzy_Anim01)
    EVT_SWITCH(LVar0)
        EVT_CASE_OR_EQ(HIT_RESULT_HIT)
        EVT_CASE_OR_EQ(HIT_RESULT_QUAKE_IMMUNE)
            EVT_CALL(UseBattleCamPreset, BTL_CAM_PRESET_C)
            EVT_CALL(GetLastDamage, 0, LVar3)
            EVT_IF_NE(LVar3, 0)
                EVT_CALL(PlaySoundAtActor, ACTOR_SELF, SOUND_206D)
                EVT_CALL(PlaySoundAtActor, ACTOR_SELF, SOUND_214)
                EVT_CALL(GetActorPos, ACTOR_SELF, LVar0, LVar1, LVar2)
                EVT_ADD(LVar1, 10)
                EVT_CALL(N(UnkBattleFunc2), LVar0, LVar1, LVar2, LVar3)
                EVT_THREAD
                    EVT_WAIT(15)
                    EVT_CALL(PlaySoundAtActor, ACTOR_SELF, SOUND_25C)
                    EVT_CALL(N(UnkBattleFunc2_2), LVar0, LVar1, LVar2, LVar3)
                EVT_END_THREAD
                EVT_ADD(LVar0, 20)
                EVT_ADD(LVar1, 20)
                EVT_CALL(PlayEffect, EFFECT_RECOVER, 0, LVar0, LVar1, LVar2, LVar3, 0, 0, 0, 0, 0, 0, 0, 0)
                EVT_CALL(GetActorHP, ACTOR_SELF, LVar0)
                EVT_ADD(LVar0, LVar3)
                EVT_CALL(SetEnemyHP, ACTOR_SELF, LVar0)
            EVT_END_IF
            EVT_THREAD
                EVT_CALL(SetActorScale, ACTOR_SELF, EVT_FLOAT(1.6), EVT_FLOAT(0.6), EVT_FLOAT(1.0))
                EVT_CALL(SetActorRotationOffset, -127, 0, 10, 0)
                EVT_WAIT(1)
                EVT_CALL(SetActorRotation, ACTOR_SELF, 0, 0, 330)
                EVT_WAIT(1)
                EVT_CALL(SetActorScale, ACTOR_SELF, EVT_FLOAT(0.7), EVT_FLOAT(1.5), EVT_FLOAT(1.0))
                EVT_CALL(SetActorRotation, ACTOR_SELF, 0, 0, 300)
                EVT_WAIT(1)
                EVT_CALL(SetActorRotation, ACTOR_SELF, 0, 0, 270)
                EVT_WAIT(1)
                EVT_CALL(SetActorScale, ACTOR_SELF, EVT_FLOAT(1.0), EVT_FLOAT(0.7), EVT_FLOAT(1.0))
                EVT_CALL(SetActorRotation, ACTOR_SELF, 0, 0, 240)
                EVT_WAIT(1)
                EVT_CALL(SetActorRotation, ACTOR_SELF, 0, 0, 210)
                EVT_WAIT(1)
                EVT_CALL(SetActorScale, ACTOR_SELF, EVT_FLOAT(0.7), EVT_FLOAT(1.4), EVT_FLOAT(1.0))
                EVT_CALL(SetActorRotation, ACTOR_SELF, 0, 0, 180)
                EVT_WAIT(2)
                EVT_CALL(SetActorScale, ACTOR_SELF, EVT_FLOAT(1.0), EVT_FLOAT(0.7), EVT_FLOAT(1.0))
                EVT_WAIT(2)
                EVT_CALL(SetActorScale, ACTOR_SELF, EVT_FLOAT(1.2), EVT_FLOAT(0.5), EVT_FLOAT(1.0))
            EVT_END_THREAD
            EVT_CALL(GetGoalPos, ACTOR_SELF, LVar0, LVar1, LVar2)
            EVT_ADD(LVar0, 40)
            EVT_SET(LVar1, 0)
            EVT_CALL(SetActorJumpGravity, ACTOR_SELF, EVT_FLOAT(1.8))
            EVT_CALL(SetGoalPos, ACTOR_SELF, LVar0, LVar1, LVar2)
            EVT_CALL(JumpToGoal, ACTOR_SELF, 10, FALSE, TRUE, FALSE)
            EVT_CALL(SetActorScale, ACTOR_SELF, EVT_FLOAT(1.4), EVT_FLOAT(0.2), EVT_FLOAT(1.0))
            EVT_WAIT(1)
            EVT_THREAD
                EVT_WAIT(1)
                EVT_CALL(SetActorScale, ACTOR_SELF, EVT_FLOAT(1.2), EVT_FLOAT(0.5), EVT_FLOAT(1.0))
                EVT_CALL(SetActorRotation, ACTOR_SELF, 0, 0, 150)
                EVT_WAIT(1)
                EVT_CALL(SetActorScale, ACTOR_SELF, EVT_FLOAT(1.0), EVT_FLOAT(1.0), EVT_FLOAT(1.0))
                EVT_CALL(SetActorRotation, ACTOR_SELF, 0, 0, 120)
                EVT_WAIT(1)
                EVT_CALL(SetActorRotation, ACTOR_SELF, 0, 0, 90)
                EVT_WAIT(1)
                EVT_CALL(SetActorRotation, ACTOR_SELF, 0, 0, 60)
                EVT_WAIT(1)
                EVT_CALL(SetActorRotation, ACTOR_SELF, 0, 0, 30)
                EVT_WAIT(1)
                EVT_CALL(SetActorRotation, ACTOR_SELF, 0, 0, 0)
                EVT_CALL(SetActorRotationOffset, -127, 0, 0, 0)
            EVT_END_THREAD
            EVT_CALL(GetGoalPos, ACTOR_SELF, LVar0, LVar1, LVar2)
            EVT_ADD(LVar0, 30)
            EVT_CALL(SetGoalPos, ACTOR_SELF, LVar0, LVar1, LVar2)
            EVT_CALL(JumpToGoal, ACTOR_SELF, 8, FALSE, TRUE, FALSE)
            EVT_WAIT(5)
            EVT_CALL(YieldTurn)
            EVT_CALL(SetActorDispOffset, ACTOR_SELF, 0, 0, 0)
            EVT_CALL(SetAnimation, ACTOR_SELF, 1, ANIM_Fuzzy_Anim03)
            EVT_CALL(SetGoalToHome, ACTOR_SELF)
            EVT_CALL(GetGoalPos, ACTOR_SELF, LVar0, LVar1, LVar2)
            EVT_CALL(SetActorSpeed, ACTOR_SELF, EVT_FLOAT(8.0))
            EVT_CALL(SetActorJumpGravity, ACTOR_SELF, EVT_FLOAT(1.8))
            EVT_EXEC_WAIT(D_8029C12C)
            EVT_CALL(SetAnimation, ACTOR_SELF, 1, ANIM_Fuzzy_Anim01)
        EVT_END_CASE_GROUP
    EVT_END_SWITCH
    EVT_CALL(EnableIdleScript, ACTOR_SELF, 1)
    EVT_CALL(UseIdleAnimation, ACTOR_SELF, TRUE)
    EVT_RETURN
    EVT_END
};