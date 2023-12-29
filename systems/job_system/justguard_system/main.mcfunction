#ジャストガード処理
    #ジャストガード開始処理
        execute if score @s sneaking matches 1 if score @s guard_cool matches ..0 run tag @s add just_guard
    #ジャスガ厨スコア増やす
        scoreboard players add @s[tag=just_guard] just_guard 1
    #開始/終了ファンクション
        execute if score @s just_guard matches 1 run function pvp_data:pvpfunctions/systems/job_system/justguard_system/guard_start
        execute if score @s just_guard matches 3 run function pvp_data:pvpfunctions/systems/job_system/justguard_system/guard_fin
    #例外処理
        #CT中にスニークしたときに音を鳴らす
        execute if score @s sneaking matches 1 if score @s guard_cool matches 1.. at @s run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 0.5 1.5
        #判定中にスニークを解除したら強制終了
        execute if score @s just_guard matches 1.. if score @s sneaking matches 0 run function pvp_data:pvpfunctions/systems/job_system/justguard_system/guard_fin
    #CT関連
        #CT減らし
        scoreboard players remove @s[scores={guard_cool=1..}] guard_cool 1
        #CT終了音
       execute if score @s guard_cool matches 1 at @s run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1 1


