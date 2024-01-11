#発動演出
    effect give @s slowness 8 155 true
    effect give @s jump_boost 8 128 true
    
#バリア付与
    item replace entity @s hotbar.3 with barrier{CustomModelData:43,display:{Name:'{"text":"クールタイム中です","color":"yellow","bold":true,"italic":false}',Lore:['{"text":"深散波の究極系。","color":"white","italic":false}','{"text":"高くジャンプし、高威力の波動を放つ。","color":"white","italic":false}','{"text":"─────発動効果─────","color":"gray","italic":false}','[{"text":"\\uE010","color":"white","italic":false},{"text":"飛翔攻撃:","color":"white","bold":true,"italic":false},{"text":"999","color":"dark_green","bold":true,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"必要詠唱時間","color":"white","bold":false},{"text":"0:04","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"クールタイム","color":"white","bold":true},{"text":"4:00","color":"dark_green","bold":false}]']}} 1
#スコア設定
    scoreboard players set @s warrior_ult_timer 120
    scoreboard players set @s ult_cool 120
    scoreboard players set @s r_click 0