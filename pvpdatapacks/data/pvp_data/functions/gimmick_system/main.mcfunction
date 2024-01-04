execute as @a at @s if block ~ ~ ~ sculk_sensor run effect give @s levitation 1 5 true
execute as @a at @s if block ~ ~-1 ~ sculk run effect give @s speed 1 2 true
execute as @a at @s if block ~ ~-0.5 ~ soul_sand run effect give @s minecraft:slowness 1 5 true
execute as @a at @s if block ~ ~ ~ chain if score @s sneaking matches 1.. run summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[{Id:25,Amplifier:4,Duration:2,show_particles:1b}]}
execute as @a at @s if block ~ ~ ~ chain if score @s sneaking matches 1.. run summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[{Id:28,Amplifier:4,Duration:10,show_particles:1b}]}
execute as @a at @s if block ~ ~ ~ chain if score @s sneaking matches 1.. run playsound block.chain.place player @s ~ ~ ~ 0.4 1.5