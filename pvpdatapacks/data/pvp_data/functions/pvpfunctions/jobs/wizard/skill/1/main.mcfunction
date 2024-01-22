#スキル1発動処理
    #発動処理
        execute if predicate pvp_data:r_click/cmd21 if score @s skill_2_cool matches ..0 if score @s r_click matches 1.. run function pvp_data:pvpfunctions/jobs/wizard/skill/1/skill_start
        execute if score @s skill_2_con matches 0 run clear @s barrier{CustomModelData:22} 1
    #終了処理
        execute if score @s skill_2_cool matches 1 run function pvp_data:pvpfunctions/jobs/wizard/skill/1/skill_fin