#> collision_check:block_check/change_group/hopper
#
#
#
# @within collision_check:block_check/change_group_d


execute if score #Pos.X collision_check matches 2500..7500 if score #Pos.Y collision_check matches 2500..6250 if score #Pos.Z collision_check matches 2500..7500 run scoreboard players set #result collision_check 1
execute if score #Pos.X collision_check matches 0..9999 if score #Pos.Y collision_check matches 6250..9999 if score #Pos.Z collision_check matches 0..1250 run scoreboard players set #result collision_check 1
execute if score #Pos.X collision_check matches 0..9999 if score #Pos.Y collision_check matches 6250..9999 if score #Pos.Z collision_check matches 8750..9999 run scoreboard players set #result collision_check 1
execute if score #Pos.X collision_check matches 0..1250 if score #Pos.Y collision_check matches 6250..9999 if score #Pos.Z collision_check matches 0..9999 run scoreboard players set #result collision_check 1
execute if score #Pos.X collision_check matches 8750..9999 if score #Pos.Y collision_check matches 6250..9999 if score #Pos.Z collision_check matches 0..9999 run scoreboard players set #result collision_check 1
execute if score #Pos.X collision_check matches 0..9999 if score #Pos.Y collision_check matches 6250..6875 if score #Pos.Z collision_check matches 0..9999 run scoreboard players set #result collision_check 1
execute if score #direction collision_check matches 0 if score #Pos.X collision_check matches 3750..6250 if score #Pos.Y collision_check matches 0..2500 if score #Pos.Z collision_check matches 3750..6250 run scoreboard players set #result collision_check 1
execute if score #direction collision_check matches 1 if score #Pos.X collision_check matches 3750..6250 if score #Pos.Y collision_check matches 2500..5000 if score #Pos.Z collision_check matches 0..2500 run scoreboard players set #result collision_check 1
execute if score #direction collision_check matches 2 if score #Pos.X collision_check matches 3750..6250 if score #Pos.Y collision_check matches 2500..5000 if score #Pos.Z collision_check matches 7500..9999 run scoreboard players set #result collision_check 1
execute if score #direction collision_check matches 3 if score #Pos.X collision_check matches 7500..9999 if score #Pos.Y collision_check matches 2500..5000 if score #Pos.Z collision_check matches 3750..6250 run scoreboard players set #result collision_check 1
execute if score #direction collision_check matches 4 if score #Pos.X collision_check matches 0..2500 if score #Pos.Y collision_check matches 2500..5000 if score #Pos.Z collision_check matches 3750..6250 run scoreboard players set #result collision_check 1

execute if score #result collision_check matches -1 run scoreboard players set #result collision_check 0