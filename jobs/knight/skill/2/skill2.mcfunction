
execute if predicate pvp_data:r_click/cmd32 if score @s skill_2_cool matches ..0 if score @s r_click matches 1.. run function pvp_data:pvpfunctions/jobs/knight/skill/2/skill2_start


#発動中演出(前半)
    execute at @s[scores={jobscore=3,skill_2_cool=601..}] run effect give @s strength 1 1 true
    execute at @s[scores={jobscore=3,skill_2_cool=601..}] run particle dust 0.008 0.718 0.718 1 ~ ~0.2 ~ 0.4 0.8 0.4 0 8 force

#終了処理
    execute if score @s skill_2_cool matches 1 run function pvp_data:pvpfunctions/jobs/knight/skill/2/skill2_fin

#バリア
    execute if score @s skill_2_con matches 0 run clear @s barrier{CustomModelData:32} 1
