tag @s remove just_guard
scoreboard players set @s just_guard 0
scoreboard players set @s guard_cool 20
execute unless score @s jobscore matches 4 run scoreboard players set @s guard_cool 40
effect clear @s minecraft:resistance
attribute @s minecraft:generic.knockback_resistance base set 0