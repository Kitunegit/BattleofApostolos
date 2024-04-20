#> pvp_data:pvpfunctions/jobs/archer/ult/main
#
# ウルト常時実行処理
#
# @internal

#発動処理
    execute if predicate pvp_data:r_click/cmd73 if score @s ult_cool matches ..0 if score @s r_click matches 1.. run function pvp_data:pvpfunctions/jobs/archer/ult/ult_start
# 効果中処理
    execute at @s if score @s ult_count matches 0.. unless entity @s[tag=archer.ult_hit] run function pvp_data:pvpfunctions/jobs/archer/ult/ult_main
    execute as @e[type=arrow,tag=archer.ult] run function pvp_data:pvpfunctions/jobs/archer/ult/arrow_main
# 矢の雨
    execute at @s if score @s ult_count matches 0.. if entity @s[tag=archer.ult_hit] run function pvp_data:pvpfunctions/jobs/archer/ult/arrow_rain
#終了処理
    execute if score @s ult_cool matches 1 run function pvp_data:pvpfunctions/jobs/archer/ult/ult_fin