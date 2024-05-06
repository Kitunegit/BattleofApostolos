#> concat:concat/test/close
# リソースの破棄
# @internal
# @within
#   concat:concat/test/*

scoreboard players reset %test.amount concat
scoreboard players reset %test.failure concat
scoreboard players reset %test.left concat
scoreboard players reset %test.success concat
data remove storage concat: test
