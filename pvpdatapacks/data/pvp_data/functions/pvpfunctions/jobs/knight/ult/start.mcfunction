#> pvp_data:pvpfunctions/jobs/knight/ult/start
#
# 騎士ウルト開始処理
#
# @within function pvp_data:pvpfunctions/jobs/knight/ult/main

# 音声演出
    execute at @s run playsound entity.blaze.shoot player @a[distance=..7] ~ ~ ~ 0.8 1.3
    execute at @s run playsound entity.player.attack.sweep player @a[distance=..7] ~ ~ ~ 0.8 1
    execute at @s run playsound entity.ender_dragon.flap player @a[distance=..7] ~ ~ ~ 0.2 0.3

# チャージカウント設定
    scoreboard players set @s ult_count 60
    
# 動けなくする
    effect give @s slowness 3 6 true
    effect give @s jump_boost 3 128 true
    effect give @s weakness 3 10 true