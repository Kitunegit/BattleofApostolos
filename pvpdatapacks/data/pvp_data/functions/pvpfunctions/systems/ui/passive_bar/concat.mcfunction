#> pvp_data:pvpfunctions/systems/ui/passive_bar/concat
#
# @input
#   args
#       filled: string
#       empty: string
#
# @within function pvp_data:pvpfunctions/systems/ui/passive_bar/tick

# マクロで結合
    $data modify storage ui: passive_bar.result set value '[{"text": "$(filled)", "color": "aqua"}, {"text": "$(empty)", "color": "gray"}]'
