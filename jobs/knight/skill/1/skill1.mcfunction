
#発動中演出
    execute at @s[scores={knight_skill_1_cool=301..}] run particle dust 1 1 1 1 ~ ~0.2 ~ 0.45 1 0.45 0 10 normal
    execute at @s[scores={knight_skill_1_cool=301..}] run attribute @s minecraft:generic.attack_speed base set 8

#発動終了演出
     execute at @s[scores={knight_skill_1_cool=300}] run playsound block.fire.extinguish player @s ~ ~ ~ 0.5
     execute at @s[scores={knight_skill_1_cool=300}] run attribute @s minecraft:generic.attack_speed base set 4