#> concat:concat/split/join/with_esc.macro
# 結合結果を結果リストに追加するマクロ関数
# @input
#   macro first
#     エスケープが必要な文字で始まる前方文字列
#   macro second
#     エスケープが必要な文字を含まない後方文字列
# @output
#   storage concat: split.result[-1]
#     結合後の文字列 (配列に新たに追加される)
# @internal
# @within
#   concat:concat/split/join/*

$data modify storage concat: split.result append value "\$(first)$(second)"
# 実行時点でエスケープが必要なことは確定しているため必ず成功する
