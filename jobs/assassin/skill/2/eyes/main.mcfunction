#無条件処理
    scoreboard players add @e[type=marker,tag=black_eyes] assassin_skill_2_tmr 1
    execute as @e[type=marker,tag=black_eyes] at @s positioned ^ ^ ^0.5 if block ~ ~ ~ air run tp @s ^ ^ ^0.5
    execute as @e[type=marker,tag=black_eyes] at @s positioned ^ ^ ^0.5 if block ~ ~ ~ air run tp @s ^ ^ ^0.5
    execute as @e[type=marker,tag=black_eyes] at @s positioned ^ ^ ^0.5 if block ~ ~ ~ air run tp @s ^ ^ ^0.5
    execute as @e[type=marker,tag=black_eyes] at @s positioned ^ ^ ^0.5 if block ~ ~ ~ air run tp @s ^ ^ ^0.5
    execute at @e[type=marker,tag=black_eyes] run particle dust 0 0 0 0.9 ~ ~ ~ 0.4 0.4 0.4 1 11
    execute at @e[type=marker,tag=black_eyes] run particle dust 0.435 0 1 0.7 ~ ~ ~ 0.4 0.4 0.4 1 20
    kill @e[type=marker,tag=black_eyes,scores={assassin_skill_2_tmr=10..}]
#ブロックに当たったとき
    execute as @e[type=marker,tag=black_eyes] at @s positioned ^ ^ ^0.5 unless block ~ ~ ~ air run particle dust 0 0 0 4 ^ ^ ^-3 2 2 2 1 120
    execute as @e[type=marker,tag=black_eyes] at @s positioned ^ ^ ^0.5 unless block ~ ~ ~ air run playsound item.glow_ink_sac.use player @a[distance=..10] ~ ~ ~ 15 1
    execute as @e[type=marker,tag=black_eyes] at @s positioned ^ ^ ^0.5 unless block ~ ~ ~ air run effect give @a[distance=..5] blindness 4 3 true
    execute as @e[type=marker,tag=black_eyes] at @s positioned ^ ^ ^0.5 unless block ~ ~ ~ air run kill @s
#敵に当たったとき
    execute as @e[type=marker,tag=black_eyes] at @s if entity @a[distance=..2,tag=player] run particle dust 0 0 0 2 ~ ~ ~ 4 2 2 1 80
    execute as @e[type=marker,tag=black_eyes] at @s if entity @a[distance=..2,tag=player] run playsound item.glow_ink_sac.use player @a[distance=..10] ~ ~ ~ 15 1
    execute at @e[type=marker,tag=black_eyes] run effect give @a[distance=..2,tag=player] minecraft:blindness 5 3 true
    execute as @e[type=marker,tag=black_eyes] at @s if entity @a[distance=..2,tag=player] run kill @s
        