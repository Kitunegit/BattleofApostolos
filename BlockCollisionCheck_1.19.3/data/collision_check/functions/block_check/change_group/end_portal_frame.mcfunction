#> collision_check:block_check/change_group/end_portal_frame
#
#
#
# @within collision_check:block_check/change_group_b


execute if score #result collision_check matches -1 if score #Pos.X collision_check matches 0..9999 if score #Pos.Y collision_check matches 0..8125 if score #Pos.Z collision_check matches 0..9999 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if block ~ ~ ~ minecraft:end_portal_frame[eye=true] if score #Pos.X collision_check matches 2500..7500 if score #Pos.Y collision_check matches 8125..9999 if score #Pos.Z collision_check matches 2500..7500 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 run scoreboard players set #result collision_check 0