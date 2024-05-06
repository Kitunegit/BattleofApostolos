#> pvp_data:pvpfunctions/systems/consume_item/complete_use
#
# 使用完了時実行
#
# @within function pvp_data:pvpfunctions/systems/consume_item/tick

# 終了処理
    #declare tag system.consume_item.completed
    tag @s add system.consume_item.completed

# CTの設定
    execute if data entity @s Inventory[{Slot: -106b}].tag.consume run data modify storage temporary: handId set value "offhand"
    execute if data entity @s SelectedItem.tag.consume run data modify storage temporary: handId set value "mainhand"

    execute if data storage temporary: {handId: "mainhand"} store result score @s system.consume_item.cool_time run data get entity @s SelectedItem.tag.consume.cool_time
    execute if data storage temporary: {handId: "offhand"} store result score @s system.consume_item.cool_time run data get entity @s Inventory[{Slot: -106b}].tag.consume.cool_time

# 設定された処理の実行
    execute if data storage temporary: {handId: "mainhand"} run data modify storage temporary: action_list set from entity @s SelectedItem.tag.consume.on_consume
    execute if data storage temporary: {handId: "offhand"} run data modify storage temporary: action_list set from entity @s Inventory[{Slot: -106b}].tag.consume.on_consume

    function pvp_data:pvpfunctions/systems/consume_item/action/loop

    data remove storage temporary: action_list

# 演出
    execute at @s run playsound entity.player.levelup master @s ~ ~ ~ 10 2

    execute at @s run particle happy_villager ~ ~0.75 ~ 0.5 1 0.5 1 30 force

    execute at @s run playsound block.glass.break master @a ~ ~ ~ 3 1

    execute if data storage temporary: {handId: "mainhand"} run item modify entity @s weapon.mainhand pvp_data:system/consume_item/remove

    execute if data storage temporary: {handId: "offhand"} run item modify entity @s weapon.offhand pvp_data:system/consume_item/remove

    data remove storage temporary: handId
