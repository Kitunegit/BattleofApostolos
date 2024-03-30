#> pvp_data:pvpfunctions/jobs/wizard/passive/mp/out
#
# MP切れ処理
#
# @internal

# スタン
    function pvp_data:pvpfunctions/systems/job_system/charge/apply {isMoving:false,isRotation:true,isCheckHealth:14000,duration:60}
    
# MPを再生
    scoreboard players set @s passive_count 1500
# 演出
    execute at @s run playsound block.beacon.deactivate player @s ~ ~ ~ 1 0.5
    execute at @s run playsound minecraft:ui.stonecutter.take_result player @s ~ ~ ~ 1 0.5
    execute at @s run particle minecraft:campfire_cosy_smoke ~ ~0.5 ~ 0.2 0.7 0.2 0.3 10