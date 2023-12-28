
#発動処理
execute if predicate pvp_data:r_click/cmd33 if score @s ult_cool matches ..0 if score @s r_click matches 1.. run tag @s add knight_ult_tag
execute if predicate pvp_data:r_click/cmd33 if score @s knight_ult_count matches 61 run function pvp_data:pvpfunctions/jobs/knight/ult/ult_start

tag @e[type=marker,tag=knight_ult,tag=!knight_special_count] add knight_ult_tag

execute as @e[type=marker,tag=knight_ult] at @s run tp @s ^ ^ ^0.5
execute as @e[type=marker,tag=knight_ult] at @s run playsound entity.player.attack.sweep player @a[distance=..15] ~ ~ ~ 1 1
#ため演出
    execute as @s[tag=knight_ult_tag,scores={knight_ult_count=1}] at @s run playsound block.beacon.activate player @a[distance=..20] ~ ~ ~ 1 0.8
    execute as @s[tag=knight_ult_tag,scores={knight_ult_count=1}] at @s run effect give @s slowness 3 255 true
    execute as @s[tag=knight_ult_tag,scores={knight_ult_count=1}] at @s run effect give @s jump_boost 3 255 true
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

#終了演出
    execute as @s[scores={knight_ult_count=65..}] at @s run tag @s remove knight_ult_tag
    execute as @s[scores={knight_ult_count=65..}] at @s run scoreboard players set @s knight_ult_count 0
execute if score @s ult_cool matches 0 run function pvp_data:pvpfunctions/jobs/knight/ult/ult_fin
scoreboard players add @e[type=marker,tag=knight_ult] knight_ult_count 1
scoreboard players add @a[scores={jobscore=3},tag=knight_ult_tag] knight_ult_count 1
execute as @e[type=marker,tag=knight_ult,scores={knight_ult_count=100..}] at @s run kill @s

