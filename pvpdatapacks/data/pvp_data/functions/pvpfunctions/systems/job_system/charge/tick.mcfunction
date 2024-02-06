#> pvp_data:pvpfunctions/systems/job_system/charge/tick
#
# チャージシステム関連の常時実行処理
#
# @internal

# カウントダウン
    scoreboard players remove @s Charge.Time 1

# 視点を移動不可にする
    execute as @s[tag=Charge.NoRotation] run function pvp_data:pvpfunctions/systems/job_system/charge/tick_rotation

# 終了処理
    execute if score @s Charge.Time matches 1 run function pvp_data:pvpfunctions/systems/job_system/charge/stop