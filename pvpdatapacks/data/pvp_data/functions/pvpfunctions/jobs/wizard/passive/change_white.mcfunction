scoreboard players add @s sneaking 1
execute at @s run playsound minecraft:block.beacon.power_select player @a[distance=..5] ~ ~ ~ 1 2.0
execute at @s run particle dust 1 1 1 2 ~ ~1 ~ 1 0.8 1 3 40
tag @s remove wizard_black
tag @s add wizard_white