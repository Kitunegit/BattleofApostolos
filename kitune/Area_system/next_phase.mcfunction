#次のフェーズに行くときに実行されるFunction

#次の秒数のデータ取得
function pvp_data:pvpfunctions/kitune/area_system/phase_time_data
#最大値をボスバーに代入
execute store result bossbar minecraft:area max run scoreboard players get area_time area_timer
#ボーダーを適応
function pvp_data:pvpfunctions/kitune/area_system/border
#フェーズを増やす
scoreboard players add area_phase area_timer 1