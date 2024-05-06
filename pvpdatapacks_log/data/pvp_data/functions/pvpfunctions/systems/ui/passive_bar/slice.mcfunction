#> pvp_data:pvpfunctions/systems/ui/passive_bar/slice
#
# @input
#   args
#       filled: int
#       empty: int
#
# @within function pvp_data:pvpfunctions/systems/ui/passive_bar/tick

# filled
    $data modify storage ui: passive_bar.texts.filled set string storage ui: passive_bar.base_text.filled 0 $(filled)

# empty
    $data modify storage ui: passive_bar.texts.empty set string storage ui: passive_bar.base_text.empty 0 $(empty)
