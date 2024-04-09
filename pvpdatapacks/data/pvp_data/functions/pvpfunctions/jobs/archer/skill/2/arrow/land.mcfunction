#> pvp_data:pvpfunctions/jobs/archer/skill/2/arrow/land
#
# 弓兵 スキル2 着弾処理
#
# @internal

# 演出
    execute at @s run particle flash ~ ~ ~ 10 10 10 0.5 80
    execute at @s run playsound minecraft:entity.warden.attack_impact player @s ~ ~ ~ 1 2
    
# 周囲のエンティティに固有スコアを割り振り
    
    # 対象にタグを付与

    execute at @s run tag @e[tag=!archer.skill2_player,tag=player,distance=..10] add archer.homing_target
