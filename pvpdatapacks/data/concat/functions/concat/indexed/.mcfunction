#> concat:concat/indexed/
# 配列の添え字付きアクセスを行う
# @input
#   storage concat: indexed.array
#     対象の配列
#   storage concat: indexed.index
#     配列のインデックス
# @output
#   storage concat: indexed.result
#     配列のアクセスの結果 評価に失敗した場合null
# @within
#   concat:concat/**

data remove storage concat: indexed.result
function concat:concat/indexed/get.macro with storage concat: indexed
