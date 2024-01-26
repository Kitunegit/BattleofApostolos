function pvp_sc:set/reset
scoreboard players set @s jobscore 2
scoreboard players set @s skill_1_cool 0
scoreboard players set @s skill_2_cool 0
scoreboard players set @s ult_cool 0
scoreboard players add @s wizard_used 1

scoreboard players set @s generic.attack.base 100
scoreboard players set @s generic.defense.base 100
scoreboard players set @s generic.attack_speed 1000
scoreboard players set @s generic.speed 100
scoreboard players set @s generic.max_health 35
function pvp_data:pvpfunctions/systems/status/update

item replace entity @s armor.head with leather_helmet{Unbreakable:1b,data: ["no_drop"]}
item replace entity @s armor.chest with leather_chestplate{Unbreakable:1b,data: ["no_drop"]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1b,data: ["no_drop"]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1b,data: ["no_drop"]}

item replace entity @s hotbar.0 with carrot_on_a_stick{display:{Name:'{"text":"魔導士の杖","color":"dark_green","bold":true,"italic":false}',Lore:['{"text":"魔法の源。","color":"white","italic":false}','{"text":"闇の力を手にするのダ！","color":"white","italic":false}','{"text":"─────武器効果─────","color":"gray","italic":false}','[{"text":"\\uE010","color":"white","italic":false},{"text":"魔法ダメージ","color":"white","bold":true,"italic":false},{"text":"+3","color":"green","bold":false,"italic":false}]','[{"text":"\\uE015","color":"white","italic":false},{"text":"クリティカル","color":"white","bold":true,"italic":false},{"text":"+5","color":"green","bold":false,"italic":false}]']},Unbreakable:1b,CustomModelData:2,HideFlags:6,data: ["no_drop"]} 1
item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"魔道光線","color":"blue","bold":true,"italic":false}',Lore:['{"text":"前方に光線を放つ。","color":"white","italic":false}','{"text":"圧倒的な破壊力を楽しもう。","color":"white","italic":false}','{"text":"─────発動効果─────","color":"gray","italic":false}','[{"text":"\\uE020","color":"white","italic":false},{"text":"魔導光線","color":"white","bold":true,"italic":false},{"text":"+7","color":"dark_green","bold":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"効果時間","color":"white","bold":false},{"text":"--","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"クールタイム","color":"white","bold":true},{"text":"0:15","color":"dark_green","bold":false}]']},CustomModelData:21,data: ["no_drop"]} 1
item replace entity @s hotbar.4 with cooked_cod{data: ["no_drop"]} 64

scoreboard players set @s ult_cool 90
scoreboard players set @s ult_cool_data 150