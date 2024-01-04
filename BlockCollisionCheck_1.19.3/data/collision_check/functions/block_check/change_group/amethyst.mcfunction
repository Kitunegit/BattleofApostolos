#> collision_check:block_check/change_group/amethyst
#
# 基準up
#
# @within collision_check:block_check/change_group_a

execute if score #direction collision_check matches 1 run function collision_check:pos_get/convert.nouth_south
execute if score #direction collision_check matches 1..2 run scoreboard players operation #Pos.Z collision_check >< #Pos.Y collision_check
execute if score #direction collision_check matches 4 run function collision_check:pos_get/convert.east_west
execute if score #direction collision_check matches 3..4 run scoreboard players operation #Pos.X collision_check >< #Pos.Y collision_check
execute if score #up_down collision_check matches 1 run function collision_check:pos_get/convert.up_down

execute if block ~ ~ ~ minecraft:small_amethyst_bud if score #Pos.X collision_check matches 2500..7500 if score #Pos.Y collision_check matches 0..1875 if score #Pos.Z collision_check matches 2500..7500 run scoreboard players set #result collision_check 1
execute if block ~ ~ ~ minecraft:medium_amethyst_bud if score #Pos.X collision_check matches 1875..8125 if score #Pos.Y collision_check matches 0..2500 if score #Pos.Z collision_check matches 1875..8125 run scoreboard players set #result collision_check 1
execute if block ~ ~ ~ minecraft:large_amethyst_bud if score #Pos.X collision_check matches 1875..8125 if score #Pos.Y collision_check matches 0..3125 if score #Pos.Z collision_check matches 1875..8125 run scoreboard players set #result collision_check 1
execute if block ~ ~ ~ minecraft:amethyst_cluster if score #Pos.X collision_check matches 1875..8125 if score #Pos.Y collision_check matches 0..4375 if score #Pos.Z collision_check matches 1875..8125 run scoreboard players set #result collision_check 1

execute if score #result collision_check matches -1 run scoreboard players set #result collision_check 0