#各フェーズの次のエリアの大きさを保存しておくFunction

execute if score area_phase area_timer matches 1 run function pvp_data:pvpfunctions/systems/border/add {time: 66, size: -10d}
execute if score area_phase area_timer matches 2 run function pvp_data:pvpfunctions/systems/border/add {time: 320, size: -5d}
execute if score area_phase area_timer matches 3 run function pvp_data:pvpfunctions/systems/border/add {time: 300, size: -10d}
execute if score area_phase area_timer matches 4 run function pvp_data:pvpfunctions/systems/border/add {time: 240, size: -20d}
execute if score area_phase area_timer matches 9 run function pvp_data:pvpfunctions/systems/border/add {time: 60, size: -30d}