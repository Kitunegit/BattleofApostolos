#> concat:concat/slow/itr3.concat.macro
# 引数を結合し結果をバッファに加える
# @input
#   macro arg0
#     前方文字列
#   macro arg1
#     後方文字列
# @output
#   storage concat: buffer
#     結合した文字列の追加先
# @internal
# @within
#   concat:concat/slow/*

$data modify storage concat: buffer append value "$(arg0)$(arg1)"
