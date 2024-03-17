#> pvp_data:pvpfunctions/jobs/assassin/special/skill_main
#
# 暗殺者特殊攻撃常時実行
#
# @internal
    #発動処理
        execute if predicate pvp_data:r_click/cmd6 if score @s special_cool matches ..0 if score @s r_click matches 1.. run function pvp_data:pvpfunctions/jobs/assassin/special/start
    #バリア減らし
        execute if score @s special_cool matches 595 run function pvp_data:pvpfunctions/jobs/assassin/special/skill2

        execute if score @s special_con matches 0 run clear @s stick{CustomModelData:64} 1
        #終了処理
        execute if score @s special_cool matches 1 run function pvp_data:pvpfunctions/jobs/assassin/special/skill_fin