
#開始処理
    execute as @s[nbt={SelectedItem:{tag:{CustomModelData:3},id:"minecraft:carrot_on_a_stick"}},scores={knight_special_cool=..0,r_click=1..}] run scoreboard players set @s knight_special_cool 100
    
#技処理1
    execute as @s[scores={knight_special_count=1}] at @s positioned ^ ^ ^4 at @e[distance=..3.9,limit=3] run particle sweep_attack ~ ~1 ~ 1 1 1 1 3 force @a 
    execute as @s[scores={knight_special_count=1}] at @s positioned ^ ^ ^4 at @e[distance=..3.9,limit=3] run particle crit ~ ~1 ~ 1 1 1 1 20 force @a
    execute as @s[scores={knight_special_count=1}] at @s positioned ^ ^ ^4 run damage @e[distance=..3.9,limit=3] 4 player_attack by @s

#発動時演出1
    execute as @s[scores={knight_special_count=1}] run playsound ui.toast.in player @s ~ ~ ~ 100 1.5
    execute as @s[scores={knight_special_count=1}] run playsound ui.toast.in player @s ~ ~ ~ 100 1.5
    execute as @s[scores={knight_special_count=1}] run playsound ui.toast.in player @s ~ ~ ~ 100 1.5
    execute as @s[scores={knight_special_count=1}] run playsound ui.toast.in player @s ~ ~ ~ 100 1.5
    execute as @s[scores={knight_special_count=1}] run execute at @s run particle crit ~ ~0.8 ~ 0.3 0.3 0.3 0 30 force @a

#技処理2
    execute as @s[scores={knight_special_count=10}] at @s positioned ^ ^ ^4 at @e[distance=..3.9,limit=3] run particle sweep_attack ~ ~1 ~ 1 1 1 1 3 force @a 
    execute as @s[scores={knight_special_count=10}] at @s positioned ^ ^ ^4 at @e[distance=..3.9,limit=3] run particle crit ~ ~1 ~ 1 1 1 1 20 force @a
    execute as @s[scores={knight_special_count=10}] at @s positioned ^ ^ ^4 run damage @e[distance=..3.9,limit=3] 4 player_attack by @s

#発動時演出2
    execute as @s[scores={knight_special_count=10}] run playsound ui.toast.in player @s ~ ~ ~ 100 1.5
    execute as @s[scores={knight_special_count=10}] run playsound ui.toast.in player @s ~ ~ ~ 100 1.5
    execute as @s[scores={knight_special_count=10}] run playsound ui.toast.in player @s ~ ~ ~ 100 1.5
    execute as @s[scores={knight_special_count=10}] run playsound ui.toast.in player @s ~ ~ ~ 100 1.5
    execute as @s[scores={knight_special_count=10}] run execute at @s run particle crit ~ ~0.8 ~ 0.3 0.3 0.3 0 30 force @a

#技処理3
    execute as @s[scores={knight_special_count=20}] at @s positioned ^ ^ ^4 at @e[distance=..3.9,limit=3] run particle sweep_attack ~ ~1 ~ 1 1 1 1 3 force @a 
    execute as @s[scores={knight_special_count=20}] at @s positioned ^ ^ ^4 at @e[distance=..3.9,limit=3] run particle crit ~ ~1 ~ 1 1 1 1 20 force @a
    execute as @s[scores={knight_special_count=20}] at @s positioned ^ ^ ^4 run damage @e[distance=..3.9,limit=3] 4 player_attack by @s

#発動時演出3
    execute as @s[scores={knight_special_count=20}] run playsound ui.toast.in player @s ~ ~ ~ 100 1.5
    execute as @s[scores={knight_special_count=20}] run playsound ui.toast.in player @s ~ ~ ~ 100 1.5
    execute as @s[scores={knight_special_count=20}] run playsound ui.toast.in player @s ~ ~ ~ 100 1.5
    execute as @s[scores={knight_special_count=20}] run playsound ui.toast.in player @s ~ ~ ~ 100 1.5
    execute as @s[scores={knight_special_count=20}] run execute at @s run particle crit ~ ~0.8 ~ 0.3 0.3 0.3 0 30 force @a

#終了処理
    execute as @s[scores={knight_special_count=21..}] run tag @s remove knight_special_switch