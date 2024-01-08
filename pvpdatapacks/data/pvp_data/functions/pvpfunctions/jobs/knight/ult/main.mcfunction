
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
        item replace entity @s hotbar.3 with barrier{display:{Name:'{"text":"クールタイム中です","color":"blue","bold":true,"italic":false}',Lore:['{"text":"空間を割き、すべてを切り捨て進んでゆく。","color":"white","italic":false}','{"text":"悪には慈悲などない。","color":"white","italic":false}','{"text":"─────発動効果─────","color":"gray","italic":false}','[{"text":"\\uE010","color":"white","italic":false},{"text":"斬撃継続時間","color":"white","bold":true,"italic":false},{"text":"(0:10)","color":"dark_green","bold":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"必要詠唱時間","color":"white","bold":false},{"text":" 0:03","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"クールタイム","color":"white","bold":true},{"text":"2:00","color":"dark_green","bold":false}]']},CustomModelData:33} 1

