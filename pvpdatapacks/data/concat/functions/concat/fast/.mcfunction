#> concat:concat/fast/
# マクロを利用した結合を試みる
# 失敗した場合 concat: result の値は空になる
# @input
#   storage concat: supplier
#     入力の生成関数
# @output
#   storage concat: result
#     結合結果
# @writes
#   storage concat: args_copy
#   storage concat: copy
#   storage concat: join
# @within
#   concat:concat/**

data modify storage concat: copy.arg set from storage concat: supplier
function concat:concat/copy/
data modify storage concat: args_copy set from storage concat: copy.result
data remove storage concat: copy

execute if data storage concat: args_copy[1] run function concat:concat/fast/loop
data remove storage concat: join

execute unless data storage concat: args_copy run return 0

data modify storage concat: result set from storage concat: args_copy[0]
data remove storage concat: args_copy
return 1
