scoreboard players set @s wizard_normal_cool 15
execute at @s run playsound minecraft:block.end_portal_frame.fill player @a[distance=..15] ~ ~ ~ 1 0.95
execute at @s positioned ~ ~100.4 ~ run summon item_display ^ ^ ^1 {Glowing:1b,item:{id:"minecraft:quartz",Count:1b,tag:{CustomModelData:2}},Tags:[MagicCircle]}
execute as @e[tag=wizard_Normal_attack,type=marker] run function pvp_data:pvpfunctions/jobs/wizard/attack/move_black