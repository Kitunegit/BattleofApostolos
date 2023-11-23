#敵検知
execute at @s positioned ^ ^ ^6 if entity @e[distance=..6] run tag @e[distance=..5.99] add guardian_sp_trgt
#右クリ時初回実行
execute if entity @e[tag=guardian_sp_trgt] as @s[nbt={SelectedItem:{tag:{CustomModelData:8},id:"minecraft:carrot_on_a_stick"}},scores={guardian_special_cool=..0,r_click=1..}] run function pvp_data:pvpfunctions/jobs/guardian/special/start
#突撃処理
execute at @s if score @s guardian_special_cool matches 1.. run function pvp_data:pvpfunctions/jobs/guardian/special/main_2
#例外処理
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:8},id:"minecraft:carrot_on_a_stick"}},scores={guardian_special_cool=0..,r_click=1..}] run playsound ui.button.click player @s
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:8},id:"minecraft:carrot_on_a_stick"}},scores={guardian_special_cool=0..,r_click=1..}] run scoreboard players set @s r_click 0



tag @e remove guardian_sp_trgt
scoreboard players remove @s[scores={guardian_special_cool=1..}] guardian_special_cool 1