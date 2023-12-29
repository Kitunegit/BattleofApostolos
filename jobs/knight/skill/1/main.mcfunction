
execute if predicate pvp_data:r_click/cmd31 if score @s skill_1_cool matches ..0 if score @s r_click matches 1.. at @s run function pvp_data:pvpfunctions/jobs/knight/skill/1/start

#発動演出
    execute if score @s skill_1_cool matches 600.. run function pvp_data:pvpfunctions/jobs/knight/skill/1/act
#終了処理
    execute if score @s skill_1_cool matches 1 run function pvp_data:pvpfunctions/jobs/knight/skill/1/fin

#バリア
    execute if score @s skill_1_con matches 0 run clear @s barrier{CustomModelData:31} 1