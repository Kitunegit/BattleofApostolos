execute at @s run playsound minecraft:entity.goat.horn_break player @s
execute at @s run particle minecraft:block minecraft:oak_planks ~ ~1 ~ 0.25 0.25 0.25 15 5
effect give @s minecraft:resistance 1 4 true
attribute @s minecraft:generic.knockback_resistance base set 1