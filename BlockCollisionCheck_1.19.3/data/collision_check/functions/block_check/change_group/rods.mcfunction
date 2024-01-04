#> collision_check:block_check/change_group/rods
#
# 基準up
#
# @within collision_check:block_check/change_group_c

execute if score #direction collision_check matches 1..2 run scoreboard players operation #Pos.Z collision_check >< #Pos.Y collision_check
execute if score #direction collision_check matches 3..4 run scoreboard players operation #Pos.X collision_check >< #Pos.Y collision_check

execute if score #Pos.X collision_check matches 3750..6250 if score #Pos.Y collision_check matches 0..9999 if score #Pos.Z collision_check matches 3750..6250 run scoreboard players set #result collision_check 1

execute if score #result collision_check matches -1 run scoreboard players set #result collision_check 0