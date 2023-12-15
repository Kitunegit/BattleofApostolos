execute at @s if score @s special_cool matches 280.. run tp @s ~ ~ ~ ~ 0
execute at @s if score @s special_cool matches 280.. rotated ~ 0 positioned ^ ^ ^1 run particle dust -1 0 0 0.75 ~ ~ ~ 0.25 0.25 0.25 0.25 5
execute at @s if score @s special_cool matches 280.. rotated ~ 0 positioned ^ ^ ^2 run particle dust -1 0 0 0.75 ~ ~ ~ 0.25 0.25 0.25 0.25 5
execute at @s if score @s special_cool matches 280.. rotated ~ 0 positioned ^ ^ ^3 run particle dust -1 0 0 0.75 ~ ~ ~ 0.25 0.25 0.25 0.25 5
execute at @s if score @s special_cool matches 280.. rotated ~ 0 positioned ^ ^ ^4 run particle dust -1 0 0 0.75 ~ ~ ~ 0.25 0.25 0.25 0.25 5
execute at @s if score @s special_cool matches 280.. rotated ~ 0 positioned ^ ^ ^5 run particle dust -1 0 0 0.75 ~ ~ ~ 0.25 0.25 0.25 0.25 5
execute at @s if score @s special_cool matches 280.. rotated ~ 0 positioned ^ ^ ^6 run particle dust -1 0 0 0.75 ~ ~ ~ 0.25 0.25 0.25 0.25 5
execute at @s if score @s special_cool matches 280.. rotated ~ 0 positioned ^ ^ ^7 run particle dust -1 0 0 0.75 ~ ~ ~ 0.25 0.25 0.25 0.25 5
execute at @s if score @s special_cool matches 280.. rotated ~ 0 positioned ^ ^ ^8 run particle dust -1 0 0 0.75 ~ ~ ~ 0.25 0.25 0.25 0.25 5
execute at @s if score @s special_cool matches 280.. rotated ~ 0 positioned ^ ^ ^9 run particle dust -1 0 0 0.75 ~ ~ ~ 0.25 0.25 0.25 0.25 5
execute at @s if score @s special_cool matches 280.. rotated ~ 0 positioned ^ ^ ^10 run particle dust -1 0 0 0.75 ~ ~ ~ 0.25 0.25 0.25 0.25 5
execute at @s if score @s special_cool matches 300 run playsound item.shield.block player @a ~ ~ ~ 2.5 0.5
execute at @s if score @s special_cool matches 292 run playsound item.shield.block player @a ~ ~ ~ 2.5 0.9
execute at @s if score @s special_cool matches 284 run playsound item.shield.block player @a ~ ~ ~ 2.5 1.3
execute at @s if score @s special_cool matches 276..280 rotated ~ 0 if block ^ ^ ^2.5 air run tp @s ^ ^ ^2.5
execute at @s if score @s special_cool matches 276..280 run particle sweep_attack ~ ~0.15 ~
execute at @s if score @s special_cool matches 276..280 run damage @e[distance=0.1..2,limit=1,tag=player] 5 player_attack by @s
execute at @s if score @s special_cool matches 276..280 if entity @e[distance=0.1..2,limit=1,tag=player] run scoreboard players set $strength delta.api.launch 15000
execute at @s if score @s special_cool matches 276..280 as @e[distance=0.1..2,limit=1,tag=player] at @s rotated as @e[scores={special_cool=276..280},limit=1,tag=player] rotated ~ ~-20 run function delta:api/launch_looking
execute at @s if score @s special_cool matches 276..280 as @e[distance=0.1..2,tag=player] run effect give @s slowness 5 4 true
execute at @s if score @s special_cool matches 276 run playsound entity.zombie.break_wooden_door player @a ~ ~ ~ 0.5 1.5
execute at @s if score @s special_cool matches 276 run particle minecraft:block oak_planks ~ ~0.15 ~ 1 1 1 1 35
execute at @s if score @s special_cool matches 276 run particle crit ~ ~0.15 ~ 1 1 1 1 35