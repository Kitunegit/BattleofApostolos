#> pvp_data:pvpfunctions/jobs/assassin/ult/dash_start
#
# 暗殺者ウルト突進開始
#
# @internal

# タグを設定
    tag @s remove Charge.Stop
    tag @s add assassin.ult_dash
# 時間をセット
    scoreboard players set @s ult_count 8
# 演出
    execute at @s run playsound minecraft:entity.evoker.prepare_summon player @s ~ ~ ~ 1 2