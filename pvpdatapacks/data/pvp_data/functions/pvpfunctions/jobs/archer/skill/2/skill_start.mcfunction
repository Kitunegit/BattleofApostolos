#> pvp_data:pvpfunctions/jobs/archer/skill/2/skill_start
#
# 弓兵 スキル2 開始処理
#
# @internal

# 発動演出
    execute at @s run playsound minecraft:item.crossbow.shoot player @a[distance=..10] ~ ~ ~ 1 0.5
    execute at @s run particle minecraft:crit ~ ~ ~ 0 0 0 0.5 15
# その他処理
    item modify entity @s hotbar.2 pvp_data:system/tool_damage/set_damage
    scoreboard players set @s skill_2_cool 400
    scoreboard players set @s skill_2_count 120