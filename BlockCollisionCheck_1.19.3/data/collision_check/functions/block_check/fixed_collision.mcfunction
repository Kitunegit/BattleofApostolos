#> collision_check:block_check/fixed_collision
#
# @within collision_check:main/


# Groupa
execute if score #result collision_check matches -1 if block ~ ~ ~ #collision_check:fixed_group/groupa run function collision_check:block_check/fixed_group_a
# Groupb
execute if score #result collision_check matches -1 if block ~ ~ ~ #collision_check:fixed_group/groupb run function collision_check:block_check/fixed_group_b
# Groupc
execute if score #result collision_check matches -1 if block ~ ~ ~ #collision_check:fixed_group/groupc run function collision_check:block_check/fixed_group_c
# Groupd
execute if score #result collision_check matches -1 if block ~ ~ ~ #collision_check:fixed_group/groupd run function collision_check:block_check/fixed_group_d
