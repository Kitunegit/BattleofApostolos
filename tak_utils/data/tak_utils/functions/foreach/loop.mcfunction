#> tak_utils:foreach/loop
#
# 引数に渡されたコールバック関数を実行しながらリストの全要素を探索します。
#
# @input
#   args
#       callback: string コールバック関数
#
# @within function minecraft:tak_utils/foreach/

# リストの先頭を取り出す
    data modify storage tak_utils temporary.variable.value set from storage tak_utils temporary.list[0]

    data remove storage tak_utils temporary.list[0]

# 取り出した要素に対して処理
    $function $(callback) with storage tak_utils temporary.variable

# 次の要素があれば処理
    $execute if data storage tak_utils temporary.list[0] run function tak_utils/foreach/loop {callback: $(callback)}
