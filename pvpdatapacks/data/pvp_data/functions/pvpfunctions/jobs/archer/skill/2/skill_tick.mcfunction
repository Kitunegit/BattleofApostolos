#> pvp_data:pvpfunctions/jobs/archer/skill/2/skill_tick
#
# 弓兵 スキル2 スキル中処理
#
# @internal

# カウントダウン
    scoreboard players remove @s skill_2_count 1
# 演出
    execute at @s run particle dust 1 1000000000 1 1 ~ ~-0.15 ~ 0.25 1.0 0.25 0 4
    execute at @s run particle dust 0 -1 0 0.8 ~ ~-0.15 ~ 0.45 1.0 0.45 0 4
    execute at @s run particle crit ~ ~ ~ 0.25 1.0 0.25 0 1 force
#効果終了演出 
    execute at @s if score @s skill_2_count matches 0 run playsound block.glass.break player @s ~ ~ ~ 0.5 0.4
    