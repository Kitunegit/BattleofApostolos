
execute if predicate pvp_data:r_click/cmd31 if score @s skill_1_cool matches ..0 if score @s r_click matches 1.. run function pvp_data:pvpfunctions/jobs/knight/skill/1/skill1_start

#発動中演出
    execute as @s[scores={jobscore=3,skill_1_cool=501..}] at @s run effect give @s slowness 1 0 true
    execute at @s[scores={jobscore=3,skill_1_cool=501..}] run particle dust 100000000 100000000 100000000 1 ~ ~0.2 ~ 0.4 0.8 0.4 0 8 force
    execute at @s[scores={jobscore=3,skill_1_cool=501..}] run attribute @s minecraft:generic.attack_speed base set 6
	

#発動終了演出
     execute at @s[scores={jobscore=3,skill_1_cool=500}] run playsound block.fire.extinguish player @s ~ ~ ~ 0.5
     execute at @s[scores={jobscore=3,skill_1_cool=500}] run particle dust 100000000 100000000 100000000 2 ~ ~0.2 ~ 1 1.5 1 0 100 force
     execute at @s[scores={jobscore=3,skill_1_cool=500}] run attribute @s minecraft:generic.attack_speed base set 4

#バリア
    execute if score @s skill_1_con matches 0 run clear @s barrier{CustomModelData:31} 1