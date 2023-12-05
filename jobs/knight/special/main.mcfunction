
    execute as @s[nbt={SelectedItem:{tag:{CustomModelData:3},id:"minecraft:carrot_on_a_stick"}},scores={knight_special_cool=..0,r_click=1..}] run tag @s add knight_special_switch
    execute as @s[tag=knight_special_switch] run scoreboard players add @s knight_special_count 1
    execute as @s[scores={knight_special_count=1}] at @s positioned ^ ^ ^4 as @e[distance=..3.9,limit=3,tag=player] run tag @s add knight_special_target
    execute as @s[scores={knight_special_count=1}] unless entity @e[tag=knight_special_target] run playsound entity.bat.death player @s ~ ~ ~ 0.6 1

#発動時処理
        execute as @s[nbt={SelectedItem:{tag:{CustomModelData:3},id:"minecraft:carrot_on_a_stick"}},scores={knight_special_cool=..0,r_click=1..}] run scoreboard players set @s knight_special_cool 100
        execute as @s[nbt={SelectedItem:{tag:{CustomModelData:3},id:"minecraft:carrot_on_a_stick"}},scores={knight_special_cool=0..,r_click=1..}] run scoreboard players set @s r_click 0
        execute as @a if entity @s[tag=knight_special_switch] run function pvp_data:pvpfunctions/jobs/knight/special/switch


#待機処理
    execute as @s[nbt={SelectedItem:{tag:{CustomModelData:3},id:"minecraft:carrot_on_a_stick"}},scores={knight_special_cool=1..,r_click=1..}] at @s run playsound ui.button.click player @s
    execute as @s if entity @s[tag=!knight_special_switch] run scoreboard players set @s knight_special_count 0
    execute as @s[scores={knight_special_cool=1}] run playsound item.armor.equip_iron player @s ~ ~ ~ 0.5 0.5

    #発動時後処理
        scoreboard players remove @s[scores={knight_special_cool=1..}] knight_special_cool 1