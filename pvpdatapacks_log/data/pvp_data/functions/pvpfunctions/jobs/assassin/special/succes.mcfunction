#> pvp_data:pvpfunctions/jobs/assassin/special/succes
#
# 暗殺者 特殊攻撃成功
#
# @internal
# 演出
    execute at @s run playsound minecraft:block.grindstone.use player @s ~ ~ ~ 1 1.5
# 開始&チャージ
    function pvp_data:pvpfunctions/systems/job_system/charge/apply {isMoving:false,isRotation:false,isCheckHealth:300,duration:4}
    schedule function pvp_data:pvpfunctions/jobs/assassin/special/damage 5t
    tag @s add assassin.sp_damage