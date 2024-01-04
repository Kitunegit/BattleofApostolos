#スキル1処理
    #発動処理
        execute if predicate pvp_data:r_click/cmd41 if score @s skill_1_cool matches ..0 if score @s r_click matches 1.. run function pvp_data:pvpfunctions/jobs/warrior/skill/1/skill_start
    #バリア減らし
        execute if score @s skill_1_con matches 0 run clear @s barrier{CustomModelData:41} 1
    #スキルエフェクト
        execute at @s if score @s skill_1_cool matches 200.. run execute at @s run particle dust 0.961 0.353 0 0.7 ~ ~ ~ 0.5 0.8 0.5 1 15
        execute at @s if score @s skill_1_cool matches 200.. run execute at @s run particle dust 0.439 0.161 0 0.7 ~ ~ ~ 0.5 0.8 0.5 1 15
        execute at @s if score @s skill_1_cool matches 200 run attribute @s minecraft:generic.attack_speed base set 4
    #効果終了演出
        execute at @s if score @s skill_1_cool matches 200 run playsound entity.generic.extinguish_fire player @s ~ ~ ~ 0.5 1
        #終了処理
        execute if score @s skill_1_cool matches 1 run function pvp_data:pvpfunctions/jobs/warrior/skill/1/skill_fin