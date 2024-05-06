#> concat:concat/slow/itr3
# 結合イテレーション
# 要素が尽きるまで結合を行い、結果をバッファに移す
# @input
#   storage concat: concat
#   storage concat: reversed
# @output
#   storage concat: buffer
# @writes
#   storage concat: itr3
# @internal
# @within
#   concat:concat/slow/*

# 適切な順番で繋がるよう引数を設定
execute if data storage concat: {reversed:1b} run data modify storage concat: itr3.arg0 set from storage concat: concat[-1]
execute if data storage concat: {reversed:1b} run data modify storage concat: itr3.arg1 set from storage concat: concat[-2]
execute unless data storage concat: {reversed:1b} run data modify storage concat: itr3.arg0 set from storage concat: concat[-2]
execute unless data storage concat: {reversed:1b} run data modify storage concat: itr3.arg1 set from storage concat: concat[-1]

data remove storage concat: concat[-1]
data remove storage concat: concat[-1]

# 結合してバッファに追加
function concat:concat/slow/itr3.concat.macro with storage concat: itr3
data remove storage concat: itr3

# まだ要素があればもう一周
execute if data storage concat: concat[1] run function concat:concat/slow/itr3
