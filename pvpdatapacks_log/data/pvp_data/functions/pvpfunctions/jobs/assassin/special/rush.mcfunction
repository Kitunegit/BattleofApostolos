#> pvp_data:pvpfunctions/jobs/assassin/special/rush
#
# 暗殺者特殊ワープ再起処理
#
# @internal
execute unless entity @e[tag=assassin.sp_target] run return 0

execute at @s facing entity @e[tag=assassin.sp_target,limit=1] eyes run tp @s ^ ^ ^0.8
execute at @s run particle dust 0.471 0.275 0.631 2 ^ ^ ^-1 0.45 0.8 0.45 1 1
execute at @s unless entity @e[tag=assassin.sp_target,distance=..1.7] run function pvp_data:pvpfunctions/jobs/assassin/special/rush
