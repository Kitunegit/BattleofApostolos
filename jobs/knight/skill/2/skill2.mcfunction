
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:32},id:"minecraft:carrot_on_a_stick"}},scores={knight_skill_2_cool=..0,r_click=1..}] run function pvp_data:pvpfunctions/jobs/knight/skill/2/skill2_start

scoreboard players remove @s[scores={jobscore=3,knight_skill_2_cool=0..}] knight_skill_2_cool 1
scoreboard players set @a[scores={jobscore=3}] r_click 0
