#> collision_check:block_check/change_group/cauldrons
#
#
#
# @within collision_check:block_check/fixed_groupd

execute if score #Pos.X collision_check matches 0..1250 if score #Pos.Y collision_check matches 0..1875 if score #Pos.Z collision_check matches 0..2500 run scoreboard players set #result collision_check 1
execute if score #Pos.X collision_check matches 0..1250 if score #Pos.Y collision_check matches 0..1875 if score #Pos.Z collision_check matches 7500..9999 run scoreboard players set #result collision_check 1
execute if score #Pos.X collision_check matches 0..2500 if score #Pos.Y collision_check matches 0..1875 if score #Pos.Z collision_check matches 0..1250 run scoreboard players set #result collision_check 1
execute if score #Pos.X collision_check matches 7500..9999 if score #Pos.Y collision_check matches 0..1875 if score #Pos.Z collision_check matches 0..1250 run scoreboard players set #result collision_check 1
execute if score #Pos.X collision_check matches 0..2500 if score #Pos.Y collision_check matches 0..1875 if score #Pos.Z collision_check matches 8750..9999 run scoreboard players set #result collision_check 1
execute if score #Pos.X collision_check matches 7500..9999 if score #Pos.Y collision_check matches 0..1875 if score #Pos.Z collision_check matches 8750..9999 run scoreboard players set #result collision_check 1
execute if score #Pos.X collision_check matches 8750..9999 if score #Pos.Y collision_check matches 0..1875 if score #Pos.Z collision_check matches 0..2500 run scoreboard players set #result collision_check 1
execute if score #Pos.X collision_check matches 8750..9999 if score #Pos.Y collision_check matches 0..1875 if score #Pos.Z collision_check matches 7500..9999 run scoreboard players set #result collision_check 1
execute if score #Pos.X collision_check matches 0..1250 if score #Pos.Y collision_check matches 1875..9999 if score #Pos.Z collision_check matches 0..9999 run scoreboard players set #result collision_check 1
execute if score #Pos.X collision_check matches 0..9999 if score #Pos.Y collision_check matches 1875..9999 if score #Pos.Z collision_check matches 0..1250 run scoreboard players set #result collision_check 1
execute if score #Pos.X collision_check matches 8750..9999 if score #Pos.Y collision_check matches 1875..9999 if score #Pos.Z collision_check matches 0..9999 run scoreboard players set #result collision_check 1
execute if score #Pos.X collision_check matches 0..9999 if score #Pos.Y collision_check matches 1875..9999 if score #Pos.Z collision_check matches 8750..9999 run scoreboard players set #result collision_check 1
execute if score #Pos.X collision_check matches 0..9999 if score #Pos.Y collision_check matches 1875..3125 if score #Pos.Z collision_check matches 0..9999 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 run scoreboard players set #result collision_check 0