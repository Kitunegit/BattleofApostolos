#> pvp_data:pvpfunctions/jobs/guardian/skill/2/skill_start
#
# スキル2の開始処理です
#
# @internal

# 発動演出
    execute at @s run playsound block.anvil.place player @a[distance=..10] ~ ~ ~ 0.5 0.8
    execute at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0.00001 0.0001 0.00001 0.5 5
# 効果付与
    # 盾を使用不可能にする
        item replace entity @s weapon.offhand with carrot_on_a_stick{display:{Name:'{"text":"守護者の蒼色の盾","color":"dark_green","bold":true,"italic":false}',Lore:['{"text":"綺麗な蒼色に染まった","color":"white","italic":false}','{"text":"この盾で未来を守ろう。","color":"white","italic":false}','{"text":"─────防具効果─────","color":"gray","italic":false}','[{"text":"\\uE014","color":"white","italic":false},{"text":"攻撃を防ぐ","color":"white","bold":true,"italic":false},{"text":"∞","color":"green","bold":false,"italic":false}]']},Unbreakable:0b,CustomModelData:84,HideFlags:6,data: ["no_drop"]} 1
        scoreboard players set @s guardian.shield_count 15
        scoreboard players set @s guardian.repair_cool 500
    # バフを付与
        function pvp_data:pvpfunctions/systems/status/effect/apply {name:generic.speed,depth:1,duration:300,overwrite:false}
        function pvp_data:pvpfunctions/systems/status/effect/apply {name:generic.attack_speed,depth:20,duration:300,overwrite:false}
        function pvp_data:pvpfunctions/systems/status/effect/apply {name:generic.attack,depth:300,duration:300,overwrite:false}
#その他処理
    item modify entity @s hotbar.2 pvp_data:system/tool_damage/set_damage
    scoreboard players set @s skill_2_cool 900
    scoreboard players set @s skill_2_count 300
    scoreboard players set @s r_click 0