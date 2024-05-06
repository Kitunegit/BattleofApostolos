function pvp_sc:set/reset
scoreboard players set @s jobscore 3
scoreboard players set @s skill_1_cool 0
scoreboard players set @s skill_2_cool 0
scoreboard players set @s ult_cool 0
scoreboard players add @s knight_used 1
scoreboard players set @s special.ct_data 100
scoreboard players set @s skill1.ct_data 19
scoreboard players set @s skill2.ct_data 25
scoreboard players set @s generic.attack.base 250
scoreboard players set @s generic.defense.base 150
scoreboard players set @s generic.speed.base 10
scoreboard players set @s generic.max_health.base 35
scoreboard players set @s generic.attack_speed.base 133
scoreboard players set @s generic.attack.base 300
scoreboard players set @s generic.defense.base 200
scoreboard players set @s generic.speed.base 100
scoreboard players set @s generic.max_health.base 39
scoreboard players set @s generic.attack_speed.base 140
scoreboard players set @s generic.healing_speed 50
function pvp_data:pvpfunctions/systems/status/update
function #score_to_attribute:reset

item replace entity @s armor.head with minecraft:leather_helmet[minecraft:unbreakable={},minecraft:custom_data={data:["no_drop"]}]
item replace entity @s armor.chest with minecraft:leather_chestplate[minecraft:unbreakable={},minecraft:custom_data={data:["no_drop"]}]
item replace entity @s armor.legs with minecraft:leather_leggings[minecraft:unbreakable={},minecraft:custom_data={data:["no_drop"]}]
item replace entity @s armor.feet with minecraft:leather_boots[minecraft:unbreakable={},minecraft:custom_data={data:["no_drop"]}]

item replace entity @s hotbar.0 with minecraft:carrot_on_a_stick[minecraft:custom_model_data=3,minecraft:lore=['{"text":"騎士の持つこの聖剣が、","color":"white","italic":false}','{"text":"悪しきものを断ち切るだろう。","color":"white","italic":false}','{"text":"─────武器効果─────","color":"gray","italic":false}','[{"text":"\\uE010","color":"white","italic":false},{"text":"物理ダメージ","color":"white","bold":true,"italic":false},{"text":"+3","color":"green","bold":false,"italic":false}]','[{"text":"\\uE015","color":"white","italic":false},{"text":"クリティカル","color":"white","bold":true,"italic":false},{"text":"+5","color":"green","bold":false,"italic":false}]'],minecraft:attribute_modifiers={modifiers:[{amount:1,name:"generic.attack_damage",operation:"add_value",slot:"mainhand",type:"generic.attack_damage",uuid:[I;43329248,1324630099,-1103342015,-654212017]},{amount:-0.25d,name:"generic.attack_speed",operation:"add_value",slot:"mainhand",type:"generic.attack_speed",uuid:[I;756522232,-1910814835,-1890803011,-1932999027]}],show_in_tooltip:0b},minecraft:custom_name='{"text":"騎士の聖剣","color":"dark_green","bold":true,"italic":false}',minecraft:custom_data={data:["no_drop"],weapon:{damage:{amount:6}}}] 1
item replace entity @s hotbar.1 with minecraft:carrot_on_a_stick[minecraft:custom_model_data=31,minecraft:lore=['{"text":"騎士が度重なる鍛錬で得た、","color":"white","italic":false}','{"text":"極意の技","color":"white","italic":false}','{"text":"─────発動効果─────","color":"gray","italic":false}','[{"text":"\\uE010","color":"white","italic":false},{"text":"攻撃速度","color":"white","bold":true,"italic":false},{"text":"x5","color":"dark_green","bold":false},{"text":"(0:15)","color":"dark_green","bold":false}]','[{"text":"\\uE018","color":"white","italic":false},{"text":"移動速度","color":"white","bold":true,"italic":false},{"text":"-20%","color":"dark_red","bold":false},{"text":"(0:15)","color":"dark_green","bold":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"効果時間","color":"white","bold":false},{"text":"0:15","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"クールタイム","color":"white","bold":true},{"text":"0:40","color":"dark_green","bold":false}]'],minecraft:custom_name='{"text":"片手剣の極意","color":"blue","bold":true,"italic":false}',minecraft:custom_data={data:["no_drop"]}] 1
item replace entity @s hotbar.2 with minecraft:carrot_on_a_stick[minecraft:custom_model_data=32,minecraft:lore=['{"text":"攻撃も守りも共に。","color":"white","italic":false}','{"text":"高めた技は役に立つだろう。","color":"white","italic":false}','{"text":"─────発動効果-前半─────","color":"gray","italic":false}','[{"text":"\\uE010","color":"white","italic":false},{"text":"攻撃","color":"white","bold":true,"italic":false},{"text":"+6","color":"dark_green","bold":false},{"text":"(0:10)","color":"dark_green","bold":false}]','[{"text":"\\uE011","color":"white","italic":false},{"text":"HP","color":"white","bold":true,"italic":false},{"text":"-25%","color":"dark_red","bold":false},{"text":"(0:10)","color":"dark_green","bold":false}]','{"text":"─────発動効果-後半─────","color":"gray","italic":false}','[{"text":"\\uE014","color":"white","italic":false},{"text":"耐性","color":"white","bold":true,"italic":false},{"text":"+20%","color":"dark_green","bold":false},{"text":"(0:10)","color":"dark_green","bold":false}]','[{"text":"\\uE010","color":"white","italic":false},{"text":"攻撃","color":"white","bold":true,"italic":false},{"text":"-4","color":"dark_red","bold":false},{"text":"(0:10)","color":"dark_green","bold":false}]','{"text":"─────────────────","color":"gray","italic":false}','[{"text":"\\uE017","color":"white","italic":false},{"text":"効果時間","color":"white","bold":false},{"text":" 0:20","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"クールタイム","color":"white","bold":true},{"text":"0:40","color":"dark_green","bold":false}]'],minecraft:custom_name='{"text":"攻守交代","color":"blue","bold":true,"italic":false}',minecraft:custom_data={data:["no_drop"]}] 1
item replace entity @s hotbar.3 with minecraft:barrier[minecraft:custom_model_data=33,minecraft:lore=['{"text":"大空へ羽ばたこう","color":"white","italic":true}','{"text":"まぁ落ちるけどネ…","color":"white","italic":false}','{"text":"─────発動効果─────","color":"gray","italic":false}','[{"text":"\\uE013","color":"white","italic":false},{"text":"着弾付近へ引き寄せられる。","color":"white","bold":true,"italic":false},{"text":"(0:10)","color":"dark_green","bold":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"効果時間","color":"white","bold":false},{"text":" 0:10","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"クールタイム","color":"white","bold":true},{"text":"2:00","color":"dark_green","bold":false}]'],minecraft:custom_name='{"text":"クールタイム中です","color":"blue","bold":true,"italic":false}',minecraft:custom_data={data:["no_drop"]}]
item replace entity @s hotbar.4 with minecraft:cooked_cod[minecraft:custom_data={data:["no_drop"]}] 64

scoreboard players set @s ult_cool 120
scoreboard players set @s ult_cool_data 120