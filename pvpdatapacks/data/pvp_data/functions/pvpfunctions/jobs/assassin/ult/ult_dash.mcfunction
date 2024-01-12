execute at @s run playsound entity.player.attack.nodamage player @a[distance=..10] ~ ~ ~ 1 1.8

execute at @s run playsound entity.player.attack.crit player @a[distance=..10] ~ ~ ~ 1 1

execute at @s run particle dust -1 0 -1 3 ~ ~1 ~ 1 1 1 0.2 10

execute at @s run particle sweep_attack ~ ~ ~ 1 1 1 0.2 2

execute at @s run scoreboard players set $strength delta.api.launch 2000

execute at @s rotated ~ 0 run function delta:api/launch_looking

execute at @s if entity @e[tag=player,distance=0.1..2,limit=1] run playsound minecraft:block.sculk_shrieker.shriek player @a[distance=..10] ~ ~ ~ 5

execute at @s run function pvp_data:pvpfunctions/systems/job_system/damage/apply {amount: 35000f, type: magic, knockback_strength: 4d, target: "@e[tag=player,distance=0.1..2]"}

kill @e[tag=assassin_ult_trgt]