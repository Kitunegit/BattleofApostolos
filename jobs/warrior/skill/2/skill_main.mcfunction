execute if score @s warrior_skill_2_timer matches 15 run effect give @s levitation 1 255 true
execute if score @s warrior_skill_2_timer matches 15 at @s run summon marker ~ ~50 ~ {Tags:[warrior_jump_hover]}
execute if score @s warrior_skill_2_timer matches 2..15 at @e[tag=warrior_jump_hover,type=marker] run tp @s ~ ~-50 ~
execute if score @s warrior_skill_2_timer matches 1 run scoreboard players set $strength delta.api.launch 70000
execute if score @s warrior_skill_2_timer matches 1 at @s rotated ~ 90 run function delta:api/launch_looking
execute if score @s warrior_skill_2_timer matches 1 run tag @s add warrior_jump_hover

scoreboard players remove @s warrior_skill_2_timer 1