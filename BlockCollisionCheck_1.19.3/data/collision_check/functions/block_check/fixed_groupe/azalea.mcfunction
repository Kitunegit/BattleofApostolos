#> collision_check:block_check/change_group/azalea
#
#
#
# @within collision_check:block_check/fixed_groupc

execute if score #Pos.X collision_check matches 3750..6250 if score #Pos.Y collision_check matches 0..5000 if score #Pos.Z collision_check matches 3750..6250 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if score #Pos.X collision_check matches 0..9999 if score #Pos.Y collision_check matches 5000..9999 if score #Pos.Z collision_check matches 0..9999 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 run scoreboard players set #result collision_check 0