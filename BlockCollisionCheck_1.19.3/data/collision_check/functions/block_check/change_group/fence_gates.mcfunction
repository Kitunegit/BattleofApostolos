#> collision_check:block_check/change_group/fence_gates
#
#
#
# @within collision_check:block_check/change_group_f


execute if block ~ ~ ~ #minecraft:fence_gates[open=true] run scoreboard players set #result collision_check 0
execute if score #result collision_check matches -1 if score #direction collision_check matches 1 if score #Pos.X collision_check matches 0..9999 if score #Pos.Y collision_check matches 0..9999 if score #Pos.Z collision_check matches 3750..6250 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if score #direction collision_check matches 2 if score #Pos.X collision_check matches 0..9999 if score #Pos.Y collision_check matches 0..9999 if score #Pos.Z collision_check matches 3750..6250 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if score #direction collision_check matches 3 if score #Pos.X collision_check matches 3750..6250 if score #Pos.Y collision_check matches 0..9999 if score #Pos.Z collision_check matches 0..9999 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if score #direction collision_check matches 4 if score #Pos.X collision_check matches 3750..6250 if score #Pos.Y collision_check matches 0..9999 if score #Pos.Z collision_check matches 0..9999 run scoreboard players set #result collision_check 1

execute if score #result collision_check matches -1 run scoreboard players set #result collision_check 0