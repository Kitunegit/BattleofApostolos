#> pvp_data:pvpfunctions/jobs/warrior/skill/1/main
#
# 戦士スキル1常時実行処理
#
# @internal

#スキル1処理
    #発動処理
        execute if predicate pvp_data:r_click/cmd41 if score @s skill_1_cool matches ..0 if score @s r_click matches 1.. run function pvp_data:pvpfunctions/jobs/warrior/skill/1/skill_start
    #スキルエフェクト
        execute at @s if score @s skill_1_count matches 1.. run function pvp_data:pvpfunctions/jobs/warrior/skill/1/skill_tick
        #終了処理
        execute if score @s skill_1_cool matches 1 run function pvp_data:pvpfunctions/jobs/warrior/skill/1/skill_fin