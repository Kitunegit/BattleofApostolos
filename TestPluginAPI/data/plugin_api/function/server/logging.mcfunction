#> plugin_api:server/logging
#
# @input
#   args
#       message: string
#
# @public
# @api

#
    #> @private
    #declare tag plugin_api.messenger

    $summon marker ~ ~ ~ {Tags: ["plugin_api.messenger", "testplugin:logging $(message)"]}

    tp @e[type=marker,tag=plugin_api.messenger,limit=1] ~ ~ ~

    kill @e[type=marker,tag=plugin_api.messenger]
