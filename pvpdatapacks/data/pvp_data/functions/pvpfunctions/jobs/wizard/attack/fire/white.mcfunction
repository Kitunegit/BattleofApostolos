scoreboard players set @s wizard_normal_cool 8
execute at @s run playsound minecraft:block.end_portal_frame.fill player @a[distance=..15] ~ ~ ~ 1 1.75
execute at @s positioned ~ ~1.4 ~ run summon item_display ^ ^ ^1 {item:{id:"minecraft:quartz",Count:1b,tag:{CustomModelData:1}},Tags:[MagicCircle],brightness:{sky:15,block:15}}
execute at @s at @e[tag=MagicCircle,limit=1,sort=nearest] rotated as @s as @e[tag=MagicCircle,limit=1,sort=nearest] run tp @s ~ ~ ~ facing ^ ^ ^1
execute as @e[tag=wizard_Normal_attack,type=marker] run function pvp_data:pvpfunctions/jobs/wizard/attack/move_white