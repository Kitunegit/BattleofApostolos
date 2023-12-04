

    
#技処理1
    execute as @e[tag=knight_special_target,scores={knight_special_count=1}] at @s run particle sweep_attack ~ ~1 ~ 1 1 1 1 3 force @a 
    execute as @e[tag=knight_special_target,scores={knight_special_count=1}] at @s run particle crit ~ ~1 ~ 1 1 1 1 20 force @a
    execute as @e[tag=knight_special_target,scores={knight_special_count=1}] at @s run damage @s 6 player_attack by @a[scores={knight_special_count=1..},limit=1]

#発動時演出1
    execute as @e[tag=knight_special_target,scores={knight_special_count=1}] run playsound ui.toast.in player @s ~ ~ ~ 100 1.5
    execute as @e[tag=knight_special_target,scores={knight_special_count=1}] run playsound ui.toast.in player @s ~ ~ ~ 100 1.5
    execute as @e[tag=knight_special_target,scores={knight_special_count=1}] run playsound ui.toast.in player @s ~ ~ ~ 100 1.5
    execute as @e[tag=knight_special_target,scores={knight_special_count=1}] run playsound ui.toast.in player @s ~ ~ ~ 100 1.5
    execute as @e[tag=knight_special_target,scores={knight_special_count=1}] run execute at @s run particle crit ~ ~0.8 ~ 0.3 0.3 0.3 0 30 force @a

#技処理2
    execute as @e[tag=knight_special_target,scores={knight_special_count=11}] at @s run particle sweep_attack ~ ~1 ~ 1 1 1 1 3 force @a 
    execute as @e[tag=knight_special_target,scores={knight_special_count=11}] at @s run particle crit ~ ~1 ~ 1 1 1 1 20 force @a
    execute as @e[tag=knight_special_target,scores={knight_special_count=11}] at @s run damage @s 6 player_attack by @a[scores={knight_special_count=1..},limit=1]

#発動時演出2
    execute as @e[tag=knight_special_target,scores={knight_special_count=11}] run playsound ui.toast.in player @s ~ ~ ~ 100 1.5
    execute as @e[tag=knight_special_target,scores={knight_special_count=11}] run playsound ui.toast.in player @s ~ ~ ~ 100 1.5
    execute as @e[tag=knight_special_target,scores={knight_special_count=11}] run playsound ui.toast.in player @s ~ ~ ~ 100 1.5
    execute as @e[tag=knight_special_target,scores={knight_special_count=11}] run playsound ui.toast.in player @s ~ ~ ~ 100 1.5
    execute as @e[tag=knight_special_target,scores={knight_special_count=11}] run execute at @s run particle crit ~ ~0.8 ~ 0.3 0.3 0.3 0 30 force @a

#技処理3
    execute as @e[tag=knight_special_target,scores={knight_special_count=22}] at @s run particle sweep_attack ~ ~1 ~ 1 1 1 1 3 force @a 
    execute as @e[tag=knight_special_target,scores={knight_special_count=22}] at @s run particle crit ~ ~1 ~ 1 1 1 1 20 force @a
    execute as @e[tag=knight_special_target,scores={knight_special_count=22}] at @s run damage @s 6 player_attack by @a[scores={knight_special_count=1..},limit=1]

#発動時演出3
    execute as @e[tag=knight_special_target,scores={knight_special_count=22}] run playsound ui.toast.in player @s ~ ~ ~ 100 1.5
    execute as @e[tag=knight_special_target,scores={knight_special_count=22}] run playsound ui.toast.in player @s ~ ~ ~ 100 1.5
    execute as @e[tag=knight_special_target,scores={knight_special_count=22}] run playsound ui.toast.in player @s ~ ~ ~ 100 1.5
    execute as @e[tag=knight_special_target,scores={knight_special_count=22}] run playsound ui.toast.in player @s ~ ~ ~ 100 1.5
    execute as @e[tag=knight_special_target,scores={knight_special_count=22}] run execute at @s run particle crit ~ ~0.8 ~ 0.3 0.3 0.3 0 30 force @a

#終了処理
    execute as @s[scores={knight_special_count=23..}] run tag @s remove knight_special_switch
    execute as @s[scores={knight_special_count=23..}] run tag @s remove knight_special_target