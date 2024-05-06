#> concat:concat/slow/
# 一度要素ごとに分解したうえでの結合を行う
# @input
#   storage concat: supplier
#     入力の生成関数
# @output
#   storage concat: result
#     結合結果
# @writes
#   storage concat: buffer
#   storage concat: concat
#   storage concat: esc
#   storage concat: noEscLast
#   storage concat: reversed
#   storage concat: args_copy
#   storage concat: size
#   storage concat: copy
#   storage concat: escgen
#   storage concat: evalcnt
#   storage concat: indexed
#   storage concat: logpow
#   storage concat: split
# @within
#   concat:concat/**

## 初期化・引数のコピー

data modify storage concat: concat set value []
data modify storage concat: buffer set value []

data modify storage concat: copy.arg set from storage concat: supplier
function concat:concat/copy/
data modify storage concat: args_copy set from storage concat: copy.result
data remove storage concat: copy
#tellraw @a {"storage":"concat:","nbt":"{}"}

## 引数の分割
## 終了時点で concat: concat は逆順になっている

data modify storage concat: split.args set from storage concat: args_copy
function concat:concat/split/
data modify storage concat: concat set from storage concat: split.result
data modify storage concat: noEscLast set from storage concat: split.noEscLast
data remove storage concat: split

data remove storage concat: args_copy
data modify storage concat: reversed set value 1b
#tellraw @a {"storage":"concat:","nbt":"{}"}

## 既に空または一つのみ残っている場合ここで終了

execute store result storage concat: size int 1 run data get storage concat: concat
execute if data storage concat: {size:0} run data modify storage concat: result set value ""
execute if data storage concat: {size:1} run data modify storage concat: result set from storage concat: concat[0]
execute if data storage concat: result run function concat:concat/slow/close
execute if data storage concat: result run return 1

## 必要量のエスケープを生成する

data modify storage concat: logpow.arg set from storage concat: size
function concat:concat/logpow/
data modify storage concat: escgen.arg set from storage concat: logpow.log
data remove storage concat: logpow
function concat:concat/escgen/
data modify storage concat: esc set from storage concat: escgen.result
data remove storage concat: escgen
#tellraw @a {"storage":"concat:","nbt":"{}"}

## 各要素に結合後丁度消える量のエスケープを追加する
## 終了時点で concat: concat は元の順番に戻る

execute if data storage concat: concat[0] run function concat:concat/slow/itr1
data remove storage concat: esc
data remove storage concat: noEscLast
data modify storage concat: concat set from storage concat: buffer
data modify storage concat: buffer set value []
execute store result storage concat: reversed byte 1 unless data storage concat: {reversed:1b}
#tellraw @a {"storage":"concat:","nbt":"{}"}

## 結合

execute if data storage concat: concat[1] run function concat:concat/slow/itr2
data modify storage concat: result set from storage concat: concat[0]
data remove storage concat: reversed
data remove storage concat: concat
data remove storage concat: buffer
