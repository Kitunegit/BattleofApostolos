#> collision_check:block_check/change_group/fixed_group_b
#
# @within collision_check:block_check/fixed_collision


# 日照センサー
execute if score #result collision_check matches -1 if block ~ ~ ~ minecraft:daylight_detector run function collision_check:block_check/fixed_groupe/daylight_detector
# 石切台
execute if score #result collision_check matches -1 if block ~ ~ ~ minecraft:stonecutter run function collision_check:block_check/fixed_groupe/stonecutter
# エンチャントテーブル
execute if score #result collision_check matches -1 if block ~ ~ ~ minecraft:enchanting_table run function collision_check:block_check/fixed_groupe/enchanting_table
# 焚き火
execute if score #result collision_check matches -1 if block ~ ~ ~ #minecraft:campfires run function collision_check:block_check/fixed_groupe/campfires
# サボテン
execute if score #result collision_check matches -1 if block ~ ~ ~ minecraft:cactus run function collision_check:block_check/fixed_groupe/cactus
