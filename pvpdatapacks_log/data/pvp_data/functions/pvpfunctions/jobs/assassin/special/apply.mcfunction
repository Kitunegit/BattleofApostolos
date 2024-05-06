#> pvp_data:pvpfunctions/jobs/assassin/special/apply
#
# 暗殺者特殊負荷回避用
#
# @internal

# 敵がいなかったとき
    execute at @s positioned ^ ^ ^4 unless entity @e[distance=..3.99,tag=player,limit=1,sort=nearest] positioned ^ ^ ^-4 run playsound block.note_block.bass player @s ~ ~ ~ 1 0.5
    execute at @s positioned ^ ^ ^4 unless entity @e[distance=..3.99,tag=player,limit=1,sort=nearest] run return 0
# 演出
    execute at @s run playsound minecraft:entity.breeze.wind_burst player @a[distance=..8] ~ ~ ~ 1 0.2
    #execute at @s run particle minecraft:dust_plume ~ ~ ~ 1 1 1 0.3 100
    execute at @s run particle dust 0.373 0 0.678 2 ^ ^ ^-1 0.45 0.8 0.45 1 30
# 処理
    execute at @s positioned ^ ^ ^4 run tag @e[distance=..3.99,tag=player,limit=1,sort=nearest] add assassin.sp_target
    execute at @s run function pvp_data:pvpfunctions/jobs/assassin/special/rush
# CT
    item modify entity @s hotbar.0 pvp_data:system/tool_damage/set_damage
    scoreboard players set @s special_cool 300
# 演出
    execute at @s run playsound minecraft:entity.player.attack.crit player @a[distance=..2] ~ ~ ~ 1 0.75
    execute at @e[tag=assassin.sp_target,limit=1] rotated as @e[tag=assassin.sp_target,limit=1] positioned ^ ^ ^-1 run tp @s ~ ~ ~ facing entity @e[tag=assassin.sp_target,limit=1] feet

# ダメージ
    execute at @s run function pvp_data:pvpfunctions/systems/job_system/damage/apply_fixed {damage: {amount: 4.0f,type: "pvp_data:assassin/assassin_sp"},knockback: {horizontal: 0.5d,vertical: 0.5d},target: "@e[tag=assassin.sp_target]"}

# タグ消し
    tag @e remove assassin.sp_damage
    tag @e remove assassin.sp_target