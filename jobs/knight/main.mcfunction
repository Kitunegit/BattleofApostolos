
#騎士-imageColor_lightBlue

    execute if entity @a[scores={jobscore=3}] run function pvp_data:pvpfunctions/jobs/knight/passive
    execute if entity @a[scores={jobscore=3}] run function pvp_data:pvpfunctions/jobs/knight/skill_1

    scoreboard players remove @a[scores={jobscore=3,knight_skill_1_cool=1..}] knight_skill_1_cool 1