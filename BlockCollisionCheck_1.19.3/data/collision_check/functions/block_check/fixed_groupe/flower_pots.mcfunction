#> collision_check:block_check/change_group/flower_pots
#
#
#
# @within collision_check:block_check/fixed_groupa

execute if score #result collision_check matches -1 if score #Pos.X collision_check matches 3125..6875 if score #Pos.Y collision_check matches 0..3750 if score #Pos.Z collision_check matches 3125..6875 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 run scoreboard players set #result collision_check 0