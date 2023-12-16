#HPに応じてスコア割り振り
execute if score @s Health matches 30..40 run scoreboard players set @s warrior_health_per 6
execute if score @s Health matches 20..30 run scoreboard players set @s warrior_health_per 5
execute if score @s Health matches 10..20 run scoreboard players set @s warrior_health_per 4
execute if score @s Health matches 5..10 run scoreboard players set @s warrior_health_per 3
execute if score @s Health matches 1..5 run scoreboard players set @s warrior_health_per 2
execute if score @s Health matches 1 run scoreboard players set @s warrior_health_per 1
#発動演出
    execute at @s run particle dust 1 0.4 0 1.2 ~ ~0.5 ~ 0.25 0.75 0.25 1 25 force
    effect give @s slowness 2 255 true
#バリア付与
    item replace entity @s hotbar.8 with stick{display:{Name:'{"text":"死なば諸とも","color":"blue","bold":true,"italic":false}',Lore:['{"text":"死ぬぐらいなら最後に","color":"white","italic":false}','{"text":"でっけぇ斧振り下ろして爪痕残そうぜ！","color":"white","italic":false}','{"text":"─────発動効果─────","color":"gray","italic":false}','[{"text":"\\uE010","color":"white","italic":false},{"text":"前方叩き付け","color":"white","bold":true,"italic":false},{"text":"+10~25","color":"dark_green","bold":false}]','[{"text":"\\uE010","color":"white","italic":false},{"text":"効果範囲","color":"white","bold":false},{"text":"前方5ブロック","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"クールタイム","color":"white","bold":true},{"text":"0:15~0:20","color":"dark_green","bold":false}]']},CustomModelData:44} 16
    execute unless score @s warrior_health_per matches 1 run item replace entity @s hotbar.8 with stick{display:{Name:'{"text":"死なば諸とも","color":"blue","bold":true,"italic":false}',Lore:['{"text":"死ぬぐらいなら最後に","color":"white","italic":false}','{"text":"でっけぇ斧振り下ろして爪痕残そうぜ！","color":"white","italic":false}','{"text":"─────発動効果─────","color":"gray","italic":false}','[{"text":"\\uE010","color":"white","italic":false},{"text":"前方叩き付け","color":"white","bold":true,"italic":false},{"text":"+10~25","color":"dark_green","bold":false}]','[{"text":"\\uE010","color":"white","italic":false},{"text":"効果範囲","color":"white","bold":false},{"text":"前方5ブロック","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"クールタイム","color":"white","bold":true},{"text":"0:15~0:20","color":"dark_green","bold":false}]']},CustomModelData:44} 21
#スコア設定
    scoreboard players set @s warrior_special_timer 6
    execute unless score @s warrior_health_per matches 1 run scoreboard players set @s warrior_special_timer 10
    scoreboard players set @s special_cool 400
    execute if score @s warrior_health_per matches 1 run scoreboard players set @s skill_1_cool 300
    scoreboard players set @s r_click 0