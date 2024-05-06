#> concat:concat/split/join/without_esc.macro
# 結合結果を結果リストに追加するマクロ関数
# @input
#   macro first
#     エスケープが必要な文字を含まない前方文字列
#   macro second
#     エスケープが必要な文字を含まない後方文字列
# @output
#   storage concat: split.result[-1]
#     結合後の文字列 (配列に新たに追加される)
#   storage concat: split.join.success
#     評価に成功した場合1b。失敗した場合エスケープを追加して結合する必要がある
# @internal
# @within
#   concat:concat/split/join/*

$data modify storage concat: split.result append value "$(first)$(second)"
data modify storage concat: split.join.success set value 1b
