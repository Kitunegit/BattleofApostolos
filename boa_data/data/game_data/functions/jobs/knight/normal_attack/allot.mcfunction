#> game_data:jobs/knight/normal_attack/allot
#
# 攻撃振り分け
#
# @internal

# 段数に応じて振り分ける
    execute if score @s system.combo.count matches 3 run function game_data:jobs/knight/normal_attack/4/swing
    execute if score @s system.combo.count matches 2 run function game_data:jobs/knight/normal_attack/3/swing
    execute if score @s system.combo.count matches 1 run function game_data:jobs/knight/normal_attack/2/swing
    execute if score @s system.combo.count matches 0 run function game_data:jobs/knight/normal_attack/1/swing