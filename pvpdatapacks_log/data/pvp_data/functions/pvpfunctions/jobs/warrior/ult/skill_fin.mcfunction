#> pvp_data:pvpfunctions/jobs/warrior/ult/skill_fin
#
# 戦士ウルトCT終了処理
#
# @internal

# CTリセット
    scoreboard players set @s ult_cool 0
# 演出
    execute at @s run playsound entity.generic.extinguish_fire player @s ~ ~ ~ 0.5 
# スロットにセット
    item replace entity @s hotbar.3 with carrot_on_a_stick{CustomModelData:43,display:{Name:'{"text":"究極奥義 殺波動","color":"yellow","bold":true,"italic":false}',Lore:['{"text":"深散波の究極系。","color":"white","italic":false}','{"text":"高くジャンプし、高威力の波動を放つ。","color":"white","italic":false}','{"text":"─────発動効果─────","color":"gray","italic":false}','[{"text":"\\uE010","color":"white","italic":false},{"text":"飛翔攻撃:","color":"white","bold":true,"italic":false},{"text":"999","color":"dark_green","bold":true,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"必要詠唱時間","color":"white","bold":false},{"text":"0:04","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"クールタイム","color":"white","bold":true},{"text":"4:00","color":"dark_green","bold":false}]']},data: ["no_drop"]} 1