#> plugin_api:server/logging
#
# @input
#   args
#       message: string
#
# @public
# @api

#
    $function plugin_api:send_message {message: '{"id": "logging", "message": $(message)}'}
