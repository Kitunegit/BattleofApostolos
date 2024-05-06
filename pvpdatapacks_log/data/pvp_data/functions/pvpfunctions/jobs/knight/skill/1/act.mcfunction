#> pvp_data:pvpfunctions/jobs/knight/skill/1/act
#
# 騎士スキル1バフ中処理
#
# @within function pvp_data:pvpfunctions/jobs/knight/skill/1/main
scoreboard players remove @s skill_1_count 1

#発動中演出
    execute at @s if score @s skill_1_count matches ..200 run particle dust 100000000 100000000 100000000 1 ~ ~0.2 ~ 0.4 0.8 0.4 0 8 force
	

#発動終了演出
     execute at @s if score @s skill_1_count matches ..0 run function pvp_data:pvpfunctions/jobs/knight/skill/1/act_fin