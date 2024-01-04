#> collision_check:block_check/change_collision
#
# @within collision_check:main/


# Groupa
execute if score #result collision_check matches -1 if block ~ ~ ~ #collision_check:change_group/groupa run function collision_check:block_check/change_group_a
# Groupb
execute if score #result collision_check matches -1 if block ~ ~ ~ #collision_check:change_group/groupb run function collision_check:block_check/change_group_b
# Groupc
execute if score #result collision_check matches -1 if block ~ ~ ~ #collision_check:change_group/groupc run function collision_check:block_check/change_group_c
# Groupd
execute if score #result collision_check matches -1 if block ~ ~ ~ #collision_check:change_group/groupd run function collision_check:block_check/change_group_d
# Groupe
execute if score #result collision_check matches -1 if block ~ ~ ~ #collision_check:change_group/groupe run function collision_check:block_check/change_group_e
# Groupf
execute if score #result collision_check matches -1 if block ~ ~ ~ #collision_check:change_group/groupf run function collision_check:block_check/change_group_f
