scoreboard players add @s skill_2_count 1
execute if score @s skill_2_count matches 3 run data modify entity @s transformation.scale set value [7,7,2]
execute if score @s skill_2_count matches 3 run data modify entity @s interpolation_duration set value 55
execute if score @s skill_2_count matches 3 run data modify entity @s start_interpolation set value -1
execute if score @s skill_2_count matches 60 run data modify entity @s transformation.scale set value [7.5,7.5,2.0]
execute if score @s skill_2_count matches 60 run data modify entity @s interpolation_duration set value 2
execute if score @s skill_2_count matches 40 run data modify entity @s start_interpolation set value -1
execute if score @s skill_2_count matches 1..20 at @e[tag=wizard.skill_attack] run tp @s ~ ~ ~
kill @s[scores={skill_2_count=70..}]