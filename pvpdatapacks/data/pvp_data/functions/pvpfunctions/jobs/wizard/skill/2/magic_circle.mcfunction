scoreboard players add @s skill_2_count 1
execute if score @s skill_2_count matches 1..40 at @s run tp @s ~ ~ ~ ~9 ~
execute if score @s skill_2_count matches 3 run data modify entity @s transformation.scale set value [3,3,3]
execute if score @s skill_2_count matches 3 run data modify entity @s interpolation_duration set value 35
execute if score @s skill_2_count matches 3 run data modify entity @s start_interpolation set value -1
execute if score @s skill_2_count matches 40 run data modify entity @s transformation.scale set value [4.2,4.2,4.2]
execute if score @s skill_2_count matches 40 run data modify entity @s interpolation_duration set value 2
execute if score @s skill_2_count matches 40 run data modify entity @s start_interpolation set value -1
execute at @e[tag=wizard.skill_heel] run tp @s ~ ~ ~
kill @s[scores={skill_2_count=50..}]