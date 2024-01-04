#スキル1処理
    #発動処理
        execute as @s[nbt={SelectedItem:{tag:{CustomModelData:83},id:"minecraft:carrot_on_a_stick"}},scores={ult_cool=..0,r_click=1..}] run function pvp_data:pvpfunctions/jobs/guardian/ult/ult_start
    #スキルエフェクト
        execute at @s if score @s guardian_ult_time matches 0.. run particle dust 0 -1 -1 1.3 ~ ~-0.15 ~ 0.25 1.0 0.25 0 8
        execute at @s if score @s guardian_ult_time matches 0.. run particle minecraft:enchanted_hit ~ ~ ~ 0.75 1.0 0.75 0.2 5
    #効果終了演出
        execute at @s if score @s guardian_ult_time matches 0 run playsound block.beacon.deactivate player @s ~ ~ ~ 1 0.4
        execute at @s if score @s guardian_ult_time matches 0 run playsound minecraft:block.grindstone.use player @s ~ ~ ~ 0.5 0.8
    #終了処理
        execute if score @s ult_cool matches 0 run function pvp_data:pvpfunctions/jobs/guardian/ult/ult_fin
    #クールダウン減らす
        scoreboard players remove @s[scores={guardian_ult_time=0..}] guardian_ult_time 1