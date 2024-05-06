#> pvp_data:pvpfunctions/jobs/wizard/skill/1/skill_start
#
# 魔導士スキル1開始処理
#
# @internal

# MP消費
    scoreboard players remove @s passive_count 450
# CTをセット
    scoreboard players set @s skill_1_cool 300
    item modify entity @s hotbar.1 pvp_data:system/tool_damage/set_damage
# 魔法陣召喚
    execute at @s positioned ~ ~1.4 ~ run summon item_display ^ ^ ^1 {billboard:"center",item:{id:"minecraft:quartz",Count:1b,tag:{CustomModelData:3}},Tags:[Magic.SkillCircle],brightness:{sky:15,block:15}}
# 自身にタグ
    tag @s add wizard.skill1_ready
# チャージ関数
    function pvp_data:pvpfunctions/systems/job_system/charge/apply {isMoving:false,isRotation:true,isCheckHealth:200,duration:40}
# 演出
    execute at @s run playsound entity.warden.sonic_charge player @a[distance=..8] ~ ~ ~ 1
    execute at @s run particle minecraft:portal ~ ~ ~ 0.1 0.1 0.1 0.5 800 normal
# スケジュールでチャージ後に実行
    schedule function pvp_data:pvpfunctions/jobs/wizard/skill/1/load 2s