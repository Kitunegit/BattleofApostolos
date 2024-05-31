#> plugin_api:math/sin
#
# @input
#   args
#       x: double
#
# @public
# @api

#
    #> @private
    #declare tag plugin_api.messenger

    $summon marker ~ ~ ~ {Tags: ["plugin_api.messenger", "testplugin:math sin $(x)"]}

    tp @e[tag=plugin_api.messenger,limit=1] ~ ~ ~

    #> @private
    #declare storage plugin_api:

    data modify storage plugin_api: _ set from entity @e[tag=plugin_api.messenger,limit=1] BukkitValues.result

    kill @e[tag=plugin_api.messenger,limit=1]

    return run data get storage plugin_api: _
