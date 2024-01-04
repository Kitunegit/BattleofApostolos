#> concat:concat/copy/more
# 引数をargs_copyに移す関数
# メソッド参照に使う
# @reads
#   storage concat: args
# @writes
#   storage concat: copy.result
# @within
#   concat:concat/**

data modify storage concat: copy.result set from storage concat: args
