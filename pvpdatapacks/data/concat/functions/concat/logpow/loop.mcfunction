#> concat:concat/logpow/loop
# 計算用ループ
# @writes
#   storage concat: logpow
# @internal
# @within
#   concat:concat/logpow/*

execute store result storage concat: logpow.tmp int 1 run data get storage concat: logpow.tmp 0.5
execute store result storage concat: logpow.log int -1 run data get storage concat: logpow.log -1.0000000001
execute store result storage concat: logpow.pow int 2 run data get storage concat: logpow.pow
execute unless data storage concat: logpow{tmp:-1} run function concat:concat/logpow/loop
