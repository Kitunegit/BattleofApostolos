#> pvp_data:pvpfunctions/jobs/archer/passive/sneaking
#
# 条件分岐
#
# @internal

# 地上
    execute if entity @s[nbt={OnGround:1b}] run scoreboard players set @s archer.jump_count 20
    execute if entity @s[nbt={OnGround:1b}] run function pvp_data:pvpfunctions/jobs/archer/passive/jump {angle:-40,power:8500,particle_position:"~ ~ ~"}
# 2段目空中
    execute if entity @s[nbt={OnGround:0b},tag=!archer.jump,scores={archer.jump_count=1..}] run function pvp_data:pvpfunctions/jobs/archer/passive/jump {angle:-30,power:5000,particle_position:"^ ^ ^-1"}
    execute if entity @s[nbt={OnGround:0b},tag=!archer.jump,scores={archer.jump_count=1..}] run tag @s add archer.jump
# 空中1段目
    execute if entity @s[nbt={OnGround:0b},tag=!archer.jump,scores={archer.jump_count=..0}] run function pvp_data:pvpfunctions/jobs/archer/passive/jump {angle:-50,power:6000,particle_position:"^ ^ ^-1"}
    execute if entity @s[nbt={OnGround:0b},tag=!archer.jump,scores={archer.jump_count=..0}] run tag @s add archer.jump