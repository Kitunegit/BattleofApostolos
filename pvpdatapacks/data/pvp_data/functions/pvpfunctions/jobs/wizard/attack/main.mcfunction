execute if predicate pvp_data:r_click/cmd2 if score @s wizard_normal_cool matches ..0 if score @s r_click matches 1.. if score @s sneaking matches 0 run function pvp_data:pvpfunctions/jobs/wizard/attack/fire
scoreboard players remove @s[scores={wizard_normal_cool=1..}] wizard_normal_cool 1
execute as @e[type=item_display,tag=MagicCircle] run function pvp_data:pvpfunctions/jobs/wizard/attack/circle