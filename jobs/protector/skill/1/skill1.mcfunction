execute at @s run playsound minecraft:entity.zombie.attack_iron_door player @a[distance=..10] ~ ~ ~ 0.5 0.8
item replace entity @s hotbar.1 with barrier{CustomModelData:81} 30


scoreboard players set @s protector_skill_1_cool 600
scoreboard players set @s r_click 0