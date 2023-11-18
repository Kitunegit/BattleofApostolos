
#発動中演出
    execute as @s[scores={knight_skill_1_cool=501..}] at @s run effect give @s slowness 1 0 true
    execute at @s[scores={knight_skill_1_cool=501..}] run particle dust 100000000 100000000 100000000 1 ~ ~0.2 ~ 0.45 1 0.45 0 10 normal
    execute at @s[scores={knight_skill_1_cool=501..}] run attribute @s minecraft:generic.attack_speed base set 8
	

#発動終了演出
     execute at @s[scores={knight_skill_1_cool=500}] run playsound block.fire.extinguish player @s ~ ~ ~ 0.5
     execute at @s[scores={knight_skill_1_cool=500}] run particle dust 1000000 1000000 1000000 1 ~ ~0.2 ~ 0.7 1.5 0.7 0 20 normal
     execute at @s[scores={knight_skill_1_cool=500}] run attribute @s minecraft:generic.attack_speed base set 4