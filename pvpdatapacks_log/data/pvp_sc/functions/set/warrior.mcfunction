function pvp_sc:set/reset
scoreboard players set @s jobscore 4
scoreboard players set @s skill_1_cool 0
scoreboard players set @s skill_2_cool 0
scoreboard players set @s ult_cool 0
scoreboard players set @s special_cool 0
scoreboard players add @s warrior_used 1

scoreboard players set @s skill1.ct_data 30
scoreboard players set @s skill2.ct_data 17

scoreboard players set @s generic.attack.base 400
scoreboard players set @s generic.defense.base 300
scoreboard players set @s generic.speed.base 80
scoreboard players set @s generic.max_health.base 40
scoreboard players set @s generic.attack_speed.base 60
function pvp_data:pvpfunctions/systems/status/update
function #score_to_attribute:reset

item replace entity @s armor.head with iron_helmet{Unbreakable:1b,data: ["no_drop"]}
item replace entity @s armor.chest with iron_chestplate{Unbreakable:1b,data: ["no_drop"]}
item replace entity @s armor.legs with iron_leggings{Unbreakable:1b,data: ["no_drop"]}
item replace entity @s armor.feet with iron_boots{Unbreakable:1b,data: ["no_drop"]}

item replace entity @s hotbar.0 with carrot_on_a_stick{display:{Name:'{"text":"戦士の戦斧","color":"dark_green","bold":true,"italic":false}',Lore:['{"text":"戦士の重たい斧。","color":"white","italic":false}','{"text":"SuperBattleAxe…","color":"white","italic":false}','{"text":"─────武器効果─────","color":"gray","italic":false}','[{"text":"\\uE010","color":"white","italic":false},{"text":"物理攻撃","color":"white","bold":true,"italic":false},{"text":"9","color":"green","bold":false,"italic":false}]','[{"text":"\\uE015","color":"white","italic":false},{"text":"ジャンプ攻撃","color":"white","bold":true,"italic":false},{"text":"13.5","color":"green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"振り速度","color":"white","bold":true},{"text":"1.5s","color":"green","bold":false}]']},CustomModelData:4,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:1,Operation:0,UUID:[I;-384992786,1662206373,-1768952047,-1602820031],Slot:"mainhand"}],weapon: {damage: {amount: 5}},data: ["no_drop"]} 1
item replace entity @s hotbar.1 with carrot_on_a_stick{display:{Name:'{"text":"死なば諸共","color":"blue","bold":true,"italic":false}',Lore:['{"text":"死ぬぐらいなら最後に","color":"white","italic":false}','{"text":"でっけぇ斧振り下ろして爪痕残そうぜ！","color":"white","italic":false}','{"text":"─────発動効果─────","color":"gray","italic":false}','[{"text":"\\uE010","color":"white","italic":false},{"text":"前方叩き付け","color":"white","bold":true,"italic":false},{"text":"+10~25","color":"dark_green","bold":false}]','[{"text":"\\uE010","color":"white","italic":false},{"text":"効果範囲","color":"white","bold":false},{"text":"前方5ブロック","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"クールタイム","color":"white","bold":true},{"text":"0:15~0:20","color":"dark_green","bold":false}]']},CustomModelData:41,data: ["no_drop"]} 1
item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"深散波","color":"blue","bold":true,"italic":false}',Lore:['{"text":"素早く飛翔し、落下！","color":"white","italic":false}','{"text":"着地時に攻撃とノックバックを発生させる。","color":"white","italic":false}','{"text":"─────発動効果─────","color":"gray","italic":false}','[{"text":"\\uE010","color":"white","italic":false},{"text":"落下攻撃","color":"white","bold":true,"italic":false},{"text":"+5","color":"dark_green","bold":false}]','[{"text":"\\uE010","color":"white","italic":false},{"text":"効果範囲","color":"white","bold":false},{"text":"着地時周囲半径4ブロック","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"クールタイム","color":"white","bold":true},{"text":"0:10","color":"dark_green","bold":false}]']},CustomModelData:42,data: ["no_drop"]} 1
item replace entity @s hotbar.3 with carrot_on_a_stick{CustomModelData:43,display:{Name:'{"text":"究極奥義 殺波動","color":"yellow","bold":true,"italic":false}',Lore:['{"text":"深散波の究極系。","color":"white","italic":false}','{"text":"高くジャンプし、高威力の波動を放つ。","color":"white","italic":false}','{"text":"─────発動効果─────","color":"gray","italic":false}','[{"text":"\\uE010","color":"white","italic":false},{"text":"飛翔攻撃:","color":"white","bold":true,"italic":false},{"text":"999","color":"dark_green","bold":true,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"必要詠唱時間","color":"white","bold":false},{"text":"0:04","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"クールタイム","color":"white","bold":true},{"text":"4:00","color":"dark_green","bold":false}]']},data: ["no_drop"]} 1
item replace entity @s hotbar.4 with cooked_cod{data: ["no_drop"]} 64
item replace entity @s hotbar.8 with stick{display:{Name:'{"text":"死なば諸とも","color":"blue","bold":true,"italic":false}',Lore:['{"text":"死ぬぐらいなら最後に","color":"white","italic":false}','{"text":"でっけぇ斧振り下ろして爪痕残そうぜ！","color":"white","italic":false}','{"text":"─────発動効果─────","color":"gray","italic":false}','[{"text":"\\uE010","color":"white","italic":false},{"text":"前方叩き付け","color":"white","bold":true,"italic":false},{"text":"+10~25","color":"dark_green","bold":false}]','[{"text":"\\uE010","color":"white","italic":false},{"text":"効果範囲","color":"white","bold":false},{"text":"前方5ブロック","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"クールタイム","color":"white","bold":true},{"text":"0:15~0:20","color":"dark_green","bold":false}]']},CustomModelData:44,data: ["no_drop"]} 1

scoreboard players set @s ult_cool 120
scoreboard players set @s ult_cool_data 120