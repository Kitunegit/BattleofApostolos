#> pvp_data:pvpfunctions/jobs/assassin/special/start
#
# 暗殺者特殊攻撃開始処理
#
# @internal

# 敵がいるかどうかの確認
    execute at @s positioned ^ ^ ^4 if entity @e[distance=..3.99,tag=player,limit=1,sort=nearest] run function pvp_data:pvpfunctions/jobs/assassin/special/succes
