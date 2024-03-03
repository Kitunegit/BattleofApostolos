#> pvp_data:pvpfunctions/jobs/warrior/ult/kill_model
#
# 戦士ウルトモデル削除処理
#
# @internal

execute as @e[tag=warrior.ult_model.kill] run function animated_java:warrior_ult.model/remove/rigs
say test