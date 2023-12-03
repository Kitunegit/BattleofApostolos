#発動演出
    execute at @s run playsound minecraft:item.crossbow.shoot player @a[distance=..10] ~ ~ ~ 1 0.5
    execute at @s run particle minecraft:crit ~ ~ ~ 0 0 0 0.5 15
#その他処理
    item replace entity @s hotbar.2 with barrier{CustomModelData:72} 20
    scoreboard players set @s archer_skill_2_cool 400
    scoreboard players set @s r_click 0