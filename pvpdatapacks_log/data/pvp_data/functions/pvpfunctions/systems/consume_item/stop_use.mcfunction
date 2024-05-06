#> pvp_data:pvpfunctions/systems/consume_item/stop_use
#
# 使用終了時実行
#
# @within function
#   pvp_data:pvpfunctions/systems/consume_item/tick
#   pvp_data:pvpfunctions/systems/consume_item/complete_use
#   pvp_data:pvpfunctions/systems/consume_item/using

# リセット
    scoreboard players reset @s system.consume_item.using_time

    scoreboard players reset @s system.consume_item.time_since_start_use

    scoreboard players reset @s system.consume_item.time_required

    tag @s remove system.consume_item.start_use

    tag @s remove system.consume_item.completed
