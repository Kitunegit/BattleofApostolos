effect give @s resistance 1 1 true
effect give @s[scores={guardian_ult_time=..0}] slowness 1 1 true
function pvp_data:pvpfunctions/jobs/guardian/skill/1/skill_main
function pvp_data:pvpfunctions/jobs/guardian/skill/2/skill_main
function pvp_data:pvpfunctions/jobs/guardian/ult/ult_main
function pvp_data:pvpfunctions/jobs/guardian/special/main
<<<<<<< HEAD
scoreboard players set @s ult_cool_data 90
=======
scoreboard players set @s ult_cool_data 90

#見た目
    execute as @a if entity @s[nbt={SelectedItem:{tag:{CustomModelData:8},id:"minecraft:stick"}}] run item replace entity @s hotbar.0 with carrot_on_a_stick{display:{Name:'{"text":"守護者の大剣","color":"dark_green","bold":true,"italic":false}',Lore:['{"text":"このデカい剣で","color":"white","italic":false}','{"text":"敵を薙ぎ払おう。","color":"white","italic":false}','{"text":"─────武器効果─────","color":"gray","italic":false}','[{"text":"\\uE010","color":"white","italic":false},{"text":"物理ダメージ","color":"white","bold":true,"italic":false},{"text":"+4","color":"green","bold":false,"italic":false}]','[{"text":"\\uE015","color":"white","italic":false},{"text":"クリティカル攻撃","color":"white","bold":true,"italic":false},{"text":"+6","color":"green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"振り速度","color":"white","bold":true},{"text":"1.25s","color":"green","bold":false}]']},Unbreakable:1b,CustomModelData:8,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-3.25,Operation:0,UUID:[I;-981089894,123683272,-1867629603,1018967417],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3,Operation:0,UUID:[I;1825244844,1313685780,-2078173173,443476713],Slot:"mainhand"}],HideFlags:6} 1
    execute as @a if entity @s[nbt=!{SelectedItem:{tag:{CustomModelData:8},id:"minecraft:stick"}},nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:8}}]},nbt=!{SelectedItem:{tag:{CustomModelData:8},id:"minecraft:carrot_on_a_stick"}},] run tag @s add guardian_changes
    clear @a[tag=guardian_changes] carrot_on_a_stick{CustomModelData:8}
    item replace entity @a[tag=guardian_changes] hotbar.0 with stick{display:{Name:'{"text":"守護者の大剣","color":"dark_green","bold":true,"italic":false}',Lore:['{"text":"このデカい剣で","color":"white","italic":false}','{"text":"敵を薙ぎ払おう。","color":"white","italic":false}','{"text":"─────武器効果─────","color":"gray","italic":false}','[{"text":"\\uE010","color":"white","italic":false},{"text":"物理ダメージ","color":"white","bold":true,"italic":false},{"text":"+4","color":"green","bold":false,"italic":false}]','[{"text":"\\uE015","color":"white","italic":false},{"text":"クリティカル攻撃","color":"white","bold":true,"italic":false},{"text":"+6","color":"green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"振り速度","color":"white","bold":true},{"text":"1.25s","color":"green","bold":false}]']},Unbreakable:1b,CustomModelData:8,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-3.25,Operation:0,UUID:[I;-981089894,123683272,-1867629603,1018967417],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3,Operation:0,UUID:[I;1825244844,1313685780,-2078173173,443476713],Slot:"mainhand"}],HideFlags:6}
    tag @a[tag=guardian_changes] remove guardian_changes
>>>>>>> origin/main
