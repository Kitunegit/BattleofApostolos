#> pvp_data:pvpfunctions/systems/border/set
#
# @input
#   args
#       config: {
#           center?: double[]
#           radius?: double
#           damage?: {
#               amount?: float,
#               type?: string
#           }
#       }
#
# @public

# previous
    data modify storage border: temporary set from storage border: config

# macro
    $data modify storage border: config set value $(config)

# disabled_by_reloading
    data modify storage border: config.disabled_by_reloading set from storage border: temporary.disabled_by_reloading

# remove
    data remove storage data_checker: _

# center
    data modify storage data_checker: _ set from storage border: config.center

    function data_checker:is_vec2

    execute if data storage data_checker: {result: false} run data modify storage border: config.center set from storage border: temporary.center

# radius
    data modify storage data_checker: _ set from storage border: config.radius

    function data_checker:is_double

    execute if data storage data_checker: {result: false} run data modify storage border: config.radius set from storage border: temporary.radius

# damage
    # amount
        data modify storage data_checker: _ set from storage border: config.damage.amount

        function data_checker:is_float

        execute if data storage data_checker: {result: false} run data modify storage border: config.damage.amount set from storage border: temporary.damage.amount

    # type
        data modify storage data_checker: _ set from storage border: config.damage.type

        function data_checker:is_string

        execute if data storage data_checker: {result: false} run data modify storage border: config.damage.type set from storage border: temporary.damage.type

# enabled
    data modify storage border: config.enabled set value true

# reset
    data remove storage border: temporary
