execute at @s run particle dust 0.78 0 1 1.2 ~ ~ ~ 0.5 0.8 0.5 1 15
execute at @s run particle dust 0.31 0.01 0.33 1.2 ~ ~ ~ 0.5 0.8 0.5 1 15
execute if score @s assassin_skill_1_charge matches 1 run scoreboard players remove @s generic.attack 600
execute if score @s assassin_skill_1_charge matches 1 run function pvp_data:pvpfunctions/systems/status/apply {apply_effect:"generic.speed",apply_num:120}
execute if score @s assassin_skill_1_charge matches 1 run function pvp_data:pvpfunctions/systems/status/apply {apply_effect:"generic.attack_speed",apply_num:130}
execute if score @s assassin_skill_1_charge matches 1 at @s run playsound entity.generic.extinguish_fire player @s ~ ~ ~ 0.5 1