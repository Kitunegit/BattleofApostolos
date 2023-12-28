
#発動処理
execute if predicate pvp_data:r_click/cmd33 if score @s ult_cool matches ..0 if score @s r_click matches 1.. run tag @s add knight_ult_tag
execute if predicate pvp_data:r_click/cmd33 if score @s knight_ult_count matches 61 run function pvp_data:pvpfunctions/jobs/knight/ult/ult_start

tag @e[type=marker,tag=knight_ult,tag=!knight_special_count] add knight_ult_tag

execute as @e[type=marker,tag=knight_ult] at @s run tp @s ^ ^ ^0.5
execute as @e[type=marker,tag=knight_ult] at @s run playsound entity.player.attack.sweep player @a[distance=..15] ~ ~ ~ 1 1

#ため演出
    execute if entity @a[tag=knight_ult_tag] at @s run function pvpdata:pvpfunctions/jobs/knight/ult/ult_charge




#終了演出
    execute as @s[scores={knight_ult_count=65..}] at @s run tag @s remove knight_ult_tag
    execute as @s[scores={knight_ult_count=65..}] at @s run scoreboard players set @s knight_ult_count 0

    scoreboard players add @e[type=marker,tag=knight_ult] knight_ult_count 1
    scoreboard players add @e[type=marker,tag=knight_ult_player] knight_ult_count 1

    scoreboard players add @a[scores={jobscore=3},tag=knight_ult_tag] knight_ult_count 1
    execute as @e[type=marker,scores={knight_ult_count=100..}] at @s run kill @s
    execute as @e[type=marker,tag=knight_ult_player,scores={knight_ult_count=30..}] at @s run kill @s
    execute as @e[type=marker,tag=!knight_ult_tag,scores={knight_ult_count=1..}] run kill @s

    execute if score @s ult_cool matches 0 run function pvp_data:pvpfunctions/jobs/knight/ult/ult_fin
