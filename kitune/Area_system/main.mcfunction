#常時時間を減らす
execute if score area_time area_timer matches 0.. run scoreboard players remove area_time area_timer 1
#スコアに応じてボスバーを変化させる
execute store result bossbar minecraft:area value run scoreboard players get area_time area_timer
#カウントダウンが0の場合フェーズを進める
execute if score area_time area_timer matches 0..10 run function pvp_data:pvpfunctions/kitune/area_system/next_phase
execute if score area_phase area_timer matches 11.. run scoreboard players reset area_time
execute if score area_phase area_timer matches 11.. run scoreboard players reset area_phase