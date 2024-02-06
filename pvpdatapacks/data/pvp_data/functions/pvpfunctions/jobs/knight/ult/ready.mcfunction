#> pvp_data:pvpfunctions/jobs/knight/ult/ready
#
# 騎士ウルトCT終了時の処理
#
# @internal

# CTを0に
scoreboard players set @s ult_cool 0

# 音声
execute at @s run playsound entity.generic.extinguish_fire player @s ~ ~ ~ 0.5 

# アイテムを付与
item replace entity @s hotbar.3 with carrot_on_a_stick{CustomModelData:33,display:{Name:'{"text":"一刀両断　斬","color":"yellow","bold":true,"italic":false}',Lore:['{"text":"深散波の究極系。","color":"white","italic":false}','{"text":"すべてを断つ斬撃を前方に飛ばす。","color":"white","italic":false}','{"text":"─────発動効果─────","color":"gray","italic":false}','[{"text":"\\uE010","color":"white","italic":false},{"text":"斬撃攻撃:","color":"white","bold":true,"italic":false},{"text":"20","color":"dark_green","bold":true,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"必要詠唱時間","color":"white","bold":false},{"text":"0:03","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"クールタイム","color":"white","bold":true},{"text":"2:00","color":"dark_green","bold":false}]']},data: ["no_drop"]} 1