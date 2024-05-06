#弓兵ウルト開始処理
    #発動演出
        execute at @s run playsound minecraft:item.trident.thunder player @a[distance=..10] ~ ~ ~ 0.7 1.5
    #効果付与
        scoreboard players set @s ult_count 100
    #その他処理
        item replace entity @s hotbar.3 with barrier{display:{Name:'{"text":"クールタイム中です","color":"blue","bold":true,"italic":false}',Lore:['{"text":"大空へ羽ばたこう","color":"white","italic":true}','{"text":"まぁ落ちるけどネ…","color":"white","italic":false}','{"text":"─────発動効果─────","color":"gray","italic":false}','[{"text":"\\uE013","color":"white","italic":false},{"text":"着弾付近へ引き寄せられる。","color":"white","bold":true,"italic":false},{"text":"(0:10)","color":"dark_green","bold":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"効果時間","color":"white","bold":false},{"text":" 0:10","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"クールタイム","color":"white","bold":true},{"text":"2:00","color":"dark_green","bold":false}]']},CustomModelData:73}
        scoreboard players set @s ult_cool 60