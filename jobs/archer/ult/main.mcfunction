#スキル1処理
    #発動処理
        execute as @s[nbt={SelectedItem:{tag:{CustomModelData:73},id:"minecraft:carrot_on_a_stick"}},scores={ult_cool=..0,r_click=1..}] run function pvp_data:pvpfunctions/jobs/archer/ult/ult_start
    #スキルエフェクト
        execute at @s if score @s archer_ult_time matches 0.. rotated ~ 0 if entity @e[type=arrow] run particle dust 0.89 0.953 0.333 2 ^ ^1 ^-0.5 0.25 0.25 0.25 5 2
        execute at @s if score @s archer_ult_time matches 0.. rotated ~ 0 if entity @e[type=arrow] run particle dust 0.404 0.953 0.3333 2 ^ ^1 ^-0.5 0.25 0.25 0.25 5 2
        execute at @s if score @s archer_ult_time matches 0.. rotated ~ 0 if entity @e[type=arrow] run particle dust 0.09 0.553 0.031 2 ^ ^1 ^-0.5 0.25 0.25 0.25 5 2
        execute at @s if score @s archer_ult_time matches 0.. run ride @s mount @e[type=arrow,limit=1,nbt=!{life:1s},tag=!ride_arrow]
        execute at @s if score @s archer_ult_time matches 0.. run tag @e[type=arrow,limit=1] add ride_arrow
        execute at @s if score @s archer_ult_time matches 0.. if entity @e[type=arrow,distance=..0.11] run playsound block.wood.place player @a ~ ~ ~ 1 2
    #効果終了演出
        execute at @s if score @s archer_ult_time matches 0 run playsound minecraft:entity.item.break player @s ~ ~ ~ 1 0.5
        execute at @s if score @s archer_ult_time matches 0 run item replace entity @s hotbar.0 with bow{display:{Name:'{"text":"弓兵の長弓","bold":true,"italic":false}',},Unbreakable:1b,CustomModelData:7} 1
    #終了処理
        execute if score @s ult_cool matches 0 run function pvp_data:pvpfunctions/jobs/archer/ult/ult_fin
    #クールダウン減らす
        scoreboard players remove @s[scores={archer_ult_time=0..}] archer_ult_time 1