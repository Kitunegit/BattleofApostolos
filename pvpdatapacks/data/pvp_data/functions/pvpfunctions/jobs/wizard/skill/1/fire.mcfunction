execute as @a[tag=wizard.skill1_ready] at @s run summon marker ^ ^ ^1 {Tags:[wizard_no_atr_beam]}
execute as @a[tag=wizard.skill1_ready] at @e[tag=wizard_no_atr_beam,type=marker] rotated as @s run tp @e[tag=wizard_no_atr_beam,type=marker] ~ ~ ~ facing ^ ^ ^1
execute as @e[tag=wizard_no_atr_beam,type=marker] at @s run tp @s ~ ~1.4 ~
execute as @a[tag=wizard.skill1_ready] at @s run playsound minecraft:entity.warden.sonic_boom player @a[distance=..15] ~ ~ ~ 0.5 1
tag @a[tag=wizard.skill1_ready] add wizard.magic_fire
execute as @e[tag=wizard_no_atr_beam,type=marker] run function pvp_data:pvpfunctions/jobs/wizard/skill/1/marker
tag @a[tag=wizard.skill1_ready] remove wizard.magic_fire
execute as @a[tag=wizard.skill1_ready] run say test