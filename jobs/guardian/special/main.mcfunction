#敵検知
execute at @s positioned ^ ^ ^12 if entity @e[distance=..12,tag=player] run tag @e[distance=..11.99,tag=player] add guardian_sp_trgt
#右クリ時初回実行
execute if entity @e[tag=guardian_sp_trgt] if predicate pvp_data:r_click/cmd8 if score @s special_cool matches ..0 if score @s r_click matches 1.. run function pvp_data:pvpfunctions/jobs/guardian/special/start
#突撃処理
execute at @s if score @s special_cool matches 1.. run function pvp_data:pvpfunctions/jobs/guardian/special/main_2
#例外処理
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:8},id:"minecraft:carrot_on_a_stick"}},scores={special_cool=0..,r_click=1..}] at @s run playsound ui.button.click player @s
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:8},id:"minecraft:carrot_on_a_stick"}},scores={special_cool=0..,r_click=1..}] run scoreboard players set @s r_click 0
#クール
    execute if score @s special_cool matches 1.. run scoreboard players operation @s special_con = @s special_cool
    execute if score @s special_cool matches 1.. run scoreboard players operation @s special_con %= $const special_con
    execute if score @s special_con matches 0 run clear @s stick{CustomModelData:84} 1


tag @e remove guardian_sp_trgt