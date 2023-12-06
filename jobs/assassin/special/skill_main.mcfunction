#スキル1処理
    #発動処理
        execute if predicate pvp_data:r_click/cmd6 if score @s special_cool matches ..0 if score @s r_click matches 1.. at @s positioned ^ ^ ^8 at @e[distance=..7.99,tag=player] rotated ~ 0 if block ^ ^ ^-1 air run function pvp_data:pvpfunctions/jobs/assassin/special/skill_start
        execute if predicate pvp_data:r_click/cmd6 if score @s special_cool matches 0.. if score @s r_click matches 1.. at @s run playsound minecraft:block.bamboo_wood_button.click_on player @s ~ ~ ~
        execute if predicate pvp_data:r_click/cmd6 if score @s special_cool matches 0.. if score @s r_click matches 1.. run scoreboard players set @s r_click 0
    #バリア減らし
        execute if score @s special_cool matches 295 run function pvp_data:pvpfunctions/jobs/assassin/special/skill2

        execute if score @s special_con matches 0 run clear @s stick{CustomModelData:64} 1
        #終了処理
        execute if score @s special_cool matches 1 run function pvp_data:pvpfunctions/jobs/assassin/special/skill_fin