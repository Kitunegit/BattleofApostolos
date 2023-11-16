
#発動演出
    execute at @s run playsound block.anvil.land player @a[distance=..10] ~ ~ ~ 0.5 2
    execute at @s run particle crit ~ ~1 ~ 1.5 1.5 1.5 0.2 10 normal
item replace entity @s hotbar.1 with barrier{CustomModelData:31} 41

scoreboard players set @s knight_skill_1_cool 800
scoreboard players set @s r_click 0