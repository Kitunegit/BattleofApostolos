#各フェーズの次の秒数を保存しておくFunction

execute if score area_phase area_timer matches 1 run scoreboard players set area_time area_timer 6600
execute if score area_phase area_timer matches 2 run scoreboard players set area_time area_timer 4000
execute if score area_phase area_timer matches 3 run scoreboard players set area_time area_timer 2500
execute if score area_phase area_timer matches 4 run scoreboard players set area_time area_timer 1200