execute if score @s sneaking matches 1 at @s run playsound minecraft:entity.ender_eye.death player @s ~ ~ ~ 0.5 0.6
execute if score @s sneaking matches 5 at @s run playsound minecraft:entity.ender_eye.death player @s ~ ~ ~ 0.5 0.8
execute if score @s sneaking matches 10 at @s run playsound minecraft:entity.ender_eye.death player @s ~ ~ ~ 0.5 1.0
execute if score @s sneaking matches 15 at @s run playsound minecraft:entity.ender_eye.death player @s ~ ~ ~ 0.5 1.2
# Sneaking20
    execute if score @s sneaking matches 20 run scoreboard players add @s ult_cool 1
    execute if score @s sneaking matches 20 if entity @s[tag=wizard_white] run function pvp_data:pvpfunctions/jobs/wizard/passive/change_black
    execute if score @s sneaking matches 20 if entity @s[tag=wizard_black] run function pvp_data:pvpfunctions/jobs/wizard/passive/change_white