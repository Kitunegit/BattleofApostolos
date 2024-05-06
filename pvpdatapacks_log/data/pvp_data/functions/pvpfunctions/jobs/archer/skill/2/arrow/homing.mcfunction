#> pvp_data:pvpfunctions/jobs/archer/skill/2/arrow/homing
#
# 追尾関連
#
# @internal


# 追尾させる


    # 方向に応じて回転
    
    execute at @s positioned ^-60 ^ ^ if entity @e[tag=archer.homing_target,distance=..59.99,limit=1] at @s run tp @s ~ ~ ~ ~10 ~
    execute at @s positioned ^-60 ^ ^ if entity @e[tag=archer.homing_target,distance=..59.99,limit=1] at @s run tag @s add archer.homing

    execute at @s positioned ^60 ^ ^ if entity @e[tag=archer.homing_target,distance=..59.99,limit=1] at @s run tp @s ~ ~ ~ ~-10 ~
    execute at @s positioned ^60 ^ ^ if entity @e[tag=archer.homing_target,distance=..59.99,limit=1] at @s run tag @s add archer.homing

    execute at @s positioned ^ ^60 ^ if entity @e[tag=archer.homing_target,distance=..59.99,limit=1] at @s run tp @s ~ ~ ~ ~ ~-10
    execute at @s positioned ^ ^60 ^ if entity @e[tag=archer.homing_target,distance=..59.99,limit=1] at @s run tag @s add archer.homing

    execute at @s positioned ^ ^-60 ^ if entity @e[tag=archer.homing_target,distance=..59.99,limit=1] at @s run tp @s ~ ~ ~ ~ ~10
    execute at @s positioned ^ ^-60 ^ if entity @e[tag=archer.homing_target,distance=..59.99,limit=1] at @s run tag @s add archer.homing

    # Motionで飛ばす
    
    execute at @s rotated as @s positioned 0.0 0.0 0.0 run summon marker ^ ^ ^0.8 {Tags:[archer.motion.marker]}

    execute at @s if entity @s[tag=archer.homing] run data modify entity @s Motion set from entity @e[tag=archer.motion.marker,limit=1,sort=nearest] Pos

    kill @e[tag=archer.motion.marker]

    tag @s remove archer.homing