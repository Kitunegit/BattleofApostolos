execute if predicate pvp_data:r_click/cmd2 if score @s wizard_normal_cool matches 0.. if score @s r_click matches 1.. if score @s sneaking matches 0 at @s run playsound block.note_block.bass player @s ~ ~ ~ 1 0.25
execute if predicate pvp_data:r_click/cmd2 if score @s wizard_normal_cool matches ..0 if score @s r_click matches 1.. if score @s sneaking matches 0 run function pvp_data:pvpfunctions/jobs/wizard/attack/start

scoreboard players remove @s[scores={wizard_normal_cool=1..}] wizard_normal_cool 1

scoreboard players remove @s[scores={wizard_normal_burst=1..}] wizard_normal_burst 1

execute if score @s wizard_normal_burst matches 1.. run function pvp_data:pvpfunctions/jobs/wizard/attack/burst

execute as @e[type=item_display,tag=MagicCircle] run function pvp_data:pvpfunctions/jobs/wizard/attack/circle