#発動時処理
    execute as @s[nbt={SelectedItem:{tag:{CustomModelData:3},id:"minecraft:carrot_on_a_stick"}},scores={knight_special_cool=..0,r_click=1..}] run function pvp_data:pvpfunctions/jobs/knight/special/start


    #発動時演出処理
        execute as @s[nbt={SelectedItem:{tag:{CustomModelData:3},id:"minecraft:carrot_on_a_stick"}},scores={knight_special_cool=0..,r_click=1..}] at @s run playsound ui.button.click player @s
    #発動時後処理
        scoreboard players remove @s[scores={knight_special_cool=1..}] knight_special_cool 1