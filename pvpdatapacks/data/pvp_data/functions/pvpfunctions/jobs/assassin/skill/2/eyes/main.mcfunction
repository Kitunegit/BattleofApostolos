#無条件処理
    scoreboard players add @s assassin_skill_2_tmr 1
    execute at @s positioned ^ ^ ^1 run function collision_check:main/
    execute at @s if score @s collision_check matches 0 run tp @s ^ ^ ^1
    execute at @s run particle dust 0 0 0 0.9 ~ ~ ~ 0.4 0.4 0.4 1 11
    execute at @s run particle dust 0.435 0 1 0.7 ~ ~ ~ 0.4 0.4 0.4 1 20
    execute if score @s assassin_skill_2_tmr matches 15.. run particle dust 0.435 0 1 2.5 ~ ~ ~ 0.8 0.8 0.8 1 50
    kill @e[type=marker,tag=black_eyes,scores={assassin_skill_2_tmr=15..}]
 #ブロックに当たったとき
    execute unless score @s collision_check matches 0 run function pvp_data:pvpfunctions/jobs/assassin/skill/2/eyes/hit
#敵に当たったとき
    execute at @s positioned ~-0.5 ~ ~-0.5 if entity @e[dx=0] run function pvp_data:pvpfunctions/jobs/assassin/skill/2/eyes/hit
    
    execute if score @s assassin_skill_2_tmr matches ..15 run function pvp_data:pvpfunctions/jobs/assassin/skill/2/eyes/main