    scoreboard players add @s wizard_normal_count 1
    execute at @s run particle enchanted_hit ~ ~ ~ 0.25 0.25 0.25 0.25 3
    execute at @s run particle dust 1 1 1 1 ~ ~ ~ 0.1 0.1 0.1 1 6
    execute at @s positioned ~-0.5 ~ ~-0.5 if entity @e[dx=0] if score @s wizard_normal_count matches 2.. as @a[tag=wizard.magic_fire] run function pvp_data:pvpfunctions/systems/job_system/damage/apply {damage:{amount: 2.5f, type: "pvp_data:wizard/wizard_normal_magic"},knockback:{}, target: "@e[tag=player,dx=0,tag=!wizard.magic_fire]"}
    execute at @s positioned ~-0.5 ~ ~-0.5 if entity @e[dx=0] if score @s wizard_normal_count matches 2.. as @a[tag=wizard.magic_fire] run tag @s add wizard.enm_hit
    execute at @s positioned ^ ^ ^1 run function collision_check:main/
    execute at @s if score @s collision_check matches 0 run tp @s ^ ^ ^1
    execute at @s if score @s collision_check matches 1 run kill @s
    execute if score @s wizard_normal_count matches 20.. run kill @s
    execute if score @s wizard_normal_count matches ..20 run function pvp_data:pvpfunctions/jobs/wizard/attack/move_white