#> concat:concat/slow/itr2
# 結合イテレーション
# 要素数が1になるまで結合を繰り返す
# @input
#   storage concat: concat
#   storage concat: reversed
# @output
#   storage concat: concat
#   storage concat: reversed
# @writes
#   storage concat: buffer
#   storage concat: size
# @internal
# @within
#   concat:concat/slow/*

#tellraw @a {"storage":"concat:","nbt":"concat"}

# _ == (size%2==1)
execute store result storage concat: size int 1 run data get storage concat: concat
execute store result storage concat: _ int 2 run data get storage concat: size 0.5
execute store result storage concat: _ byte 1 run data modify storage concat: _ set from storage concat: size
data remove storage concat: size

# 要素数が奇数で逆順なら最初の反復対象をスキップ
execute if data storage concat: {reversed:0b,_:1b} run data modify storage concat: buffer append from storage concat: concat[-1]
execute if data storage concat: {reversed:0b,_:1b} run data remove storage concat: concat[-1]
#tellraw @a {"storage":"concat:","nbt":"_"}
#tellraw @a {"storage":"concat:","nbt":"size"}
#tellraw @a {"storage":"concat:","nbt":"reversed"}
data remove storage concat: _

execute if data storage concat: concat[1] run function concat:concat/slow/itr3

# 要素数が奇数で元の順番なら最後の反復対象をスキップ
execute if data storage concat: concat[0] run data modify storage concat: buffer append from storage concat: concat[0]

# バッファをソース配列に戻して反転フラグを更新
data modify storage concat: concat set from storage concat: buffer
data modify storage concat: buffer set value []
execute store result storage concat: reversed byte 1 unless data storage concat: {reversed:1b}

# 必要ならもう一周
execute if data storage concat: concat[1] run function concat:concat/slow/itr2
