#> pvp_data:pvpfunctions/jobs/archer/skill/2/arrow/homing
#
# 追尾関連
#
# @internal

# 自身にタグ付与

    tag @s add archer.homing_arrow

# 追尾させる

    # 最寄りのタグ持ちを取得し、固有スコアを取得
    
    execute at @s run scoreboard players operation @s archer.target_unique = @e[tag=archer.target_marker,limit=1,sort=nearest] archer.target_unique
    
    # ターゲットにタグを付与

    execute as @e[tag=archer.target_marker] at @e[tag=homing_arrow] if score @s archer.target_unique = @e[tag=homing_arrow,limit=1,sort=nearest] archer.target_unique run tag @s add archer.homing_target_marker

    # 方向に応じて回転
    
    execute at @s positioned ^-20 ^ ^ if entity @e[tag=archer.homing_target_marker,distance=..19.99] at @s run tp @s ~ ~ ~ ~3 ~

    execute at @s positioned ^20 ^ ^ if entity @e[tag=archer.homing_target_marker,distance=..19.99] at @s run tp @s ~ ~ ~ ~-3 ~

    execute at @s positioned ^ ^20 ^ if entity @e[tag=archer.homing_target_marker,distance=..19.99] at @s run tp @s ~ ~ ~ ~ ~-3

    execute at @s positioned ^ ^-20 ^ if entity @e[tag=archer.homing_target_marker,distance=..19.99] at @s run tp @s ~ ~ ~ ~ ~3

    # Motionで飛ばす
    
    execute at @s rotated as @s positioned 0.0 0.0 0.0 run summon marker ^ ^ ^0.1 {Tags:[archer.motion.marker]}

    data modify entity @s Motion set from entity @e[tag=archer.motion.marker,limit=1,sort=nearest] Pos

    kill @e[tag=archer.motion.marker]

    # デバッグ

    tag @e remove archer.homing_target_marker