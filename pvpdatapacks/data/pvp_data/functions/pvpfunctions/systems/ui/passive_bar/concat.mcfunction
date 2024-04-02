#> pvp_data:pvpfunctions/systems/ui/passive_bar/concat
#
# @input
#   args
#       filled: string
#       empty: string
#
# @within function pvp_data:pvpfunctions/systems/ui/passive_bar/tick

# マクロで結合
    $data modify storage ui: passive_bar.result set value '[{"text":"\\uF82D\\uF82B\\uF82A"},{"text": "$(filled)", "color": "white"}, {"text": "$(empty)", "color": "white"}]'
    # uF82～のUnicodeは位置調整用です。