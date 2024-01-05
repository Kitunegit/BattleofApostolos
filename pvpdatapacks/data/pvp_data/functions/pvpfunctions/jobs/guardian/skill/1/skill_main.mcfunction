#スキル1処理
    #発動処理
        execute if predicate pvp_data:r_click/cmd81 if score @s skill_1_cool matches ..0 if score @s r_click matches 1.. run function pvp_data:pvpfunctions/jobs/guardian/skill/1/skill_start
    #バリア減らし
        execute if score @s skill_1_con matches 0 run clear @s barrier{CustomModelData:81} 1
    #スキルエフェクト
        execute at @s if score @s skill_1_cool matches 300.. run particle dust 0 0.25 1 0.8 ~ ~-0.15 ~ 0.25 1.0 0.25 0 4
        execute at @s if score @s skill_1_cool matches 300.. run particle dust 0.44 0.91 0.94 0.8 ~ ~-0.15 ~ 0.45 1.0 0.45 0 4
        execute at @s if score @s skill_1_cool matches 300.. run particle soul_fire_flame ~ ~ ~ 0.25 1.0 0.25 0 1 force
    #効果終了演出
        execute at @s if score @s skill_1_cool matches 300 run playsound block.glass.break player @s ~ ~ ~ 0.5 0.7
    #終了処理
        execute if score @s skill_1_cool matches 1 run function pvp_data:pvpfunctions/jobs/guardian/skill/1/skill_fin
    #クールダウン減らす