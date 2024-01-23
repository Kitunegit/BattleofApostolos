execute if score @s wizard_normal_burst matches 25 run function pvp_data:pvpfunctions/jobs/wizard/attack/fire {summon_pos:"^0.25 ^-0.5 ^1"}
execute if score @s wizard_normal_burst matches 20 run function pvp_data:pvpfunctions/jobs/wizard/attack/fire {summon_pos:"^-0.25 ^-0.5 ^1"} 
execute if score @s wizard_normal_burst matches 15 run function pvp_data:pvpfunctions/jobs/wizard/attack/fire {summon_pos:"^0.5 ^0.5 ^1"}
execute if score @s wizard_normal_burst matches 10 run function pvp_data:pvpfunctions/jobs/wizard/attack/fire {summon_pos:"^-0.5 ^0.5 ^1"}
execute if score @s wizard_normal_burst matches 5 run function pvp_data:pvpfunctions/jobs/wizard/attack/fire {summon_pos:"^ ^ ^1"}
execute if score @s wizard_normal_burst matches 5 if entity @s[tag=wizard.enm_hit] run effect give @s instant_health 1 0 true
execute if score @s wizard_normal_burst matches 5 if entity @s[tag=wizard.enm_hit] at @s run playsound minecraft:entity.player.burp player @a[distance=..5] ~ ~ ~ 1 1.78
execute if score @s wizard_normal_burst matches 5 run tag @s remove wizard.enm_hit
execute if score @s wizard_normal_burst matches 1 run scoreboard players set @s wizard_normal_cool 50