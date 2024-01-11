execute at @s run playsound entity.player.attack.knockback player @a[distance=..10] ~ ~ ~ 1.5 0.4
execute at @s run particle dust 0 0 0 0.25 ~ ~ ~ 2 2 2 2 50 force
execute at @s run particle explosion ~ ~ ~
function pvp_data:pvpfunctions/systems/job_system/damage/apply_fixed {damage: {amount: 4.0f,type: "pvp_data:assassin/assassin_sp"},knockback: {horizontal: 0.5d,vertical: 0.5d},target: "@e[tag=assassin_sp_trgt,limit=1]"}
tag @e remove assassin_sp_trgt