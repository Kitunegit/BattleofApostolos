#スキル1処理
    #発動処理
        execute if predicate pvp_data:r_click/cmd71 if score @s archer_skill_1_cool matches ..0 if score @s r_click matches 1.. run function pvp_data:pvpfunctions/jobs/archer/skill/1/skill_start
    #バリア減らし
        execute if score @s archer_skill_1_cool matches 1.. run scoreboard players operation @s archer_skill_1_con = @s archer_skill_1_cool
        execute if score @s archer_skill_1_cool matches 1.. run scoreboard players operation @s archer_skill_1_con %= $const archer_skill_1_con
        execute if score @s archer_skill_1_con matches 0 at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.05 2
        execute if score @s archer_skill_1_con matches 0 run clear @s barrier{CustomModelData:71} 1
    #終了処理
        execute if score @s archer_skill_1_cool matches 1 run function pvp_data:pvpfunctions/jobs/archer/skill/1/skill_fin
    #クールダウン減らす
        scoreboard players remove @s[scores={archer_skill_1_cool=1..}] archer_skill_1_cool 1