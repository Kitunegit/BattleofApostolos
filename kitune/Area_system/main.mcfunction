#データ



#常時増加
scoreboard players remove area_time area_timer 1
execute if score area_time area_timer matches ..0 run scoreboard players add area_phase area_timer 1
execute if score area_time area_timer matches ..0 run scoreboard players set area_phase area_timer 1