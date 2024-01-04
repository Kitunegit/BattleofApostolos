#> concat:concat/slow/escape.macro
# 対象文字列にエスケープを追加する
# @input
#   macro token
#     追加するエスケープ
#   macro target
#     エスケープの追加対象
# @output
#   storage concat: target
#     エスケープを追加した後の文字列
# @internal
# @within
#   concat:concat/slow/*

$data modify storage concat: target set value "$(token)$(token)\$(target)"
