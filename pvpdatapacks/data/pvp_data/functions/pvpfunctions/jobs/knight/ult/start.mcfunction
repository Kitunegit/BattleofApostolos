
execute at @s positioned ~ ~1 ~ run summon marker ^ ^ ^1 {Tags:[knight_ult]}
execute at @e[type=marker,tag=knight_ult,tag=!knight_ult_tag] rotated as @s run tp @e[type=marker,tag=knight_ult,tag=!knight_ult_tag] ~ ~ ~ facing ^ ^ ^1


playsound entity.blaze.shoot player @a[distance=..7] ~ ~ ~ 0.8 1.3
playsound entity.player.attack.sweep player @a[distance=..7] ~ ~ ~ 0.8 1
playsound entity.ender_dragon.flap player @a[distance=..7] ~ ~ ~ 0.2 0.3
scoreboard players set @s ult_cool 120

#バリア化
    item replace entity @s hotbar.3 with barrier{display:{Name:'{"text":"クールタイム中です","color":"blue","bold":true,"italic":false}',Lore:['{"text":"空間を割き、すべてを切り捨て進んでゆく。","color":"white","italic":false}','{"text":"悪には慈悲などない。","color":"white","italic":false}','{"text":"─────発動効果─────","color":"gray","italic":false}','[{"text":"\\uE010","color":"white","italic":false},{"text":"斬撃継続時間","color":"white","bold":true,"italic":false},{"text":"(0:10)","color":"dark_green","bold":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"必要詠唱時間","color":"white","bold":false},{"text":" 0:03","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"クールタイム","color":"white","bold":true},{"text":"2:00","color":"dark_green","bold":false}]']},CustomModelData:33}