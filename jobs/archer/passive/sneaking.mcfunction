    #地上
    execute if entity @s[nbt={OnGround:1b}] run scoreboard players set @s archer_jump_count 20
    execute if entity @s[nbt={OnGround:1b}] run function pvp_data:pvpfunctions/jobs/archer/passive/passive_jump {angle:-40,power:8500,particle_position:"~ ~ ~"}
    #2段目空中強化
    execute if entity @s[nbt={OnGround:0b},tag=!archer_jump,scores={archer_jump_count=1..}] run function pvp_data:pvpfunctions/jobs/archer/passive/passive_jump {angle:-30,power:5000,particle_position:"^ ^ ^-1"}
    execute if entity @s[nbt={OnGround:0b},tag=!archer_jump,scores={archer_jump_count=1..}] run tag @s add archer_jump
    #空中1段目未強化
    execute if entity @s[nbt={OnGround:0b},tag=!archer_jump,scores={archer_jump_count=..0}] run function pvp_data:pvpfunctions/jobs/archer/passive/passive_jump {angle:-50,power:6000,particle_position:"^ ^ ^-1"}
    execute if entity @s[nbt={OnGround:0b},tag=!archer_jump,scores={archer_jump_count=..0}] run tag @s add archer_jump