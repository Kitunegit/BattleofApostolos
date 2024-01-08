execute as @a[distance=0.1..3] run function pvp_data:pvpfunctions/systems/rng_system/generated
execute at @s if entity @e[distance=0.1..3,tag=player] if predicate pvp_data:75_rng run scoreboard players add @s dark_scientist_passive 1
function pvp_data:pvpfunctions/systems/job_system/damage/apply {damage: {},knockback: {horizontal: 1d,vertical: 0.5d},target: "@e[distance=0.1..3]"}