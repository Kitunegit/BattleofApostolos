#> pvp_data:pvpfunctions/jobs/assassin/skill/2/skill_main
#
# 暗殺者スキル2常時実行処理
#
# @internal

#スキル2処理

    #発動処理
        execute if predicate pvp_data:r_click/cmd62 if score @s skill_2_cool matches ..0 if score @s r_click matches 1.. run function pvp_data:pvpfunctions/jobs/assassin/skill/2/skill_start
    #終了処理
        execute if score @s skill_2_cool matches 1 run function pvp_data:pvpfunctions/jobs/assassin/skill/2/skill_fin