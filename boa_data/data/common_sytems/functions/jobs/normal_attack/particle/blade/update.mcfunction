#> common_sytems:jobs/normal_attack/particle/blade/update
#
# 斬撃の演出の画像更新
#
# @internal

# 更新処理
    execute if entity @e[tag=paritcle.knight] run function game_data:jobs/knight/normal_attack/frame_update
# フレーム数を増加
    scoreboard players add @e[tag=system.particle,type=text_display] system.particle.frame.tick 1
# カウンターをリセット
    scoreboard players set $Tick system.particle.frame 0