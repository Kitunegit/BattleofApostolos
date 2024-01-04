#> collision_check:block_check/change_group/change_group_d
#
# @within collision_check:block_check/change_collision


# ホッパー
execute if score #result collision_check matches -1 if block ~ ~ ~ minecraft:hopper run function collision_check:block_check/change_group/hopper
# コーラスプラント
execute if score #result collision_check matches -1 if block ~ ~ ~ minecraft:chorus_plant run function collision_check:block_check/change_group/chorus_plant
# 鍾乳石
execute if score #result collision_check matches -1 if block ~ ~ ~ minecraft:pointed_dripstone run function collision_check:block_check/change_group/pointed_dripstone
# カカオ豆
execute if score #result collision_check matches -1 if block ~ ~ ~ minecraft:cocoa run function collision_check:block_check/change_group/cocoa
# 砥石
execute if score #result collision_check matches -1 if block ~ ~ ~ minecraft:grindstone run function collision_check:block_check/change_group/grindstone
