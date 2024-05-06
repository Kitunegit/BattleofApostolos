#> pvp_data:pvpfunctions/systems/plugin/events/player/left_click/macro/sound
#
# @input
#   args
#       id: string
#       volume: float
#       pitch: float
#
# @within function pvp_data:pvpfunctions/systems/plugin/events/player/left_click/macro/

#
    $playsound $(id) master @a ~ ~ ~ $(volume) $(pitch)
