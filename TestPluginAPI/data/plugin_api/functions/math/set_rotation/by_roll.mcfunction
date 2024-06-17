#> plugin_api:math/set_rotation/by_roll
#
# @input
#   args
#       roll: float
#   entity #minecraft:display
#
# @api

#
    #> @private
    #declare tag plugin_api.temporary

    summon marker ~ ~ ~ {Tags: ["plugin_api.temporary"]}

    tp @e[tag=plugin_api.temporary] ~ ~ ~ ~ ~

    #> @private
    #declare storage plugin_api:

    data modify storage plugin_api: _.yaw set from entity @e[tag=plugin_api.temporary,limit=1] Rotation[0]

    data modify storage plugin_api: _.pitch set from entity @e[tag=plugin_api.temporary,limit=1] Rotation[1]

    $data modify storage plugin_api: _.roll set value $(roll)f

    function plugin_api:math/set_rotation/by_ternion with storage plugin_api: _
