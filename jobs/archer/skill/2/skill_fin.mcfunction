#守護者終了処理
execute at @s run playsound entity.generic.extinguish_fire player @s ~ ~ ~ 0.5 
item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"敵影探知","color":"blue","bold":true,"italic":false}',Lore:['{"text":"狙撃主のお供。","color":"white","italic":false}','{"text":"敵影を即座に探知できる。","color":"white","italic":false}','{"text":"─────発動効果─────","color":"gray","italic":false}','[{"text":"\\uE013","color":"white","italic":false},{"text":"着弾付近の敵マーク","color":"white","bold":true,"italic":false},{"text":"(0:05)","color":"dark_green","bold":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"効果時間","color":"white","bold":false},{"text":" 0:05","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"クールタイム","color":"white","bold":true},{"text":"0:20","color":"dark_green","bold":false}]']},CustomModelData:72} 1