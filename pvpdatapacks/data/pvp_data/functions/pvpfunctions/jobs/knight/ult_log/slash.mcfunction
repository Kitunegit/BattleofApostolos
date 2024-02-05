
#斬撃演出
    execute at @s run tp @s ^ ^ ^0.5
    execute at @s run playsound entity.player.attack.sweep player @a[distance=..15] ~ ~ ~ 1 1

    execute at @s positioned ^ ^ ^ run particle sweep_attack ~ ~ ~ 0.5 0.5 0.5 3 5 force
    execute if score @s knight_ult_count matches 3.. at @s positioned ^ ^ ^ run function pvp_data:pvpfunctions/systems/job_system/damage/apply_fixed {damage: {amount: 20.0f,type: "pvp_data:knight/knight_ult"},knockback: {horizontal: 0d,vertical: 0d},target: "@e[tag=player,limit=1,distance=..4]"}
    execute at @s positioned ^2 ^ ^-0.5 run particle sweep_attack ~ ~ ~ 0.5 0.5 0.5 3 5 force
    execute if score @s knight_ult_count matches 3.. at @s positioned ^2 ^ ^-0.5 run function pvp_data:pvpfunctions/systems/job_system/damage/apply_fixed {damage: {amount: 20.0f,type: "pvp_data:knight/knight_ult"},knockback: {horizontal: 0d,vertical: 0d},target: "@e[tag=player,limit=1,distance=..3]"}
    execute at @s positioned ^-2 ^ ^-0.5 run particle sweep_attack ~ ~ ~ 0.5 0.5 0.5 3 5 force
    execute if score @s knight_ult_count matches 3.. at @s positioned ^-2 ^ ^-0.5 run function pvp_data:pvpfunctions/systems/job_system/damage/apply_fixed {damage: {amount: 20.0f,type: "pvp_data:knight/knight_ult"},knockback: {horizontal: 0d,vertical: 0d},target: "@e[tag=player,limit=1,distance=..4]"}
    execute at @s positioned ^4 ^ ^-1 run particle sweep_attack ~ ~ ~ 0.5 0.5 0.5 3 5 force
    execute if score @s knight_ult_count matches 3.. at @s positioned ^4 ^ ^-1 run function pvp_data:pvpfunctions/systems/job_system/damage/apply_fixed {damage: {amount: 20.0f,type: "pvp_data:knight/knight_ult"},knockback: {horizontal: 0d,vertical: 0d},target: "@e[tag=player,limit=1,distance=..4]"}
    execute at @s positioned ^-4 ^ ^-1 run particle sweep_attack ~ ~ ~ 0.5 0.5 0.5 3 5 force
    execute if score @s knight_ult_count matches 3.. at @s positioned ^-4 ^ ^-1 run function pvp_data:pvpfunctions/systems/job_system/damage/apply_fixed {damage: {amount: 20.0f,type: "pvp_data:knight/knight_ult"},knockback: {horizontal: 0d,vertical: 0d},target: "@e[tag=player,limit=1,distance=..4]"}
#斬撃跡演出
    execute at @s positioned ^ ^ ^ run particle dust 0.145 0.957 0.957 1 ^ ^ ^-5 5 1 3 10 30 force