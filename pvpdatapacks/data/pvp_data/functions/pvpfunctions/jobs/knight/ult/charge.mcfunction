
#ため演出
    execute at @s if score @s knight_ult_count matches 1 run playsound block.beacon.activate player @a[distance=..20] ~ ~ ~ 1 0.8
    execute at @s if score @s knight_ult_count matches 1 run effect give @s slowness 3 255 true
    execute at @s if score @s knight_ult_count matches 1.. run effect give @s jump_boost 1 128 true
    execute at @s if score @s knight_ult_count matches ..58 run particle dust 0.557 0.859 0.859 1 ~ ~0.2 ~ 0.8 1.2 0.8 1 8 force
    execute if score @s knight_ult_count matches 61 at @s run function pvp_data:pvpfunctions/jobs/knight/ult/start
    execute if score @s knight_ult_count matches 61.. run effect clear @s jump_boost
    execute if score @s knight_ult_count matches 65.. run tag @s remove knight_ult_tag
    execute if score @s knight_ult_count matches 65.. run scoreboard players set @s knight_ult_count 0