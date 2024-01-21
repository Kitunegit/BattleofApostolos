
execute at @s run summon marker ^ ^ ^1 {Tags:[wizard_Normal_attack]}
execute at @e[tag=wizard_Normal_attack,type=marker] rotated as @s run tp @e[tag=wizard_Normal_attack,type=marker] ~ ~ ~ facing ^ ^ ^1
execute as @e[tag=wizard_Normal_attack,type=marker] at @s run tp @s ~ ~1.4 ~
execute at @s run playsound minecraft:block.enchantment_table.use player @a[distance=..15] ~ ~ ~ 0.5 1.5
tag @s add wizard.magic_fire
execute if entity @s[tag=wizard_black] run function pvp_data:pvpfunctions/jobs/wizard/attack/fire/black
execute if entity @s[tag=wizard_white] run function pvp_data:pvpfunctions/jobs/wizard/attack/fire/white
execute unless entity @s[tag=wizard_white] unless entity @s[tag=wizard_black] run function pvp_data:pvpfunctions/jobs/wizard/attack/fire/no_atr
tag @s remove wizard.magic_fire