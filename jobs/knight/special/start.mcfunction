#発動時処理
    scoreboard players set @s knight_special_cool 100

#発動時演出
    playsound ui.toast.in player @s ~ ~ ~ 100 1.5
    playsound ui.toast.in player @s ~ ~ ~ 100 1.5
    playsound ui.toast.in player @s ~ ~ ~ 100 1.5
    playsound ui.toast.in player @s ~ ~ ~ 100 1.5
    execute at @s run particle crit ~ ~0.8 ~ 0.3 0.3 0.3 0 30 force @a

#技処理
    execute as @s at @s positioned ^ ^ ^5 at @e[distance=..4.9,limit=3] run particle sweep_attack ~ ~1 ~ 1 1 1 1 10 force @a 