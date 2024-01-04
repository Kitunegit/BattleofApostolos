#> collision_check:block_check/change_group/lantern
#
#
#
# @within collision_check:block_check/change_group_a

execute if block ~ ~ ~ #collision_check:change_collision/lantern[hanging=true] run scoreboard players set #special collision_check 1

execute if score #special collision_check matches 0 if score #Pos.X collision_check matches 3125..6875 if score #Pos.Y collision_check matches 0..4375 if score #Pos.Z collision_check matches 3125..6875 run scoreboard players set #result collision_check 1
execute if score #special collision_check matches 0 if score #Pos.X collision_check matches 3750..6250 if score #Pos.Y collision_check matches 4375..5625 if score #Pos.Z collision_check matches 3750..6250 run scoreboard players set #result collision_check 1
execute if score #special collision_check matches 1 if score #Pos.X collision_check matches 3125..6875 if score #Pos.Y collision_check matches 625..5000 if score #Pos.Z collision_check matches 3125..6875 run scoreboard players set #result collision_check 1
execute if score #special collision_check matches 1 if score #Pos.X collision_check matches 3750..6250 if score #Pos.Y collision_check matches 5000..6250 if score #Pos.Z collision_check matches 3750..6250 run scoreboard players set #result collision_check 1

execute if score #result collision_check matches -1 run scoreboard players set #result collision_check 0