#> pvp_data:pvpfunctions/jobs/assassin/ult/start
#
# 暗殺者ウルト開始処理
#
# @internal

# 条件不一致処理
    execute at @s at @e[tag=player,distance=0.1..,limit=1,sort=nearest] positioned ^ ^ ^-5 unless entity @s[distance=..4.9] run return 0
# タグ付ける
    tag @s add assassin.ult
# チャージ状態にする
    function pvp_data:pvpfunctions/systems/job_system/charge/apply {isMoving:false,isRotation:true,isCheckHealth:16,duration:100}
    effect give @s blindness 5 25 true