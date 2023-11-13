summon marker 288.60 -21 -236.49 {"Tags":["border_center"]}
execute at @e[tag=border_center,type=marker,limit=1] run worldborder center ~ ~ 
bossbar set minecraft:area players @a
scoreboard players set area_time area_timer 1
scoreboard players set area_phase area_timer 1
tellraw @a {"text": "収縮が開始しました"}