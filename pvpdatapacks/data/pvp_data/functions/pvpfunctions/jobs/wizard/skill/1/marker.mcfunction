scoreboard players add @s wizard_skill_count 1
execute at @s run particle minecraft:dust 0.59 0.63 0.65 2 ~ ~ ~ 0.4 0.4 0.4 0.4 20
execute at @s positioned ~-0.5 ~ ~-0.5 if entity @e[dx=0] if score @s wizard_skill_count matches 2.. as @a[tag=wizard.magic_fire] run function pvp_data:pvpfunctions/systems/job_system/damage/apply_fixed {damage:{amount: 7f, type: "pvp_data:wizard/wizard_normal_magic"},knockback:{}, target: "@e[tag=player,dx=0]"}
execute at @s positioned ^ ^ ^1 run function collision_check:main/
execute at @s if score @s collision_check matches 0 run tp @s ^ ^ ^1
execute at @s if score @s collision_check matches 1 run kill @s
execute if score @s wizard_skill_count matches 30.. run kill @s
execute if score @s wizard_skill_count matches ..30 run function pvp_data:pvpfunctions/jobs/wizard/skill/1/marker