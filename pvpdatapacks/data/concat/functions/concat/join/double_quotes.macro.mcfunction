#> concat:concat/join/double_quotes.macro
# 二重引用符での文字列合成
# @input
#   macro arg0
#     前方文字列
#   macro arg1
#     後方文字列
# @output
#   storage concat: join.result 
#     結合後の文字列 (評価に成功した場合)
# @internal
# @within
#   concat:concat/join/*

$data modify storage concat: join.result set value "$(arg0)$(arg1)"
