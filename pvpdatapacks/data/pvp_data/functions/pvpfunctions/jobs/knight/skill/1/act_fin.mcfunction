#> pvp_data:pvpfunctions/jobs/knight/skill/1/act_fin
#
# 騎士スキル1バフ終了処理
#
# @within function pvp_data:pvpfunctions/jobs/knight/skill/1/act

# 演出
    execute at @s run playsound block.fire.extinguish player @s ~ ~ ~ 0.5
    execute at @s run particle dust 100000000 100000000 100000000 2 ~ ~0.2 ~ 1 1.5 1 0 100 force