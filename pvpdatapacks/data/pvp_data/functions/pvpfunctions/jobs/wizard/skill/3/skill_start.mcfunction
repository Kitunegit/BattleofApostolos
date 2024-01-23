scoreboard players add @s ult_cool 6
scoreboard players set @s skill_2_cool 600
effect give @s slowness 3 9 true
effect give @s jump_boost 3 128 true
execute at @s run summon item_display ~ ~10 ~ {interpolation_duration:0,Tags:["wizard_skill2_black"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[4f,4f,2f]},item:{id:"minecraft:quartz",Count:1b,tag:{CustomModelData:2}}}
execute as @e[tag=wizard_skill2_black,type=item_display] at @s run tp @s ~ ~-10 ~ ~ ~90
execute at @s run playsound minecraft:block.beacon.deactivate player @a[distance=..5] ~ ~ ~ 1 1
tag @s add wizard.skill_attack
schedule function pvp_data:pvpfunctions/jobs/wizard/skill/3/attack 3s append
item replace entity @s hotbar.2 with barrier{display:{Name:'{"text":"クールタイム中です","color":"blue","bold":true,"italic":false}',Lore:['{"text":"足元に陣を展開し","color":"white","italic":false}','{"text":"反転した魔力を自分に流し込み回復する。","color":"white","italic":false}','{"text":"─────発動効果─────","color":"gray","italic":false}','[{"text":"\\uE011","color":"white","italic":false},{"text":"回復量","color":"white","bold":true,"italic":false},{"text":"+15","color":"dark_green","bold":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"必要詠唱時間","color":"white","bold":false},{"text":"2s","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"クールタイム","color":"white","bold":true},{"text":"0:30","color":"dark_green","bold":false}]']},CustomModelData:22,data: ["no_drop"]} 31