function pvp_sc:set/reset

scoreboard players set @s generic.attack 250
scoreboard players set @s generic.defense 0
scoreboard players set @s generic.speed 120
function pvp_data:pvpfunctions/systems/status/apply {apply_effect:"generic.max_health",apply_num:34}
function pvp_data:pvpfunctions/systems/status/apply {apply_effect:"generic.attack_speed",apply_num:133}

scoreboard players set @s jobscore 6

scoreboard players set @s skill_1_cool 0
scoreboard players set @s skill_2_cool 0
scoreboard players set @s ult_cool 0
scoreboard players set @s special_cool 0
scoreboard players add @s assassin_used 1

item replace entity @s armor.chest with leather_chestplate
item replace entity @s armor.legs with leather_leggings
item replace entity @s armor.feet with leather_boots

item replace entity @s hotbar.0 with carrot_on_a_stick{display:{Name:'{"text":"暗殺者の死鎌","color":"dark_green","bold":true,"italic":false}',Lore:['{"text":"こっそりと","color":"white","italic":false}','{"text":"命を刈り取ろう。","color":"white","italic":false}','{"text":"─────武器効果─────","color":"gray","italic":false}','[{"text":"\\uE010","color":"white","italic":false},{"text":"物理ダメージ","color":"white","bold":true,"italic":false},{"text":"+2","color":"green","bold":false,"italic":false}]','[{"text":"\\uE015","color":"white","italic":false},{"text":"クリティカル攻撃","color":"white","bold":true,"italic":false},{"text":"+3","color":"green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"振り速度","color":"white","bold":true},{"text":"0.5s","color":"green","bold":false}]']},Unbreakable:1b,CustomModelData:6,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:1,Operation:0,UUID:[I;1825244844,1313685780,-2078173173,443476713],Slot:"mainhand"}],HideFlags:6,weapon: {damage: {amount: 6}}} 1
item replace entity @s hotbar.1 with carrot_on_a_stick{display:{Name:'{"text":"極速の力","color":"blue","bold":true,"italic":false}',Lore:['{"text":"究極の速度。","color":"white","italic":false}','{"text":"結構酔いそう","color":"white","italic":false}','{"text":"─────発動効果─────","color":"gray","italic":false}','[{"text":"\\uE014","color":"white","italic":false},{"text":"速度","color":"white","bold":true,"italic":false},{"text":"+140%","color":"dark_green","bold":true},{"text":"(0:10)","color":"dark_green","bold":false}]','[{"text":"\\uE010","color":"white","bold":false,"italic":false},{"text":"攻撃力","color":"white","bold":true,"italic":false},{"text":"+3","color":"dark_green","bold":true},{"text":"(0:10)","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"効果時間","color":"white","bold":false},{"text":" 0:10","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"クールタイム","color":"white","bold":true},{"text":"0:20","color":"dark_green","bold":false}]']},CustomModelData:61} 1
item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"漆黒の瞳","color":"blue","bold":true,"italic":false}',Lore:['{"text":"漆黒の靄を飛ばす。","color":"white","italic":false}','{"text":"この靄に触れたら視界を奪われる。","color":"white","italic":false}','{"text":"─────発動効果─────","color":"gray","italic":false}','[{"text":"漆黒の靄を飛ばす。","color":"white","bold":true,"italic":false}]','[{"text":"\\uE016","color":"white","italic":false},{"text":"盲目","color":"white","bold":true,"italic":false},{"text":"(0:05)","color":"dark_red","bold":true,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"クールタイム","color":"white","bold":true},{"text":"1:00","color":"dark_green","bold":false}]']},CustomModelData:62} 1
item replace entity @s hotbar.3 with carrot_on_a_stick{CustomModelData:63,display:{Name:'{"text":"奇襲突撃　滅殺","color":"yellow","bold":true,"italic":false}',Lore:['{"text":"暗殺者の究極の力","color":"white","italic":false}','{"text":"背後から一心不乱に突撃する。","color":"white","italic":false}','{"text":"─────発動条件─────","color":"gray","italic":false}','{"text":"敵の背後にいる時のみ発動可能","color":"white","italic":false}','{"text":"─────発動効果─────","color":"gray","italic":false}','[{"text":"\\uE010","color":"white","italic":false},{"text":"突進攻撃:","color":"white","bold":true,"italic":false},{"text":"999","color":"dark_green","bold":true,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"必要詠唱時間","color":"white","bold":false},{"text":"0:05","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"クールタイム","color":"white","bold":true},{"text":"2:00","color":"dark_green","bold":false}]']}} 1
item replace entity @s hotbar.4 with cooked_cod 64
item replace entity @s hotbar.7 with stick{CustomModelData:64,display:{Name:'{"text":"瞬撃","color":"blue","bold":true,"italic":false}',Lore:['{"text":"背後に回り込む。","color":"white","italic":false}','{"text":"後ろからグサッ！","color":"white","italic":false}','{"text":"─────発動効果─────","color":"gray","italic":false}','[{"text":"大鎌右クリで発動","color":"white","bold":true,"italic":false}]','[{"text":"\\uE010","color":"white","italic":false},{"text":"背後ｶﾗ攻撃:","color":"white","bold":true,"italic":false},{"text":"8","color":"dark_green","bold":true,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"前隙","color":"white","bold":false},{"text":"0:01","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"クールタイム","color":"white","bold":true},{"text":"0:15","color":"dark_green","bold":false}]']}} 1

scoreboard players set @s ult_cool 90
scoreboard players set @s ult_cool_data 90