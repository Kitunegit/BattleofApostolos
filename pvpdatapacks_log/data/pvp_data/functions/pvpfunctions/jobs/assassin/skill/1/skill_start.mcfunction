#> pvp_data:pvpfunctions/jobs/assassin/skill/1/skill_start
#
# 暗殺者のスキル1開始処理です。
#
# @within function pvp_data:pvpfunctions/jobs/assassin/skill/1/skill_main

# チャージ
    function pvp_data:pvpfunctions/systems/job_system/charge/apply {isMoving:false,isRotation:true,isCheckHealth:300,duration:10}
    tag @s add assassin.skill_charge
# 演出
    execute at @s run playsound block.beacon.activate player @a[distance=..10] ~ ~ ~ 1 0.5
    execute at @s run particle dust 0.78 0 1 2 ~ ~ ~ 0.5 0.8 0.5 1 4
    execute at @s run particle dust 0.78 0 1 2 ~ ~ ~ 0.31 0.01 0.33 1 4
# その他処理
    item modify entity @s hotbar.1 pvp_data:system/tool_damage/set_damage
    scoreboard players set @s skill_1_cool 600