#守護者-imageColor_blue
execute if entity @a[scores={jobscore=8}] run function pvp_data:pvpfunctions/jobs/protector/passive
execute if entity @a[scores={jobscore=8}] run function pvp_data:pvpfunctions/jobs/protector/skill1
execute if entity @a[scores={jobscore=8}] run function pvp_data:pvpfunctions/jobs/protector/skill2

scoreboard players remove @a[scores={jobscore=8,protector_skill_1_cool=0..}] protector_skill_1_cool 1
scoreboard players remove @a[scores={jobscore=8,protector_skill_2_cool=0..}] protector_skill_2_cool 1
scoreboard players reset @a[scores={jobscore=8}] protector_r_detect