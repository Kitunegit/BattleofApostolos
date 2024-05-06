#> pvp_data:pvpfunctions/jobs/warrior/skill/1/skill_tick
#
# 戦士スキル1効果中処理
#
# @internal

# カウントダウン処理
    scoreboard players remove @s skill_1_count 1
# 演出
    execute at @s run particle dust 0.961 0.353 0 0.7 ~ ~ ~ 0.5 0.8 0.5 1 15
    execute at @s run particle dust 0.439 0.161 0 0.7 ~ ~ ~ 0.5 0.8 0.5 1 15
# 終了演出
    execute at @s if score @s skill_1_count matches 1 run playsound entity.generic.extinguish_fire player @s ~ ~ ~ 0.5 1