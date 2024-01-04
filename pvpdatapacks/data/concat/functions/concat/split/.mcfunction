#> concat:concat/split/
# 引数として渡された文字列を '"' または '\' で分割した文字列群を返す
# 戻り値に '"' 及び '\' は含まれる
# @input
#   storage concat: split.args
#     分割対象の文字列群
# @output
#   storage concat: split.result
#     分割結果 (入力とは逆順)
#   storage concat: split.noEscLast
#     最後の要素(つまり文字列内で最初になる要素)にエスケープが不要な場合true
# @within
#   concat:concat/**

data modify storage concat: split.result set value []
data modify storage concat: split.argscopy set from storage concat: split.args
data modify storage concat: split.noEscLast set value 0b

execute store result storage concat: split.index int 1 run data get storage concat: split.arg0

execute if data storage concat: split.argscopy[0] run function concat:concat/split/itr

data remove storage concat: substr
