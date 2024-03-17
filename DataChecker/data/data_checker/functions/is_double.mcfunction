#> data_checker:is_double
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

    data modify storage data_checker: temporary set value [0d]

    execute store success storage data_checker: result byte 1 run data modify storage data_checker: temporary append from storage data_checker: _

    data remove storage data_checker: temporary

    execute if data storage data_checker: {result: true} run return 1

    return 0
