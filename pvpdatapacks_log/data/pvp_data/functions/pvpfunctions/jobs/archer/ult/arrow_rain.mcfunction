#> pvp_data:pvpfunctions/jobs/archer/ult/arrow_rain
#
# 矢を雨降らす
#
# @internal

# カウントダウン
    scoreboard players remove @s ult_count 1
    scoreboard players remove @s archer.arrow_interval 1
# 演出
    # ターゲットにパーティクル
    execute at @e[tag=archer.ult_target] run particle dust 0 -1 0 1.2 ~ ~ ~ 1.5 0.1 1.5 1 5
    execute at @e[tag=archer.ult_target] run particle minecraft:cloud ~ ~8 ~ 1.3 0.1 1.3 0.01 20
    # 矢音声
    execute at @e[type=arrow,tag=archer.ult] run playsound minecraft:entity.player.attack.sweep player @a[distance=..8] ~ ~ ~ 0.1 2
    execute at @e[type=arrow,tag=archer.ult] run particle minecraft:dust 1 100000000 1 2
# 矢を定期的に降らす
    execute if score @s archer.arrow_interval matches ..0 run function pvp_data:pvpfunctions/jobs/archer/ult/arrow_fall
# 終了処理
    execute if score @s ult_count matches ..0 run function pvp_data:pvpfunctions/jobs/archer/ult/fin