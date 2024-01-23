scoreboard players add @s ult_cool 4
scoreboard players set @s skill_2_cool 300
execute at @s positioned ~ ~1.4 ~ run summon item_display ^ ^ ^1 {billboard:"center",item:{id:"minecraft:quartz",Count:1b,tag:{CustomModelData:3}},Tags:[Magic.SkillCircle],brightness:{sky:15,block:15}}
tag @s add wizard.skill1_ready
effect give @s slowness 2 9 true
effect give @s jump_boost 2 128 true
execute at @s run playsound entity.warden.sonic_charge player @a[distance=..8] ~ ~ ~ 1
execute at @s run particle minecraft:portal ~ ~ ~ 0.1 0.1 0.1 0.5 800 normal
schedule function pvp_data:pvpfunctions/jobs/wizard/skill/1/fire 2s
item replace entity @s hotbar.2 with barrier{display:{Name:'{"text":"クールタイム中です","color":"blue","bold":true,"italic":false}',Lore:['{"text":"前方に光線を放つ。","color":"white","italic":false}','{"text":"圧倒的な破壊力を楽しもう。","color":"white","italic":false}','{"text":"─────発動効果─────","color":"gray","italic":false}','[{"text":"\\uE020","color":"white","italic":false},{"text":"魔導光線","color":"white","bold":true,"italic":false},{"text":"+7","color":"dark_green","bold":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"効果時間","color":"white","bold":false},{"text":"--","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"クールタイム","color":"white","bold":true},{"text":"0:15","color":"dark_green","bold":false}]']},CustomModelData:22,data: ["no_drop"]} 16