#> collision_check:block_check/change_group/brewing_stand
#
#
#
# @within collision_check:block_check/fixed_groupd

execute if score #Pos.X collision_check matches 625..9375 if score #Pos.Y collision_check matches 0..1250 if score #Pos.Z collision_check matches 625..9375 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if score #Pos.X collision_check matches 4375..5625 if score #Pos.Y collision_check matches 1250..8750 if score #Pos.Z collision_check matches 4375..5625 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 run scoreboard players set #result collision_check 0