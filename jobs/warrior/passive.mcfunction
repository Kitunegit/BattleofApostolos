execute if score @s sneaking matches 1 at @s run function pvp_data:pvpfunctions/jobs/warrior/passive/guard_start
execute if score @s sneaking matches 1..2 at @s run playsound minecraft:block.deepslate_tiles.hit player @s ~ ~ ~ 0.5 1.2
execute if score @s sneaking matches 2 at @s run function pvp_data:pvpfunctions/jobs/warrior/passive/guard_fin