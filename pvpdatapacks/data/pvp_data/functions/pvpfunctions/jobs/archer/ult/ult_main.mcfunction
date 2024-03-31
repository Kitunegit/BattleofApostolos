#> pvp_data:pvpfunctions/jobs/archer/ult/ult_main
#
# ウルト中常時実行処理
#
# @internal

# 効果時間減少
    scoreboard players remove @s[scores={ult_count=0..}] ult_count 1
# パーティクル
    execute at @e[type=arrow] run particle dust 0.89 0.953 0.333 1 ^ ^ ^ 0.25 0.25 0.25 5 1
    execute at @e[type=arrow] run particle dust 0.09 0.553 0.031 1 ^ ^ ^ 0.25 0.25 0.25 5 1
# 時間まで来たらなんやかんや