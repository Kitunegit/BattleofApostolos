    scoreboard players add @s wizard_normal_count 1
    execute at @s run particle enchanted_hit ~ ~ ~ 0.25 0.25 0.25 0.25 5
    execute at @s run particle dust 0 0 0 0.7 ~ ~ ~ 0.1 0.1 0.1 1 8
    execute at @s positioned ~-0.5 ~ ~-0.5 if entity @e[dx=0] if score @s wizard_normal_count matches 2.. as @a[tag=wizard.magic_fire] run function pvp_data:pvpfunctions/systems/job_system/damage/apply {damage:{amount: 3f, type: "pvp_data:wizard/wizard_normal_magic"},knockback:{}, target: "@e[tag=player,dx=0]"}
    execute at @s unless function better_collision:api/ run tp @s ^ ^ ^1
    execute at @s if function better_collision:api/ run kill @s
    execute if score @s wizard_normal_count matches 9.. run kill @s
    execute if score @s wizard_normal_count matches ..9 run function pvp_data:pvpfunctions/jobs/wizard/attack/move_black