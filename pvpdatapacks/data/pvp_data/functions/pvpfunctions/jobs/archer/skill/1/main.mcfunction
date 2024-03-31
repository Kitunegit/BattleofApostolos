#> pvp_data:pvpfunctions/jobs/archer/skill/1/main
#
# 弓兵 スキル1 常時実行処理
#
# @internal

#発動処理
    execute if predicate pvp_data:r_click/cmd71 if score @s skill_1_cool matches ..0 if score @s r_click matches 1.. run function pvp_data:pvpfunctions/jobs/archer/skill/1/skill_start
#終了処理
    execute if score @s skill_1_cool matches 1 run function pvp_data:pvpfunctions/jobs/archer/skill/1/skill_fin