scoreboard players remove @s dark_scientist_skill1_charge 1
execute if score @s dark_scientist_skill1_charge matches ..0 run effect give @s minecraft:regeneration 8 1
execute if score @s dark_scientist_skill1_charge matches ..0 run execute if predicate pvp_data:50_rng run scoreboard players add @s dark_scientist_passive 1