
#技処理
    execute at @e[tag=knight_special_target,tag=player] run particle sweep_attack ~ ~1 ~ 1 1 1 1 3 force @a 
    execute at @e[tag=knight_special_target,tag=player] run particle crit ~ ~1 ~ 1 1 1 1 20 force @a
    execute as @a[scores={special_count=1..},limit=1] run function pvp_data:pvpfunctions/systems/job_system/damage/apply_fixed {damage: {amount: 2.0f,type: "pvp_data:assassin/assassin_sp"},knockback: {horizontal: 0.5d,vertical: 0.5d},target: "@e[tag=knight_special_target,tag=player]"}

#発動時演出
    execute at @e[tag=knight_special_target,tag=player] run playsound ui.toast.in player @a[distance=..10] ~ ~ ~ 100 1.5
    execute at @e[tag=knight_special_target,tag=player] run playsound ui.toast.in player @a[distance=..10] ~ ~ ~ 100 1.5
    execute at @e[tag=knight_special_target,tag=player] run playsound entity.player.attack.sweep player @a[distance=..10] ~ ~ ~ 100 1.5
    execute at @s run particle crit ~ ~1 ~ 0.3 0.3 0.3 0 30 force @a