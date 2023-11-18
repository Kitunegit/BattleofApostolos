#守護者終了処理
scoreboard players set @s ult_cool -1
execute at @s run playsound entity.generic.extinguish_fire player @s ~ ~ ~ 0.5 
item replace entity @s hotbar.3 with carrot_on_a_stick{CustomModelData:83,display:{Name:'{"text":"攻防一体","color":"yellow","bold":true}',Lore:['{"text":"移動速度低下を解除し攻撃力と耐性が強化される。","color":"white"}']}}