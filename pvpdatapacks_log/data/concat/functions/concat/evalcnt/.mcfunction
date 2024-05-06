#> concat:concat/evalcnt/
# 長さ n の配列の i 番目について、その配列の全要素を結合する際に i 番目の要素が評価される回数を計算する
# @input
#   storage concat: evalcnt.arg0
#     n
#   storage concat: evalcnt.arg1
#     i
# @output
#   storage concat: evalcnt.result
#     評価回数
# @writes
#   storage concat: logpow
# @within
#   concat:concat/**

## 補足: これは以下の関数の返り値と一致する
# // javascript
# function evalcnt(n, i) {
#   let f = Math.ceil(Math.log2(n));
#   let g = Math.pow(2, f);
#   if (n == g) return f;
#   if (i < g/2) return f;
#   return evalcnt(n-g/2, i-g/2)+1;
# }
## 計算量: O(logN)

data modify storage concat: logpow.arg set from storage concat: evalcnt.arg0
function concat:concat/logpow/

execute store result score %pow concat run data get storage concat: logpow.pow 0.5
execute store result score %tmp concat run data get storage concat: evalcnt.arg1

# return f の部分の一括判定
data modify storage concat: evalcnt.pow set from storage concat: logpow.pow
execute store result storage concat: _ byte 1 run data modify storage concat: evalcnt.pow set from storage concat: evalcnt.arg0
execute if data storage concat: {_:1b} store result storage concat: _ byte 1 unless score %tmp concat < %pow concat

execute unless data storage concat: {_:1b} run data modify storage concat: evalcnt.result set from storage concat: logpow.log
execute unless data storage concat: {_:1b} run function concat:concat/evalcnt/close
execute unless data storage concat: {_:1b} run return 1

data remove storage concat: _
data remove storage concat: logpow

# %tmp には i がそのまま残ってるので流用
scoreboard players operation %tmp concat -= %pow concat
execute store result storage concat: evalcnt.arg1 int 1 run scoreboard players get %tmp concat

execute store result score %tmp concat run data get storage concat: evalcnt.arg0
scoreboard players operation %tmp concat -= %pow concat
execute store result storage concat: evalcnt.arg0 int 1 run scoreboard players get %tmp concat

function concat:concat/evalcnt/

# インクリメント
execute unless data storage concat: evalcnt{result:0} store result storage concat: evalcnt.result int -1 run data get storage concat: evalcnt.result -1.0000000001
execute if data storage concat: evalcnt{result:0} run data modify storage concat: evalcnt.result set value 1

function concat:concat/evalcnt/close
return 1
