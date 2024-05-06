execute at @s run particle crit ~ ~ ~ 2 2 2 0.2 350

execute at @s run playsound minecraft:block.amethyst_block.break player @a[distance=..10] ~ ~ ~ 1 1.3
execute at @s run playsound minecraft:block.glass.break player @a[distance=..10] ~ ~ ~ 1 1.3
execute at @s run playsound minecraft:block.chain.place player @a[distance=..10] ~ ~ ~ 0.5 0.5

execute if score @s jobscore matches 4 run effect give @s instant_health 1 0 true
scoreboard players set @s guard_cool 35