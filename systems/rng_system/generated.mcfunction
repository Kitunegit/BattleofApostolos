execute at @s run summon area_effect_cloud ~ ~ ~ {Tags:["RNG"]}
execute at @s store result score @s rng run data get entity @e[tag=RNG,distance=..0.01,limit=1] UUID[0]
scoreboard players operation @s rng %= $100 rng