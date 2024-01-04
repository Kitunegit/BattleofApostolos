#> collision_check:block_check/change_group/candles
#
#
#
# @within collision_check:block_check/change_group_e


execute if block ~ ~ ~ #minecraft:candles[candles=1] if score #Pos.X collision_check matches 4375..5625 if score #Pos.Y collision_check matches 0..3750 if score #Pos.Z collision_check matches 4375..5625 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if block ~ ~ ~ #minecraft:candles[candles=2] if score #Pos.X collision_check matches 3125..6875 if score #Pos.Y collision_check matches 0..3750 if score #Pos.Z collision_check matches 3750..5625 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if block ~ ~ ~ #minecraft:candles[candles=3] if score #Pos.X collision_check matches 3125..6250 if score #Pos.Y collision_check matches 0..3750 if score #Pos.Z collision_check matches 3750..6875 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if block ~ ~ ~ #minecraft:candles[candles=4] if score #Pos.X collision_check matches 3125..6875 if score #Pos.Y collision_check matches 0..3750 if score #Pos.Z collision_check matches 3125..6250 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 run scoreboard players set #result collision_check 0