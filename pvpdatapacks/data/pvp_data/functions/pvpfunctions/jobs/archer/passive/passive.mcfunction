#アーチャーパッシブ
#アクションバーに現在の矢の所持数を表示
    #インベントリの矢の数を代入
    execute store result score @s archer_arrow_count run clear @s arrow 0
    #矢の数と同期
    scoreboard players operation @s archer_arrow_num_con = @s archer_arrow_num
    #矢の数とインベントリの矢の数を足す
    scoreboard players operation @s archer_arrow_num_con += @s archer_arrow_count
    #矢の名前の文字列を取得
    data modify storage test ItemID set string entity @s Inventory[5].tag.display.Name 9 13
    #発光の矢の場合
    execute if entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:spectral_arrow",Count:1b}]}] run title @s actionbar [{"text":"\uF80C\uF80C\uE003\uF809\uF808","font":"test-16"},{"score":{"name":"@s","objective":"archer_arrow_num_con"},"font":"test-16"},{"nbt":"ItemID","storage":"test","font":"default"}]
#矢の所持
    #スロットが空だったら矢を補充するためのタグを付与
    execute as @s[nbt=!{Inventory:[{Slot:8b,id:"minecraft:arrow"}]},nbt=!{Inventory:[{Slot:8b,id:"minecraft:tipped_arrow"}]},nbt=!{Inventory:[{Slot:8b,id:"minecraft:spectral_arrow"}]}] if score @s archer_arrow_num matches 1.. run tag @s add archer_arrow_add
    #タグ持ちに矢を付与
    item replace entity @s[tag=archer_arrow_add] hotbar.8 with arrow{display:{Name:'{"text":"普通の矢","italic":false}'}}
    execute if predicate pvp_data:10_rng run scoreboard players remove @s[tag=archer_arrow_add] archer_arrow_num 1
    tag @s remove archer_arrow_add
#一定時間に50%で矢を取得
    scoreboard players remove @s archer_passive_cool 1
    execute if score @s archer_passive_cool matches 0 if score @s archer_arrow_num matches ..22 if predicate pvp_data:50_rng run scoreboard players add @s archer_arrow_num 1
    execute if score @s archer_passive_cool matches 0 run scoreboard players set @s archer_passive_cool 30
    execute if score @s archer_passive_cool matches 0 run scoreboard players set @s archer_passive_cool 30

#ジャンプ
    execute if score @s sneaking matches 1 if predicate pvp_data:r_click/archer_bow run function pvp_data:pvpfunctions/jobs/archer/passive/sneaking
    execute if entity @s[nbt={OnGround:1b}] run tag @s remove archer_jump
    scoreboard players remove @s[scores={archer_jump_count=1..}] archer_jump_count 1