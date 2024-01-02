    scoreboard players add @s wizard_normal_count 1
    execute at @s run particle enchanted_hit ~ ~ ~ 0.25 0.25 0.25 0.25 3
    execute at @s run particle dust 1 1 1 1 ~ ~ ~ 0.1 0.1 0.1 1 6
    execute at @s positioned ~-0.5 ~ ~-0.5 if entity @e[dx=0] if score @s wizard_normal_count matches 2.. run damage @e[tag=player,dx=0,sort=nearest,limit=1] 2 minecraft:bad_respawn_point by @a[scores={jobscore=2},limit=1]
    execute at @s positioned ^ ^ ^1 run function collision_check:main/
    execute at @s if score @s collision_check matches 0 run tp @s ^ ^ ^1
    execute at @s if score @s collision_check matches 1 run kill @s
    execute if score @s wizard_normal_count matches 20.. run kill @s
    execute if score @s wizard_normal_count matches ..20 run function pvp_data:pvpfunctions/jobs/wizard/attack/move_white