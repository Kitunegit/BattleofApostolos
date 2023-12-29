#スキル1処理
    #発動処理
        execute if predicate pvp_data:r_click/cmd4 if score @s special_cool matches ..0 if score @s r_click matches 1.. run function pvp_data:pvpfunctions/jobs/warrior/special/skill_start
    #スキル中処理
        execute if score @s warrior_special_timer matches 1.. run function pvp_data:pvpfunctions/jobs/warrior/special/skill_main
    #バリア減らし
        execute if score @s special_con matches 0 run clear @s stick{CustomModelData:44} 1
    #終了処理
        execute if score @s special_cool matches 1 run function pvp_data:pvpfunctions/jobs/warrior/special/skill_fin