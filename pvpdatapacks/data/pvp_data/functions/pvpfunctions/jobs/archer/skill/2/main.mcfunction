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

# 発光が無くなったらタグを削除
    tag @e[nbt=!{active_effects:[{id:"minecraft:glowing"}]},tag=archer.homing_target] remove archer.homing_target