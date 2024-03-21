#> pvp_data:pvpfunctions/jobs/assassin/ult/ult_main
#
# 暗殺者ウルトチャージ中
#
# @internal

# チャージ音
    execute if score @s Charge.Time matches 100 at @s run playsound minecraft:entity.warden.death player @a[distance=..30] ~ ~ ~ 1 0.7
    execute if score @s Charge.Time matches 80 at @s run playsound entity.experience_orb.pickup player @a[distance=..10] ~ ~ ~ 1 0.7
    execute if score @s Charge.Time matches 60 at @s run playsound entity.experience_orb.pickup player @a[distance=..10] ~ ~ ~ 1 0.8
    execute if score @s Charge.Time matches 40 at @s run playsound entity.experience_orb.pickup player @a[distance=..10] ~ ~ ~ 1 0.9
    execute if score @s Charge.Time matches 20 at @s run playsound entity.experience_orb.pickup player @a[distance=..10] ~ ~ ~ 1 1.0
# 突撃
    execute if entity @s[tag=Charge.Stop] run function pvp_data:pvpfunctions/jobs/assassin/ult/dash_start
    execute if entity @s[tag=assassin.ult_dash] run function pvp_data:pvpfunctions/jobs/assassin/ult/ult_dash
# 失敗処理
    execute if entity @s[tag=Charge.Miss] run function pvp_data:pvpfunctions/jobs/assassin/ult/failed