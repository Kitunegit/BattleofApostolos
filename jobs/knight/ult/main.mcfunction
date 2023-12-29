
#発動処理
    execute if predicate pvp_data:r_click/cmd33 if score @s ult_cool matches ..0 if score @s r_click matches 1.. run tag @s add knight_ult_tag
    execute if predicate pvp_data:r_click/cmd33 if score @s knight_ult_count matches 61 at @s run function pvp_data:pvpfunctions/jobs/knight/ult/start

#斬撃演出
    #斬撃移動
        execute if entity @e[type=marker,tag=knight_ult] as @e[type=marker,tag=knight_ult] at @s run tp @s ^ ^ ^0.5
    #パーティクル&ダメージ
        execute as @e[type=marker,tag=knight_ult] run function pvp_data:pvpfunctions/jobs/knight/ult/slash
    #常時スコア
        scoreboard players add @e[type=marker,tag=knight_ult] knight_ult_count 1
        scoreboard players add @e[type=marker,tag=knight_ult_player] knight_ult_count 1

#ため演出/処理
    #チャージ中のパーティクル
        execute at @s[tag=knight_ult_tag] if score @s knight_special_count matches 58.. run particle dust 0.557 0.859 0.859 1 ~ ~0.2 ~ 0.8 1.2 0.8 1 8 force
    #常時スコア
        scoreboard players add @a[scores={jobscore=3},tag=knight_ult_tag] knight_ult_count 1
    #音&動けなくする
        execute at @s[tag=knight_ult_tag] if score @s knight_ult_count matches 1 run playsound block.beacon.activate player @a[distance=..20] ~ ~ ~ 1 0.8
        execute as @s[tag=knight_ult_tag] at @s if score @s knight_ult_count matches 1 run effect give @s slowness 3 255 true
        execute as @s[tag=knight_ult_tag] at @s if score @s knight_ult_count matches 1.. unless block ~ ~-1 ~ air run effect give @s levitation 1 128 true



#終了演出

    #壁にぶつかったらマーカーをkill
        execute as @e[type=marker,tag=knight_ult] if score @s collision_check matches 0 at @s run scoreboard players set @s knight_special_count 51

    #プレイヤーのタグ,スコア消し
        execute at @s if score @s knight_ult_count matches 65.. run tag @s remove knight_ult_tag
        execute at @s if score @s knight_ult_count matches 65.. run scoreboard players set @s knight_ult_count 0
        execute at @s if score @s knight_ult_count matches 65.. run effect clear @s levitation
    #一定値でマーカーをkill
        execute at @e[type=marker] if score @s knight_special_count matches 50.. run kill @s
    #ウルトCT終了処理
        execute if score @s ult_cool matches 1 run function pvp_data:pvpfunctions/jobs/knight/ult/fin

