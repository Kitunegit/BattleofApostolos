#次のフェーズに行くときに実行されるFunction

execute as @a at @s run playsound minecraft:block.anvil.place player @s
tellraw @a [{"text":"第","color":"red","bold":true},{"score":{"name":"area_phase","objective":"area_timer"},"color":"gold"},{"text":"フェーズ収縮開始"}]
#次の秒数のデータ取得
function pvp_data:pvpfunctions/systems/area_system/phase_time_data
#最大値をボスバーに代入
execute store result bossbar minecraft:area max run scoreboard players get area_time area_timer
#ボーダーを適応
kill @e[type=marker,tag=next_center]
summon marker 288.60 -21 -236.49 {"Tags":["next_center"]}
execute at @e[type=minecraft:marker,tag=border_center] run spreadplayers ~ ~ 5 15 false @e[type=minecraft:marker,tag=next_center]
function pvp_data:pvpfunctions/systems/area_system/border
#フェーズを増やす
scoreboard players add area_phase area_timer 1