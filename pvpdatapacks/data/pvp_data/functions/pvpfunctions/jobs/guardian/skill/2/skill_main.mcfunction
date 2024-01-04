#スキル1処理
    #発動処理
        execute as @s[nbt={SelectedItem:{tag:{CustomModelData:82},id:"minecraft:carrot_on_a_stick"}},scores={skill_2_cool=..0,r_click=1..}] run function pvp_data:pvpfunctions/jobs/guardian/skill/2/skill_start
    #バリア減らし
        execute if score @s skill_2_con matches 0 run clear @s barrier{CustomModelData:82} 1
    #スキルエフェクト
        execute at @s if score @s skill_2_cool matches 900.. run particle dust 0 -1 -1 0.8 ~ ~-0.15 ~ 0.25 1.0 0.25 0 4
        execute at @s if score @s skill_2_cool matches 900.. run particle dust 0.12 0 1 0.8 ~ ~-0.15 ~ 0.45 1.0 0.45 0 4
        execute at @s if score @s skill_2_cool matches 900.. run particle crit ~ ~ ~ 0.25 1.0 0.25 0 1 force
    #効果終了演出
        execute at @s if score @s skill_2_cool matches 900 run playsound block.glass.break player @s ~ ~ ~ 0.5 0.4
    #終了処理
        execute if score @s skill_2_cool matches 1 run function pvp_data:pvpfunctions/jobs/guardian/skill/2/skill_fin