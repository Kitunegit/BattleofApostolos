#スキル1処理
    #発動処理
        execute as @s[nbt={SelectedItem:{tag:{CustomModelData:81},id:"minecraft:carrot_on_a_stick"}},scores={protector_skill_1_cool=..0,r_click=1..}] run function pvp_data:pvpfunctions/jobs/protector/skill/1/skill1
    #バリア減らし
        execute if score @s protector_skill_1_cool matches 1.. run scoreboard players operation @s protector_skill_1_con = @s protector_skill_1_cool
        execute if score @s protector_skill_1_cool matches 1.. run scoreboard players operation @s protector_skill_1_con %= $const protector_skill_1_con
        execute if score @s protector_skill_1_con matches 0 run clear @s barrier{CustomModelData:81} 1
    #終了処理
        execute if score @s protector_skill_1_cool matches 1 run function pvp_data:pvpfunctions/jobs/protector/skill/1/skill_fin
    #クールダウン減らす
        scoreboard players remove @s[scores={protector_skill_1_cool=1..}] protector_skill_1_cool 1