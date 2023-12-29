
#発動中演出
    execute at @s[scores={jobscore=3,skill_1_cool=501..}] run particle dust 100000000 100000000 100000000 1 ~ ~0.2 ~ 0.4 0.8 0.4 0 8 force
    execute at @s[scores={jobscore=3,skill_1_cool=501..}] run attribute @s minecraft:generic.attack_speed base set 6
	

#発動終了演出
     execute at @s[scores={jobscore=3,skill_1_cool=500}] run playsound block.fire.extinguish player @s ~ ~ ~ 0.5
     execute at @s[scores={jobscore=3,skill_1_cool=500}] run particle dust 100000000 100000000 100000000 2 ~ ~0.2 ~ 1 1.5 1 0 100 force
     execute at @s[scores={jobscore=3,skill_1_cool=500}] run attribute @s minecraft:generic.attack_speed base set 4
     execute at @s[scores={jobscore=3,skill_1_cool=500}] run effect give @s strength infinite 0 true


