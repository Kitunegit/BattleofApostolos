scoreboard players add @s sneaking 1
execute at @s run playsound minecraft:block.beacon.power_select player @a[distance=..5] ~ ~ ~ 1 1.5
execute at @s run playsound minecraft:block.beacon.power_select player @a[distance=..5] ~ ~ ~ 1 2
execute at @s run particle dust 0.59 0.63 0.65 2 ~ ~1 ~ 1 0.8 1 3 40
execute if score @s skill_2_cool matches ..0 run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"魔道光線","color":"blue","bold":true,"italic":false}',Lore:['{"text":"前方に光線を放つ。","color":"white","italic":false}','{"text":"圧倒的な破壊力を楽しもう。","color":"white","italic":false}','{"text":"─────発動効果─────","color":"gray","italic":false}','[{"text":"\\uE020","color":"white","italic":false},{"text":"魔導光線","color":"white","bold":true,"italic":false},{"text":"+7","color":"dark_green","bold":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"効果時間","color":"white","bold":false},{"text":"--","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"クールタイム","color":"white","bold":true},{"text":"0:15","color":"dark_green","bold":false}]']},CustomModelData:22,data: ["no_drop"]} 1
tag @s remove wizard_black
tag @s remove wizard_white