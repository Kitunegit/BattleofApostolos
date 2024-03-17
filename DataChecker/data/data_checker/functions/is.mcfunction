#> data_checker:is
#
# @input
#   storage
#       data_checker:
#           _: {
#               a: any
#               b: any
#           }
#
# @public

#
    #declare storage data_checker:
    execute unless data storage data_checker: _ run data modify storage data_checker: result set value false
    execute unless data storage data_checker: _ run return 0

    data modify storage data_checker: temporary set from storage data_checker: _.a

    execute store success storage data_checker: result byte -1 run data modify storage data_checker: temporary set from storage data_checker: _.b

    data remove storage data_checker: temporary

    execute if data storage data_checker: {result: false} run data modify storage data_checker: result set value true

    execute if data storage data_checker: {result: -1b} run data modify storage data_checker: result set value false

    execute if data storage data_checker: {result: true} run return 1

    return 0
