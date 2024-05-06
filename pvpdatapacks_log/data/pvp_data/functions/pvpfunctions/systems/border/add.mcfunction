#> pvp_data:pvpfunctions/systems/border/add
#
# @input
#   args
#       size: double
#       time: int
#
# @public

# macro
    $data modify storage border: temporary.time set value $(time)
    $data modify storage border: temporary.size set value $(size)d

# type
    data modify storage data_checker: _ set from storage border: temporary.time

    function data_checker:is_int

    execute if data storage data_checker: {result: false} run data modify storage border: temporary.time set value 1

    data modify storage data_checker: _ set from storage border: temporary.size

    function data_checker:is_double

    execute if data storage data_checker: {result: false} run data modify storage border: temporary.size set value 0

# scoreboard
    #declare score_holder $time
    execute store result score $time system.border run data get storage border: temporary.time
    
    #declare score_holder $size
    execute store result score $size system.border run data get storage border: temporary.size 10000

    scoreboard players operation $size system.border /= $time system.border
