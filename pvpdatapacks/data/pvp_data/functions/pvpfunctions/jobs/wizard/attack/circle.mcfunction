scoreboard players add @s wizard_normal_count 1

execute if score @s wizard_normal_count matches 3 run data modify entity @s transformation.scale set value [0.75,0.75,0.1]
execute if score @s wizard_normal_count matches 3 run data modify entity @s interpolation_duration set value 5
execute if score @s wizard_normal_count matches 3 run data modify entity @s start_interpolation set value -1

execute if score @s wizard_normal_count matches 15 run data modify entity @s transformation.scale set value [0.1,0.1,0.1]
execute if score @s wizard_normal_count matches 15 run data modify entity @s interpolation_duration set value 5
execute if score @s wizard_normal_count matches 15 run data modify entity @s start_interpolation set value -1
kill @s[scores={wizard_normal_count=20..}]