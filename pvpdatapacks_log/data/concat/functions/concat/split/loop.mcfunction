#> concat:concat/split/loop
# 文字ごとの反復
# @writes
#   storage concat: split
#   storage concat: substr
# @internal
# @within
#   concat:concat/split/*

execute store result storage concat: split.imm int 0.9999999999 run data get storage concat: split.index

data modify storage concat: substr.arg set from storage concat: split.target
data modify storage concat: substr.from set from storage concat: split.imm
data modify storage concat: substr.to set from storage concat: split.index
function concat:concat/substr/

execute if data storage concat: substr{result:"\""} run function concat:concat/split/add_to_list
execute if data storage concat: substr{result:"\\"} run function concat:concat/split/add_to_list
data remove storage concat: substr

data modify storage concat: split.index set from storage concat: split.imm

execute unless data storage concat: split{index:0} run function concat:concat/split/loop
