#> pvp_data:pvpfunctions/jobs/wizard/ult/white/skill_tick
#
# 黒ウルトスキル中処理
#
# @internal

# カウントダウン
    scoreboard players remove @s ult_count 1
# 中断処理
    execute if entity @s[tag=Charge.Miss] run function pvp_data:pvpfunctions/jobs/wizard/ult/white/miss
    # 手から離したときも中断とする
    execute unless predicate pvp_data:r_click/cmd24 run tag @s add Charge.Miss
# 発動処理
    execute if score @s ult_count matches 0 run function pvp_data:pvpfunctions/jobs/wizard/ult/white/invoke
# 演出
    execute at @s run particle dust 100000000 100000000 100000000 1 ~ ~ ~ 3 3 3 0.1 5