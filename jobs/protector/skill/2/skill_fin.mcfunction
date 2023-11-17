#守護者終了処理
execute at @s run playsound entity.generic.extinguish_fire player @s ~ ~ ~ 0.5 
item replace entity @s hotbar.2 with carrot_on_a_stick{CustomModelData:82,display:{Name:'{"text":"緊急装甲","color":"blue","bold":true}',Lore:['{"text":"一定時間体力が増加する。","color":"white"}']}}