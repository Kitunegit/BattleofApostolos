#アーチャーパッシブ
#アクションバーに現在の矢の所持数を表示
    execute store result score @s archer_arrow_count run clear @s arrow 0
    scoreboard players operation @s archer_arrow_num_con = @s archer_arrow_num
    scoreboard players operation @s archer_arrow_num_con += @s archer_arrow_count
    title @s actionbar [{"text":"\uF80C\uF80C\uE000\uF809\uF808","font":"test-16"},{"score":{"name":"@s","objective":"archer_arrow_num_con"},"font":"test-16"}]
#矢の所持
    execute as @s[nbt=!{Inventory:[{Slot:8b,id:"minecraft:arrow"}]},nbt=!{Inventory:[{Slot:8b,id:"minecraft:tipped_arrow"}]},nbt=!{Inventory:[{Slot:8b,id:"minecraft:spectral_arrow"}]}] if score @s archer_arrow_num matches 1.. run tag @s add archer_arrow_add
    item replace entity @s[tag=archer_arrow_add] hotbar.8 with arrow
    execute if predicate pvp_data:10_rng run scoreboard players remove @s[tag=archer_arrow_add] archer_arrow_num 1
    tag @s remove archer_arrow_add
#一定時間に50%で矢を取得
    scoreboard players remove @s archer_passive_cool 1
    execute if score @s archer_passive_cool matches 0 if score @s archer_arrow_num matches ..14 if predicate pvp_data:50_rng run scoreboard players add @s archer_arrow_num 1
    execute if score @s archer_passive_cool matches 0 run scoreboard players set @s archer_passive_cool 30
    execute if score @s archer_passive_cool matches 0 run scoreboard players set @s archer_passive_cool 30