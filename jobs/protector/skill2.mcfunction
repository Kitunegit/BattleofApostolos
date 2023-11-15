#スキル：防御特化
tag @a[nbt={SelectedItem:{tag:{CustomModelData:82},id:"minecraft:carrot_on_a_stick"}},scores={protector_skill_2_cool=..0,protector_r_detect=1..}] add protector_skill_2

execute at @a[tag=protector_skill_2] run particle minecraft:crit ~ ~1 ~ 0 0.4 0 0.9 7 force @a
execute at @a[tag=protector_skill_2] run particle flame ~ ~1 ~ 0 0.4 0 0.2 7 force @a
execute at @a[tag=protector_skill_2] run playsound block.anvil.land player @a[tag=protector_skill_2] ~ ~ ~ 0.5 0.1

effect give @a[tag=protector_skill_2] absorption 15 4 true
item replace entity @a[tag=protector_skill_2] hotbar.2 with barrier{CustomModelData:82} 61

scoreboard players set @a[tag=protector_skill_2] protector_skill_2_cool 1200
scoreboard players set @a[tag=protector_skill_2] protector_r_detect 0

tag @a[tag=protector_skill_2] remove protector_skill_2

execute at @a[scores={protector_r_detect=1..,protector_skill_2_cool=1..},nbt={SelectedItem:{tag:{CustomModelData:82},id:"minecraft:carrot_on_a_stick"}}] run playsound ui.button.click player @a[scores={protector_r_detect=1..,protector_skill_2_cool=1..},nbt={SelectedItem:{tag:{CustomModelData:82},id:"minecraft:carrot_on_a_stick"}}]
scoreboard players set @a[scores={protector_r_detect=1..,protector_skill_2_cool=1..},nbt={SelectedItem:{tag:{CustomModelData:82},id:"minecraft:carrot_on_a_stick"}}] protector_r_detect 0

execute at @a[scores={protector_skill_2_cool=900..1200}] run particle dust 0 0.25 1 0.8 ~ ~-0.15 ~ 0.25 1.0 0.25 0 4
execute at @a[scores={protector_skill_2_cool=900..1200}] run particle dust 0.44 0.91 0.94 0.8 ~ ~-0.15 ~ 0.45 1.0 0.45 0 4
execute at @a[scores={protector_skill_2_cool=900..1200}] run particle dust 0.831 0 1 1 ~ ~-0.15 ~ 0.25 1.0 0.25 0 4 force
scoreboard players operation @a[scores={protector_skill_2_cool=1..}] protector_skill_2_cal = @a[scores={protector_skill_2_cool=1..}] protector_skill_2_cool
scoreboard players operation @a[scores={protector_skill_2_cool=1..}] protector_skill_2_cal %= $item_cool_check protector_skill_2_cal

execute if score @a[scores={protector_skill_2_cool=1..},limit=1] protector_skill_2_cal matches 0 run clear @a[scores={protector_skill_2_cool=1..}] barrier{CustomModelData:82} 1

item replace entity @a[scores={protector_skill_2_cool=0}] hotbar.2 with carrot_on_a_stick{CustomModelData:82,display:{Name:'{"text":"緊急装甲","color":"blue","bold":true}',Lore:['{"text":"一定時間体力が増える。","color":"white"}']}}