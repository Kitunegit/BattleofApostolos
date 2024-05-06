#> pvp_data:pvpfunctions/systems/consume_item/action/effect
#
# effectの付与
#
# @input args
#   id: string
#   duration: int
#   amplifier: int
#
# @within function pvp_data:pvpfunctions/systems/consume_item/action/loop

# マクロの使用
    $effect give @s $(id) $(duration) $(amplifier) false
