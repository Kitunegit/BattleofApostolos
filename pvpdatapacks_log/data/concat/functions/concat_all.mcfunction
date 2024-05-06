#> concat:concat_all
# concat: args の各要素を結合した文字列を concat: result に代入する
# 操作の過程で concat: args は変更されない
# @input
#   storage concat: args
#     結合対象を含む配列 (出現順に結合される)
# @output
#   storage concat: result
#     結合結果
# @public
# @user
data modify storage concat: supplier set value "concat:concat/copy/more"
function concat:concat/
