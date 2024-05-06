#> concat:concat/escgen/
# n 回の評価で消える数のエスケープ文字列を生成する
# 生成結果は長さ n の配列であり、 i 番目には i+1 回の評価で消える数のエスケープが含まれる
# @input
#   storage concat: escgen.arg
#     評価回数の最大値
# @output
#   storage concat: escgen.result
#     生成結果
# @within
#   concat:concat/**

#tellraw @a {"storage":"concat:","nbt":"{}","color":"yellow"}

data modify storage concat: escgen.result set value []
execute if data storage concat: escgen{arg:0} run return 1

data modify storage concat: escgen.result append value "\\"
execute store result storage concat: escgen.arg int 0.9999999999 run data get storage concat: escgen.arg
data modify storage concat: escgen.last set from storage concat: escgen.result[-1]
#tellraw @a {"storage":"concat:","nbt":"{}","color":"yellow"}
execute unless data storage concat: escgen{arg:0} run function concat:concat/escgen/add.macro with storage concat: escgen
