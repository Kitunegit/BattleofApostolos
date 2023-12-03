#弓兵-imageColor_green

#矢処理
    #矢常時実行
        execute at @e[type=arrow] run particle dust 0.016 0.247 0.122 0.5 ~ ~ ~ 0.15 0.15 0.15 2 3
        execute at @e[type=arrow] run particle dust 0.043 0.706 0.341 0.5 ~ ~ ~ 0.15 0.15 0.15 2 3
        execute if score @s archer_skill_2_cool matches 300.. at @e[type=arrow] run particle dust 0.71 0.831 0 0.75 ~ ~ ~ 0.15 0.15 0.15 2 2
    #着弾処理
        execute as @e[type=arrow] at @s if entity @s[nbt={life:1s}] run particle dust 0 1 0.45108 2 ~ ~ ~
        execute if score @s archer_skill_2_cool matches 300.. as @e[type=arrow] at @s if entity @s[nbt={life:1s}] run effect give @e[distance=..10] glowing 20 1 true
        execute if score @s archer_skill_2_cool matches 300.. as @e[type=arrow] at @s if entity @s[nbt={life:1s}] run particle flash ~ ~ ~ 10 10 10 0.5 80
        execute as @e[type=arrow] if entity @s[nbt={life:1s}] run kill @s
#常時実行
    function pvp_data:pvpfunctions/jobs/archer/skill/1/main
    function pvp_data:pvpfunctions/jobs/archer/skill/2/main
    function pvp_data:pvpfunctions/jobs/archer/ult/main
    function pvp_data:pvpfunctions/jobs/archer/passive
    scoreboard players set @s ult_cool_data 60
#見た目
<<<<<<< HEAD
    execute as @a if entity @s[nbt={SelectedItem:{tag:{CustomModelData:7},id:"minecraft:stick"}}] run item replace entity @s hotbar.0 with bow{display:{Name:'{"text":"弓兵の長弓","bold":true,"italic":false}',},Unbreakable:1b,CustomModelData:7} 1
=======
    execute as @a if entity @s[nbt={SelectedItem:{tag:{CustomModelData:7},id:"minecraft:stick"}}] run item replace entity @s hotbar.0 with bow{display:{Name:'{"text":"弓兵の長弓","bold":true,"italic":false}',},Unbreakable:1b,CustomModelData:7,Enchantments:[{id:"minecraft:power",lvl:8s}]} 1
>>>>>>> origin/main
    execute as @a if entity @s[nbt=!{SelectedItem:{tag:{CustomModelData:7},id:"minecraft:stick"}},nbt={Inventory:[{id:"minecraft:bow",tag:{CustomModelData:7}}]},nbt=!{SelectedItem:{tag:{CustomModelData:7},id:"minecraft:bow"}},] run tag @s add bow_changes
    clear @a[tag=bow_changes] bow{CustomModelData:7}
    item replace entity @a[tag=bow_changes] hotbar.0 with stick{CustomModelData:7,display:{Name:'{"text":"弓兵の長弓","bold":true,"italic":false}',}}
    tag @a[tag=bow_changes] remove bow_changes