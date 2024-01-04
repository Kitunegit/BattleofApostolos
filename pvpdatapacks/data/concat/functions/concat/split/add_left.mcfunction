#> concat:concat/split/add_left
# 残された部分文字列をリストに追加する関数
# @writes
#   storage concat: split
# @internal
# @within
#   concat:concat/split/*

# この時点でimm=index=0が成り立つのでそのまま呼び出せる
function concat:concat/split/add_to_list

# ただしnoEscLastは初期化されてしまうのでコールバックで再びtrueにする為に関数が必要だった
data modify storage concat: split.noEscLast set value 1b
