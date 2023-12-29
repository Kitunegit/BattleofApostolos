execute if score @s warrior_skill_2_timer matches 15 run effect give @s levitation 1 255 true
execute if score @s warrior_skill_2_timer matches 3..15 run effect give @s levitation 1 255 true
execute if score @s warrior_skill_2_timer matches 2 run effect clear @s levitation
execute if score @s warrior_skill_2_timer matches 1 run effect give @s levitation 1 128 true
execute if score @s warrior_skill_2_timer matches 1 at @s rotated ~ 90 run function delta:api/launch_looking
execute if score @s warrior_skill_2_timer matches 1 run tag @s add warrior_jump_hover

scoreboard players remove @s warrior_skill_2_timer 1