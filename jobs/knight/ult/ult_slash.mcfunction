
#斬撃演出
    execute as @e[type=marker,tag=knight_ult] at @s positioned ^ ^ ^ run particle sweep_attack ~ ~ ~ 0.5 0.5 0.5 3 5 force
    execute as @e[type=marker,tag=knight_ult,scores={knight_ult_count=3..}] at @s positioned ^ ^ ^ run damage @a[tag=player,limit=1,distance=..4] 15 player_attack by @s
    execute as @e[type=marker,tag=knight_ult] at @s positioned ^2 ^ ^-0.5 run particle sweep_attack ~ ~ ~ 0.5 0.5 0.5 3 5 force
    execute as @e[type=marker,tag=knight_ult,scores={knight_ult_count=3..}] at @s positioned ^2 ^ ^-0.5 run damage @a[tag=player,limit=1,distance=..3] 15 player_attack by @s
    execute as @e[type=marker,tag=knight_ult] at @s positioned ^-2 ^ ^-0.5 run particle sweep_attack ~ ~ ~ 0.5 0.5 0.5 3 5 force
    execute as @e[type=marker,tag=knight_ult,scores={knight_ult_count=3..}] at @s positioned ^-2 ^ ^-0.5 run damage @a[tag=player,limit=1,distance=..4] 15 player_attack by @s
    execute as @e[type=marker,tag=knight_ult] at @s positioned ^4 ^ ^-1 run particle sweep_attack ~ ~ ~ 0.5 0.5 0.5 3 5 force
    execute as @e[type=marker,tag=knight_ult,scores={knight_ult_count=3..}] at @s positioned ^4 ^ ^-1 run damage @a[tag=player,limit=1,distance=..4] 15 player_attack by @s
    execute as @e[type=marker,tag=knight_ult] at @s positioned ^-4 ^ ^-1 run particle sweep_attack ~ ~ ~ 0.5 0.5 0.5 3 5 force
    execute as @e[type=marker,tag=knight_ult,scores={knight_ult_count=3..} ] at @s positioned ^-4 ^ ^-1 run damage @a[tag=player,limit=1,distance=..4] 15 player_attack by @s
#斬撃跡演出
    execute as @e[type=marker,tag=knight_ult] at @s positioned ^ ^ ^ run particle dust 0.145 0.957 0.957 1 ^ ^ ^-5 5 1 3 10 30 force