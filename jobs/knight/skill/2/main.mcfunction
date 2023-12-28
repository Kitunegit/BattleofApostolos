
execute if predicate pvp_data:r_click/cmd32 if score @s skill_2_cool matches ..0 if score @s r_click matches 1.. run function pvp_data:pvpfunctions/jobs/knight/skill/2/start


#発動中演出(前半)
    execute if score @s skill_2_cool matches 400.. run function pvp_data:pvpfunctions/jobs/knight/skill/2/buff

#発動演出(後半)
    execute if score @s skill_2_cool matches 600.. run function pvp_data:pvpfunctions/jobs/knight/skill/2/debuff

#終了処理
    execute if score @s skill_2_cool matches 1 run function pvp_data:pvpfunctions/jobs/knight/skill/2/fin

#バリア
    execute if score @s skill_2_con matches 0 run clear @s barrier{CustomModelData:32} 1
