#> concat:concat/
# concat: args_copy の文字列群を result にまとめる
# @input
#   storage concat: supplier
#     入力の生成関数
# @output
#   storage concat: result
#     結合結果
# @within
#   concat:concat
#   concat:concat_all

scoreboard objectives add concat dummy
data remove storage concat: result

# FastPath

function concat:concat/fast/
execute if data storage concat: result run data remove storage concat: supplier
execute if data storage concat: result run return 1

# SlowPath

function concat:concat/slow/
data remove storage concat: supplier
return 1
