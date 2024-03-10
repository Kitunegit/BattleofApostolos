#> data_checker:is_list_of_type
#
# @input
#   storage
#       data_checker:
#           _: {
#               value: unknown
#               type: string
#           }
#
# @public

#
    #declare storage data_checker:
    data modify storage data_checker: result set value false
    execute unless data storage data_checker: _.value[] run return 0

    execute if data storage data_checker: {type: "string"} run data modify storage data_checker: temporary set value [""]
    execute if data storage data_checker: {type: "float"} run data modify storage data_checker: temporary prepend value [0f]
    execute if data storage data_checker: {type: "double"} run data modify storage data_checker: temporary prepend value [0d]
    execute if data storage data_checker: {type: "byte"} run data modify storage data_checker: temporary prepend value [0b]
    execute if data storage data_checker: {type: "int"} run data modify storage data_checker: temporary prepend value [0]
    execute if data storage data_checker: {type: "compound"} run data modify storage data_checker: temporary prepend value [{}]
    execute if data storage data_checker: {type: "list"} run data modify storage data_checker: temporary prepend value [[]]

    execute store success storage data_checker: result byte 1 run data modify storage data_checker: temporary append from storage data_checker: _.value[0]

    data remove storage data_checker: temporary

    execute if data storage data_checker: {result: true} run return 1

    return 0
