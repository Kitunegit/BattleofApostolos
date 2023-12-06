#実行チェック
    execute if predicate pvp_data:r_click/cmd63 if score @s ult_cool matches ..0 if score @s r_click matches 1.. at @e[tag=player] positioned ^ ^ ^-5 if entity @s[distance=..4.9] run function pvp_data:pvpfunctions/jobs/assassin/ult/start
#ウルトちゅうの処理
    execute if score @s assassin_ult_charge matches 1.. run function pvp_data:pvpfunctions/jobs/assassin/ult/ult_main
#例外処理
    execute if predicate pvp_data:r_click/cmd63 if score @s ult_cool matches 0.. if score @s r_click matches 1.. at @s run playsound block.cherry_wood_button.click_off player @s ~ ~ ~ 0.5 1.2
    execute if predicate pvp_data:r_click/cmd63 if score @s ult_cool matches 0.. if score @s r_click matches 1.. run scoreboard players set @s r_click 0
    execute if predicate pvp_data:r_click/cmd63 if score @s ult_cool matches ..0 if score @s r_click matches 1.. at @e[tag=player] positioned ^ ^ ^-5 unless entity @s[distance=..4.9] run playsound block.cherry_wood_button.click_on player @s ~ ~ ~ 0.5 1.2
    execute if predicate pvp_data:r_click/cmd63 if score @s ult_cool matches ..0 if score @s r_click matches 1.. at @e[tag=player] positioned ^ ^ ^-5 unless entity @s[distance=..4.9] run scoreboard players set @s r_click 0