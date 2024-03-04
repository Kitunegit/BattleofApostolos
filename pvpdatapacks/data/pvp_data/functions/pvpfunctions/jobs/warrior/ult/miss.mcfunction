#> pvp_data:pvpfunctions/jobs/warrior/ult/miss
#
# 戦士ウルト中断処理
#
# @internal
# 演出
    execute at @s run playsound minecraft:ui.stonecutter.take_result player @a[distance=..10] ~ ~ ~ 1 0.8
# 停止
    scoreboard players reset @s ult_count
# モデル消し
    execute at @s run tag @e[tag=warrior.ult_model,limit=1,sort=nearest] add warrior.ult_model.kill
    function pvp_data:pvpfunctions/jobs/warrior/ult/kill_model