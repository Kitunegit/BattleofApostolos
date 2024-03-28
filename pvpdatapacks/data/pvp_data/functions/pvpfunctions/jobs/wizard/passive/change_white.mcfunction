scoreboard players add @s sneaking 1
execute at @s run playsound minecraft:block.beacon.power_select player @a[distance=..5] ~ ~ ~ 1 2.0
execute at @s run particle dust 0.925 0.925 0.925 2 ~ ~1 ~ 1 0.8 1 3 40
item modify entity @s hotbar.2 pvp_data:wizard/to_white
tag @s remove wizard_black
tag @s add wizard_white