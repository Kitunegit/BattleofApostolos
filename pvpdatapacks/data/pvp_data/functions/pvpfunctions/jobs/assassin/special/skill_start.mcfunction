#発動演出
    execute at @s run playsound entity.player.attack.sweep player @a[distance=..10] ~ ~ ~ 1 1.5
    execute at @s run particle minecraft:enchanted_hit ~ ~ ~ 0.1 0.1 0.1 1 50
    execute at @s positioned ^ ^ ^8 at @e[distance=..7.99,limit=1,tag=player] if block ^ ^ ^-1 air run tag @e[distance=..0.1,limit=1,tag=player] add assassin_sp_trgt
    execute at @e[tag=assassin_sp_trgt] run tp @s ^ ^ ^-1 facing entity @e[tag=assassin_sp_trgt,limit=1]
#その他処理
    item replace entity @s hotbar.7 with stick{CustomModelData:64,display:{Name:'{"text":"瞬撃","color":"blue","bold":true,"italic":false}',Lore:['{"text":"背後に回り込む。","color":"white","italic":false}','{"text":"後ろからグサッ！","color":"white","italic":false}','{"text":"─────発動効果─────","color":"gray","italic":false}','[{"text":"大鎌右クリで発動","color":"white","bold":true,"italic":false}]','[{"text":"\\uE010","color":"white","italic":false},{"text":"背後ｶﾗ攻撃:","color":"white","bold":true,"italic":false},{"text":"8","color":"dark_green","bold":true,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"前隙","color":"white","bold":false},{"text":"0:01","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"クールタイム","color":"white","bold":true},{"text":"0:15","color":"dark_green","bold":false}]']}} 16
    scoreboard players set @s special_cool 300
    scoreboard players set @s r_click 0