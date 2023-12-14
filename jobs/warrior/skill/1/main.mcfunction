#スキル1処理
    #発動処理
        execute if predicate pvp_data:r_click/cmd41 if score @s skill_1_cool matches ..0 if score @s r_click matches 1.. run function pvp_data:pvpfunctions/jobs/warrior/skill/1/skill_start
    #スキル中処理
        execute if score @s warrior_skill_1_timer matches 1.. run function pvp_data:pvpfunctions/jobs/warrior/skill/1/skill_main
    #バリア減らし
        execute if score @s skill_1_con matches 0 run clear @s barrier{CustomModelData:41} 1
    #終了処理
        execute if score @s skill_1_cool matches 1 run function pvp_data:pvpfunctions/jobs/warrior/skill/1/skill_fin
    