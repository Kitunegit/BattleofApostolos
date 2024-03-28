#> pvp_data:pvpfunctions/jobs/wizard/skill/1/main
#
# 魔導士スキル1常時実行処理
#
# @internal

#スキル1発動処理
    #発動処理
        execute unless score @s Charge.Time matches 1.. if predicate pvp_data:r_click/cmd21 if score @s skill_1_cool matches ..0 if score @s r_click matches 1.. run function pvp_data:pvpfunctions/jobs/wizard/skill/1/skill_start
        execute at @s as @e[tag=Magic.SkillCircle,type=item_display] run function pvp_data:pvpfunctions/jobs/wizard/skill/1/magic_circle
    #終了処理
        execute if score @s skill_1_cool matches 1 run function pvp_data:pvpfunctions/jobs/wizard/skill/1/skill_fin