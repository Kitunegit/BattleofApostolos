#> pvp_data:pvpfunctions/jobs/knight/special/marker
#
# 騎士特殊攻撃常時実行
#
# @internal

# カウントアップ
    scoreboard players add @s special_count 1
# ビジュアル演出
    execute at @s if score @s special_count matches 2.. run particle sweep_attack
# 前方移動
    execute at @s unless block ^ ^ ^1 air run function pvp_data:pvpfunctions/jobs/knight/special/marker_hit
    execute at @s if block ^ ^ ^1 air run tp @s ^ ^ ^1
# 敵判定
    execute at @s positioned ~-0.5 ~ ~-0.5 run tag @e[tag=player,dx=0] add Knight.Special_damage
# Hit判定(負荷軽減)
    execute if entity @e[tag=Knight.Special_damage] run function pvp_data:pvpfunctions/jobs/knight/special/marker_hit
# リセット
    execute if score @s special_count matches 4.. at @s run particle minecraft:gust
    kill @s[scores={special_count=4..}]