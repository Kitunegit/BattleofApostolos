#> pvp_data:pvpfunctions/systems/plugin/events/player/left_click/macro/
#
# @input
#   args
#       particle: string
#
# @within function pvp_data:pvpfunctions/systems/plugin/events/player/left_click/

#
    $execute at @s positioned ~ ~1 ~ positioned ^ ^ ^1.25 run function pvp_data:pvpfunctions/systems/particle/$(particle)/

    data modify storage temporary: sound set from entity @s SelectedItem.tag.weapon.on_left_click.sound

    execute unless data storage temporary: sound.volume run data modify storage temporary: sound.volume set value 3f

    execute unless data storage temporary: sound.pitch run data modify storage temporary: sound.pitch set value 1f

    execute at @s run function pvp_data:pvpfunctions/systems/plugin/events/player/left_click/macro/sound with storage temporary: sound

    data remove storage temporary: sound
