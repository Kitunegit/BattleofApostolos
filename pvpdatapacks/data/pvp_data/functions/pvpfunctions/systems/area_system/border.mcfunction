#各フェーズの次のエリアの大きさを保存しておくFunction

# 160
execute if score area_phase area_timer matches 1 run function pvp_data:pvpfunctions/systems/border/add {time: 800, size: -20d}
# 140
execute if score area_phase area_timer matches 2 run function pvp_data:pvpfunctions/systems/border/add {time: 3200, size: -40d}
# 100
execute if score area_phase area_timer matches 3 run function pvp_data:pvpfunctions/systems/border/add {time: 3000, size: -30d}
# 70
execute if score area_phase area_timer matches 4 run function pvp_data:pvpfunctions/systems/border/add {time: 2400, size: -30d}
# 50
execute if score area_phase area_timer matches 5..8 run function pvp_data:pvpfunctions/systems/border/move {time: 600, distance: 30d}
# 20
execute if score area_phase area_timer matches 9 run function pvp_data:pvpfunctions/systems/border/add {time: 600, size: -30d}
# 最終円移動
execute if score area_phase area_timer matches 10..19 run function pvp_data:pvpfunctions/systems/border/move {time: 600, distance: 20d}
# 最後に〆る
execute if score area_phase area_timer matches 20.. run function pvp_data:pvpfunctions/systems/border/add {time: 600, size: -30d}