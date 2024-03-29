#> pvp_data:pvpfunctions/systems/plugin/events/player/left_click/
#
# @within function pvp_data:pvpfunctions/systems/plugin/events/observe

#
    execute if score @s plugin.events.player.left_click matches 1.. if data entity @s SelectedItem.tag.weapon.on_left_click run function pvp_data:pvpfunctions/systems/plugin/events/player/left_click/macro/ with entity @s SelectedItem.tag.weapon.on_left_click

    scoreboard players reset @s plugin.events.player.left_click
