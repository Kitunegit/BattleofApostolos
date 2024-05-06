#> concat:concat/evalcnt/close
# 使用したリソースの解放
# @internal
# @within
#   concat:concat/evalcnt/*

scoreboard players reset %pow concat
scoreboard players reset %tmp concat
data remove storage concat: _
data remove storage concat: logpow
