#> concat:concat/split/itr
# 分割イテレーション
# 元々の実装における concat:concat/slow/itr0(削除済) にあたる
# @writes
#   storage concat: split
# @internal
# @within
#   concat:concat/split/*

data modify storage concat: split.target set from storage concat: split.argscopy[-1]
data remove storage concat: split.argscopy[-1]

execute store result storage concat: split.index int 1 run data get storage concat: split.target

data modify storage concat: split.marker set from storage concat: split.index

execute unless data storage concat: split{index:0} run function concat:concat/split/loop

execute unless data storage concat: split{marker:0} run function concat:concat/split/add_left

execute if data storage concat: split.argscopy[0] run function concat:concat/split/itr
