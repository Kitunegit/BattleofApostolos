#発動演出
    execute at @s run playsound minecraft:entity.zombie.attack_iron_door player @a[distance=..10] ~ ~ ~ 0.5 0.8
    execute at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0.00001 0.0001 0.00001 0.5 5
    execute at @s run particle minecraft:crit ~ ~ ~ 0 0 0 0.5 15
#効果付与
    effect give @s slowness 15 1 false
    effect give @s resistance 15 2 false
    effect give @s fire_resistance 15 1 false
#その他処理
    item replace entity @s hotbar.1 with barrier{CustomModelData:81} 30
    scoreboard players set @s guardian_skill_1_cool 600
    scoreboard players set @s r_click 0