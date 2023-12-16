#発動演出
    execute at @s run playsound item.shield.block player @a[distance=..10] ~ ~ ~ 1 0.8
    execute at @s run particle dust 0.667 0.212 0 2 ~ ~ ~ 0.5 0.8 0.5 1 4
    execute at @s run particle dust 1 0.608 0.157 2 ~ ~ ~ 0.31 0.01 0.33 1 4
#効果付与
    effect give @s slowness 10 2 true
    effect give @s strength 10 2 true
    attribute @s minecraft:generic.attack_speed base set 3.7
#その他処理
    item replace entity @s hotbar.1 with barrier{display:{Name:'{"text":"クールタイム中です","color":"blue","bold":true,"italic":false}',Lore:['{"text":"究極の速度。","color":"white","italic":false}','{"text":"結構酔いそう","color":"white","italic":false}','{"text":"─────発動効果─────","color":"gray","italic":false}','[{"text":"\\uE014","color":"white","italic":false},{"text":"速度","color":"white","bold":true,"italic":false},{"text":"+140%","color":"dark_green","bold":true},{"text":"(0:10)","color":"dark_green","bold":false}]','[{"text":"\\uE010","color":"white","bold":false,"italic":false},{"text":"攻撃力","color":"white","bold":true,"italic":false},{"text":"+6","color":"dark_green","bold":true},{"text":"(0:10)","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"効果時間","color":"white","bold":false},{"text":" 0:10","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"クールタイム","color":"white","bold":true},{"text":"0:20","color":"dark_green","bold":false}]']},CustomModelData:41} 21
    scoreboard players set @s skill_1_cool 400
    scoreboard players set @s r_click 0