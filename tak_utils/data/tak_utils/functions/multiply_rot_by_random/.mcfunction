#> tak_utils:multiply_rot_by_random/
#
# 渡された乱数の範囲を基に生成した乱数を回転の各成分に掛け算します。
#
# @input
#   args
#       range: int[] 乱数の範囲
#       command: string 実行するコマンド
#
# @api

# ストレージに保存
    data modify storage tak_utils temporary set value {}

    $data modify storage tak_utils temporary.range set value $(range)

    data modify storage tak_utils temporary.min set from storage tak_utils temporary.range[0]

    data modify storage tak_utils temporary.max set from storage tak_utils temporary.range[1]

    data remove storage tak_utils temporary.range

# 乱数生成
    function tak_utils:multiply_rot_by_random/generate with storage tak_utils temporary

    data remove storage tak_utils temporary.min

    data remove storage tak_utils temporary.max

# 実行方向に適用
    $data modify storage tak_utils temporary.command set value "$(command)"

    function tak_utils:multiply_rot_by_random/multiply with storage tak_utils temporary

# リセット
    data remove storage tak_utils temporary
