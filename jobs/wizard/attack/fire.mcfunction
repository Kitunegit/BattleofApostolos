scoreboard players set @s r_click 0
scoreboard players set @s wizard_normal_cool 10
execute if entity @s[tag=wizard_black] at @s run playsound minecraft:block.end_portal_frame.fill player @a[distance=..5] ~ ~ ~ 1 1.25
execute unless entity @s[tag=wizard_black] at @s run playsound minecraft:block.end_portal_frame.fill player @a[distance=..5] ~ ~ ~ 1 1.75

execute at @s run summon marker ^ ^ ^1 {Tags:[wizard_Normal_attack]}
execute at @e[tag=wizard_Normal_attack,type=marker] rotated as @s run tp @e[tag=wizard_Normal_attack,type=marker] ~ ~ ~ facing ^ ^ ^1
execute as @e[tag=wizard_Normal_attack,type=marker] at @s run tp @s ~ ~1.4 ~
execute if entity @s[tag=wizard_black] as @e[tag=wizard_Normal_attack,type=marker] run function pvp_data:pvpfunctions/jobs/wizard/attack/move_black
execute unless entity @s[tag=wizard_black] as @e[tag=wizard_Normal_attack,type=marker] run function pvp_data:pvpfunctions/jobs/wizard/attack/move_white