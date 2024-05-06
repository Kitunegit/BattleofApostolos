#> pvp_data:pvpfunctions/jobs/wizard/ult/black/start
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
    execute at @s run playsound minecraft:block.portal.trigger player @a[distance=..20] ~ ~ ~ 0.3 1.2
    execute at @s run playsound minecraft:block.end_portal.spawn player @a[distance=..20] ~ ~ ~ 0.3 1.5
    # 魔法陣
        #execute at @s run summon item_display ~ ~10 ~ {interpolation_duration:0,Tags:["wizard.ult_black"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[8f,8f,2f]},item:{id:"minecraft:quartz",Count:1b,tag:{CustomModelData:2}}}
        #execute as @e[tag=wizard.ult_black,type=item_display] at @s run tp @s ~ ~-10 ~ ~ ~90
# カウント
    scoreboard players set @s ult_count 80