#> pvp_data:pvpfunctions/jobs/knight/ult/charge/miss
#
# 騎士ウルトチャージ中断処理
#
# @internal
# 演出
#

# 停止
    tag @s remove knight_ult.FirstCharge
# リセット
    tag @s remove Charge.Miss
    team remove Glowing.Red
    execute as @e[tag=knight_ult] run function animated_java:knight_sword/remove/rigs
# CT付与
    scoreboard players set @s ult_cool 60