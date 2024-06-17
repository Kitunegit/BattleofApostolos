#> plugin_api:knockback/vec2
#
# @input
#   args
#       strength: double
#
# @api

#
    #> @private
    #declare tag plugin_api.temporary

    $execute positioned 0.0 0.0 0.0 run summon marker ^ ^ ^$(strength) {Tags: ["plugin_api.temporary"]}

    #> @private
    #declare storage plugin_api:

    data modify storage plugin_api: _.x set from entity @e[tag=plugin_api.temporary,limit=1] Pos[0]
    data modify storage plugin_api: _.y set from entity @e[tag=plugin_api.temporary,limit=1] Pos[1]
    data modify storage plugin_api: _.z set from entity @e[tag=plugin_api.temporary,limit=1] Pos[2]

    kill @e[tag=plugin_api.temporary]

    function plugin_api:knockback/vec3 with storage plugin_api: _

    data remove storage plugin_api: _
