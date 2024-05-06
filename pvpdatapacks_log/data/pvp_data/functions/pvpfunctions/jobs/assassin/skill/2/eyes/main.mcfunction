#> pvp_data:pvpfunctions/jobs/assassin/skill/2/eyes/main
#
# 暗殺者スキル2 眼再起処理
#
# @internal

# 無条件処理
    scoreboard players add @s skill_2_count 1
    execute at @s positioned ^ ^ ^1 unless function better_collision:api/ at @s run tp @s ^ ^ ^1
    execute at @s run particle dust 0 0 0 0.9 ~ ~ ~ 0.4 0.4 0.4 1 11
    execute at @s run particle dust 0.435 0 1 0.7 ~ ~ ~ 0.4 0.4 0.4 1 20
# 爆発
    execute if score @s skill_2_count matches 15.. run particle dust 0.435 0 1 2.5 ~ ~ ~ 0.8 0.8 0.8 1 50
    execute if score @s skill_2_count matches 15.. run function pvp_data:pvpfunctions/jobs/assassin/skill/2/eyes/hit
 #ブロックに当たったとき
    execute at @s if function better_collision:api/ run function pvp_data:pvpfunctions/jobs/assassin/skill/2/eyes/hit
#敵に当たったとき
    execute at @s positioned ~-0.5 ~ ~-0.5 if entity @e[dx=0] run function pvp_data:pvpfunctions/jobs/assassin/skill/2/eyes/hit
# 再帰
    execute if score @s skill_2_count matches ..15 run function pvp_data:pvpfunctions/jobs/assassin/skill/2/eyes/main