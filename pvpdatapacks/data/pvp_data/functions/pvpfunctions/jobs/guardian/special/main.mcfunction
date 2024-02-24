#> pvp_data:pvpfunctions/jobs/guardian/special/main
#
# 特殊攻撃の常時実行処理です
#
# @internal

# 敵検知
    execute if predicate pvp_data:r_click/cmd8 if score @s special_cool matches ..0 if score @s r_click matches 1.. at @s positioned ^ ^ ^5 if entity @e[distance=..5,tag=player] run tag @e[distance=..4.99,tag=player] add guardian.sp_target
# 発動処理
    execute if entity @e[tag=guardian.sp_target] if predicate pvp_data:r_click/cmd8 if score @s special_cool matches ..0 if score @s r_click matches 1.. run function pvp_data:pvpfunctions/jobs/guardian/special/start
# 発動中処理
    execute at @s if score @s special_count matches 1.. run function pvp_data:pvpfunctions/jobs/guardian/special/special_tick
# 例外処理
    execute unless entity @e[tag=guardian.sp_target] if predicate pvp_data:r_click/cmd8 if score @s special_cool matches ..0 if score @s r_click matches 1.. at @s run playsound block.note_block.bass player @s ~ ~ ~ 1 0.5
# リセット
    execute if entity @e[tag=guardian.sp_target] run tag @e[tag=guardian.sp_target] remove guardian.sp_target
# CT終了処理
    execute if score @s special_cool matches 0 run item modify entity @s hotbar.0 pvp_data:system/tool_damage/all_heel