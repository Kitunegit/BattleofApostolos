#> pvp_data:pvpfunctions/jobs/archer/skill/2/main
#
# 弓兵 スキル2 常時実行処理
#
# @internal

# 発動処理
    execute if predicate pvp_data:r_click/cmd72 if score @s skill_2_cool matches ..0 if score @s r_click matches 1.. run function pvp_data:pvpfunctions/jobs/archer/skill/2/skill_start
# スキル中処理
    execute if score @s skill_2_count matches 1.. run function pvp_data:pvpfunctions/jobs/archer/skill/2/skill_tick

# 終了処理
    execute if score @s skill_2_cool matches 1 run function pvp_data:pvpfunctions/jobs/archer/skill/2/skill_fin

# 矢の追尾常時実行処理
    execute as @e[tag=archer.target_marker] at @e[tag=archer.homing_target] if score @s archer.target_unique = @e[tag=archer.homing_target,limit=1,sort=nearest] PlayerID run tp @s @e[tag=archer.homing_target,limit=1,sort=nearest]