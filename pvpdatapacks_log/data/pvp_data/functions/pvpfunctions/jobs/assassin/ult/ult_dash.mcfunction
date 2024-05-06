# 演出
    execute at @s run playsound entity.player.attack.nodamage player @a[distance=..10] ~ ~ ~ 1 1.8
    execute at @s run playsound entity.player.attack.crit player @a[distance=..10] ~ ~ ~ 1 0.7
    execute at @s run playsound minecraft:item.armor.equip_netherite player @a[distance=..10] ~ ~ ~ 1 0.5
    execute at @s run particle dust -1 0 -1 1.5 ~ ~1 ~ 1 1 1 0.2 10
    execute at @s run particle sweep_attack ~ ~ ~ 1 1 1 0.2 2
# 突進させる
    execute at @s run scoreboard players set $strength delta.api.launch 8000
    execute at @s rotated ~ 0 run function delta:api/launch_looking
# Hit判定
    execute at @s if entity @e[tag=player,distance=0.1..2,limit=1] run playsound minecraft:block.sculk_shrieker.shriek player @a[distance=..10] ~ ~ ~ 5
    execute at @s run function pvp_data:pvpfunctions/systems/job_system/damage/apply_fixed {damage: {amount: 999.0f,type: "pvp_data:assassin/assassin_ult"},knockback: {horizontal: 2.5d,vertical: 3.5d},target: "@e[tag=player,distance=0.1..2]"}
# 時間
    scoreboard players remove @s ult_count 1
# 終了
    execute if score @s ult_count matches ..1 run tag @s remove assassin.ult_dash
    execute if score @s ult_count matches ..1 run tag @s remove assassin.ult
    execute if score @s ult_count matches ..1 run scoreboard players reset @s ult_count