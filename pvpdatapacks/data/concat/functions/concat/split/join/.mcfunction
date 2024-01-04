#> concat:concat/split/join/
# 最後の要素と最後から二番目の要素を結合する
# @writes
#   storage concat: split
#   storage concat: split.join
# @internal
# @within
#   concat:concat/split/*

data modify storage concat: split.join.first set from storage concat: split.result[-1]
data modify storage concat: split.join.second set from storage concat: split.result[-2]

data remove storage concat: split.result[-1]
data remove storage concat: split.result[-1]

data modify storage concat: split.join.success set value 0b

function concat:concat/split/join/without_esc.macro with storage concat: split.join

execute unless data storage concat: split.join{success:1b} run function concat:concat/split/join/with_esc.macro with storage concat: split.join
data remove storage concat: split.join

data modify storage concat: split.noEscLast set value 0b
