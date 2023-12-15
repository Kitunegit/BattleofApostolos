execute at @s run particle explosion ~ ~ ~ 2 0.75 2 1 15
execute at @s run playsound entity.player.attack.knockback player @a[distance=..10] ~ ~ ~ 3 0.1
execute at @s if entity @a[distance=..4,tag=!warrior_jump_hover] run scoreboard players set $strength delta.api.launch 10000
execute at @s as @a[distance=..4,tag=!warrior_jump_hover,tag=player] at @s rotated as @e[tag=warrior_jump_hover,tag=player,limit=1] rotated ~ -70 run function delta:api/launch_looking
execute at @s as @e[distance=..4,tag=!warrior_jump_hover,tag=player] run damage @s 8 falling_block by @e[tag=warrior_jump_hover,limit=1,tag=player]
tag @s remove warrior_jump_hover