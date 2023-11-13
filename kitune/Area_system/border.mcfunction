#各フェーズの次のエリアの大きさを保存しておくFunction

execute if score area_phase area_timer matches 1 run worldborder set 150 300
execute if score area_phase area_timer matches 2 run worldborder set 50 180
execute if score area_phase area_timer matches 3 run worldborder set 25 120
execute if score area_phase area_timer matches 4 run worldborder set 10 60
execute if score area_phase area_timer matches 9 run worldborder set 1 10