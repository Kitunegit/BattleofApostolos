#暗殺者-imageColor_purple
#暗殺者
<<<<<<< HEAD
execute as @a if entity @s[nbt={SelectedItem:{tag:{CustomModelData:6},id:"minecraft:stick"}}] run item replace entity @s weapon.mainhand with carrot_on_a_stick{CustomModelData:6}
execute as @a if entity @s[nbt=!{SelectedItem:{tag:{CustomModelData:6},id:"minecraft:stick"}},nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6}}]},nbt=!{SelectedItem:{tag:{CustomModelData:6},id:"minecraft:carrot_on_a_stick"}},] run tag @s add assassin_changes
clear @a[tag=assassin_changes] carrot_on_a_stick{CustomModelData:6}
give @a[tag=assassin_changes] stick{CustomModelData:6}
tag @a[tag=assassin_changes] remove assassin_changes
=======
execute as @a if entity @s[nbt={SelectedItem:{tag:{CustomModelData:6},id:"minecraft:stick"}}] run item replace entity @s hotbar.0 with carrot_on_a_stick{display:{Name:'{"text":"暗殺者の死鎌","color":"dark_green","bold":true,"italic":false}',Lore:['{"text":"こっそりと","color":"white","italic":false}','{"text":"命を刈り取ろう。","color":"white","italic":false}','{"text":"─────武器効果─────","color":"gray","italic":false}','[{"text":"\\uE010","color":"white","italic":false},{"text":"物理ダメージ","color":"white","bold":true,"italic":false},{"text":"+2","color":"green","bold":false,"italic":false}]','[{"text":"\\uE015","color":"white","italic":false},{"text":"クリティカル攻撃","color":"white","bold":true,"italic":false},{"text":"+3","color":"green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"振り速度","color":"white","bold":true},{"text":"0.5s","color":"green","bold":false}]']},Unbreakable:1b,CustomModelData:6,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-1.5,Operation:0,UUID:[I;-981089894,123683272,-1867629603,1018967417],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:1,Operation:0,UUID:[I;1825244844,1313685780,-2078173173,443476713],Slot:"mainhand"}],HideFlags:6} 1
execute as @a if entity @s[nbt=!{SelectedItem:{tag:{CustomModelData:6},id:"minecraft:stick"}},nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6}}]},nbt=!{SelectedItem:{tag:{CustomModelData:6},id:"minecraft:carrot_on_a_stick"}},] run tag @s add assassin_changes
clear @a[tag=assassin_changes] carrot_on_a_stick{CustomModelData:6}
item replace entity @a[tag=assassin_changes] hotbar.0 with stick{display:{Name:'{"text":"暗殺者の死鎌","color":"dark_green","bold":true,"italic":false}',Lore:['{"text":"こっそりと","color":"white","italic":false}','{"text":"命を刈り取ろう。","color":"white","italic":false}','{"text":"─────武器効果─────","color":"gray","italic":false}','[{"text":"\\uE010","color":"white","italic":false},{"text":"物理ダメージ","color":"white","bold":true,"italic":false},{"text":"+2","color":"green","bold":false,"italic":false}]','[{"text":"\\uE015","color":"white","italic":false},{"text":"クリティカル攻撃","color":"white","bold":true,"italic":false},{"text":"+3","color":"green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"振り速度","color":"white","bold":true},{"text":"0.5s","color":"green","bold":false}]']},Unbreakable:1b,CustomModelData:6,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-1.5,Operation:0,UUID:[I;-981089894,123683272,-1867629603,1018967417],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:1,Operation:0,UUID:[I;1825244844,1313685780,-2078173173,443476713],Slot:"mainhand"}],HideFlags:6}
tag @a[tag=assassin_changes] remove assassin_changes

function pvp_data:pvpfunctions/jobs/assassin/passive
function pvp_data:pvpfunctions/jobs/assassin/skill/1/skill_main
function pvp_data:pvpfunctions/jobs/assassin/skill/2/skill_main
>>>>>>> origin/main
