#> concat:concat/join/
# 文字列の結合を試みる
# @input
#   storage concat: join.arg0
#     前方文字列
#   storage concat: join.arg1
#     後方文字列
# @output
#   storage concat: join.result
#     結合後の文字列。結合に失敗した場合null
# @within
#   concat:concat/**
#! Modified from intsuc/concat | MIT LICENSE | https://github.com/intsuc/concat

data remove storage concat: join.result
execute store result score %expected concat run data get storage concat: join.arg0
execute store result score %actual concat run data get storage concat: join.arg1
scoreboard players operation %expected concat += %actual concat

function concat:concat/join/single_quotes.macro with storage concat: join
execute store result score %actual concat run data get storage concat: join.result
execute if data storage concat: join.result unless score %expected concat = %actual concat run data remove storage concat: join.result
execute if data storage concat: join.result run function concat:concat/join/close
execute if data storage concat: join.result run return 1

function concat:concat/join/double_quotes.macro with storage concat: join
execute store result score %actual concat run data get storage concat: join.result
execute if data storage concat: join.result unless score %expected concat = %actual concat run data remove storage concat: join.result
execute if data storage concat: join.result run function concat:concat/join/close
execute if data storage concat: join.result run return 2

function concat:concat/join/close
return 0
