#> collision_check:block_check/change_group/cactus
#
#
#
# @within collision_check:block_check/fixed_groupb

execute if score #Pos.X collision_check matches 625..9375 if score #Pos.Y collision_check matches 0..9999 if score #Pos.Z collision_check matches 625..9375 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 run scoreboard players set #result collision_check 0