execute at @s run particle dust 0.745 0.4 0 5 ~ ~ ~ 2 0.75 2 0.4 250
execute at @s run particle block redstone_block ~ ~ ~ 4 0.75 4 0.1 45
execute at @s run playsound entity.player.attack.knockback player @a[distance=..10] ~ ~ ~ 3 0.1
execute at @s if entity @a[distance=..5,tag=!warrior_jump_hover_ult] run scoreboard players set $strength delta.api.launch 50000
execute at @s as @a[distance=..5,tag=!warrior_jump_hover_ult,tag=player] at @s rotated as @e[tag=warrior_jump_hover_ult,tag=player,limit=1] rotated ~ -70 run function delta:api/launch_looking
execute at @s as @e[distance=..3,tag=!warrior_jump_hover_ult,tag=player] run damage @s 999 cramming by @e[tag=warrior_jump_hover_ult,limit=1,tag=player]
scoreboard players set $strength delta.api.launch 10000
execute at @s rotated ~ -90 run function delta:api/launch_looking
tag @s remove warrior_jump_hover_ult