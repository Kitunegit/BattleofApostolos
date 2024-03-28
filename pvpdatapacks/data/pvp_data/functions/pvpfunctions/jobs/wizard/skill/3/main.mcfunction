#> pvp_data:pvpfunctions/jobs/wizard/skill/3/main
#
# 魔導士 黒スキル 開始処理
#
# @internal

#発動処理
    execute if predicate pvp_data:r_click/cmd23 if score @s skill_2_cool matches ..0 if score @s r_click matches 1.. run function pvp_data:pvpfunctions/jobs/wizard/skill/3/skill_start
    execute as @e[tag=wizard_skill2_black,type=item_display] run function pvp_data:pvpfunctions/jobs/wizard/skill/3/magic_circle

    execute at @e[tag=wizard.skill_trgt] anchored eyes positioned ~ ~1.5 ~ run particle dust 0 0 0 0.5 ^ ^ ^0.2 0.1 0.1 0.1 1 15
#終了処理
    execute if score @s skill_2_cool matches 1 run function pvp_data:pvpfunctions/jobs/wizard/skill/3/skill_fin