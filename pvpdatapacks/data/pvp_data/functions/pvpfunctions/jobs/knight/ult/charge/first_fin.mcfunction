#> pvp_data:pvpfunctions/jobs/knight/ult/charge/first_fin
#
# 騎士ウルトチャージ中処理
#
# @internal

tag @s remove knight_ult.FirstCharge
function pvp_data:pvpfunctions/systems/job_system/charge/apply {isMoving:false,isRotation:false,isCheckHealth:15,duration:31}