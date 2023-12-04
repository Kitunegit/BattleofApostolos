#敵検知
execute at @s positioned ^ ^ ^12 if entity @e[distance=..12,tag=player] run tag @e[distance=..11.99,tag=player] add guardian_sp_trgt
#右クリ時初回実行
execute if entity @e[tag=guardian_sp_trgt] as @s[nbt={SelectedItem:{tag:{CustomModelData:8},id:"minecraft:carrot_on_a_stick"}},scores={guardian_special_cool=..0,r_click=1..}] run function pvp_data:pvpfunctions/jobs/guardian/special/start
#突撃処理
execute at @s if score @s guardian_special_cool matches 1.. run function pvp_data:pvpfunctions/jobs/guardian/special/main_2
#例外処理
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:8},id:"minecraft:carrot_on_a_stick"}},scores={guardian_special_cool=0..,r_click=1..}] at @s run playsound ui.button.click player @s
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:8},id:"minecraft:carrot_on_a_stick"}},scores={guardian_special_cool=0..,r_click=1..}] run scoreboard players set @s r_click 0
#クール
    execute if score @s guardian_special_cool matches 1.. run scoreboard players operation @s guardian_special_con = @s guardian_special_cool
    execute if score @s guardian_special_cool matches 1.. run scoreboard players operation @s guardian_special_con %= $const guardian_special_con
    execute if score @s guardian_special_con matches 0 at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.05 2
    execute if score @s guardian_special_con matches 0 run clear @s stick{CustomModelData:84} 1


tag @e remove guardian_sp_trgt
scoreboard players remove @s[scores={guardian_special_cool=1..}] guardian_special_cool 1