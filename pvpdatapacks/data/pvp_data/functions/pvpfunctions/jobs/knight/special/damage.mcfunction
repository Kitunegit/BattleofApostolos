#> pvp_data:pvpfunctions/jobs/knight/special/time
#
# 騎士特殊攻撃 攻撃判定
#
# @internal

# ダメージ
    function pvp_data:pvpfunctions/systems/job_system/damage/apply_fixed {damage: {amount: 1.0f,type: "pvp_data:knight/knight_sp"},knockback: {horizontal: 0.01d,vertical: 0.0d},target: "@e[tag=Knight.Special_damage]"}
    execute at @e[tag=Knight.Special_damage] run playsound minecraft:entity.player.attack.strong player @a[distance=..15] ~ ~ ~ 1 0.5
# リセット
    tag @e[tag=Knight.Special_damage] remove Knight.Special_damage