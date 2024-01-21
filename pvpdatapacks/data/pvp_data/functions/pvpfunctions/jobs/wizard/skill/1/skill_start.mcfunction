
execute at @s run summon marker ^ ^ ^1 {Tags:[wizard_no_atr_beam]}
execute at @e[tag=wizard_no_atr_beam,type=marker] rotated as @s run tp @e[tag=wizard_no_atr_beam,type=marker] ~ ~ ~ facing ^ ^ ^1
execute as @e[tag=wizard_no_atr_beam,type=marker] at @s run tp @s ~ ~1.4 ~
execute at @s run playsound minecraft:entity.warden.sonic_boom player @a[distance=..15] ~ ~ ~ 0.5 1
tag @s add wizard.magic_fire
execute as @e[tag=wizard_no_atr_beam,type=marker] run function pvp_data:pvpfunctions/jobs/wizard/skill/1/fire
tag @s remove wizard.magic_fire
scoreboard players set @s skill_1_cool 300
item replace entity @s hotbar.1 with barrier{display:{Name:'{"text":"クールタイム中です","color":"blue","bold":true,"italic":false}',Lore:['{"text":"前方に光線を放つ。","color":"white","italic":false}','{"text":"圧倒的な破壊力を楽しもう。","color":"white","italic":false}','{"text":"─────発動効果─────","color":"gray","italic":false}','[{"text":"\\uE020","color":"white","italic":false},{"text":"魔導光線","color":"white","bold":true,"italic":false},{"text":"+7","color":"dark_green","bold":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"効果時間","color":"white","bold":false},{"text":"--","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"クールタイム","color":"white","bold":true},{"text":"0:15","color":"dark_green","bold":false}]']},CustomModelData:21,data: ["no_drop"]} 16