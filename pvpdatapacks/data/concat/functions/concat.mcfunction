#> concat:concat
# concat: first と concat: second を結合した文字列を concat: result に代入する
# 操作の過程で concat: first 及び concat: second は変更されない
# @input
#   storage concat: first
#     前方文字列
#   storage concat: second
#     後方文字列
# @output
#   storage concat: result
#     結合結果
# @public
# @patch
# @user
data modify storage concat: supplier set value "concat:concat/copy/two"
function concat:concat/
