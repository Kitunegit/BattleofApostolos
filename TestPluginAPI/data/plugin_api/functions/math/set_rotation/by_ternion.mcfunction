#> plugin_api:math/set_rotation/by_ternion
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
    #> @private
    #declare tag plugin_api.messenger

    $summon marker ~ ~ ~ {Tags: ["plugin_api.messenger", "testplugin:rotate_display $(yaw) $(pitch) $(roll)"]}

    #> @private
    #declare tag plugin_api.target

    tag @s add plugin_api.target

    tp @e[tag=plugin_api.messenger] ~ ~ ~

    tag @s remove plugin_api.target

    kill @e[tag=plugin_api.messenger]
