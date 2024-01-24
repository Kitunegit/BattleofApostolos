execute at @a[tag=wizard.skill1_ready] positioned ~ ~1.4 ~ run tp @s ^ ^ ^1 facing ^ ^ ^1
scoreboard players add @s wizard_normal_count 1
execute if score @s wizard_normal_count matches 3 run data modify entity @s transformation.scale set value [3,3,3]
execute if score @s wizard_normal_count matches 3 run data modify entity @s interpolation_duration set value 35
execute if score @s wizard_normal_count matches 3 run data modify entity @s start_interpolation set value -1
execute if score @s wizard_normal_count matches 40 run data modify entity @s transformation.scale set value [2,2,2]
execute if score @s wizard_normal_count matches 40 run data modify entity @s interpolation_duration set value 2
execute if score @s wizard_normal_count matches 40 run data modify entity @s start_interpolation set value -1
kill @s[scores={wizard_normal_count=55..}]