scoreboard players set @s r_click 0
execute if entity @s[tag=wizard_black] run scoreboard players set @s wizard_normal_cool 15
execute unless entity @s[tag=wizard_black] run scoreboard players set @s wizard_normal_cool 8
execute if entity @s[tag=wizard_black] at @s run playsound minecraft:block.end_portal_frame.fill player @a[distance=..15] ~ ~ ~ 1 0.95
execute unless entity @s[tag=wizard_black] at @s run playsound minecraft:block.end_portal_frame.fill player @a[distance=..15] ~ ~ ~ 1 1.75

execute at @s run summon marker ^ ^ ^1 {Tags:[wizard_Normal_attack]}
execute at @e[tag=wizard_Normal_attack,type=marker] rotated as @s run tp @e[tag=wizard_Normal_attack,type=marker] ~ ~ ~ facing ^ ^ ^1
execute as @e[tag=wizard_Normal_attack,type=marker] at @s run tp @s ~ ~1.4 ~

execute if entity @s[tag=wizard_black] at @s positioned ~ ~100.4 ~ run summon item_display ^ ^ ^1 {item:{id:"minecraft:quartz",Count:1b,tag:{CustomModelData:2}},Tags:[MagicCircle]}
execute unless entity @s[tag=wizard_black] at @s positioned ~ ~100.4 ~ run summon item_display ^ ^ ^1 {item:{id:"minecraft:quartz",Count:1b,tag:{CustomModelData:1}},Tags:[MagicCircle]}
execute at @e[tag=MagicCircle,type=item_display] rotated as @s run tp @e[tag=MagicCircle,type=item_display] ~ ~ ~ facing ^ ^ ^1
execute as @e[tag=MagicCircle,type=item_display] at @s run tp @s ~ ~-99 ~

execute if entity @s[tag=wizard_black] as @e[tag=wizard_Normal_attack,type=marker] run function pvp_data:pvpfunctions/jobs/wizard/attack/move_black
execute unless entity @s[tag=wizard_black] as @e[tag=wizard_Normal_attack,type=marker] run function pvp_data:pvpfunctions/jobs/wizard/attack/move_white