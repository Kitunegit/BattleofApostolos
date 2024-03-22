#> pvp_data:pvpfunctions/jobs/guardian/skill/1/skill_start
#
# スキル1の開始処理です
#
# @internal

# 発動演出
    execute at @s run playsound minecraft:item.lodestone_compass.lock player @a[distance=..5] ~ ~ ~ 1 0.5
    execute at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0.00001 0.0001 0.00001 0.5 5
    execute at @s run particle minecraft:crit ~ ~ ~ 0 0 0 0.5 15
# 効果付与
    scoreboard players set @s guardian.shield_count 12
    tag @s add guardian.shield_strong
# 盾修復
    item replace entity @s weapon.offhand with shield{display:{Name:'{"text":"守護者の蒼色の盾","color":"dark_green","bold":true,"italic":false}',Lore:['{"text":"綺麗な蒼色に染まった","color":"white","italic":false}','{"text":"この盾で未来を守ろう。","color":"white","italic":false}','{"text":"─────防具効果─────","color":"gray","italic":false}','[{"text":"\\uE014","color":"white","italic":false},{"text":"攻撃を防ぐ","color":"white","bold":true,"italic":false},{"text":"∞","color":"green","bold":false,"italic":false}]']},Unbreakable:0b,CustomModelData:8,HideFlags:6,data: ["no_drop"],Enchantments:[{}]} 1
    scoreboard players set @s guardian.repair_cool 0
# その他処理
    item modify entity @s hotbar.1 pvp_data:system/tool_damage/set_damage
    scoreboard players set @s skill_1_cool 900
    scoreboard players set @s skill_1_count 300
    scoreboard players set @s r_click 0