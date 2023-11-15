#スキル：防御特化
tag @a[nbt={SelectedItem:{tag:{CustomModelData:81},id:"minecraft:carrot_on_a_stick"}},scores={protector_skill_1_cool=..0,r_click_detect=1..}] add protector_skill_1

execute at @a[tag=protector_skill_1] run particle minecraft:crit ~ ~1 ~ 0 0.4 0 0.9 7 force @a
execute at @a[tag=protector_skill_1] run particle soul_fire_flame ~ ~1 ~ 0 0.4 0 0.2 7 force @a
execute at @a[tag=protector_skill_1] run playsound item.firecharge.use player @a[tag=protector_skill_1] ~ ~ ~ 0.5 0.8

effect give @a[tag=protector_skill_1] slowness 15 1 true
effect give @a[tag=protector_skill_1] resistance 15 1 true
effect give @a[tag=protector_skill_1] fire_resistance 15 1 true

scoreboard players set @a[tag=protector_skill_1] protector_skill_1_cool 600
scoreboard players set @a[tag=protector_skill_1] r_click_detect 0

tag @a[tag=protector_skill_1] remove protector_skill_1

execute at @a[scores={r_click_detect=1..,protector_skill_1_cool=1..},nbt={SelectedItem:{tag:{CustomModelData:81},id:"minecraft:carrot_on_a_stick"}}] run playsound ui.button.click player @a[scores={r_click_detect=1..,protector_skill_1_cool=1..},nbt={SelectedItem:{tag:{CustomModelData:81},id:"minecraft:carrot_on_a_stick"}}]
scoreboard players set @a[scores={r_click_detect=1..,protector_skill_1_cool=1..}] r_click_detect 0