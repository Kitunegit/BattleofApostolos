function pvp_sc:set/reset

scoreboard players set @s generic.attack.base 250
scoreboard players set @s generic.defense.base 0
scoreboard players set @s generic.speed.base 12
scoreboard players set @s generic.max_health.base 32
scoreboard players set @s generic.speed.base 120
scoreboard players set @s generic.max_health.base 34
scoreboard players set @s generic.attack_speed.base 133
function pvp_data:pvpfunctions/systems/status/update

scoreboard players set @s jobscore 6

scoreboard players set @s system.ui.passive_bar.length 90
scoreboard players set @s system.ui.passive_bar.max 1200

scoreboard players set @s skill_1_cool 0
scoreboard players set @s skill_2_cool 0
scoreboard players set @s ult_cool 0
scoreboard players set @s special_cool 0
scoreboard players add @s assassin_used 1
scoreboard players set @s special.ct_data 75
scoreboard players set @s skill1.ct_data 25
scoreboard players set @s skill2.ct_data 12

item replace entity @s armor.chest with leather_chestplate{Unbreakable:1b,data: ["no_drop"]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1b,data: ["no_drop"]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1b,data: ["no_drop"]}

item replace entity @s hotbar.0 with carrot_on_a_stick{display:{Name:'{"translate":"boa.item.assassin.weapon","color":"dark_green","bold":true,"italic":false}',Lore:['{"translate":"boa.lore.assassin.weapon.1","color":"white","italic":false}','{"translate":"boa.lore.assassin.weapon.2","color":"white","italic":false}','{"translate":"boa.status.weapon_details","color":"gray","italic":false}','[{"text":"\\uE010","color":"white","italic":false},{"translate":"boa.status.damage","color":"white","bold":true,"italic":false},{"text":"+6","color":"green","bold":false,"italic":false}]','[{"text":"\\uE015","color":"white","italic":false},{"translate":"boa.status.crit_damage","color":"white","bold":true,"italic":false},{"text":"+8","color":"green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"translate":"boa.status.attack_speed","color":"white","bold":true},{"text":"0.5s","color":"green","bold":false}]']},CustomModelData:6,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:1,Operation:0,UUID:[I;1825244844,1313685780,-2078173173,443476713],Slot:"mainhand"}],HideFlags:6,weapon: {damage: {amount: 6}},data: ["no_drop"]} 1
item replace entity @s hotbar.1 with carrot_on_a_stick{display:{Name:'{"translate":"boa.item.assassin.skill.1","color":"blue","bold":true,"italic":false}',Lore:['{"translate":"boa.lore.assassin.skill.1.1","color":"white","italic":false}','{"translate":"boa.lore.assassin.skill.1.2","color":"white","italic":false}','{"translate":"boa.status.use_details","color":"gray","italic":false}','[{"text":"\\uE014","color":"white","italic":false},{"translate":"boa.status.speed","color":"white","bold":true,"italic":false},{"text":"+140%","color":"dark_green","bold":true},{"text":"(0:10)","color":"dark_green","bold":false}]','[{"text":"\\uE010","color":"white","bold":false,"italic":false},{"translate":"boa.status.attack","color":"white","bold":true,"italic":false},{"text":"+3","color":"dark_green","bold":true},{"text":"(0:10)","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"translate":"boa.status.effect_duration","color":"white","bold":false},{"text":" 0:10","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"translate":"boa.status.cool","color":"white","bold":true},{"text":"0:20","color":"dark_green","bold":false}]']},CustomModelData:61,data: ["no_drop"]} 1
item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"translate":"boa.item.assassin.skill.2","color":"blue","bold":true,"italic":false}',Lore:['{"translate":"boa.lore.assassin.skill.1.1","color":"white","italic":false}','{"translate":"boa.lore.assassin.skill.1.2","color":"white","italic":false}','{"translate":"boa.status.use_details","color":"gray","italic":false}','[{"text":"\\uE016","color":"white","italic":false},{"translate":"boa.status.blindness","color":"white","bold":true,"italic":false},{"text":"(0:05)","color":"dark_red","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"translate":"boa.status.cool","color":"white","bold":true},{"text":"1:00","color":"dark_green","bold":false}]']},CustomModelData:62,data: ["no_drop"]} 1
item replace entity @s hotbar.3 with barrier{CustomModelData:63,display:{Name:'{"translate":"boa.item.assassin.ult","color":"yellow","bold":true,"italic":false}',Lore:['{"translate":"boa.lore.assassin.ult.1","color":"white","italic":false}','{"translate":"boa.lore.assassin.ult.2","color":"white","italic":false}','{"translate":"boa.status.use_condition","color":"gray","italic":false}','{"translate":"boa.status.other.assassin_ult.condition","color":"white","italic":false}','{"translate":"boa.status.use_details","color":"gray","italic":false}','[{"text":"\\uE010","color":"white","italic":false},{"translate":"boa.status.damage","color":"white","bold":true,"italic":false},{"text":"999","color":"dark_green","bold":true,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"translate":"boa.status.charge_duration","color":"white","bold":false},{"text":"0:05","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"translate":"boa.status.cool","color":"white","bold":true},{"text":"1:30","color":"dark_green","bold":false}]']},data: ["no_drop"]} 1
item replace entity @s hotbar.4 with cooked_cod{data: ["no_drop"]} 64

scoreboard players set @s ult_cool 90
scoreboard players set @s ult_cool_data 90