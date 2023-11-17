
execute if entity @a[scores={jobscore=3}] as @s at @s run function pvp_data:pvpfunctions/jobs/knight/skill/1/skill1

execute as @s[nbt={SelectedItem:{tag:{CustomModelData:31},id:"minecraft:carrot_on_a_stick"}},scores={knight_skill_1_cool=..0,r_click=1..}] run function pvp_data:pvpfunctions/jobs/knight/skill/1/skill1_start

execute if score @s knight_skill_1_cool matches 1.. run scoreboard players operation @s knight_skill_1_con = @s knight_skill_1_cool
execute if score @s knight_skill_1_cool matches 1.. run scoreboard players operation @s knight_skill_1_con %= $const knight_skill_1_con
execute if score @s knight_skill_1_con matches 0 run clear @s barrier{CustomModelData:31} 1
execute if score @s knight_skill_1_cool matches 1 run function pvp_data:pvpfunctions/jobs/knight/skill/1/skill1_fin
scoreboard players remove @s[scores={knight_skill_1_cool=1..}] knight_skill_1_cool 1

#パッシブ
    execute as @s[scores={jobscore=3}] run effect give @s strength 1 0 true

#剣の攻撃力増加
    execute as @a[nbt={SelectedItem:{tag:{CustomModelData:3},id:"minecraft:carrot_on_a_stick"}}] run attribute @s generic.attack_damage base set 7
    execute as @a[nbt=!{SelectedItem:{tag:{CustomModelData:3},id:"minecraft:carrot_on_a_stick"}}] run attribute @s generic.attack_damage base set 0
