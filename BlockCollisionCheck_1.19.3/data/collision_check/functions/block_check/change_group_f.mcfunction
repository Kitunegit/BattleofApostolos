#> collision_check:block_check/change_group/change_group_f
#
# @within collision_check:block_check/change_collision


# ベッド
execute if score #result collision_check matches -1 if block ~ ~ ~ #minecraft:beds run function collision_check:block_check/change_group/beds
# フェンスゲート
execute if score #result collision_check matches -1 if block ~ ~ ~ #minecraft:fence_gates run function collision_check:block_check/change_group/fence_gates
# フェンス
execute if score #result collision_check matches -1 if block ~ ~ ~ #minecraft:fences run function collision_check:block_check/change_group/fences
# 塀
execute if score #result collision_check matches -1 if block ~ ~ ~ #minecraft:walls run function collision_check:block_check/change_group/walls
# ドア
execute if score #result collision_check matches -1 if block ~ ~ ~ #minecraft:doors run function collision_check:block_check/change_group/doors