#発動演出
    execute at @s run playsound minecraft:entity.arrow.shoot player @a[distance=..10] ~ ~ ~ 0.5 1.2
    execute at @s run particle minecraft:crit ~ ~ ~ 0 0 0 0.5 15
#効果付与
    execute at @s run summon marker ~ ~ ~ {Tags:[black_eyes]}
    execute as @e[tag=black_eyes,type=marker] at @s rotated as @a[limit=1] run tp @s ^ ^ ^0.5
    execute as @e[tag=black_eyes,type=marker] at @s run tp @s ~ ~1 ~
    execute at @e[tag=black_eyes,type=marker] rotated as @s run tp @e[tag=black_eyes,type=marker] ~ ~ ~ facing ^ ^ ^1
#その他処理
    item replace entity @s hotbar.2 with barrier{display:{Name:'{"text":"クールタイム中です","color":"blue","bold":true,"italic":false}',Lore:['{"text":"漆黒の靄を飛ばす。","color":"white","italic":false}','{"text":"この靄に触れたら視界を奪われる。","color":"white","italic":false}','{"text":"─────発動効果─────","color":"gray","italic":false}','[{"text":"漆黒の靄を飛ばす。","color":"white","bold":true,"italic":false}]','[{"text":"\\uE018","color":"white","italic":false},{"text":"盲目","color":"white","bold":true,"italic":false},{"text":"(0:05)","color":"dark_red","bold":true,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"クールタイム","color":"white","bold":true},{"text":"1:00","color":"dark_green","bold":false}]']},CustomModelData:62} 15
    scoreboard players set @s skill_2_cool 300
    scoreboard players set @s r_click 0