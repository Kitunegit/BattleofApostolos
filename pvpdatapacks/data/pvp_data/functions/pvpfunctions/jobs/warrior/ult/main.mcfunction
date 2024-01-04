#スキル1処理
    #発動処理
        execute if predicate pvp_data:r_click/cmd43 if score @s ult_cool matches ..0 if score @s r_click matches 1.. run function pvp_data:pvpfunctions/jobs/warrior/ult/skill_start
    #スキル中処理
        execute if score @s warrior_ult_timer matches 1.. run function pvp_data:pvpfunctions/jobs/warrior/ult/skill_main
        #execute at @s[tag=warrior_jump_hover] run particle sweep_attack ~ ~ ~ 0.1 0.1 0.1 0.2 2
        execute if entity @s[tag=warrior_jump_hover_ult,nbt={OnGround:1b}] run function pvp_data:pvpfunctions/jobs/warrior/ult/fall_ground
    #バリア減らし
        #execute if score @s ult_con matches 0 run clear @s barrier{CustomModelData:42} 1
    #終了処理
        execute if score @s ult_cool matches 1 run function pvp_data:pvpfunctions/jobs/warrior/ult/skill_fin