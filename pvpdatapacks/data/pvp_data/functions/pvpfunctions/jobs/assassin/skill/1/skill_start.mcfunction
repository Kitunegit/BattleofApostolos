#> pvp_data:pvpfunctions/jobs/assassin/skill/1/skill_start
#
# 暗殺者のスキル1開始処理です。
#
# @within function pvp_data:pvpfunctions/jobs/assassin/skill/1/skill_main

#カウント付与
scoreboard players set @s assassin_skill_1_charge 60
tag @s add assassin.skill_1_charge
#発動演出
    execute at @s run playsound block.beacon.activate player @a[distance=..10] ~ ~ ~ 1 0.5
    execute at @s run particle dust 0.78 0 1 2 ~ ~ ~ 0.5 0.8 0.5 1 4
    execute at @s run particle dust 0.78 0 1 2 ~ ~ ~ 0.31 0.01 0.33 1 4
    execute at @s run particle minecraft:crit ~ ~ ~ 0 0 0 0.5 15
#効果付与
    effect give @s slowness 3 6 true
    effect give @s jump_boost 3 128 true
    effect give @s weakness 3 10 true
#その他処理
    item replace entity @s hotbar.1 with barrier{display:{Name:'{"text":"クールタイム中です","color":"blue","bold":true,"italic":false}',Lore:['{"text":"究極の速度。","color":"white","italic":false}','{"text":"結構酔いそう","color":"white","italic":false}','{"text":"─────発動効果─────","color":"gray","italic":false}','[{"text":"\\uE014","color":"white","italic":false},{"text":"速度","color":"white","bold":true,"italic":false},{"text":"+140%","color":"dark_green","bold":true},{"text":"(0:10)","color":"dark_green","bold":false}]','[{"text":"\\uE010","color":"white","bold":false,"italic":false},{"text":"攻撃力","color":"white","bold":true,"italic":false},{"text":"+6","color":"dark_green","bold":true},{"text":"(0:10)","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"効果時間","color":"white","bold":false},{"text":" 0:10","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"クールタイム","color":"white","bold":true},{"text":"0:20","color":"dark_green","bold":false}]']},CustomModelData:61} 31
    scoreboard players set @s skill_1_cool 600
    scoreboard players set @s r_click 0