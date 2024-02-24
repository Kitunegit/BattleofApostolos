#> pvp_data:pvpfunctions/jobs/guardian/skill/2/skill_main
#
# スキル2の常時実行処理です
#
# @internal

# スキル1処理
    # 発動処理
        execute if predicate pvp_data:r_click/cmd82 if score @s skill_2_cool matches ..0 if score @s r_click matches 1.. run function pvp_data:pvpfunctions/jobs/guardian/skill/2/skill_start
    # 発動中処理
        execute if score @s skill_2_count matches 1.. run function pvp_data:pvpfunctions/jobs/guardian/skill/2/skill_tick
    # 終了処理
        execute if score @s skill_2_cool matches 1 run function pvp_data:pvpfunctions/jobs/guardian/skill/2/skill_fin