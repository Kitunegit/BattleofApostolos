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
    tag @s add plugin_api.target

    $function plugin_api:send_message {message: '{"id": "knockback_vec3", "vector3": [$(x), $(y), $(z)]}'}

    tag @s remove plugin_api.target