#発動演出
    execute at @s run particle dust 0.494 0.212 0.02 1.2 ~ ~0.5 ~ 2 1.25 2 1 60 force
    execute at @s run playsound minecraft:item.trident.throw player @a[distance=..10] ~ ~ ~ 1 1.2
    effect give @s levitation 1 65 true
#バリア付与
    item replace entity @s hotbar.2 with barrier{display:{Name:'{"text":"クールタイム中です","color":"blue","bold":true,"italic":false}',Lore:['{"text":"素早く飛翔し、落下！","color":"white","italic":false}','{"text":"着地時に攻撃とノックバックを発生させる。","color":"white","italic":false}','{"text":"─────発動効果─────","color":"gray","italic":false}','[{"text":"\\uE010","color":"white","italic":false},{"text":"落下攻撃","color":"white","bold":true,"italic":false},{"text":"+5","color":"dark_green","bold":false}]','[{"text":"\\uE010","color":"white","italic":false},{"text":"効果範囲","color":"white","bold":false},{"text":"着地時周囲半径4ブロック","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"クールタイム","color":"white","bold":true},{"text":"0:10","color":"dark_green","bold":false}]']},CustomModelData:42} 11
#スコア設定
    scoreboard players set @s warrior_skill_2_timer 20
    scoreboard players set @s skill_2_cool 20
    scoreboard players set @s r_click 0