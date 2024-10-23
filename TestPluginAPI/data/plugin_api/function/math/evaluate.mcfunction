#> plugin_api:math/evaluate
#
# @input
#   args
#       expression: string
#
# @output
#   returns
#
# @api

#
    $return run function plugin_api:send_message {message: '{"id": "evaluate", "expression": "$(expression)"}'}
