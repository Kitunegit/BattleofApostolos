function pvp_sc:set/reset
clear @s
scoreboard players set @s jobscore 8
scoreboard players set @s skill_1_cool 0
scoreboard players set @s skill_2_cool 0
scoreboard players set @s ult_cool 0
scoreboard players set @s special_cool 0
scoreboard players add @s guardian_used 1

scoreboard players set @s generic.attack 200
scoreboard players set @s generic.defense 600
scoreboard players set @s generic.speed 85
scoreboard players set @s generic.max_health 40

#effect give @s slowness infinite 1 true
#effect give @s resistance infinite 1 true

item replace entity @s armor.head with iron_helmet{Unbreakable:1b}
item replace entity @s armor.chest with iron_chestplate{Unbreakable:1b}
item replace entity @s armor.legs with iron_leggings{Unbreakable:1b}
item replace entity @s armor.feet with iron_boots{Unbreakable:1b}

item replace entity @s hotbar.0 with carrot_on_a_stick{display:{Name:'{"text":"守護者の大剣","color":"dark_green","bold":true,"italic":false}',Lore:['{"text":"このデカい剣で","color":"white","italic":false}','{"text":"敵を薙ぎ払おう。","color":"white","italic":false}','{"text":"─────武器効果─────","color":"gray","italic":false}','[{"text":"\\uE010","color":"white","italic":false},{"text":"物理ダメージ","color":"white","bold":true,"italic":false},{"text":"+4","color":"green","bold":false,"italic":false}]','[{"text":"\\uE015","color":"white","italic":false},{"text":"クリティカル攻撃","color":"white","bold":true,"italic":false},{"text":"+6","color":"green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"振り速度","color":"white","bold":true},{"text":"1.25s","color":"green","bold":false}]']},Unbreakable:1b,CustomModelData:8,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-4.25,Operation:0,UUID:[I;-981089894,123683272,-1867629603,1018967417],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3,Operation:0,UUID:[I;1825244844,1313685780,-2078173173,443476713],Slot:"mainhand"}],HideFlags:6} 1
item replace entity @s weapon.offhand with shield{display:{Name:'{"text":"守護者の蒼色の盾","color":"dark_green","bold":true,"italic":false}',Lore:['{"text":"綺麗な蒼色に染まった","color":"white","italic":false}','{"text":"この盾で未来を守ろう。","color":"white","italic":false}','{"text":"─────防具効果─────","color":"gray","italic":false}','[{"text":"\\uE014","color":"white","italic":false},{"text":"攻撃を防ぐ","color":"white","bold":true,"italic":false},{"text":"∞","color":"green","bold":false,"italic":false}]']},Unbreakable:1b,CustomModelData:8,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-3.5,Operation:0,UUID:[I;-981089894,123683272,-1867629603,1018967417],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3,Operation:0,UUID:[I;1825244844,1313685780,-2078173173,443476713],Slot:"mainhand"}],HideFlags:6} 1
item replace entity @s hotbar.1 with carrot_on_a_stick{display:{Name:'{"text":"防御特化","color":"blue","bold":true,"italic":false}',Lore:['{"text":"\\"防御を固めた結果、","color":"white","italic":false}','{"text":"           歩き方を忘れてしまった、、\\"","color":"white","italic":false}','{"text":"─────発動効果─────","color":"gray","italic":false}','[{"text":"\\uE014","color":"white","italic":false},{"text":"火炎耐性","color":"white","bold":true,"italic":false},{"text":"(0:15)","color":"dark_green","bold":false}]','[{"text":"\\uE014","color":"white","bold":false,"italic":false},{"text":"耐性","color":"white","bold":true,"italic":false},{"text":"+40%","color":"dark_green","bold":true},{"text":"(0:15)","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE018","color":"white","italic":false},{"text":"速度","color":"white","bold":true,"italic":false},{"text":"-30%","color":"dark_red","bold":true},{"text":"(0:15)","color":"dark_green","bold":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"効果時間","color":"white","bold":false},{"text":" 0:15","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"クールタイム","color":"white","bold":true},{"text":"0:30","color":"dark_green","bold":false}]']},CustomModelData:81} 1
item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"緊急装甲","color":"blue","bold":true,"italic":false}',Lore:['{"text":"不屈の心を思い出し","color":"white","italic":false}','{"text":"HP上限を引き上げる","color":"white","italic":false}','{"text":"─────発動効果─────","color":"gray","italic":false}','[{"text":"\\uE012","color":"white","italic":false},{"text":"体力増加","color":"white","bold":true,"italic":false},{"text":"+20","color":"dark_green","bold":true,"italic":false},{"text":"(0:15)","color":"dark_green","bold":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"効果時間","color":"white","bold":false},{"text":" 0:15","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"クールタイム","color":"white","bold":true},{"text":"1:00","color":"dark_green","bold":false}]']},CustomModelData:82} 1
item replace entity @s hotbar.3 with barrier{display:{Name:'{"text":"クールタイム中です","color":"yellow","bold":true,"italic":false}',Lore:['{"text":"時には限界を超える必要がある。","color":"white","italic":false}','{"text":"圧倒的な攻撃と防御を誇る守護者へと進化する。","color":"white","italic":false}','{"text":"─────発動効果─────","color":"gray","italic":false}','[{"text":"\\uE016","color":"white","italic":false},{"text":"鈍化解除","color":"white","bold":true,"italic":false},{"text":"(0:20)","color":"dark_green","bold":false}]','[{"text":"\\uE010","color":"white","bold":false,"italic":false},{"text":"攻撃力","color":"white","bold":true,"italic":false},{"text":"+6","color":"dark_green","bold":true},{"text":"(0:20)","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE014","color":"white","italic":false},{"text":"耐性","color":"white","bold":true,"italic":false},{"text":"+60%","color":"dark_green","bold":true},{"text":"(0:20)","color":"dark_green","bold":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"効果時間","color":"white","bold":false},{"text":" 0:20","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"クールタイム","color":"white","bold":true},{"text":"1:30","color":"dark_green","bold":false}]']},CustomModelData:83}
item replace entity @s hotbar.4 with cooked_cod 64
item replace entity @s hotbar.7 with stick{CustomModelData:84,display:{Name:'{"text":"防御突貫","color":"blue","bold":true,"italic":false}',Lore:['{"text":"盾で突進！","color":"white","italic":false}','{"text":"全て破壊しつくせ！","color":"white","italic":false}','{"text":"─────発動効果─────","color":"gray","italic":false}','[{"text":"大剣右クリで発動","color":"white","bold":true,"italic":false}]','[{"text":"\\uE010","color":"white","italic":false},{"text":"突進攻撃:","color":"white","bold":true,"italic":false},{"text":"5","color":"dark_green","bold":true,"italic":false}]','[{"text":"\\uE016","color":"white","italic":false},{"text":"スタン(鈍化)","color":"white","bold":true,"italic":false},{"text":"-100%","color":"dark_red","bold":true,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"前隙","color":"white","bold":false},{"text":"0:01","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"クールタイム","color":"white","bold":true},{"text":"0:15","color":"dark_green","bold":false}]']}} 1

scoreboard players set @s ult_cool 90
scoreboard players set @s ult_cool_data 90