#> pvp_data:pvpfunctions/jobs/knight/ult/fin
#
# 騎士ウルトCT終了処理
#
# @within function pvp_data:pvpfunctions/jobs/knight/ult/main
    
    scoreboard players set @s ult_cool 0
    execute at @s run playsound block.beacon.deactivate player @s ~ ~ ~ 0.5
    item replace entity @s hotbar.3 with carrot_on_a_stick{display:{Name:'{"text":"騎士ウルト","color":"yellow","bold":true,"italic":false}',Lore:['{"text":"空間を割き、すべてを切り捨て進んでゆく。","color":"white","italic":false}','{"text":"悪には慈悲などない。","color":"white","italic":false}','{"text":"─────発動効果─────","color":"gray","italic":false}','[{"text":"\\uE010","color":"white","italic":false},{"text":"斬撃継続時間","color":"white","bold":true,"italic":false},{"text":"(0:10)","color":"dark_green","bold":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"必要詠唱時間","color":"white","bold":false},{"text":" 0:03","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"クールタイム","color":"white","bold":true},{"text":"2:00","color":"dark_green","bold":false}]']},CustomModelData:33,data: ["no_drop"]} 1