
#発動演出(前半)
    execute at @s[scores={jobscore=3,skill_2_cool=800}] run effect give @s strength 10 1 true
    execute at @s[scores={jobscore=3,skill_2_cool=601..}] run particle dust 0.008 0.718 0.718 1 ~ ~0.2 ~ 0.4 0.8 0.4 0 8 force
    execute at @s[scores={jobscore=3,skill_2_cool=601}] run particle dust 0.008 0.718 0.718 2 ~ ~0.2 ~ 1 1.5 1 0 100 force
    execute at @s[scores={jobscore=3,skill_2_cool=601}] run playsound minecraft:block.glass.break player @s
    execute at @s[scores={jobscore=3,skill_2_cool=601}] run effect clear @s