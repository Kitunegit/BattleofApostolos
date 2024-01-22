scoreboard players add @s skill_2_count 1
execute if score @s skill_2_count matches 0..46 at @s run tp @s ~ ~ ~ ~15 ~
execute if score @s skill_2_count matches 47..50 at @s run tp @s ~ ~ ~ ~10 ~
execute if score @s skill_2_count matches 47..60 at @s run tp @s ~ ~ ~ ~4 ~
execute at @e[tag=wizard.skill_attack] run tp @s ~ ~ ~
kill @s[scores={skill_2_count=70..}]