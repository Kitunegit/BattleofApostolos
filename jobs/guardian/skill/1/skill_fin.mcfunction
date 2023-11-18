#守護者終了処理
execute at @s run playsound entity.generic.extinguish_fire player @s ~ ~ ~ 0.5 
item replace entity @s hotbar.1 with carrot_on_a_stick{CustomModelData:81,display:{Name:'{"text":"防御特化","color":"blue","bold":true}',Lore:['{"text":"一定時間遅くなるが硬くなる。","color":"white"}']}}