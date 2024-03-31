#> pvp_data:pvpfunctions/jobs/archer/ult/fin
#
# 終了処理
#
# @internal

# 終了処理
    scoreboard players reset @s archer.arrow_interval
    tag @s remove archer.ult
    tag @s remove archer.ult_hit
    tag @e[tag=archer.ult_target] remove archer.ult_target
    scoreboard players reset @s ult_count
    tag @e remove archer.ult_target