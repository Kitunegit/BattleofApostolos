#> pvp_data:pvpfunctions/jobs/assassin/skill/1/buff
#
# 暗殺者のスキルバフ中のパーティクルを表示＆終了音声
#
# @within function pvp_data:pvpfunctions/jobs/assassin/skill/1/skill_main

execute at @s run particle dust 0.78 0 1 1.2 ~ ~ ~ 0.5 0.8 0.5 1 15

execute at @s run particle dust 0.31 0.01 0.33 1.2 ~ ~ ~ 0.5 0.8 0.5 1 15

execute if score @s skill_1_count matches 1 at @s run playsound entity.generic.extinguish_fire player @s ~ ~ ~ 0.5 1

scoreboard players remove @s skill_1_count 1