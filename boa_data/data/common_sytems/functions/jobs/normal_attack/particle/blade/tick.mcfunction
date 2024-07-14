#> common_sytems:jobs/normal_attack/particle/blade/tick
#
# 斬撃の演出用の処理です
#
# @internal

# 常時スコア増加
    scoreboard players add $Tick system.particle.frame 1
# 4tickに一度フレームを更新処理
    execute if score $Tick system.particle.frame matches 2..4 run function common_sytems:jobs/normal_attack/particle/blade/update
