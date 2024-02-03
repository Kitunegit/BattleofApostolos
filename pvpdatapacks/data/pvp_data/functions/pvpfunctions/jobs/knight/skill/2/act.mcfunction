#> pvp_data:pvpfunctions/jobs/knight/skill/2/act
#
# 騎士スキル2バフ中処理
#
# @within function pvp_data:pvpfunctions/jobs/knight/skill/2/main

# バフ処理
    # バフ開始処理
        execute if score @s skill_2_count matches 400 run function pvp_data:pvpfunctions/jobs/knight/skill/2/buff

    # バフ中演出
        execute if score @s skill_2_count matches 200..400 at @s run particle dust 0.008 0.718 0.718 1 ~ ~0.2 ~ 0.4 0.8 0.4 0 8 force

# デバフ処理
    # デバフ開始処理
        execute if score @s skill_2_count matches 200 run function pvp_data:pvpfunctions/jobs/knight/skill/2/debuff

    # デバフ中演出
        execute if score @s skill_2_count matches ..200 at @s run particle dust 0.302 0.012 0.012 1 ~ ~0.2 ~ 0.4 0.8 0.4 0 8 force

# 効果終了
    execute if score @s skill_2_count matches 1 at @s run particle dust 0.008 0.718 0.718 1 ~ ~0.2 ~ 0.4 0.8 0.4 0 8 force
    execute if score @s skill_2_count matches 1 at @s run playsound block.glass.break player @s ~ ~ ~ 1 2

# カウントダウン
    scoreboard players remove @s skill_2_count 1