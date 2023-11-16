
#発動演出
    execute at @s run playsound block.anvil.land player @a[distance=..10] ~ ~ ~ 0.5 2
    execute at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 0.35 30
item replace entity @s hotbar.1 with barrier{CustomModelData:31} 30

scoreboard players set @s knight_skill_1_cool 600
scoreboard players set @s r_click 0