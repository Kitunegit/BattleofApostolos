#スキル1処理
    #発動処理
        execute if predicate pvp_data:r_click/cmd62 if score @s skill_2_cool matches ..0 if score @s r_click matches 1.. run function pvp_data:pvpfunctions/jobs/assassin/skill/2/skill_start
    #バリア減らし
        execute if score @s skill_2_con matches 0 run clear @s barrier{CustomModelData:62} 1
    #スキル処理
        execute if entity @e[type=marker,tag=black_eyes] run function pvp_data:pvpfunctions/jobs/assassin/skill/2/eyes/main
    #終了処理
        execute if score @s skill_2_cool matches 1 run function pvp_data:pvpfunctions/jobs/assassin/skill/2/skill_fin