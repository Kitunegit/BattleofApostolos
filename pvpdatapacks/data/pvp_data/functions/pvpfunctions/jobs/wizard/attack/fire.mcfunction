$execute at @s run summon marker $(summon_pos) {Tags:[wizard_Normal_attack]}
execute at @e[tag=wizard_Normal_attack,type=marker] rotated as @s run tp @e[tag=wizard_Normal_attack,type=marker] ~ ~ ~ facing ^ ^ ^15
execute as @e[tag=wizard_Normal_attack,type=marker] at @s run tp @s ~ ~1.4 ~
execute at @s run playsound minecraft:block.enchantment_table.use player @a[distance=..15] ~ ~ ~ 0.5 1.5
tag @s add wizard.magic_fire
$execute if entity @s[tag=wizard_black] run function pvp_data:pvpfunctions/jobs/wizard/attack/fire/black {pos:"$(summon_pos)"}
$execute if entity @s[tag=wizard_white] run function pvp_data:pvpfunctions/jobs/wizard/attack/fire/white {pos:"$(summon_pos)"}
tag @s remove wizard.magic_fire