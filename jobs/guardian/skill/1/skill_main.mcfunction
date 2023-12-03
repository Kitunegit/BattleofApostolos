#スキル1処理
    #発動処理
        execute as @s[nbt={SelectedItem:{tag:{CustomModelData:81},id:"minecraft:carrot_on_a_stick"}},scores={guardian_skill_1_cool=..0,r_click=1..}] run function pvp_data:pvpfunctions/jobs/guardian/skill/1/skill_start
    #バリア減らし
        execute if score @s guardian_skill_1_cool matches 1.. run scoreboard players operation @s guardian_skill_1_con = @s guardian_skill_1_cool
        execute if score @s guardian_skill_1_cool matches 1.. run scoreboard players operation @s guardian_skill_1_con %= $const guardian_skill_1_con
        execute if score @s guardian_skill_1_con matches 0 at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.05 2
        execute if score @s guardian_skill_1_con matches 0 run clear @s barrier{CustomModelData:81} 1
    #スキルエフェクト
        execute at @s if score @s guardian_skill_1_cool matches 300.. run particle dust 0 0.25 1 0.8 ~ ~-0.15 ~ 0.25 1.0 0.25 0 4
        execute at @s if score @s guardian_skill_1_cool matches 300.. run particle dust 0.44 0.91 0.94 0.8 ~ ~-0.15 ~ 0.45 1.0 0.45 0 4
        execute at @s if score @s guardian_skill_1_cool matches 300.. run particle soul_fire_flame ~ ~ ~ 0.25 1.0 0.25 0 1 force
    #効果終了演出
        execute at @s if score @s guardian_skill_1_cool matches 300 run playsound block.glass.break player @s ~ ~ ~ 0.5 0.7
    #終了処理
        execute if score @s guardian_skill_1_cool matches 1 run function pvp_data:pvpfunctions/jobs/guardian/skill/1/skill_fin
    #クールダウン減らす
        scoreboard players remove @s[scores={guardian_skill_1_cool=1..}] guardian_skill_1_cool 1