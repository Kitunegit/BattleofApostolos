#> pvp_data:pvpfunctions/systems/consume_item/start_use
#
# 使用開始時実行
#
# @within function pvp_data:pvpfunctions/systems/consume_item/using

# 使用開始検知処理用
    #declare tag system.consume_item.start_use
    tag @s add system.consume_item.start_use

# 使用完了に必要となる時間の設定
    execute if data entity @s Inventory[{Slot: -106b}].tag.consume run data modify storage temporary: handId set value "offhand"
    execute if data entity @s SelectedItem.tag.consume run data modify storage temporary: handId set value "mainhand"

    execute if data storage temporary: {handId: "mainhand"} store result score @s system.consume_item.time_required run data get entity @s SelectedItem.tag.consume.duration
    execute if data storage temporary: {handId: "mainhand"} unless data entity @s SelectedItem.tag.consume.duration run scoreboard players set @s system.consume_item.time_required 2147483647

    execute if data storage temporary: {handId: "offhand"} store result score @s system.consume_item.time_required run data get entity @s Inventory[{Slot: -106b}].tag.consume.duration
    execute if data storage temporary: {handId: "offhand"} unless data entity @s Inventory[{Slot: -106b}].tag.consume.duration run scoreboard players set @s system.consume_item.time_required 2147483647

# CT中
    execute if score @s system.consume_item.cool_time matches 1.. at @s run playsound block.note_block.bass master @s ~ ~ ~ 10 1
