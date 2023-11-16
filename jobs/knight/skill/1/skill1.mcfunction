
#発動時演出
    execute at @s run playsound block.anvil.land player @a[distance=..10] ~ ~ ~ 0.5 2
    execute at @s run particle crit ~ ~1 ~ 1 1 1 0 80 normal
    execute at @s run particle end_rod ~ ~1 ~ 0.8 0.8 0.8 0 80 normal

#発動中演出
    execute at @s[scores={knight_skill_1_cool=1..}] run particle dust 1 1 1 1 ~ ~1 ~ 0.9 0.9 0.9 1 20 normal
    execute at @s[scores={knight_skill_1_cool=1..}] run attribute @s minecraft:generic.attack_speed base set 8

#発動終了演出
     execute at @s[scores={knight_skill_1_cool=1}] run playsound block.fire.extinguish player @s ~ ~ ~ 0.5
     execute at @s[scores={knight_skill_1_cool=1}] run attribute @s minecraft:generic.attack_speed base set 4
item replace entity @s hotbar.1 with barrier{CustomModelData:31} 41

scoreboard players set @s knight_skill_1_cool 800
scoreboard players set @s r_click 0