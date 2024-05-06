#> concat:concat/copy/two
# 引数をargs_copyに移す関数
# メソッド参照に使う
# @reads
#   storage concat: first
#   storage concat: second
# @writes
#   storage concat: copy.result
# @within
#   concat:concat/**

data modify storage concat: copy.result set value []
data modify storage concat: copy.result append from storage concat: first
data modify storage concat: copy.result append from storage concat: second
