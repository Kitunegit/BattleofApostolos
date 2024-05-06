#> pvp_data:pvpfunctions/jobs/guardian/special/apply_damage
#
# 特殊攻撃の効果中、敵に当たったときにスタンとダメージを発生させるための関数です
#
# @internal

# ダメージを与える
    function pvp_data:pvpfunctions/systems/job_system/damage/apply_fixed {damage: {amount: 2.5f,type: "pvp_data:guardian/guardian_sp"},knockback: {horizontal: 0.01d,vertical: 0.65d},target: "@e[tag=guardian.sp_hit]"}
# スタン
    execute as @e[tag=guardian.sp_hit] run function pvp_data:pvpfunctions/systems/status/effect/apply {name:generic.speed,depth:-5,duration:45,overwrite:false}
# タグを除去
    tag @e[tag=guardian.sp_hit] remove guardian.sp_hit