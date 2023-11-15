
#スキル1：片手剣の極意

tag @a[nbt={SelectedItem:{tag:{CustomModelData:31},id:"minecraft:carrot_on_a_stick"}},scores={knight_skill_1_cool=..0,knight_r_detect=1..}] add knight_skill_1

execute at @a[tag=knight_skill_1] run particle minecraft:crit ~ ~1 ~ 0 0.4 0 0.9 7 force @a
execute at @a[tag=knight_skill_1] run particle soul_fire_flame ~ ~1 ~ 0 0.4 0 0.2 7 force @a
execute at @a[tag=knight_skill_1] run playsound block.anvil.place player @a[tag=knight_skill_1] ~ ~ ~ 0.5 0.8


item replace entity @a[tag=knight_skill_1] hotbar.1 with barrier{CustomModelData:31} 31

scoreboard players set @a[tag=knight_skill_1] knight_skill_1_cool 600
scoreboard players set @a[tag=knight_skill_1] knight_r_detect 0

tag @a[tag=knight_skill_1] remove knight_skill_1

execute at @a[scores={knight_r_detect=1..,knight_skill_1_cool=1..},nbt={SelectedItem:{tag:{CustomModelData:31},id:"minecraft:carrot_on_a_stick"}}] run playsound ui.button.click player @a[scores={knight_r_detect=1..,knight_skill_1_cool=1..},nbt={SelectedItem:{tag:{CustomModelData:31},id:"minecraft:carrot_on_a_stick"}}]
scoreboard players set @a[scores={knight_r_detect=1..,knight_skill_1_cool=1..}] knight_r_detect 0


scoreboard players operation @a[scores={knight_skill_1_cool=1..}] knight_skill_1_cal = @a[scores={knight_skill_1_cool=1..}] knight_skill_1_cool
scoreboard players operation @a[scores={knight_skill_1_cool=1..}] knight_skill_1_cal %= $item_cool_check knight_skill_1_cal

execute if score @a[scores={knight_skill_1_cool=1..},limit=1] knight_skill_1_cal matches 0 run clear @a[scores={knight_skill_1_cool=1..}] barrier{CustomModelData:31} 1

item replace entity @a[scores={knight_skill_1_cool=..0}] hotbar.1 with carrot_on_a_stick{CustomModelData:31}
execute as @a[scores={knight_skill_1_cool=1}] at @s run playsound block.fire.extinguish player @s ~ ~ ~ 0.5 0.8