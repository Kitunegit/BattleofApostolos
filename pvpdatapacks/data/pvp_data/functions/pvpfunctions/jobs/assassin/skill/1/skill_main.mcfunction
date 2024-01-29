#> pvp_data:pvpfunctions/jobs/assassin/skill/1/skill_main
#
# 暗殺者のスキル1の常時実行処理です
#
# @within function pvp_data:pvpfunctions/jobs/assassin/main

# スキル1処理

    #発動処理
        execute if predicate pvp_data:r_click/cmd61 if score @s skill_1_cool matches ..0 if score @s r_click matches 1.. run function pvp_data:pvpfunctions/jobs/assassin/skill/1/skill_start

    # バリア減らし
        execute if score @s skill_1_con matches 0 run clear @s barrier{CustomModelData:61} 1

    # スキル処理
    
        # チャージパーティクル
        execute if score @s assassin_skill_1_charge matches 1.. if entity @s[tag=assassin.skill_1_charge] at @s run particle minecraft:dragon_breath ~ ~ ~ 0.1 0.1 0.1 0.01 10
        
        # チャージ開始処理
        execute if score @s assassin_skill_1_charge matches 1 if entity @s[tag=assassin.skill_1_charge] run function pvp_data:pvpfunctions/jobs/assassin/skill/1/charge_start

        # バフ中処理
        execute if score @s assassin_skill_1_charge matches 1.. unless entity @s[tag=assassin.skill_1_charge] run function pvp_data:pvpfunctions/jobs/assassin/skill/1/buff
        
        # カウントダウン
        execute if score @s assassin_skill_1_charge matches 1.. run scoreboard players remove @s assassin_skill_1_charge 1

    # 終了処理
        execute if score @s skill_1_cool matches 1 run function pvp_data:pvpfunctions/jobs/assassin/skill/1/skill_fin
        