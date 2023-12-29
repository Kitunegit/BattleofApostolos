#視点動かし
execute if score @s warrior_special_timer matches 5..10 at @s run tp @e[scores={warrior_special_timer=5..10}] ~ ~ ~ ~ ~-50
execute if score @s warrior_special_timer matches 1..4 at @s run tp @e[scores={warrior_special_timer=1..4}] ~ ~ ~ ~ ~60
#演出
execute if score @s warrior_special_timer matches 5 at @s run playsound minecraft:block.wood.place player @a[distance=..10] ~ ~ ~ 1 0.2
execute unless score @s warrior_health_per matches 1 if score @s warrior_special_timer matches 1 at @s run playsound block.anvil.place player @s ~ ~ ~ 1 1
execute unless score @s warrior_health_per matches 1 if score @s warrior_special_timer matches 1 at @s rotated ~ 0 positioned ^ ^ ^5 run particle minecraft:block minecraft:dirt ~ ~ ~ 2 0 2 0.2 150
execute if score @s warrior_special_timer matches 1 run effect clear @s slowness
#ダメージ
execute if score @s warrior_special_timer matches 1 run function pvp_data:pvpfunctions/jobs/warrior/special/skill_damage

#体力が1ノときの演出
execute if score @s warrior_health_per matches 1 if score @s warrior_special_timer matches 1 at @s run playsound block.anvil.place player @s ~ ~ ~ 1 0.75
execute if score @s warrior_health_per matches 1 if score @s warrior_special_timer matches 1 at @s rotated ~ 0 positioned ^ ^ ^5 run particle minecraft:block minecraft:redstone_block ~ ~ ~ 2 0 2 0.2 150
execute if score @s warrior_health_per matches 1 if score @s warrior_special_timer matches 1 at @s rotated ~ 0 positioned ^ ^ ^5 run particle dust -1 0 0 1.2 ~ ~ ~ 2 0 2 0.2 150

scoreboard players remove @s warrior_special_timer 1