#> concat:concat/slow/escape
# 配列サイズとインデックスに応じた数のエスケープを追加する
# @input
#   storage concat: target
#   storage concat: size
#   storage concat: i
# @output
#   storage concat: target
# @writes
#   storage concat: evalcnt
#   storage concat: indexed
#   storage concat: token
# @internal
# @within
#   concat:concat/slow/*

data modify storage concat: evalcnt.arg0 set from storage concat: size
execute store result storage concat: evalcnt.arg1 int 0.9999999999 run data get storage concat: i
function concat:concat/evalcnt/
execute store result storage concat: indexed.index int 0.9999999999 run data get storage concat: evalcnt.result
data remove storage concat: evalcnt
data modify storage concat: indexed.array set from storage concat: esc
function concat:concat/indexed/
data modify storage concat: token set from storage concat: indexed.result
data remove storage concat: indexed
function concat:concat/slow/escape.macro with storage concat:
data remove storage concat: token
