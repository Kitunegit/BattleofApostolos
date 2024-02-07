#> pvp_data:pvpfunctions/systems/consume_item/using
#
# 現在の使用状況の判定
#
# @within
#   advancement
#       pvp_data:system/consume_item/using_item

# 使用中常時実行
    #declare tag system.consume_item.using
    execute unless entity @s[tag=system.consume_item.using] run function pvp_data:pvpfunctions/systems/consume_item/start_use

    tag @s add system.consume_item.using

    scoreboard players add @s system.consume_item.using_time 1

    execute unless data entity @s SelectedItem.tag.consume unless data entity @s Inventory[{Slot: -106b}].tag.consume run function pvp_data:pvpfunctions/systems/consume_item/stop_use

    #declare score_holder $remainder
    scoreboard players operation $remainder system.consume_item.using_time = @s system.consume_item.using_time

    scoreboard players set #constant system.consume_item.using_time 4

    scoreboard players operation $remainder system.consume_item.using_time %= #constant system.consume_item.using_time

    execute if data entity @s SelectedItem.tag.consume if score $remainder system.consume_item.using_time matches 0 unless entity @s[tag=system.consume_item.completed] if score @s system.consume_item.cool_time matches 0 run function pvp_data:pvpfunctions/systems/consume_item/sound with entity @s SelectedItem.tag.consume.sound

    execute unless data entity @s SelectedItem.tag.consume if data entity @s Inventory[{Slot: -106b}].tag.consume if score $remainder system.consume_item.using_time matches 0 unless entity @s[tag=system.consume_item.completed] if score @s system.consume_item.cool_time matches 0 run function pvp_data:pvpfunctions/systems/consume_item/sound with entity @s Inventory[{Slot: -106b}].tag.consume.sound

    scoreboard players reset $remainder system.consume_item.using_time
