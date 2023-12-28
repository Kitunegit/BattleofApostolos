
#技処理1
    execute if score @s special_count matches 1 as @e[tag=knight_special_target,tag=player] at @s run particle sweep_attack ~ ~1 ~ 1 1 1 1 3 force @a 
    execute if score @s special_count matches 1 as @e[tag=knight_special_target,tag=player] at @s run particle crit ~ ~1 ~ 1 1 1 1 20 force @a
    execute if score @s special_count matches 1 as @e[tag=knight_special_target,tag=player] at @s run damage @s 5 player_attack by @a[scores={special_count=1..},limit=1]

#発動時演出1
    execute if score @s special_count matches 1 as @e[tag=knight_special_target,tag=player] run playsound ui.toast.in player @a[distance=..10] ~ ~ ~ 100 1.5
    execute if score @s special_count matches 1 as @e[tag=knight_special_target,tag=player] run playsound ui.toast.in player @a[distance=..10] ~ ~ ~ 100 1.5
    execute if score @s special_count matches 1 as @e[tag=knight_special_target,tag=player] run playsound entity.player.attack.sweep player @a[distance=..10] ~ ~ ~ 100 1.5
    execute if score @s special_count matches 1 as @s run execute at @s run particle crit ~ ~1 ~ 0.3 0.3 0.3 0 30 force @a