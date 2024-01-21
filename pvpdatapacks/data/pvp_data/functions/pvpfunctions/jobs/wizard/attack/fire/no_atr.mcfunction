execute at @s run playsound minecraft:block.end_portal_frame.fill player @a[distance=..15] ~ ~ ~ 1 0.95
execute at @s run playsound minecraft:block.end_portal_frame.fill player @a[distance=..15] ~ ~ ~ 1 1.75
execute at @s positioned ~ ~1.4 ~ run summon item_display ^ ^ ^1 {billboard:"center",item:{id:"minecraft:quartz",Count:1b,tag:{CustomModelData:2}},Tags:[MagicCircle],brightness:{sky:15,block:15}}
execute as @e[tag=wizard_Normal_attack,type=marker] run function pvp_data:pvpfunctions/jobs/wizard/attack/move_no_atr