#> collision_check:block_check/change_group/fixed_group_a
#
# @within collision_check:block_check/fixed_collision


# カーペット
execute if score #result collision_check matches -1 if block ~ ~ ~ #collision_check:fixed_collision/carpets run function collision_check:block_check/fixed_groupe/carpets
# レール
execute if score #result collision_check matches -1 if block ~ ~ ~ #minecraft:rails run function collision_check:block_check/fixed_groupe/rails
# 植木鉢
execute if score #result collision_check matches -1 if block ~ ~ ~ #minecraft:flower_pots run function collision_check:block_check/fixed_groupe/flower_pots
# 道と耕地
execute if score #result collision_check matches -1 if block ~ ~ ~ #collision_check:fixed_collision/dirt run function collision_check:block_check/fixed_groupe/dirt
# スカルク
execute if score #result collision_check matches -1 if block ~ ~ ~ #collision_check:fixed_collision/sculk run function collision_check:block_check/fixed_groupe/sculk