function pvp_sc:set/reset

scoreboard players set @s generic.attack 100
scoreboard players set @s generic.defense 0
scoreboard players set @s generic.speed 110
function pvp_data:pvpfunctions/systems/status/apply {apply_effect:"generic.max_health",apply_num:33}

scoreboard players set @s jobscore 7

scoreboard players set @s archer_arrow_count 16
scoreboard players set @s skill_1_cool 0
scoreboard players set @s skill_2_cool 0
scoreboard players set @s ult_cool 0

scoreboard players set @s archer_passive_cool 1
scoreboard players set @s archer_arrow_num_con 0
scoreboard players set @s archer_arrow_num 0
scoreboard players add @s archer_used 1

item replace entity @s armor.head with leather_helmet{Unbreakable:1b,data: ["no_drop"]}
item replace entity @s armor.chest with leather_chestplate{Unbreakable:1b,data: ["no_drop"]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1b,data: ["no_drop"]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1b,data: ["no_drop"]}

item replace entity @s hotbar.0 with bow{display:{Name:'{"text":"弓兵の長弓","color":"dark_green","bold":true,"italic":false}',Lore:['{"text":"よーく狙って","color":"white","italic":false}','{"text":"敵を打ち抜こう。","color":"white","italic":false}','{"text":"─────武器効果─────","color":"gray","italic":false}','[{"text":"\\uE013","color":"white","italic":false},{"text":"射撃ダメージ","color":"white","bold":true,"italic":false},{"text":"+10","color":"green","bold":false,"italic":false}]']},Unbreakable:1b,CustomModelData:7,HideFlags:6,data: ["no_drop"]} 1
item replace entity @s hotbar.1 with carrot_on_a_stick{display:{Name:'{"text":"彩りの矢","color":"blue","bold":true,"italic":false}',Lore:['{"text":"真の弓兵はどんな矢も","color":"white","italic":false}','{"text":"使いこなす。","color":"white","italic":false}','{"text":"─────発動効果─────","color":"gray","italic":false}','[{"text":"\\uE019","color":"white","italic":false},{"text":"ランダムな矢を獲得","color":"white","bold":true,"italic":false},{"text":"x1","color":"dark_green","bold":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"効果時間","color":"white","bold":false},{"text":"--","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"クールタイム","color":"white","bold":true},{"text":"0:10","color":"dark_green","bold":false}]']},CustomModelData:71,data: ["no_drop"]} 1
item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"敵影探知","color":"blue","bold":true,"italic":false}',Lore:['{"text":"狙撃主のお供。","color":"white","italic":false}','{"text":"敵影を即座に探知できる。","color":"white","italic":false}','{"text":"─────発動効果─────","color":"gray","italic":false}','[{"text":"\\uE013","color":"white","italic":false},{"text":"着弾付近の敵マーク","color":"white","bold":true,"italic":false},{"text":"(0:05)","color":"dark_green","bold":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"効果時間","color":"white","bold":false},{"text":" 0:05","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"クールタイム","color":"white","bold":true},{"text":"0:20","color":"dark_green","bold":false}]']},CustomModelData:72,data: ["no_drop"]} 1
item replace entity @s hotbar.3 with barrier{display:{Name:'{"text":"クールタイム中です","color":"blue","bold":true,"italic":false}',Lore:['{"text":"大空へ羽ばたこう","color":"white","italic":true}','{"text":"まぁ落ちるけどネ…","color":"white","italic":false}','{"text":"─────発動効果─────","color":"gray","italic":false}','[{"text":"\\uE013","color":"white","italic":false},{"text":"着弾付近へ引き寄せられる。","color":"white","bold":true,"italic":false},{"text":"(0:10)","color":"dark_green","bold":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"効果時間","color":"white","bold":false},{"text":" 0:10","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"クールタイム","color":"white","bold":true},{"text":"2:00","color":"dark_green","bold":false}]']},CustomModelData:73,data: ["no_drop"]}
item replace entity @s hotbar.4 with cooked_cod{data: ["no_drop"]} 64

scoreboard players set @s ult_cool 60
scoreboard players set @s ult_cool_data 60