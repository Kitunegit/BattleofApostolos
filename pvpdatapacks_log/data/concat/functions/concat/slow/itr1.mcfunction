#> concat:concat/slow/itr1
# エスケープ追加イテレーション
# @input
#   storage concat: concat
#     反復対象
# @output
#   storage concat: buffer
#     実行結果群 (入力とは逆順)
# @writes
#   storage concat: target
# @internal
# @within
#   concat:concat/slow/*

data modify storage concat: target set from storage concat: concat[-1]
data remove storage concat: concat[-1]

# スキップ対象でない場合エスケープを追加
execute unless data storage concat: {noEscLast:1b} run function concat:concat/slow/escape

# スキップ対象の場合スキップ対象一覧から削除
execute if data storage concat: {noEscLast:1b} run data remove storage concat: noEscLast

data modify storage concat: buffer append from storage concat: target
data remove storage concat: target

# 要素が残っていればイテレーションを続ける
execute if data storage concat: concat[0] run function concat:concat/slow/itr1
