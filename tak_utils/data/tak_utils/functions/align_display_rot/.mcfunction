#> tak_utils:align_display_rot/
#
# 実行者となるdisplayの向きを実行方向に合わせます。
#
# @api

# 方向リセット
    #data modify entity @s Rotation set value [0.0f, 0.0f]

# NBT上書き
    data modify entity @s transformation.left_rotation set value {axis: [0.0f, 0.0f, 0.0f], angle: 0.0f}

    data modify entity @s transformation.right_rotation set value {axis: [0.0f, 0.0f, 0.0f], angle: 0.0f}

# left_rotation
    # 回転軸ベクトルを取得
        #declare tag tak_utils.set_display_rot-marker
        execute positioned 0.0 0.0 0.0 run summon marker ^1 ^ ^ {Tags: ["tak_utils.set_display_rot-marker"]}

        data modify storage tak_utils temporary set value {left_rotation: {axis: [0.0f, 0.0f, 0.0f], angle: 0.0f}, right_rotation: {axis: [0.0f, 0.0f, 0.0f], angle: 0.0f}}

        data modify storage tak_utils temporary.left_rotation.axis set from entity @e[tag=tak_utils.set_display_rot-marker,limit=1] Pos

    # 縦角度に90を足す
        execute rotated ~ ~-90 rotated -90 ~ positioned 0.0 0.0 0.0 positioned ^ ^ ^1 rotated ~90 ~ positioned ^ ^1 ^ facing 0.0 ~ 0.0 run tp @e[tag=tak_utils.set_display_rot-marker] ~ ~ ~ ~ ~

        execute store result storage tak_utils temporary.left_rotation.angle float 0.000001745 run data get entity @e[tag=tak_utils.set_display_rot-marker,limit=1] Rotation[0] 10000

    # ディスプレイに代入
        data modify entity @s transformation.left_rotation set from storage tak_utils temporary.left_rotation

# right_rotation
    # 回転軸ベクトルを設定
        data modify storage tak_utils temporary.right_rotation.axis set value [0.0f, -1.0f, 0.0f]

    # 実行方向の横角度を取得
        execute rotated ~ ~-90 run tp @e[tag=tak_utils.set_display_rot-marker] ~ ~ ~ ~ ~

        execute store result storage tak_utils temporary.right_rotation.angle float 0.000001745 run data get entity @e[tag=tak_utils.set_display_rot-marker,limit=1] Rotation[0] 10000

    # ディスプレイに代入
        data modify entity @s transformation.right_rotation set from storage tak_utils temporary.right_rotation

# リセット
    kill @e[tag=tak_utils.set_display_rot-marker]

    data remove storage tak_utils temporary
