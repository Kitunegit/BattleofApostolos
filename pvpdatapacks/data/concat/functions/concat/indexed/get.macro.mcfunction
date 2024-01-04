#> concat:concat/indexed/get.macro
# 配列の添え字付きアクセスを行う
# @input
#   storage concat: indexed.array
#     対象の配列
#   macro index
#     配列のインデックス
# @output
#   storage concat: indexed.result
#     配列のアクセスの結果 (評価に成功した場合)
# @internal
# @within
#   concat:concat/indexed/*

$data modify storage concat: indexed.result set from storage concat: indexed.array[$(index)]
