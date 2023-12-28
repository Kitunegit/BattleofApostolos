
#発動処理
execute if predicate pvp_data:r_click/cmd33 if score @s ult_cool matches ..0 if score @s r_click matches 1.. run tag @s add knight_ult_tag
execute if predicate pvp_data:r_click/cmd33 if score @s knight_ult_count matches 61 run function pvp_data:pvpfunctions/jobs/knight/ult/start


execute at @e[type=marker,tag=knight_ult] run tp @s ^ ^ ^0.5
execute at @e[type=marker,tag=knight_ult] run playsound entity.player.attack.sweep player @a[distance=..15] ~ ~ ~ 1 1

#ため演出/処理
    #チャージ中のパーティクル
    execute as @s[tag=knight_ult_tag,scores={knight_ult_count=..58}] at @s run particle dust 0.557 0.859 0.859 1 ~ ~0.2 ~ 0.8 1.2 0.8 1 8 force
    #常時スコア
    scoreboard players add @a[scores={jobscore=3},tag=knight_ult_tag] knight_ult_count 1
    #音&動けなくする
    execute at @s[tag=knight_ult_tag,scores={knight_ult_count=1}] run playsound block.beacon.activate player @a[distance=..20] ~ ~ ~ 1 0.8
    execute as @s[tag=knight_ult_tag,scores={knight_ult_count=1}] at @s run effect give @s slowness 3 255 true
    execute as @s[tag=knight_ult_tag,scores={knight_ult_count=1..}] at @s unless block ~ ~-1 ~ air run effect give @s levitation 1 128 true

#斬撃演出
    #パーティクル&ダメージ
    execute as @e[type=marker,tag=knight_ult] run function pvp_data:pvpfunctions/jobs/knight/ult/slash
    #常時スコア
    scoreboard players add @e[type=marker,tag=knight_ult] knight_ult_count 1
    scoreboard players add @e[type=marker,tag=knight_ult_player] knight_ult_count 1


#終了演出
    #プレイヤーのタグ,スコア消し
    execute as @s[scores={knight_ult_count=65..}] at @s run tag @s remove knight_ult_tag
    execute as @s[scores={knight_ult_count=65..}] at @s run scoreboard players set @s knight_ult_count 0
    #一定値でマーカーをkill
    execute as @e[type=marker,scores={knight_ult_count=100..}] at @s run kill @s
    #ウルトCT終了処理
    execute if score @s ult_cool matches 0 run function pvp_data:pvpfunctions/jobs/knight/ult/fin
