scoreboard players add @s sneaking 1
execute at @s run playsound minecraft:block.beacon.power_select player @a[distance=..5] ~ ~ ~ 1 1.5
execute at @s run particle dust 0 0 0 2 ~ ~1 ~ 1 0.8 1 3 40
tag @s add wizard_black