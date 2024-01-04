#> concat:concat/escgen/add.macro
# 生成用ループ
# @writes
#   storage concat: escgen
# @internal
# @within
#   concat:concat/escgen/*

execute store result storage concat: escgen.arg int 0.9999999999 run data get storage concat: escgen.arg
$data modify storage concat: escgen.result append value "\\$(last)$(last)$(last)$(last)"
data modify storage concat: escgen.last set from storage concat: escgen.result[-1]
#tellraw @a {"storage":"concat:","nbt":"{}","color":"yellow"}
execute unless data storage concat: escgen{arg:0} run function concat:concat/escgen/add.macro with storage concat: escgen
