
execute if predicate pvp_data:r_click/cmd32 if score @s skill_2_cool matches ..0 if score @s r_click matches 1.. run function pvp_data:pvpfunctions/jobs/knight/skill/2/skill2_start


#発動中演出(前半)
    execute at @s[scores={jobscore=3,skill_2_cool=800}] run effect give @s strength 10 1 true
    execute at @s[scores={jobscore=3,skill_2_cool=601..}] run particle dust 0.008 0.718 0.718 1 ~ ~0.2 ~ 0.4 0.8 0.4 0 8 force
    execute at @s[scores={jobscore=3,skill_2_cool=601}] run particle dust 0.008 0.718 0.718 2 ~ ~0.2 ~ 1 1.5 1 0 100 force
    execute at @s[scores={jobscore=3,skill_2_cool=601}] run playsound minecraft:block.glass.break player @s

#発動演出(後半)
    execute at @s[scores={jobscore=3,skill_2_cool=401..600}] run effect give @s resistance 10 0 true
    execute at @s[scores={jobscore=3,skill_2_cool=401..600}] run effect give @s weakness 10 0 true
    execute at @s[scores={jobscore=3,skill_2_cool=401..600}] run particle dust 0.302 0.012 0.012 1 ~ ~0.2 ~ 0.4 0.8 0.4 0 8 force
    execute at @s[scores={jobscore=3,skill_2_cool=401}] run particle dust 0.302 0.012 0.012 2 ~ ~0.2 ~ 1 1.5 1 0 100 force
    execute at @s[scores={jobscore=3,skill_2_cool=401}] run playsound entity.blaze.shoot player @s ~ ~ ~ 1 0.8
    execute at @s[scores={jobscore=3,skill_2_cool=40}] run effect give @s strength infinite 0 true

#終了処理
    execute if score @s skill_2_cool matches 1 run function pvp_data:pvpfunctions/jobs/knight/skill/2/skill2_fin

#バリア
    execute if score @s skill_2_con matches 0 run clear @s barrier{CustomModelData:32} 1
