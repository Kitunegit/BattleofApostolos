
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:31},id:"minecraft:carrot_on_a_stick"}},scores={knight_skill_1_cool=..0,r_click=1..}] run function pvp_data:pvpfunctions/jobs/knight/skill/1/skill1_start

#発動中演出
    execute as @s[scores={knight_skill_1_cool=501..}] at @s run effect give @s slowness 1 0 true
    execute at @s[scores={knight_skill_1_cool=501..}] run particle dust 100000000 100000000 100000000 1 ~ ~0.2 ~ 0.4 0.8 0.4 0 8 force
    execute at @s[scores={knight_skill_1_cool=501..}] run attribute @s minecraft:generic.attack_speed base set 6
	

#発動終了演出
     execute at @s[scores={knight_skill_1_cool=500}] run playsound block.fire.extinguish player @s ~ ~ ~ 0.5
     execute at @s[scores={knight_skill_1_cool=500}] run particle dust 100000000 100000000 100000000 2 ~ ~0.2 ~ 1 1.5 1 0 100 force
     execute at @s[scores={knight_skill_1_cool=500}] run attribute @s minecraft:generic.attack_speed base set 4