#> pvp_data:pvpfunctions/jobs/guardian/ult/ult_fin
#
# 守護者ウルトCT終了処理
#
# @internal

#守護者終了処理
scoreboard players set @s ult_cool -1
execute at @s run playsound entity.generic.extinguish_fire player @s ~ ~ ~ 0.5 
item replace entity @s hotbar.3 with carrot_on_a_stick{display:{Name:'{"text":"攻防一体","color":"yellow","bold":true,"italic":false}',Lore:['{"text":"時には限界を超える必要がある。","color":"white","italic":false}','{"text":"圧倒的な攻撃と防御を誇る守護者へと進化する。","color":"white","italic":false}','{"text":"─────発動効果─────","color":"gray","italic":false}','[{"text":"\\uE016","color":"white","italic":false},{"text":"鈍化解除","color":"white","bold":true,"italic":false},{"text":"(0:20)","color":"dark_green","bold":false}]','[{"text":"\\uE010","color":"white","bold":false,"italic":false},{"text":"攻撃力","color":"white","bold":true,"italic":false},{"text":"+6","color":"dark_green","bold":true},{"text":"(0:20)","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE014","color":"white","italic":false},{"text":"耐性","color":"white","bold":true,"italic":false},{"text":"+60%","color":"dark_green","bold":true},{"text":"(0:20)","color":"dark_green","bold":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"効果時間","color":"white","bold":false},{"text":" 0:20","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"クールタイム","color":"white","bold":true},{"text":"1:30","color":"dark_green","bold":false}]']},CustomModelData:83} 1