function pvp_sc:set/reset
scoreboard players set @s jobscore 2
scoreboard players set @s skill_1_cool 0
scoreboard players set @s skill_2_cool 0
scoreboard players set @s ult_cool 0
scoreboard players add @s wizard_used 1

scoreboard players set @s skill1.ct_data 12
scoreboard players set @s skill2.ct_data 25
scoreboard players set @s special.ct_data 25

scoreboard players set @s system.ui.passive_bar.length 83
scoreboard players set @s system.ui.passive_bar.max 3000
scoreboard players set @s passive_count 3000

scoreboard players set @s generic.attack.base 100
scoreboard players set @s generic.defense.base 100
scoreboard players set @s generic.speed.base 100
scoreboard players set @s generic.max_health.base 35
function pvp_data:pvpfunctions/systems/status/update
function #score_to_attribute:reset

tag @s remove wizard_white
tag @s add wizard_black

item replace entity @s armor.head with leather_helmet{Unbreakable:1b,data: ["no_drop"]}
item replace entity @s armor.chest with leather_chestplate{Unbreakable:1b,data: ["no_drop"]}
item replace entity @s armor.legs with leather_leggings{Unbreakable:1b,data: ["no_drop"]}
item replace entity @s armor.feet with leather_boots{Unbreakable:1b,data: ["no_drop"]}

item replace entity @s hotbar.0 with carrot_on_a_stick{display:{Name:'{"translate":"boa.item.wizard.weapon","color":"dark_green","bold":true,"italic":false}',Lore:['{"translate":"boa.lore.wizard.weapon.1","color":"white","italic":false}','{"translate":"boa.lore.wizard.weapon.2","color":"white","italic":false}','{"translate":"boa.status.weapon_details","color":"gray","italic":false}','[{"text":"\\uE010","color":"white","italic":false},{"translate":"boa.status.damage","color":"white","bold":true,"italic":false},{"text":"+3","color":"green","bold":false,"italic":false}]','[{"text":"\\uE015","color":"white","italic":false},{"translate":"boa.status.crit_damage","color":"white","bold":true,"italic":false},{"text":"--","color":"green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"translate":"boa.status.attack_speed","color":"white","bold":true},{"text":"5s","color":"green","bold":false}]']},CustomModelData:2,HideFlags:6,data: ["no_drop"]} 1
item replace entity @s hotbar.1 with carrot_on_a_stick{display:{Name:'{"translate":"boa.item.wizard.skill.1","color":"blue","bold":true,"italic":false}',Lore:['{"translate":"boa.lore.wizard.skill.1.1","color":"white","italic":false}','{"translate":"boa.lore.wizard.skill.1.2","color":"white","italic":false}','{"translate":"boa.status.use_details","color":"gray","italic":false}','[{"text":"\\uE020","color":"white","italic":false},{"translate":"boa.status.damage","color":"white","bold":true,"italic":false},{"text":"+7","color":"dark_green","bold":false}]','[{"text":"\\uE017","color":"white","italic":false},{"translate":"boa.status.charge_duration","color":"white","bold":false},{"text":"0:02s","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"translate":"boa.status.cool","color":"white","bold":true},{"text":"0:15","color":"dark_green","bold":false}]']},CustomModelData:21,data: ["no_drop"]} 1
item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"translate":"boa.item.wizard.skill.2.black","color":"blue","bold":true,"italic":false}',Lore:['{"translate":"boa.lore.wizard.skill.2.black.1","color":"white","italic":false}','{"translate":"boa.lore.wizard.skill.2.black.2","color":"white","italic":false}','{"translate":"boa.status.use_details","color":"gray","italic":false}','[{"text":"\\uE016","color":"white","italic":false},{"translate":"boa.status.blindness","color":"white","bold":true,"italic":false},{"text":"0:05s","color":"dark_green","bold":false}]','[{"text":"\\uE016","color":"white","italic":false},{"translate":"boa.status.speed","color":"white","bold":true,"italic":false},{"text":"30%","color":"dark_green","bold":false}]','[{"text":"\\uE017","color":"white","italic":false},{"translate":"boa.status.charge_duration","color":"white","bold":false},{"text":"0:05s","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"translate":"boa.status.cool","color":"white","bold":true},{"text":"0:15","color":"dark_green","bold":false}]']},CustomModelData:23,data: ["no_drop"]} 1
item replace entity @s hotbar.4 with cooked_cod{data: ["no_drop"]} 64

scoreboard players set @s ult_cool 90
scoreboard players set @s ult_cool_data 90