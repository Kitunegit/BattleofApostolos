kill @e[type=marker,tag=border_center]
$summon marker $(start_vector3) {"Tags":["border_center"]}
execute at @e[tag=border_center,type=marker,limit=1] run worldborder center ~ ~ 
worldborder set 200
$execute as @a run spreadplayers $(start_vector2) 15 65 under -30 true @s
bossbar set minecraft:area players @a
scoreboard players set area_time area_timer 1
scoreboard players set area_phase area_timer 1
tellraw @a {"text": "収縮が開始しました"}