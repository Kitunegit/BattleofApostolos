#各フェーズの次の秒数を保存しておくFunction

execute if score area_phase area_timer matches 1 run scoreboard players set area_time area_timer 800
execute if score area_phase area_timer matches 2 run scoreboard players set area_time area_timer 3200
execute if score area_phase area_timer matches 3 run scoreboard players set area_time area_timer 3000
execute if score area_phase area_timer matches 4 run scoreboard players set area_time area_timer 2400
execute if score area_phase area_timer matches 5..9 run scoreboard players set area_time area_timer 600
execute if score area_phase area_timer matches 9 run scoreboard players set area_time area_timer 1000
execute if score area_phase area_timer matches 10.. run scoreboard players set area_time area_timer 600