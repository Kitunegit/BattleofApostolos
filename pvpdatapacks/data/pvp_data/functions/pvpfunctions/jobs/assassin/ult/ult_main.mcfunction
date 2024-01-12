#視点をチャージ中固定
    execute if score @s assassin_ult_charge matches 40..120 at @s run tp @s ~ ~ ~ facing entity @e[tag=assassin_ult_trgt,limit=1]
#チャージ中のパーティクル
    execute if score @s assassin_ult_charge matches 40..120 at @s run particle dust 0 0 0 1 ~ ~1 ~ 0.8 0.8 0.8 0.2 30
#詠唱キャンセル
    execute if score @s assassin_ult_charge matches 40..120 if score @s assassin_ult_health >= @s Health run function pvp_data:pvpfunctions/jobs/assassin/ult/failed
#チャージ音
    execute if score @s assassin_ult_charge matches 120 at @s run playsound block.anvil.land player @a[distance=..10] ~ ~ ~ 1 1
    execute if score @s assassin_ult_charge matches 100 at @s run playsound entity.experience_orb.pickup player @a[distance=..10] ~ ~ ~ 1 0.7
    execute if score @s assassin_ult_charge matches 80 at @s run playsound entity.experience_orb.pickup player @a[distance=..10] ~ ~ ~ 1 0.8
    execute if score @s assassin_ult_charge matches 60 at @s run playsound entity.experience_orb.pickup player @a[distance=..10] ~ ~ ~ 1 0.9
    execute if score @s assassin_ult_charge matches 40 at @s run playsound entity.experience_orb.pickup player @a[distance=..10] ~ ~ ~ 1 1.0
#突撃
execute if score @s assassin_ult_charge matches ..20 run function pvp_data:pvpfunctions/jobs/assassin/ult/ult_dash
scoreboard players remove @s assassin_ult_charge 1