#発動演出
    execute at @s run playsound entity.player.attack.sweep player @a[distance=..10] ~ ~ ~ 1 0.8
    execute at @s run particle dust 0.78 0 1 2 ~ ~ ~ 0.5 0.8 0.5 1 4
    execute at @s run particle dust 0.78 0 1 2 ~ ~ ~ 0.31 0.01 0.33 1 4
    execute at @s run particle minecraft:crit ~ ~ ~ 0 0 0 0.5 15
#効果付与
    effect give @s speed 5 6 false
    effect give @s strength 5 0 false
#その他処理
    item replace entity @s hotbar.1 with barrier{CustomModelData:61} 20
    scoreboard players set @s assassin_skill_1_cool 400
    scoreboard players set @s r_click 0