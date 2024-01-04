#> collision_check:block_check/change_group/anvil
#
# 基準north
#
# @within collision_check:block_check/change_group_e

execute if score #direction collision_check matches 3..4 run scoreboard players operation #Pos.X collision_check >< #Pos.Z collision_check

execute if score #Pos.X collision_check matches 1250..8750 if score #Pos.Y collision_check matches 0..2500 if score #Pos.Z collision_check matches 1250..8750 run scoreboard players set #result collision_check 1
execute if score #Pos.X collision_check matches 2500..7500 if score #Pos.Y collision_check matches 2500..3125 if score #Pos.Z collision_check matches 1875..8125 run scoreboard players set #result collision_check 1
execute if score #Pos.X collision_check matches 3750..6250 if score #Pos.Y collision_check matches 3125..6250 if score #Pos.Z collision_check matches 2500..7500 run scoreboard players set #result collision_check 1
execute if score #Pos.X collision_check matches 1875..8125 if score #Pos.Y collision_check matches 6250..9999 if score #Pos.Z collision_check matches 0..9999 run scoreboard players set #result collision_check 1

execute if score #result collision_check matches -1 run scoreboard players set #result collision_check 0