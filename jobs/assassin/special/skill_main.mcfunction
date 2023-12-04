#スキル1処理
    #発動処理
        execute as @s[nbt={SelectedItem:{tag:{CustomModelData:6},id:"minecraft:carrot_on_a_stick"}},scores={assassin_special_cool=..0,r_click=1..}] at @s positioned ^ ^ ^8 at @e[distance=..7.99] rotated ~ 0 if block ^ ^ ^-1 air run function pvp_data:pvpfunctions/jobs/assassin/special/skill_start
        execute as @s[nbt={SelectedItem:{tag:{CustomModelData:6},id:"minecraft:carrot_on_a_stick"}},scores={assassin_special_cool=0..,r_click=1..}] at @s run playsound minecraft:block.bamboo_wood_button.click_on player @s ~ ~ ~
        execute as @s[nbt={SelectedItem:{tag:{CustomModelData:6},id:"minecraft:carrot_on_a_stick"}},scores={assassin_special_cool=0..,r_click=1..}] run scoreboard players set @s r_click 0
    #バリア減らし
        execute if score @s assassin_special_cool matches 295 run function pvp_data:pvpfunctions/jobs/assassin/special/skill2

        execute if score @s assassin_special_cool matches 1.. run scoreboard players operation @s assassin_special_con = @s assassin_special_cool
        execute if score @s assassin_special_cool matches 1.. run scoreboard players operation @s assassin_special_con %= $const assassin_special_con
        execute if score @s assassin_special_con matches 0 run clear @s barrier{CustomModelData:64} 1
        #終了処理
        execute if score @s assassin_special_cool matches 1 run function pvp_data:pvpfunctions/jobs/assassin/special/skill_fin
    #クールダウン減らす
        scoreboard players remove @s[scores={assassin_special_cool=1..}] assassin_special_cool 1