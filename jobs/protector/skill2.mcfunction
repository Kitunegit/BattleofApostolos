#スキル：防御特化
tag @a[nbt={SelectedItem:{tag:{CustomModelData:82},id:"minecraft:carrot_on_a_stick"}},scores={protector_skill_2_cool=..0,r_click_detect=1..}] add protector_skill_2

execute at @a[tag=protector_skill_2] run particle minecraft:crit ~ ~1 ~ 0 0.4 0 0.9 7 force @a
execute at @a[tag=protector_skill_2] run particle flame ~ ~1 ~ 0 0.4 0 0.2 7 force @a
execute at @a[tag=protector_skill_2] run playsound minecraft:entity.zombie.attack_iron_door player @a[tag=protector_skill_2] ~ ~ ~ 0.5 0.8

effect give @a[tag=protector_skill_2] minecraft:absorption 15 1 true
effect give @a[tag=protector_skill_2] resistance 15 2 true
effect give @a[tag=protector_skill_2] fire_resistance 15 1 true
#give @a[tag=protector_skill_2]
scoreboard players set @a[tag=protector_skill_2] protector_skill_2_cool 600
scoreboard players set @a[tag=protector_skill_2] r_click_detect 0

tag @a[tag=protector_skill_2] remove protector_skill_2

execute at @a[scores={r_click_detect=1..,protector_skill_2_cool=1..},nbt={SelectedItem:{tag:{CustomModelData:81},id:"minecraft:carrot_on_a_stick"}}] run playsound ui.button.click player @a[scores={r_click_detect=1..,protector_skill_2_cool=1..},nbt={SelectedItem:{tag:{CustomModelData:81},id:"minecraft:carrot_on_a_stick"}}]
scoreboard players set @a[scores={r_click_detect=1..,protector_skill_2_cool=1..}] r_click_detect 0

execute at @a[scores={protector_skill_2_cool=300..600}] run particle dust 0 0.25 1 0.8 ~ ~-0.15 ~ 0.25 1.0 0.25 0 4
execute at @a[scores={protector_skill_2_cool=300..600}] run particle dust 0.44 0.91 0.94 0.8 ~ ~-0.15 ~ 0.45 1.0 0.45 0 4
execute at @a[scores={protector_skill_2_cool=300..600}] run particle dust 0.84 0.98 1 0.8 ~ ~-0.15 ~ 0.25 1.0 0.25 0 4