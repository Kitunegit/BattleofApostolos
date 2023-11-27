#スキル1処理
    #発動処理
        execute as @s[nbt={SelectedItem:{tag:{CustomModelData:71},id:"minecraft:carrot_on_a_stick"}},scores={archer_skill_1_cool=..0,r_click=1..}] run function pvp_data:pvpfunctions/jobs/archer/skill/1/skill_start
    #バリア減らし
        execute if score @s archer_skill_1_cool matches 1.. run scoreboard players operation @s archer_skill_1_con = @s archer_skill_1_cool
        execute if score @s archer_skill_1_cool matches 1.. run scoreboard players operation @s archer_skill_1_con %= $const archer_skill_1_con
        execute if score @s archer_skill_1_con matches 0 at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.05 2
        execute if score @s archer_skill_1_con matches 0 run clear @s barrier{CustomModelData:71} 1
    #終了処理
        execute if score @s archer_skill_1_cool matches 1 run function pvp_data:pvpfunctions/jobs/archer/skill/1/skill_fin
    #クールダウン減らす
        scoreboard players remove @s[scores={archer_skill_1_cool=1..}] archer_skill_1_cool 1