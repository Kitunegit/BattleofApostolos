#> data_checker:is_empty_list
#
# @input
#   storage
#       data_checker:
#           _: unknown
#
# @public

#
    #declare storage data_checker:
    execute unless data storage data_checker: _ run data modify storage data_checker: result set value false
    execute unless data storage data_checker: _ run return 0

    data modify storage data_checker: temporary set value []

    execute store success storage data_checker: result byte -1 run data modify storage data_checker: temporary set from storage data_checker: _

    data remove storage data_checker: temporary

    execute if data storage data_checker: {result: false} run data modify storage data_checker: result set value true

    execute if data storage data_checker: {result: -1b} run data modify storage data_checker: result set value false

    execute if data storage data_checker: {result: true} run return 1

    return 0
