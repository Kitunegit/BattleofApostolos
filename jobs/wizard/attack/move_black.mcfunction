    scoreboard players add @s wizard_normal_count 1
    execute at @s run particle dust 0.427 0.427 0.427 1 ~ ~ ~ 0.1 0.1 0.1 1 2
    execute at @s run particle dust 0.094 0.082 0.082 1 ~ ~ ~ 0.1 0.1 0.1 1 4
    execute at @s positioned ~-0.5 ~ ~-0.5 if entity @e[dx=0] if score @s wizard_normal_count matches 2.. run damage @e[tag=player,dx=0,sort=nearest,limit=1] 10 magic by @a[scores={jobscore=2},limit=1]
    execute at @s positioned ^ ^ ^1 run function collision_check:main/
    execute at @s if score @s collision_check matches 0 run tp @s ^ ^ ^1
    execute at @s if score @s collision_check matches 1 run kill @s
    execute if score @s wizard_normal_count matches 15.. run kill @s
    execute if score @s wizard_normal_count matches ..15 run function pvp_data:pvpfunctions/jobs/wizard/attack/move_black