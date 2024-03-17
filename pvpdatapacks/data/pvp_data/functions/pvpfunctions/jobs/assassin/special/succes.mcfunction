#> pvp_data:pvpfunctions/jobs/assassin/special/succes
#
# 暗殺者 特殊攻撃成功
#
# @internal

# 演出
    execute at @s run playsound minecraft:entity.breeze.wind_burst player @a[distance=..8] ~ ~ ~ 1 0.2
    execute at @s run particle dust 0.373 0 0.678 2 ^ ^ ^-1 0.45 0.8 0.45 1 30
# 処理
    execute at @s positioned ^ ^ ^4 run tag @e[distance=..3.99,tag=player,limit=1,sort=nearest] add assassin.sp_target
    execute at @s run function pvp_data:pvpfunctions/jobs/assassin/special/rush
    execute at @e[tag=assassin.sp_target,limit=1] rotated as @e[tag=assassin.sp_target,limit=1] positioned ^ ^ ^-1 run tp @s ~ ~ ~ facing entity @e[tag=assassin.sp_target,limit=1] feet
    execute at @s run function pvp_data:pvpfunctions/systems/job_system/damage/apply_fixed {damage: {amount: 4.0f,type: "pvp_data:assassin/assassin_sp"},knockback: {horizontal: 0.5d,vertical: 0.5d},target: "@e[tag=assassin.sp_target]"}
    tag @e remove assassin.sp_target
