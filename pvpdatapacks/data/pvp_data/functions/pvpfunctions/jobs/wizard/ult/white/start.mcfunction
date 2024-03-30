#> pvp_data:pvpfunctions/jobs/wizard/ult/white/start
#
# 黒ウルト開始処理
#
# @internal

# MP消費
    scoreboard players remove @s passive_count 1350
# CTセット
    scoreboard players set @s ult_cool 90
# チャージ
    function pvp_data:pvpfunctions/systems/job_system/charge/apply {isMoving:false,isRotation:false,isCheckHealth:14,duration:80}
# 演出
    execute at @s run playsound minecraft:block.portal.trigger player @a[distance=..20] ~ ~ ~ 0.3 1.1
    execute at @s run playsound minecraft:block.end_portal.spawn player @a[distance=..20] ~ ~ ~ 0.3 2
    execute at @s run playsound minecraft:block.beacon.ambient player @a[distance=..20] ~ ~ ~ 10 2
    # 魔法陣
        execute at @s rotated ~ 0 run function animated_java:wizard.ult_white/summon
        execute as @e[tag=aj.wizard.ult_white.root] run function animated_java:wizard.ult_white/animations/animation/play
        schedule function pvp_data:pvpfunctions/jobs/wizard/ult/white/remove_model 12s
# カウント
    scoreboard players set @s ult_count 80