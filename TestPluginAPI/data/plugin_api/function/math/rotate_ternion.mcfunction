#> plugin_api:math/rotate_ternion
#
# @input
#   args
#       yaw: float
#       pitch: float
#       roll: float
#   entity #minecraft:display
#
# @api

#
    tag @s add plugin_api.target

    $function plugin_api:send_message {message: '{"id": "rotate_display", "rotation": [$(yaw), $(pitch), $(roll)]}'}

    tag @s remove plugin_api.target
