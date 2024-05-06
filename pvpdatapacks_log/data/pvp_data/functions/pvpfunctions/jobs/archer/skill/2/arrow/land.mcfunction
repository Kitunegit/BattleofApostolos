#> pvp_data:pvpfunctions/jobs/archer/skill/2/arrow/land
#
# 弓兵 スキル2 着弾処理
#
# @internal

# 演出
    execute at @s run particle flash ~ ~ ~ 10 10 10 0.5 80
    execute at @s run playsound minecraft:entity.warden.attack_impact player @s ~ ~ ~ 1 2
# 対象にタグを付与
    execute at @s run tag @e[tag=!archer.skill2_player,tag=player,distance=..10] add archer.homing_target
# 発光を付与
    effect give @e[tag=archer.homing_target] glowing 10 1 true
# タグを削除
    tag @e[tag=archer.skill2_player] remove archer.skill2_player