#> plugin_api:server/transfer
#
# @input
#   args
#       server: string
#
# @public
# @api

#
    #> @private
    #declare tag plugin_api.messenger

    $summon marker ~ ~ ~ {Tags: ["plugin_api.messenger", "testplugin:transfer $(server)"]}

    tag @s add plugin_api.target

    tp @e[type=marker,tag=plugin_api.messenger,limit=1] ~ ~ ~

    tag @s remove plugin_api.target

    kill @e[type=marker,tag=plugin_api.messenger]
