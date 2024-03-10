#> data_checker:is_rot
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

    data modify storage data_checker: temporary set value [0f]

    execute store success storage data_checker: result byte 1 run data modify storage data_checker: temporary append from storage data_checker: _

    data remove storage data_checker: temporary

    scoreboard objectives add data_checker.list_length dummy

    execute store result score $temporary data_checker.list_length if data storage data_checker: _[]

    execute if data storage data_checker: {result: true} unless score $temporary data_checker.list_length matches 2 run data modify storage data_checker: result set value false

    scoreboard objectives remove data_checker.list_length

    execute if data storage data_checker: {result: true} run return 1

    return 0
