#> plugin_api:knockback/vec2
#
# @input
#   args
#       strength: double
#
# @api

#
    tag @s add plugin_api.target

    $function plugin_api:send_message {message: '{"id": "knockback_vec2", "strength": $(strength)}'}

    tag @s remove plugin_api.target
