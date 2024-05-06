#> concat:concat/logpow/
# 入力 n に対して
#  l := ceil(log(2, n))
#  p := pow(2, l)
# を計算する関数
# @input
#   storage concat: logpow.arg
#     n
# @output
#   storage concat: logpow.log
#     l
#   storage concat: logpow.pow
#     p
# @within
#   concat:concat/**

execute store result storage concat: logpow.tmp int -1 run data get storage concat: logpow.arg
data modify storage concat: logpow.log set value 1
data modify storage concat: logpow.pow set value 1
execute unless data storage concat: logpow{tmp:-1} run function concat:concat/logpow/loop
execute store result storage concat: logpow.log int 0.9999999999 run data get storage concat: logpow.log
data remove storage concat: logpow.tmp
