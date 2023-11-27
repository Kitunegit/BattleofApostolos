#弓兵-imageColor_green
#常時実行
    function pvp_data:pvpfunctions/jobs/archer/skill/1/main

#表記システム
    execute store result score @s archer_arrow_count run clear @s arrow 0
    scoreboard players operation @s archer_arrow_num_con = @s archer_arrow_num
    scoreboard players operation @s archer_arrow_num_con += @s archer_arrow_count
    title @s actionbar [{"text":"\uF80Earrow:","font":"test-16"},{"score":{"name":"@s","objective":"archer_arrow_num_con"},"font":"test-16"}]
#矢の所持
    execute as @s[nbt=!{Inventory:[{Slot:8b,id:"minecraft:arrow"}]},nbt=!{Inventory:[{Slot:8b,id:"minecraft:tipped_arrow"}]}] if score @s archer_arrow_num matches 1.. run tag @s add archer_arrow_add
    item replace entity @s[tag=archer_arrow_add] hotbar.8 with arrow
    scoreboard players remove @s[tag=archer_arrow_add] archer_arrow_num 1
    tag @s remove archer_arrow_add
#矢処理
    #矢常時実行
        execute at @e[type=arrow] run particle dust 0.016 0.247 0.122 0.5 ~ ~ ~ 0.15 0.15 0.15 2 3
        execute at @e[type=arrow] run particle dust 0.043 0.706 0.341 0.5 ~ ~ ~ 0.15 0.15 0.15 2 3
    #着弾処理
        execute as @e[type=arrow] at @s if entity @s[nbt={life:1s}] run particle dust 0 1 0.45108 2 ~ ~ ~
        execute as @e[type=arrow] if entity @s[nbt={life:1s}] run kill @s