#スキル1処理
    #発動処理
        execute if predicate pvp_data:r_click/cmd61 if score @s skill_1_cool matches ..0 if score @s r_click matches 1.. run function pvp_data:pvpfunctions/jobs/assassin/skill/1/skill_start
    #バリア減らし
        execute if score @s skill_1_con matches 0 run clear @s barrier{CustomModelData:61} 1
    #スキルエフェクト
        execute at @s if score @s skill_1_cool matches 300.. run execute at @s run particle dust 0.78 0 1 1.5 ~ ~ ~ 0.5 0.8 0.5 1 15
        execute at @s if score @s skill_1_cool matches 300.. run execute at @s run particle dust 0.31 0.01 0.33 1.5 ~ ~ ~ 0.5 0.8 0.5 1 15
    #効果終了演出
        execute at @s if score @s skill_1_cool matches 300 run playsound entity.generic.extinguish_fire player @s ~ ~ ~ 0.5 1
        #終了処理
        execute if score @s skill_1_cool matches 1 run function pvp_data:pvpfunctions/jobs/assassin/skill/1/skill_fin