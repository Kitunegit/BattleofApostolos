#> pvp_data:pvpfunctions/jobs/archer/ult/ult_main
#
# ウルト中常時実行処理
#
# @internal

# 効果時間減少
    scoreboard players remove @s[scores={ult_count=0..}] ult_count 1
# 演出
    execute at @s run particle block minecraft:oak_leaves ~ ~1 ~ 0.1 0.5 0.1 0.1 2
# 時間まで来たらなんやかんや
    execute if score @s ult_count matches 0 unless entity @e[tag=archer.ult_target] run function pvp_data:pvpfunctions/jobs/archer/ult/miss