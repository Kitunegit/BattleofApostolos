#騎士ウルト終了処理
    tag @s remove knight_ult_tag
    scoreboard players set @s ult_cool -1
    execute at @s run playsound ui.button.click player @s ~ ~ ~ 0.5
    item replace entity @s hotbar.3 with carrot_on_a_stick{display:{Name:'{"text":"騎士ウルト","color":"yellow","bold":true,"italic":false}',Lore:['{"text":"アーチャーから引っ張ってきた","color":"white","italic":true}','{"text":"てへ","color":"white","italic":false}','{"text":"─────発動効果─────","color":"gray","italic":false}','[{"text":"\\uE013","color":"white","italic":false},{"text":"着弾付近へ引き寄せられる。","color":"white","bold":true,"italic":false},{"text":"(0:10)","color":"dark_green","bold":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"効果時間","color":"white","bold":false},{"text":" 0:10","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"クールタイム","color":"white","bold":true},{"text":"2:00","color":"dark_green","bold":false}]']},CustomModelData:33} 1