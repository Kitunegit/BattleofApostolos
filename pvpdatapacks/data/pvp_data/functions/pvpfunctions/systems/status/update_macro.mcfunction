#> pvp_data:pvpfunctions/systems/status/update_macro
#
# @input
#   args
#       value: float
#
# @within function pvp_data:pvpfunctions/systems/status/update

# マクロ
    $attribute @s generic.attack_speed base set $(value)
