#> concat:concat/split/add_to_list
# 結果配列への追加
# @writes
#   storage concat: split
#   storage concat: substr
# @internal
# @within
#   concat:concat/split/*

data modify storage concat: substr.arg set from storage concat: split.target
data modify storage concat: substr.from set from storage concat: split.imm
data modify storage concat: substr.to set from storage concat: split.marker
function concat:concat/substr/

data modify storage concat: split.result append from storage concat: substr.result
data remove storage concat: substr

data modify storage concat: split.marker set from storage concat: split.imm

execute if data storage concat: split{noEscLast:1b} run function concat:concat/split/join/

#tellraw @s {"storage":"concat:","nbt":"split"}
