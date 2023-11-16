#守護者終了処理
execute at @s run playsound entity.generic.extinguish_fire player @s ~ ~ ~ 
item replace entity @s hotbar.1 with carrot_on_a_stick{CustomModelData:81}