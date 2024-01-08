
#発動処理
    execute if predicate pvp_data:r_click/cmd33 if score @s ult_cool matches ..0 if score @s r_click matches 1.. run tag @s add knight_ult_tag
    execute if predicate pvp_data:r_click/cmd33 if score @s ult_cool matches ..0 if score @s r_click matches 1.. run scoreboard players set @s r_click 0

#斬撃演出
    #パーティクル&ダメージ
        execute as @e[type=marker,tag=knight_ult] run function pvp_data:pvpfunctions/jobs/knight/ult/slash
    #常時スコア
        scoreboard players add @e[type=marker,tag=knight_ult] knight_ult_count 1
        scoreboard players add @s[tag=knight_ult_tag] knight_ult_count 1

#ため演出/処理
    execute at @s if entity @s[tag=knight_ult_tag] run function pvp_data:pvpfunctions/jobs/knight/ult/charge

#終了演出

    #壁にぶつかったらマーカーをkill
        execute as @e[type=marker,tag=knight_ult] if score @s collision_check matches 0 at @s run scoreboard players set @s knight_ult_count 51
    #一定値でマーカーをkill
        execute as @e[type=marker] if score @s knight_ult_count matches 50.. run kill @s
    #ウルトCT終了処理
        execute if score @s ult_cool matches 1 run function pvp_data:pvpfunctions/jobs/knight/ult/fin
    #バリア化
        execute if score @s ult_con matches 0 run clear @s barrier{CustomModelData:33} 1

