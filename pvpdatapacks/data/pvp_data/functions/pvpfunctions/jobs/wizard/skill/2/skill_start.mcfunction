#> pvp_data:pvpfunctions/jobs/wizard/skill/2/skill_start
#
# 魔導士 スキル2 開始処理
#
# @internal

# MP消費
    scoreboard players remove @s passive_count 600
# CTセット
    scoreboard players set @s skill_2_cool 600
    item modify entity @s hotbar.2 pvp_data:system/tool_damage/set_damage
# チャージ
    function pvp_data:pvpfunctions/systems/job_system/charge/apply {isMoving:false,isRotation:true,isCheckHealth:200,duration:40}
# 演出
    execute at @s run playsound minecraft:block.beacon.deactivate player @a[distance=..5] ~ ~ ~ 1 1
    # 魔法陣
        execute at @s run summon item_display ~ ~10 ~ {interpolation_duration:0,Tags:["wizard_skill1_white"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:quartz",Count:1b,tag:{CustomModelData:4}}}
        execute as @e[tag=wizard_skill1_white,type=item_display] at @s run tp @s ~ ~-10 ~ ~ ~90
# スケジュール 
    tag @s add wizard.skill_heel
    schedule function pvp_data:pvpfunctions/jobs/wizard/skill/2/heel 2s