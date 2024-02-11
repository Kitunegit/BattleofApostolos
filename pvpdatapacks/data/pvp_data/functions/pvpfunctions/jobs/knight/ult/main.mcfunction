#> pvp_data:pvpfunctions/jobs/knight/ult/main
#
# 騎士ウルト常時実行
#
# @within function pvp_data:pvpfunctions/jobs/knight/main

# 開始処理
    execute if predicate pvp_data:r_click/cmd33 if score @s ult_cool matches ..0 if score @s r_click matches 1.. run function pvp_data:pvpfunctions/jobs/knight/ult/start
# 発動中処理
    # チャージの処理
    execute if score @s ult_cool matches 0 run function pvp_data:pvpfunctions/jobs/knight/ult/charge
    # 斬撃の処理
    execute as @e[tag=Knight_ult.Blade] run function pvp_data:pvpfunctions/jobs/knight/ult/slash/blade
    # 被ダメ者の処理
    scoreboard players remove @e[scores={knight_ult_count=1..},tag=!Knight_ult.Blade] knight_ult_count 1
# CT処理
    execute if score @s ult_cool matches 1 run function pvp_data:pvpfunctions/jobs/knight/ult/ready