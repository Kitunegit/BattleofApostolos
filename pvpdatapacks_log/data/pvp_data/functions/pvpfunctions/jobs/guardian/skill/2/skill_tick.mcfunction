#> pvp_data:pvpfunctions/jobs/guardian/skill/2/skill_tick
#
# スキル2の効果中処理です
#
# @internal
# カウントダウン
    scoreboard players remove @s skill_2_count 1
# 演出
    particle minecraft:dolphin ~ ~ ~ 0.55 1 0.55 1 10
# 終了音
    execute if score @s skill_2_count matches 1 at @s run playsound entity.leash_knot.place player @s ~ ~ ~ 1 1.2