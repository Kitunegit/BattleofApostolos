
execute if predicate pvp_data:r_click/cmd32 if score @s skill_2_cool matches ..0 if score @s r_click matches 1.. run function pvp_data:pvpfunctions/jobs/knight/skill/2/skill2_start

#終了処理
    execute if score @s skill_2_cool matches 1 run function pvp_data:pvpfunctions/jobs/knight/skill/2/skill1_fin

#バリア
    execute if score @s skill_2_con matches 0 run clear @s barrier{CustomModelData:32} 1
