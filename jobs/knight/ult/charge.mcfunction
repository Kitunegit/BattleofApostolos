
#ため演出
    execute at @s[tag=knight_ult_tag] if score @s knight_special_count matches ..58 run particle dust 0.557 0.859 0.859 1 ~ ~0.2 ~ 0.8 1.2 0.8 1 8 force
    execute at @s[tag=knight_ult_tag] if score @s knight_special_count matches 1 run playsound block.beacon.activate player @a[distance=..20] ~ ~ ~ 1 0.8
    execute at @s[tag=knight_ult_tag] if score @s knight_special_count matches 1 run effect give @s slowness 3 255 true
    execute at @s[tag=knight_ult_tag] if score @s knight_special_count matches 1.. unless block ~ ~-1 ~ air run effect give @s levitation 1 128 true