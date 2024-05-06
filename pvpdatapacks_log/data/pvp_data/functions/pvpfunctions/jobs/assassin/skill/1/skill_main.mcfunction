#> pvp_data:pvpfunctions/jobs/assassin/skill/1/skill_main
#
# 暗殺者のスキル1の常時実行処理です
#
# @within function pvp_data:pvpfunctions/jobs/assassin/main

# 発動処理
    execute if predicate pvp_data:r_click/cmd61 if score @s skill_1_cool matches ..0 if score @s r_click matches 1.. run function pvp_data:pvpfunctions/jobs/assassin/skill/1/skill_start

# スキル処理

# チャージパーティクル
    execute if entity @s[tag=assassin.skill_charge] at @s run particle minecraft:dragon_breath ~ ~ ~ 0.1 0.1 0.1 0.01 10
# チャージ開始処理
    execute if entity @s[tag=assassin.skill_charge,tag=Charge.Stop] run function pvp_data:pvpfunctions/jobs/assassin/skill/1/charge_start
# バフ中処理
    execute if score @s skill_1_count matches 1.. run function pvp_data:pvpfunctions/jobs/assassin/skill/1/buff
# 終了処理
    execute if score @s skill_1_cool matches 1 run function pvp_data:pvpfunctions/jobs/assassin/skill/1/skill_fin
        