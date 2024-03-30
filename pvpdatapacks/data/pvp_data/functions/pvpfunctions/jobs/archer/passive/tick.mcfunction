#> pvp_data:pvpfunctions/jobs/archer/passive/tick
#
# 弓兵常時実行処理
#
# @internal

# ゲージを同期
    scoreboard players operation @s system.ui.passive_bar.value = @s passive_count
# 定期で矢を補給
    scoreboard players remove @s[scores={passive_count=..23}] passive_cool 1
    execute if score @s passive_cool matches 0 run function pvp_data:pvpfunctions/jobs/archer/passive/add
# 矢が無かったら渡す
    execute as @s[nbt=!{Inventory:[{Slot:8b,id:"minecraft:arrow"}]},nbt=!{Inventory:[{Slot:8b,id:"minecraft:tipped_arrow"}]},nbt=!{Inventory:[{Slot:8b,id:"minecraft:spectral_arrow"}]}] if score @s passive_count matches 1.. run function pvp_data:pvpfunctions/jobs/archer/passive/refill
# ジャンプ
    execute if score @s sneaking matches 1 if predicate pvp_data:r_click/archer_bow if score @s passive_count matches 1.. run function pvp_data:pvpfunctions/jobs/archer/passive/sneaking
    execute if entity @s[nbt={OnGround:1b}] run tag @s remove archer.jump
    scoreboard players remove @s[scores={archer.jump_count=1..}] archer.jump_count 1