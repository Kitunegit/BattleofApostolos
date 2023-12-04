#発動演出
    execute at @s run playsound entity.player.attack.sweep player @a[distance=..10] ~ ~ ~ 1 1.5
    execute at @s run particle minecraft:enchanted_hit ~ ~ ~ 0.1 0.1 0.1 1 50
    execute at @s positioned ^ ^ ^8 at @e[distance=..7.99,limit=1,tag=player] if block ^ ^ ^-1 air run tag @e[distance=..0.1,limit=1,tag=player] add assassin_sp_trgt
    execute as @e[tag=assassin_sp_trgt] run say test
    execute at @e[tag=assassin_sp_trgt] run tp @s ^ ^ ^-1 facing entity @e[tag=assassin_sp_trgt,limit=1]
#その他処理
    item replace entity @s hotbar.7 with barrier{CustomModelData:64} 16
    scoreboard players set @s assassin_special_cool 300
    scoreboard players set @s r_click 0