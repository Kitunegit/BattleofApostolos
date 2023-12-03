
    execute as @s[nbt={SelectedItem:{tag:{CustomModelData:3},id:"minecraft:carrot_on_a_stick"}},scores={knight_special_cool=..0,r_click=1..}] run tag @s add knight_special_switch
    execute as @s[tag=knight_special_switch] run scoreboard players add @s knight_special_count 1


#発動時処理
        execute as @s[nbt={SelectedItem:{tag:{CustomModelData:3},id:"minecraft:carrot_on_a_stick"}},scores={knight_special_cool=..0,r_click=1..}] run scoreboard players set @s knight_special_cool 100
    execute as @s[nbt={SelectedItem:{tag:{CustomModelData:3},id:"minecraft:carrot_on_a_stick"}},scores={knight_special_cool=0..,r_click=1..}] run scoreboard players set @s r_click 0
    execute as @a if entity @s[tag=knight_special_switch] run function pvp_data:pvpfunctions/jobs/knight/special/switch


#待機処理
    execute as @s[nbt={SelectedItem:{tag:{CustomModelData:3},id:"minecraft:carrot_on_a_stick"}},scores={knight_special_cool=1..,r_click=1..}] at @s run playsound ui.button.click player @s
    execute as @s if entity @s[tag=!knight_special_switch] run scoreboard players set @s knight_special_count 0
    execute as @s[scores={knight_special_cool=1}] run playsound block.anvil.land player @s ~ ~ ~ 1 2
    #発動時後処理
        scoreboard players remove @s[scores={knight_special_cool=1..}] knight_special_cool 1