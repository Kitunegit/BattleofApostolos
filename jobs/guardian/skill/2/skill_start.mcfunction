#発動演出
    execute at @s run playsound block.anvil.place player @a[distance=..10] ~ ~ ~ 0.5 0.8
    execute at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0.00001 0.0001 0.00001 0.5 5
    execute at @s run particle minecraft:crit ~ ~ ~ 0 0 0 0.5 15
#効果付与
    effect give @s minecraft:absorption 15 4 true
#その他処理
    item replace entity @s hotbar.2 with barrier{display:{Name:'{"text":"クールタイム中です","color":"blue","bold":true,"italic":false}',Lore:['{"text":"不屈の心を思い出し","color":"white","italic":false}','{"text":"HP上限を引き上げる","color":"white","italic":false}','{"text":"─────発動効果─────","color":"gray","italic":false}','[{"text":"\\uE012","color":"white","italic":false},{"text":"体力増加","color":"white","bold":true,"italic":false},{"text":"+20","color":"dark_green","bold":true,"italic":false},{"text":"(0:15)","color":"dark_green","bold":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"効果時間","color":"white","bold":false},{"text":" 0:15","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"クールタイム","color":"white","bold":true},{"text":"1:00","color":"dark_green","bold":false}]']},CustomModelData:82} 61
    scoreboard players set @s skill_2_cool 1200
    scoreboard players set @s r_click 0