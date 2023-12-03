#スキル1処理
    #発動処理
        execute as @s[nbt={SelectedItem:{tag:{CustomModelData:62},id:"minecraft:carrot_on_a_stick"}},scores={assassin_skill_2_cool=..0,r_click=1..}] run function pvp_data:pvpfunctions/jobs/assassin/skill/2/skill_start
    #バリア減らし
        execute if score @s assassin_skill_2_cool matches 1.. run scoreboard players operation @s assassin_skill_2_con = @s assassin_skill_2_cool
        execute if score @s assassin_skill_2_cool matches 1.. run scoreboard players operation @s assassin_skill_2_con %= $const assassin_skill_2_con
        execute if score @s assassin_skill_2_con matches 0 at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.05 2
        execute if score @s assassin_skill_2_con matches 0 run clear @s barrier{CustomModelData:62} 1
    #スキル処理
        execute if entity @e[type=marker,tag=black_eyes] run function pvp_data:pvpfunctions/jobs/assassin/skill/2/eyes/main
    #終了処理
        execute if score @s assassin_skill_2_cool matches 1 run function pvp_data:pvpfunctions/jobs/assassin/skill/2/skill_fin
    #クールダウン減らす
        scoreboard players remove @s[scores={assassin_skill_2_cool=1..}] assassin_skill_2_cool 1