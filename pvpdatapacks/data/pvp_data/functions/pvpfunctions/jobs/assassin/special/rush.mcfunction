#> pvp_data:pvpfunctions/jobs/assassin/special/rush
#
# 暗殺者特殊攻撃開始処理
#
# @internal
execute at @s facing entity @e[tag=assassin.sp_target,limit=1] eyes run tp @s ^ ^ ^0.2
execute at @s unless entity @e[tag=assassin.sp_target,distance=..2] run function pvp_data:pvpfunctions/jobs/assassin/special/rush
