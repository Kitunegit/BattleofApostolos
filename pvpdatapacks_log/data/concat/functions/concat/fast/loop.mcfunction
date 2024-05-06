#> concat:concat/fast/loop
# 結合に失敗するか全ての引数が結合されるまで結合を繰り返す
# @input
#   storage concat: args_copy
#     引数一覧(可変)
# @output
#   result
#     成功した場合は1、失敗した場合は0
#   storage concat: result
#     結果 失敗した場合はnull
# @internal
# @within
#   concat:concat/fast/*

data modify storage concat: join.arg0 set from storage concat: args_copy[-2]
data modify storage concat: join.arg1 set from storage concat: args_copy[-1]
function concat:concat/join/
execute unless data storage concat: join.result run data remove storage concat: args_copy
execute unless data storage concat: join.result run return 0
data remove storage concat: args_copy[-1]
data modify storage concat: args_copy[-1] set from storage concat: join.result
execute if data storage concat: args_copy[1] run function concat:concat/fast/loop
return 1
