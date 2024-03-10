#> data_checker:is_list_of_length
#
# @input
#   storage
#       data_checker:
#           _: {
#               value: unknown
#               length: int
#               operator: string
#           }
#
# @public

#
    #declare storage data_checker:
    execute unless data storage data_checker: _ run data modify storage data_checker: result set value false
    execute unless data storage data_checker: _ run return 0

    data modify storage data_checker: result set value false

    execute unless data storage data_checker: _.value run return 0

    scoreboard objectives add data_checker.list_length dummy

    execute store result score $a data_checker.list_length if data storage data_checker: _[]

    execute store result score $b data_checker.list_length run data get storage data_checker: _.length

    execute if data storage data_checker: {operator: "="} if score $a data_checker.list_length = $b data_checker.list_length run data modify storage data_checker: result set value true
    execute if data storage data_checker: {operator: "<"} if score $a data_checker.list_length < $b data_checker.list_length run data modify storage data_checker: result set value true
    execute if data storage data_checker: {operator: ">"} if score $a data_checker.list_length > $b data_checker.list_length run data modify storage data_checker: result set value true
    execute if data storage data_checker: {operator: "<="} if score $a data_checker.list_length <= $b data_checker.list_length run data modify storage data_checker: result set value true
    execute if data storage data_checker: {operator: ">="} if score $a data_checker.list_length >= $b data_checker.list_length run data modify storage data_checker: result set value true

    scoreboard objectives remove data_checker.list_length

    execute if data storage data_checker: {result: true} run return 1

    return 0
