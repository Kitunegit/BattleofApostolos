#弓兵スキル1開始処理
    #発動演出
        execute at @s run playsound block.amethyst_block.place player @a[distance=..10] ~ ~ ~ 5
        execute at @s run particle dust 0 1 0.45108 1.2 ~ ~0.5 ~ 0.25 0.75 0.25 1 25 force

    #バリア付与
        item replace entity @s hotbar.1 with barrier{display:{Name:'{"text":"クールタイム中です","color":"blue","bold":true,"italic":false}',Lore:['{"text":"真の弓兵はどんな矢も","color":"white","italic":false}','{"text":"使いこなす。","color":"white","italic":false}','{"text":"─────発動効果─────","color":"gray","italic":false}','[{"text":"\\uE019","color":"white","italic":false},{"text":"ランダムな矢を獲得","color":"white","bold":true,"italic":false},{"text":"x1","color":"dark_green","bold":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"効果時間","color":"white","bold":false},{"text":"--","color":"dark_green","bold":false,"italic":false}]','[{"text":"\\uE017","color":"white","italic":false},{"text":"クールタイム","color":"white","bold":true},{"text":"0:10","color":"dark_green","bold":false}]']},CustomModelData:71} 11
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
        scoreboard players add @s archer_arrow_num 1
        