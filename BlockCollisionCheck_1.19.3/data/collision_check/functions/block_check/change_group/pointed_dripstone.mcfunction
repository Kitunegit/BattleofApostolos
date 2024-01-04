#> collision_check:block_check/change_group/pointed_dripstone
#
# 基準up
#
# @within collision_check:block_check/change_group_d

execute if block ~ ~ ~ minecraft:pointed_dripstone[vertical_direction=down] run function collision_check:pos_get/convert.up_down

execute if block ~ ~ ~ minecraft:pointed_dripstone[thickness=tip] if score #Pos.X collision_check matches 1875..8125 if score #Pos.Y collision_check matches 0..6875 if score #Pos.Z collision_check matches 1875..8125 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if block ~ ~ ~ minecraft:pointed_dripstone[thickness=tip_merge] if score #Pos.X collision_check matches 1875..8125 if score #Pos.Y collision_check matches 0..9999 if score #Pos.Z collision_check matches 1875..8125 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if block ~ ~ ~ minecraft:pointed_dripstone[thickness=frustum] if score #Pos.X collision_check matches 1250..8750 if score #Pos.Y collision_check matches 0..9999 if score #Pos.Z collision_check matches 1250..8750 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if block ~ ~ ~ minecraft:pointed_dripstone[thickness=middle] if score #Pos.X collision_check matches 625..9375 if score #Pos.Y collision_check matches 0..9999 if score #Pos.Z collision_check matches 625..9375 run scoreboard players set #result collision_check 1
execute if score #result collision_check matches -1 if block ~ ~ ~ minecraft:pointed_dripstone[thickness=base] if score #Pos.X collision_check matches 0..9999 if score #Pos.Y collision_check matches 0..9999 if score #Pos.Z collision_check matches 0..9999 run scoreboard players set #result collision_check 1

execute if score #result collision_check matches -1 run scoreboard players set #result collision_check 0