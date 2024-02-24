#> pvp_data:pvpfunctions/jobs/guardian/special/start
#
# 特殊攻撃の開始処理です
#
# @internal

# チャージ開始
    function pvp_data:pvpfunctions/systems/job_system/charge/apply {isMoving:false,isRotation:true,isCheckHealth:200,duration:20}
# 耐久値に変換
    item modify entity @s hotbar.0 pvp_data:system/tool_damage/set_damage
# カウント、CT設定
    scoreboard players set @s special_count 35
    scoreboard players set @s special_cool 300