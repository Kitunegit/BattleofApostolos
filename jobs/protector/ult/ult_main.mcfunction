#スキル1処理
    #発動処理
        execute as @s[nbt={SelectedItem:{tag:{CustomModelData:83},id:"minecraft:carrot_on_a_stick"}},scores={ult_cool=..0,r_click=1..}] run function pvp_data:pvpfunctions/jobs/protector/ult/ult_start
    #スキルエフェクト
        execute at @s if score @s ult_cool matches 1400.. run particle dust 0 -1 -1 0.8 ~ ~-0.15 ~ 0.25 1.0 0.25 0 4
        execute at @s if score @s ult_cool matches 1400.. run particle dust 0 0 -1 0.8 ~ ~-0.15 ~ 0.45 1.0 0.45 0 4
        execute at @s if score @s ult_cool matches 1400.. run particle crit ~ ~ ~ 0.25 1.0 0.25 0 1 force
    #効果終了演出
        execute at @s if score @s ult_cool matches 1400 run playsound block.beacon.deactivate player @s ~ ~ ~ 0.5 0.4
    #終了処理
        execute if score @s ult_cool matches 1 run function pvp_data:pvpfunctions/jobs/protector/skill/2/skill_fin
    #クールダウン減らす
        scoreboard players remove @s[scores={protector_ult_time=1..}] protector_ult_time 1