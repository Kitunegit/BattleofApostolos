
#発動演出(後半)
    execute at @s[scores={jobscore=3,skill_2_cool=600}] run effect give @s resistance 10 0 true
    execute at @s[scores={jobscore=3,skill_2_cool=600}] run effect give @s weakness 10 0 true
    execute at @s[scores={jobscore=3,skill_2_cool=401..600}] run particle dust 0.302 0.012 0.012 1 ~ ~0.2 ~ 0.4 0.8 0.4 0 8 force
    execute at @s[scores={jobscore=3,skill_2_cool=401}] run particle dust 0.302 0.012 0.012 2 ~ ~0.2 ~ 1 1.5 1 0 100 force
    execute at @s[scores={jobscore=3,skill_2_cool=401}] run playsound entity.blaze.shoot player @s ~ ~ ~ 1 0.8
    execute at @s[scores={jobscore=3,skill_2_cool=400}] run effect give @s strength infinite 0 true