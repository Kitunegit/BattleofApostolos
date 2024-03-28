#> tak_utils:get_circle/
#
# 実行方向と同じ向きの円を作成し、円周上の座標でコールバック関数を実行します。
#
# @input
#   args
#       callback: string コールバック関数
#       radius: double 円の半径
#       angle: float 取得する角度
#
# @api

# エンティティ準備
    #declare tag tak_utils.get_circle-center
    #declare tag tak_utils.get_circle-marker
    $summon marker ~ ~ ~ {Tags: ["tak_utils.get_circle-center", "tak_utils.get_circle-marker"], Rotation: [$(angle)f, 0.0f]}

    #declare tag tak_utils.get_circle-axis
    summon marker ~ ~ ~ {Tags: ["tak_utils.get_circle-axis", "tak_utils.get_circle-marker"]}

# 対称軸の設定
    tp @e[tag=tak_utils.get_circle-axis] ~ ~ ~ ~ ~

    execute as @e[tag=tak_utils.get_circle-axis] rotated ~ 0 positioned ^ ^ ^-1 rotated as @s positioned ^ ^-1 ^ facing entity @s feet run tp @s ~ ~ ~ ~ ~

# 円周上の座標を取得
    #declare tag tak_utils.get_circle-result
    $execute as @e[tag=tak_utils.get_circle-axis] rotated as @e[tag=tak_utils.get_circle-center] positioned ^ ^ ^$(radius) rotated as @s positioned ^ ^ ^500 facing entity @s feet positioned ^ ^ ^1000 rotated as @s positioned ^ ^ ^500 run summon marker ~ ~ ~ {Tags: ["tak_utils.get_circle-result", "tak_utils.get_circle-marker"]}

    $data modify storage tak_utils temporary set value {x: 0.0d, y: 0.0d, z: 0.0d, callback: "$(callback)"}

    data modify storage tak_utils temporary.x set from entity @e[tag=tak_utils.get_circle-result, limit=1] Pos[0]

    data modify storage tak_utils temporary.y set from entity @e[tag=tak_utils.get_circle-result, limit=1] Pos[1]

    data modify storage tak_utils temporary.z set from entity @e[tag=tak_utils.get_circle-result, limit=1] Pos[2]

# kill
    kill @e[tag=tak_utils.get_circle-marker]

# コールバック実行
    function tak_utils:get_circle/run with storage tak_utils temporary

# リセット
    data remove storage tak_utils temporary
