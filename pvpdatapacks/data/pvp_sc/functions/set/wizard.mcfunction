function pvp_sc:set/reset
scoreboard players set @s jobscore 2
scoreboard players set @s skill_1_cool 0
scoreboard players set @s skill_2_cool 0
scoreboard players set @s ult_cool 0
scoreboard players add @s wizard_used 1

scoreboard players set @s generic.attack 150
scoreboard players set @s generic.defense 100
scoreboard players set @s generic.speed 100
scoreboard players set @s generic.max_health 35

item replace entity @s armor.head with leather_helmet{Unbreakable:1b}
item replace entity @s armor.chest with leather_chestplate{Unbreakable:1b}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1b}
item replace entity @s armor.feet with leather_boots{Unbreakable:1b}

item replace entity @s hotbar.0 with carrot_on_a_stick{display:{Name:'{"text":"魔導士の杖","color":"dark_green","bold":true,"italic":false}',Lore:['{"text":"魔法の源。","color":"white","italic":false}','{"text":"闇の力を手にするのダ！","color":"white","italic":false}','{"text":"─────武器効果─────","color":"gray","italic":false}','[{"text":"\\uE010","color":"white","italic":false},{"text":"魔法ダメージ","color":"white","bold":true,"italic":false},{"text":"+3","color":"green","bold":false,"italic":false}]','[{"text":"\\uE015","color":"white","italic":false},{"text":"クリティカル","color":"white","bold":true,"italic":false},{"text":"+5","color":"green","bold":false,"italic":false}]']},Unbreakable:1b,CustomModelData:2,HideFlags:6} 1
item replace entity @s hotbar.4 with cooked_cod 64

effect give @s strength infinite 0 true

scoreboard players set @s ult_cool 120
scoreboard players set @s ult_cool_data 120