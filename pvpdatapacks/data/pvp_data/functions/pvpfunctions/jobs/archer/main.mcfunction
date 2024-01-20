#弓兵-imageColor_green

#矢処理
    #矢常時実行
        execute if entity @e[type=arrow] run function pvp_data:pvpfunctions/jobs/archer/arrow
#常時実行
    function pvp_data:pvpfunctions/jobs/archer/skill/1/main
    function pvp_data:pvpfunctions/jobs/archer/skill/2/main
    function pvp_data:pvpfunctions/jobs/archer/ult/main
    function pvp_data:pvpfunctions/jobs/archer/passive/passive
    scoreboard players set @s ult_cool_data 60
#見た目
    execute as @a if entity @s[nbt={SelectedItem:{tag:{CustomModelData:7},id:"minecraft:stick"}}] run item replace entity @s hotbar.0 with bow{display:{Name:'{"text":"弓兵の長弓","color":"dark_green","bold":true,"italic":false}',Lore:['{"text":"よーく狙って","color":"white","italic":false}','{"text":"敵を打ち抜こう。","color":"white","italic":false}','{"text":"─────武器効果─────","color":"gray","italic":false}','[{"text":"\\uE013","color":"white","italic":false},{"text":"射撃ダメージ","color":"white","bold":true,"italic":false},{"text":"+10","color":"green","bold":false,"italic":false}]']},Unbreakable:1b,CustomModelData:7,HideFlags:6} 1
    execute as @a if entity @s[nbt=!{SelectedItem:{tag:{CustomModelData:7},id:"minecraft:stick"}},nbt={Inventory:[{id:"minecraft:bow",tag:{CustomModelData:7}}]},nbt=!{SelectedItem:{tag:{CustomModelData:7},id:"minecraft:bow"}},] run tag @s add bow_changes
    clear @a[tag=bow_changes] bow{CustomModelData:7}
    item replace entity @a[tag=bow_changes] hotbar.0 with stick{display:{Name:'{"text":"弓兵の長弓","color":"dark_green","bold":true,"italic":false}',Lore:['{"text":"よーく狙って","color":"white","italic":false}','{"text":"敵を打ち抜こう。","color":"white","italic":false}','{"text":"─────武器効果─────","color":"gray","italic":false}','[{"text":"\\uE013","color":"white","italic":false},{"text":"射撃ダメージ","color":"white","bold":true,"italic":false},{"text":"+10","color":"green","bold":false,"italic":false}]']},Unbreakable:1b,CustomModelData:7,HideFlags:6} 1
    tag @a[tag=bow_changes] remove bow_changes
#射撃ダメアップ
    execute as @e[type=arrow] run data merge entity @s {damage:-0.984375}