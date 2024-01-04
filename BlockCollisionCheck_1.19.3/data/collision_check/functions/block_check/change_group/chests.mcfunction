#> collision_check:block_check/change_group/chests
#
#
#
# @within collision_check:block_check/change_group_a

execute if block ~ ~ ~ #collision_check:change_collision/chests[type=right] run scoreboard players set #special collision_check 1
execute if block ~ ~ ~ #collision_check:change_collision/chests[type=left] run scoreboard players set #special collision_check 2

execute if score #Pos.X collision_check matches 625..9375 if score #Pos.Y collision_check matches 0..8750 if score #Pos.Z collision_check matches 625..9375 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if score #direction collision_check matches 1 if score #special collision_check matches 1 if score #Pos.X collision_check matches 0..9375 if score #Pos.Y collision_check matches 0..8750 if score #Pos.Z collision_check matches 625..9375 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if score #direction collision_check matches 2 if score #special collision_check matches 2 if score #Pos.X collision_check matches 0..9375 if score #Pos.Y collision_check matches 0..8750 if score #Pos.Z collision_check matches 625..9375 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if score #direction collision_check matches 3 if score #special collision_check matches 1 if score #Pos.X collision_check matches 625..9375 if score #Pos.Y collision_check matches 0..8750 if score #Pos.Z collision_check matches 0..9375 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if score #direction collision_check matches 4 if score #special collision_check matches 2 if score #Pos.X collision_check matches 625..9375 if score #Pos.Y collision_check matches 0..8750 if score #Pos.Z collision_check matches 0..9375 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if score #direction collision_check matches 1 if score #special collision_check matches 2 if score #Pos.X collision_check matches 625..9999 if score #Pos.Y collision_check matches 0..8750 if score #Pos.Z collision_check matches 625..9375 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if score #direction collision_check matches 2 if score #special collision_check matches 1 if score #Pos.X collision_check matches 625..9999 if score #Pos.Y collision_check matches 0..8750 if score #Pos.Z collision_check matches 625..9375 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if score #direction collision_check matches 3 if score #special collision_check matches 2 if score #Pos.X collision_check matches 625..9375 if score #Pos.Y collision_check matches 0..8750 if score #Pos.Z collision_check matches 625..9999 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if score #direction collision_check matches 4 if score #special collision_check matches 1 if score #Pos.X collision_check matches 625..9375 if score #Pos.Y collision_check matches 0..8750 if score #Pos.Z collision_check matches 625..9999 run scoreboard players set #result collision_check 1

execute if score #result collision_check matches -1 run scoreboard players set #result collision_check 0
