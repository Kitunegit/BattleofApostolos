#各フェーズの次のエリアの大きさを保存しておくFunction

execute if score area_phase area_timer matches 1 run worldborder set 300 30
execute if score area_phase area_timer matches 2 run worldborder set 180 180
execute if score area_phase area_timer matches 3 run worldborder set 100 150
execute if score area_phase area_timer matches 4 run worldborder set 60 120
execute if score area_phase area_timer matches 9 run worldborder set 3 50