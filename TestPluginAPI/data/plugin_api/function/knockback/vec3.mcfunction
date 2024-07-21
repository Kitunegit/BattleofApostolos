#> plugin_api:knockback/vec3
#
# @input
#   args
#       x: double
#       y: double
#       z: double
#
# @api

#
    #> @private
    #declare tag plugin_api.messenger

    $summon marker ~ ~ ~ {Tags: ["plugin_api.messenger", "testplugin:knockback $(x) $(y) $(z)"]}

    #> @private
    #declare tag plugin_api.target

    tag @s add plugin_api.target

    tp @e[type=marker,tag=plugin_api.messenger] ~ ~ ~

    tag @s remove plugin_api.target

    kill @e[type=marker,tag=plugin_api.messenger]
