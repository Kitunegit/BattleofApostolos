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

    tp @e[tag=plugin_api.messenger,limit=1] ~ ~ ~

    tag @s remove plugin_api.target

    kill @e[tag=plugin_api.messenger,limit=1]
