scoreboard players add @s skill_2_count 1
execute if score @s skill_2_count matches 0..36 at @s run tp @s ~ ~ ~ ~15 ~
execute if score @s skill_2_count matches 37..40 at @s run tp @s ~ ~ ~ ~0.5 ~
execute at @e[tag=wizard.skill_heel] run tp @s ~ ~ ~
kill @s[scores={skill_2_count=50..}]