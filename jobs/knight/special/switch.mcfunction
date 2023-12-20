

    
#技処理1
    execute if score @s special_count matches 1 as @e[tag=knight_special_target,tag=player] at @s run particle sweep_attack ~ ~1 ~ 1 1 1 1 3 force @a 
    execute if score @s special_count matches 1 as @e[tag=knight_special_target,tag=player] at @s run particle crit ~ ~1 ~ 1 1 1 1 20 force @a
    execute if score @s special_count matches 1 as @e[tag=knight_special_target,tag=player] at @s run damage @s 3 player_attack by @a[scores={special_count=1..},limit=1]

#発動時演出1
    execute if score @s special_count matches 1 as @e[tag=knight_special_target,tag=player] run playsound ui.toast.in player @a[distance=..10] ~ ~ ~ 100 1.5
    execute if score @s special_count matches 1 as @e[tag=knight_special_target,tag=player] run playsound ui.toast.in player @a[distance=..10] ~ ~ ~ 100 1.5
    execute if score @s special_count matches 1 as @e[tag=knight_special_target,tag=player] run playsound entity.player.attack.sweep player @a[distance=..10] ~ ~ ~ 100 1.5
    execute if score @s special_count matches 1 as @s run execute at @s run particle crit ~ ~1 ~ 0.3 0.3 0.3 0 30 force @a

#技処理2
    execute if score @s special_count matches 11 as @e[tag=knight_special_target,tag=player] at @s run particle sweep_attack ~ ~1 ~ 1 1 1 1 3 force @a 
    execute if score @s special_count matches 11 as @e[tag=knight_special_target,tag=player] at @s run particle crit ~ ~1 ~ 1 1 1 1 20 force @a
    execute if score @s special_count matches 11 as @e[tag=knight_special_target,tag=player] at @s run damage @s 3 player_attack by @a[scores={special_count=1..},limit=1]

#発動時演出2
    execute if score @s special_count matches 11 as @e[tag=knight_special_target,tag=player] run playsound ui.toast.in player @a[distance=..10] ~ ~ ~ 100 1.5
    execute if score @s special_count matches 11 as @e[tag=knight_special_target,tag=player] run playsound ui.toast.in player @a[distance=..10] ~ ~ ~ 100 1.5
    execute if score @s special_count matches 11 as @e[tag=knight_special_target,tag=player] run playsound entity.player.attack.sweep player @a[distance=..10] ~ ~ ~ 100 1.5
    execute if score @s special_count matches 11 as @s run execute at @s run particle crit ~ ~1 ~ 0.3 0.3 0.3 0 30 force @a

#技処理3
    execute if score @s special_count matches 22 as @e[tag=knight_special_target,tag=player] at @s run particle sweep_attack ~ ~1 ~ 1 1 1 1 3 force @a 
    execute if score @s special_count matches 22 as @e[tag=knight_special_target,tag=player] at @s run particle crit ~ ~1 ~ 1 1 1 1 20 force @a
    execute if score @s special_count matches 22 as @e[tag=knight_special_target,tag=player] at @s run damage @s 3 player_attack by @a[scores={special_count=1..},limit=1]

#発動時演出3
    execute if score @s special_count matches 22 as @e[tag=knight_special_target,tag=player] run playsound ui.toast.in player @a[distance=..10] ~ ~ ~ 100 1.5
    execute if score @s special_count matches 22 as @e[tag=knight_special_target,tag=player] run playsound ui.toast.in player @a[distance=..10] ~ ~ ~ 100 1.5
    execute if score @s special_count matches 22 as @e[tag=knight_special_target,tag=player] run playsound entity.player.attack.sweep player @a[distance=..10] ~ ~ ~ 100 1.5
    execute if score @s special_count matches 22 as @s run execute at @s run particle crit ~ ~1 ~ 0.3 0.3 0.3 0 30 force @a

#終了処理
    execute if score @s special_count matches 23.. run tag @s remove knight_special_switch
    execute if score @s special_count matches 23.. run tag @e[tag=player] remove knight_special_target