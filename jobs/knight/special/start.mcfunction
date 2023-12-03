#発動時処理
    scoreboard players set @s knight_special_cool 100

#発動時演出
    playsound ui.toast.in player @s ~ ~ ~ 100 1.5
    playsound ui.toast.in player @s ~ ~ ~ 100 1.5
    playsound ui.toast.in player @s ~ ~ ~ 100 1.5
    playsound ui.toast.in player @s ~ ~ ~ 100 1.5
    execute at @s run particle crit ~ ~0.5 ~ 1 1 1 1 10 force @a