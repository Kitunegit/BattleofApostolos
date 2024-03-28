#> tak_utils:foreach/
#
# 引数に渡されたリスト内の要素それぞれに対してコールバック関数を実行します。
#
# @input
#   args
#       list: any[] 処理するリスト
#       callback: string コールバック関数
#
# @api

# ストレージを準備
    $data modify storage tak_utils temporary set value {list: $(list), variable: {}}

# リストが空のとき弾く
    execute unless data storage tak_utils temporary.list[0] run return 0

# 処理開始
    $function tak_utils/foreach/loop {callback: "$(callback)"}

# リセット
    data remove storage tak_utils temporary
