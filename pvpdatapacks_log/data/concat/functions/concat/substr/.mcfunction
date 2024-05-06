#> concat:concat/substr/
# 引数の部分文字列を取得する
# @input
#   storage concat: substr.arg
#     切り取り対象の文字列
#   storage concat: substr.from
#     開始インデックス (これを含む)
#   storage concat: substr.to
#     終了インデックス (これを含まない)
# @output
#   storage substr.result
#     部分文字列。引数のいずれかが不正な場合null
# @within
#   concat:concat/**
data remove storage concat: substr.result
function concat:concat/substr/run.macro with storage concat: substr
