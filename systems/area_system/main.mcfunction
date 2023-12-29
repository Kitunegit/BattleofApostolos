#常時時間を減らす
execute if score area_time area_timer matches 0.. run scoreboard players remove area_time area_timer 1
#スコアに応じてボスバーを変化させる
execute store result bossbar minecraft:area value run scoreboard players get area_time area_timer
#カウントダウンが0の場合フェーズを進める
execute if score area_time area_timer matches 0..10 run function pvp_data:pvpfunctions/systems/area_system/next_phase
execute if score area_phase area_timer matches 11.. run scoreboard players reset area_time
execute if score area_phase area_timer matches 11.. run scoreboard players reset area_phase
#中心地点移動
execute as @e[type=marker,tag=border_center] at @s if entity @e[type=marker,tag=next_center,distance=5..] facing entity @e[tag=next_center,type=marker] eyes run tp @s ^ ^ ^0.07 ~ ~
execute at @e[tag=border_center,type=marker,limit=1] run worldborder center ~ ~ 
execute at @e[tag=border_center,type=marker,limit=1] run spawnpoint @a ~ ~ ~
execute at @e[tag=border_center,type=marker,limit=1] run particle minecraft:dust 1 1 1 0.5 ~ ~ ~ 0 50 0 0.1 1000

execute as @a at @s facing entity @e[type=marker,tag=border_center] eyes positioned ~ ~1 ~ run particle dust 0 1 0 0.21 ^ ^ ^1 0.01 0.05 0.05 0.05 30 force @s