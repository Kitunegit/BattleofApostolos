#スキル1処理
    #発動処理
        execute as @s[nbt={SelectedItem:{tag:{CustomModelData:61},id:"minecraft:carrot_on_a_stick"}},scores={assassin_skill_1_cool=..0,r_click=1..}] run function pvp_data:pvpfunctions/jobs/assassin/skill/1/skill_start
    #バリア減らし
        execute if score @s assassin_skill_1_cool matches 1.. run scoreboard players operation @s assassin_skill_1_con = @s assassin_skill_1_cool
        execute if score @s assassin_skill_1_cool matches 1.. run scoreboard players operation @s assassin_skill_1_con %= $const assassin_skill_1_con
        execute if score @s assassin_skill_1_con matches 0 run clear @s barrier{CustomModelData:61} 1
    #スキルエフェクト
        execute at @s if score @s assassin_skill_1_cool matches 300.. run execute at @s run particle dust 0.78 0 1 1.5 ~ ~ ~ 0.5 0.8 0.5 1 15
        execute at @s if score @s assassin_skill_1_cool matches 300.. run execute at @s run particle dust 0.31 0.01 0.33 1.5 ~ ~ ~ 0.5 0.8 0.5 1 15
    #効果終了演出
        execute at @s if score @s assassin_skill_1_cool matches 300 run playsound entity.generic.extinguish_fire player @s ~ ~ ~ 0.5 1
        #終了処理
        execute if score @s assassin_skill_1_cool matches 1 run function pvp_data:pvpfunctions/jobs/assassin/skill/1/skill_fin
    #クールダウン減らす
        scoreboard players remove @s[scores={assassin_skill_1_cool=1..}] assassin_skill_1_cool 1