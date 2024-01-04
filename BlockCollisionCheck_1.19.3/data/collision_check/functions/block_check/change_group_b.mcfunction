#> collision_check:block_check/change_group/change_group_b
#
# @within collision_check:block_check/change_collision


# ピストンとピストンヘッド
execute if score #result collision_check matches -1 if block ~ ~ ~ #collision_check:change_collision/piston run function collision_check:block_check/change_group/piston
# ケーキ
execute if score #result collision_check matches -1 if block ~ ~ ~ minecraft:cake run function collision_check:block_check/change_group/cake
# エンドポータルフレーム
execute if score #result collision_check matches -1 if block ~ ~ ~ minecraft:end_portal_frame run function collision_check:block_check/change_group/end_portal_frame
# シーピクルス
execute if score #result collision_check matches -1 if block ~ ~ ~ minecraft:sea_pickle run function collision_check:block_check/change_group/sea_pickle
# カメの卵
execute if score #result collision_check matches -1 if block ~ ~ ~ minecraft:turtle_egg run function collision_check:block_check/change_group/turtle_egg
