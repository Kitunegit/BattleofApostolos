#弓兵ウルト処理
    #発動処理
        execute if predicate pvp_data:r_click/cmd73 if score @s ult_cool matches ..0 if score @s r_click matches 1.. run function pvp_data:pvpfunctions/jobs/archer/ult/ult_start
    #スキルエフェクト
        execute at @s if score @s archer_ult_time matches 0.. run function pvp_data:pvpfunctions/jobs/archer/ult/ult_main
    #効果終了演出
        execute at @s if score @s archer_ult_time matches 0 run playsound minecraft:entity.item.break player @s ~ ~ ~ 1 0.5
        execute at @s if score @s archer_ult_time matches 0 run item replace entity @s hotbar.0 with bow{display:{Name:'{"text":"弓兵の長弓","bold":true,"italic":false}',},Unbreakable:1b,CustomModelData:7} 1
    #終了処理
        execute if score @s ult_cool matches 0 run function pvp_data:pvpfunctions/jobs/archer/ult/ult_fin
    #クールダウン減らす
        scoreboard players remove @s[scores={archer_ult_time=0..}] archer_ult_time 1
        
        execute as @e[type=firework_rocket] at @s facing entity @e[scores={jobscore=..6,jobscore=8..},limit=1,tag=player] eyes run tp @s ^ ^ ^0.8