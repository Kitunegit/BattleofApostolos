#発動演出
    execute at @s run playsound minecraft:entity.zombie.attack_iron_door player @a[distance=..10] ~ ~ ~ 0.5 0.8
    execute at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0.00001 0.0001 0.00001 0.5 5
    execute at @s run particle minecraft:crit ~ ~ ~ 0 0 0 0.5 15
#効果付与
    effect give @s resistance 15 2 false
    effect give @s fire_resistance 15 1 false
#その他処理
    item replace entity @s hotbar.1 with barrier{display:{Name:'{"text":"クールタイム中です","color":"blue","bold":true,"italic":false}',Lore:['{"text":"\\"防御を固めた結果、","color":"white","italic":false}','{"text":"           歩き方を忘れてしまった、、\\"","color":"white","italic":false}','{"text":"─────発動効果─────","color":"gray","italic":false}','[{"text":"\\uE014","color":"white","italic":false},{"text":"火炎耐性","color":"white","bold":true,"italic":false},{"text":"(0:15)","color":"dark_green","bold":false}]','[{"text":"\\uE014","color":"white","bold":false,"italic":false},{"text":"耐性","color":"white","bold":true,"italic":false},{"text":"+40%","color":"dark_green","bold":true},{"text":"(0:15)","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE018","color":"white","italic":false},{"text":"速度","color":"white","bold":true,"italic":false},{"text":"-30%","color":"dark_red","bold":true},{"text":"(0:15)","color":"dark_green","bold":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"効果時間","color":"white","bold":false},{"text":" 0:15","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"クールタイム","color":"white","bold":true},{"text":"0:30","color":"dark_green","bold":false}]']},CustomModelData:81} 31
    scoreboard players set @s skill_1_cool 600
    scoreboard players set @s r_click 0