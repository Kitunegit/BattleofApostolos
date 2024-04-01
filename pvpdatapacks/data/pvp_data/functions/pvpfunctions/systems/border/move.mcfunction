#> pvp_data:pvpfunctions/systems/border/move
#
# @input
#   args
#       time: int
#       distance: double
#
# @public

# macro
    $data modify storage border: temporary.move.time set value $(time)
    $data modify storage border: temporary.move.distance set value $(distance)d

# type
    data modify storage data_checker: _ set from storage border: temporary.move.time

    function data_checker:is_int

    execute if data storage data_checker: {result: false} run data modify storage border: temporary.move.time set value 1

    data modify storage data_checker: _ set from storage border: temporary.move.distance

    function data_checker:is_double

    execute if data storage data_checker: {result: false} run data modify storage border: temporary.move.distance set value 0

# scoreboard
    #declare score_holder $move.time
    execute store result score $move.time system.border run data get storage border: temporary.move.time
    
    #declare score_holder $move.distance
    execute store result score $move.distance system.border run data get storage border: temporary.move.distance 10000

    scoreboard players operation $move.distance system.border /= $move.time system.border

    #declare score_holder $move.random_angle
    execute store result score $move.random_angle system.border run random value -180..179
