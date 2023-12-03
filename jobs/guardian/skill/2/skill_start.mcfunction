#発動演出
    execute at @s run playsound block.anvil.place player @a[distance=..10] ~ ~ ~ 0.5 0.8
    execute at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0.00001 0.0001 0.00001 0.5 5
    execute at @s run particle minecraft:crit ~ ~ ~ 0 0 0 0.5 15
#効果付与
    effect give @s minecraft:absorption 15 4 true
#その他処理
    item replace entity @s hotbar.2 with barrier{CustomModelData:82} 60
    scoreboard players set @s guardian_skill_2_cool 1200
    scoreboard players set @s r_click 0