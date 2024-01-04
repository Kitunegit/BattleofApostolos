#> concat:concat/substr/run.macro
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
#     部分文字列 (評価に成功した場合)
# @internal
# @within
#   concat:concat/substr/*
$data modify storage concat: substr.result set string storage concat: substr.arg $(from) $(to)
