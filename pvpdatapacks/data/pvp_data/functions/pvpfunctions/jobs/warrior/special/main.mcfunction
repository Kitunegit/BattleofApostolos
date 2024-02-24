#> pvp_data:pvpfunctions/jobs/warrior/special/main
#
# 戦士特殊攻撃常時実行処理
#
# @internal

#発動処理
    execute if predicate pvp_data:r_click/cmd4 if score @s special_cool matches ..0 if score @s r_click matches 1.. run function pvp_data:pvpfunctions/jobs/warrior/special/skill_start
#スキル中処理
    execute if score @s special_count matches 1.. run function pvp_data:pvpfunctions/jobs/warrior/special/skill_main
#終了処理
    execute if score @s special_cool matches 1 run function pvp_data:pvpfunctions/jobs/warrior/special/skill_fin