#> pvp_data:pvpfunctions/jobs/guardian/skill/1/skill_main
#
# スキル1用の常時実行処理です
#
# @internal

#スキル1処理
    #発動処理
        execute if predicate pvp_data:r_click/cmd81 if score @s skill_1_cool matches ..0 if score @s skill_2_count matches ..0 if score @s r_click matches 1.. run function pvp_data:pvpfunctions/jobs/guardian/skill/1/skill_start
    #スキルエフェクト
        execute at @s if score @s skill_1_count matches 1.. run function pvp_data:pvpfunctions/jobs/guardian/skill/1/skill_tick
    #終了処理
        execute if score @s skill_1_cool matches 1 run function pvp_data:pvpfunctions/jobs/guardian/skill/1/skill_fin