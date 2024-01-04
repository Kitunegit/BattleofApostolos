#> collision_check:block_check/change_group/lectern
#
#
#
# @within collision_check:block_check/fixed_groupd

execute if score #Pos.X collision_check matches 0..9999 if score #Pos.Y collision_check matches 0..1250 if score #Pos.Z collision_check matches 0..9999 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if score #Pos.X collision_check matches 2500..7500 if score #Pos.Y collision_check matches 1250..9375 if score #Pos.Z collision_check matches 2500..7500 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 run scoreboard players set #result collision_check 0