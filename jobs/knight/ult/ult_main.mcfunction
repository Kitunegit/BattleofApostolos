
#発動処理
execute if predicate pvp_data:r_click/cmd33 if score @s ult_cool matches ..0 if score @s r_click matches 1.. run function pvp_data:pvpfunctions/jobs/knight/ult/ult_start

tag @e[type=marker,tag=knight_ult,tag=!knight_special_count] add knight_ult_tag

#演出
    execute as @e[type=marker,tag=knight_ult] at @s positioned ^ ^ ^ run particle sweep_attack ~ ~ ~ 0.5 0.5 0.5 1 1 normal
    execute as @e[type=marker,tag=knight_ult] at @s positioned ^ ^ ^ run damage @a[tag=player] 15 player_attack
    execute as @e[type=marker,tag=knight_ult] at @s positioned ^1 ^ ^-0.5 run particle sweep_attack ~ ~ ~ 0.5 0.5 0.5 1 1 normal
    execute as @e[type=marker,tag=knight_ult] at @s positioned ^1 ^ ^-0.5 run damage @a[tag=player] 15 player_attack
    execute as @e[type=marker,tag=knight_ult] at @s positioned ^-1 ^ ^-0.5 run particle sweep_attack ~ ~ ~ 0.5 0.5 0.5 1 1 normal
    execute as @e[type=marker,tag=knight_ult] at @s positioned ^-1 ^ ^-0.5 run damage @a[tag=player] 15 player_attack

execute if score @s ult_cool matches 0 run function pvp_data:pvpfunctions/jobs/knight/ult/ult_fin
scoreboard players add @e[type=marker,tag=knight_ult] knight_ult_count 1
execute as @e[type=marker,tag=knight_ult,scores={knight_ult_count=100..}] at @s run kill @s

