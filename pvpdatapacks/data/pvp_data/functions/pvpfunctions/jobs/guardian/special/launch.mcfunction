#> pvp_data:pvpfunctions/jobs/guardian/special/launch
#
# 特殊攻撃の前方KBを発生させます
#
# @internal

# KB強度を設定
    scoreboard players set $strength delta.api.launch 5000
# KBを発生させる
    execute at @s rotated ~ -1 run function delta:api/launch_looking