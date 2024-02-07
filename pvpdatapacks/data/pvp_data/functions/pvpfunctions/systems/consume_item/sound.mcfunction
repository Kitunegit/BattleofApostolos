#> pvp_data:pvpfunctions/systems/consume_item/sound
#
# @within function pvp_data:pvpfunctions/systems/consume_item/using

# マクロの使用
    $execute at @s run playsound $(id) master @s ~ ~ ~ 10 $(pitch)
