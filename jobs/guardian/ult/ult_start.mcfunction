#発動演出
    execute at @s run playsound minecraft:item.trident.thunder player @a[distance=..10] ~ ~ ~ 0.7 1.5
    execute at @s run playsound entity.zombie.attack_wooden_door player @a[distance=..10] ~ ~ ~ 0.7 0.4
    execute at @s run particle minecraft:totem_of_undying ~ ~ ~ 1 1 1 0.5 30
    execute at @s run particle minecraft:crit ~ ~ ~ 0 0 0 0.5 15
#効果付与
    effect give @s minecraft:strength 20 1 true
    effect give @s resistance 20 2 true
    scoreboard players set @s guardian_ult_time 300
#その他処理
    item replace entity @s hotbar.3 with barrier{CustomModelData:83}
    scoreboard players set @s ult_cool 90
    scoreboard players set @s r_click 0