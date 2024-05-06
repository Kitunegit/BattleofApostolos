#> concat:concat/test/iterate
# テストの反復
# @writes
#   storage concat: test
# @internal
# @within
#   concat:concat/test/*

data remove storage concat: test.args
data remove storage concat: test.expected
data remove storage concat: test.actual

data modify storage concat: test merge from storage concat: test.iterator[-1]
data remove storage concat: test.iterator[-1]

function concat:concat/test/single

execute if data storage concat: test{failure:1b} run tellraw @a {"translate":"ユニット %s 引数 %s におけるユニットテストに失敗しました\n想定されていた戻り値: %s\n実際の戻り値: %s","color":"red",\
    "with":[{"storage":"concat:","nbt":"test.unit","color":"yellow"},{"storage":"concat:","nbt":"test.args","color":"yellow"},\
    {"storage":"concat:","nbt":"test.expected","color":"white"},{"storage":"concat:","nbt":"test.actual","color":"white"}]}
execute if data storage concat: test{failure:1b} run data modify storage concat: test.success set value 0b

scoreboard players remove %test.left concat 1
execute if data storage concat: test{failure:1b} run scoreboard players add %test.failure concat 1
execute unless data storage concat: test{failure:1b} run scoreboard players add %test.success concat 1

execute if data storage concat: test.iterator[0] run schedule function concat:concat/test/iterate 1t

execute unless data storage concat: test.iterator[0] if data storage concat: test{success:1b} run tellraw @a {"text":"テストに成功しました","color":"green"}
execute unless data storage concat: test.iterator[0] unless data storage concat: test{success:1b} run tellraw @a {"text":"テストに失敗しました","color":"red"}
execute unless data storage concat: test.iterator[0] run schedule function concat:concat/test/close 5s
