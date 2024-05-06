#> concat:concat/copy/
# 引数一覧をコピーする
# モジュールと言える範囲かは怪しい
# @input
#   storage concat: copy.arg
#     引数を concat: copy.result にコピーする関数
# @output
#   storage concat: copy.result
#     コピーされた引数
# @within
#   concat:concat/**

function concat:concat/copy/run.macro with storage concat: copy
