#> collision_check:block_check/change_group/sea_pickle
#
#
#
# @within collision_check:block_check/change_group_b


execute if block ~ ~ ~ minecraft:sea_pickle[pickles=1] if score #Pos.X collision_check matches 3750..6250 if score #Pos.Y collision_check matches 0..3750 if score #Pos.Z collision_check matches 3750..6250 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if block ~ ~ ~ minecraft:sea_pickle[pickles=2] if score #Pos.X collision_check matches 1875..8125 if score #Pos.Y collision_check matches 0..3750 if score #Pos.Z collision_check matches 1875..8125 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if block ~ ~ ~ minecraft:sea_pickle[pickles=3] if score #Pos.X collision_check matches 1250..8750 if score #Pos.Y collision_check matches 0..3750 if score #Pos.Z collision_check matches 1250..8750 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if block ~ ~ ~ minecraft:sea_pickle[pickles=4] if score #Pos.X collision_check matches 1250..8750 if score #Pos.Y collision_check matches 0..4375 if score #Pos.Z collision_check matches 1250..8750 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 run scoreboard players set #result collision_check 0