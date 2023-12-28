
#ため演出
    execute at @s[tag=knight_ult_tag,scores={knight_ult_count=..58}] run particle dust 0.557 0.859 0.859 1 ~ ~0.2 ~ 0.8 1.2 0.8 1 8 force
    execute at @s[tag=knight_ult_tag,scores={knight_ult_count=1}] run playsound block.beacon.activate player @a[distance=..20] ~ ~ ~ 1 0.8
    execute at @s[tag=knight_ult_tag,scores={knight_ult_count=1}] run effect give @s slowness 3 255 true
    execute at @s[tag=knight_ult_tag,scores={knight_ult_count=1..}] unless block ~ ~-1 ~ air run effect give @s levitation 1 128 true

#抜刀演出
    execute at @s[tag=knight_ult_tag,scores={knight_ult_count=59}] run summon marker ~ ~1 ~ {Tags:[knight_ult_player]}
    execute at @e[type=marker,tag=knight_ult_player] rotated as @s run tp @e[type=marker,tag=knight_ult_player] ~ ~ ~ facing ^ ^ ^1

    execute at @e[type=marker,tag=knight_ult_player] positioned ^ ^ ^2 run particle dust 0.063 0.243 0.537 1 ~ ~ ~ 0.5 0.1 3 30 40 force
    execute at @e[type=marker,tag=knight_ult_player,scores={knight_ult_count=1..}] run tp @s ~ ~ ~ ~1.5 ~