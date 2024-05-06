#> pvp_data:pvpfunctions/jobs/archer/skill/1/skill_start
#
# 弓兵 スキル1 開始処理
#
# @internal

#発動演出
    execute at @s run playsound block.amethyst_block.place player @a[distance=..10] ~ ~ ~ 5
    execute at @s run particle dust 0 1 0.45108 1.2 ~ ~0.5 ~ 0.25 0.75 0.25 1 25 force
#CT付与
    item modify entity @s hotbar.1 pvp_data:system/tool_damage/set_damage
    scoreboard players set @s skill_1_cool 200
#乱数
    #乱数生成
        function pvp_data:pvpfunctions/systems/rng_system/generated
    #スコアに応じて矢を渡す
        execute if score @s rng matches 0..15 run item replace entity @s hotbar.8 with tipped_arrow{Potion:"minecraft:strong_slowness",CustomModelData:2,display:{Name:'{"text":"鈍化の矢","italic":false}'}} 1
        execute if score @s rng matches 16..30 run item replace entity @s hotbar.8 with tipped_arrow{Potion:"minecraft:strong_harming",CustomModelData:2,display:{Name:'{"text":"激痛の矢","italic":false}'}} 1
        execute if score @s rng matches 31..45 run item replace entity @s hotbar.8 with tipped_arrow{Potion:"minecraft:strong_poison",CustomModelData:2,display:{Name:'{"text":"猛毒の矢","italic":false}'}} 1
        execute if score @s rng matches 46..60 run item replace entity @s hotbar.8 with tipped_arrow{Potion:"minecraft:weakness",CustomModelData:2,display:{Name:'{"text":"弱化の矢","italic":false}'}} 1
        execute if score @s rng matches 61..65 run item replace entity @s hotbar.8 with spectral_arrow{display:{Name:'{"text":"発光の矢"}'}} 1
        execute if score @s rng matches 66..75 run item replace entity @s hotbar.8 with tipped_arrow{Potion:"minecraft:strong_healing",CustomModelData:1,display:{Name:'{"text":"回復の矢","italic":false}'}} 1
        execute if score @s rng matches 76..85 run item replace entity @s hotbar.8 with tipped_arrow{Potion:"minecraft:strong_regeneration",CustomModelData:1,display:{Name:'{"text":"再生の矢","italic":false}'}} 1
        execute if score @s rng matches 86..100 run item replace entity @s hotbar.8 with tipped_arrow{Potion:"minecraft:strong_turtle_master",CustomModelData:2,display:{Name:'{"text":"鈍感の矢","italic":false}'}} 1
#スコア設定
    scoreboard players add @s passive_cool 1
        