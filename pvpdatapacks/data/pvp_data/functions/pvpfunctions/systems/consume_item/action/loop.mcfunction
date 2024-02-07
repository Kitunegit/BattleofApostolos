#> pvp_data:pvpfunctions/systems/consume_item/action/loop
#
# 配列を再帰で処理
#
# @within function
#   pvp_data:pvpfunctions/systems/consume_item/complete_use
#   pvp_data:pvpfunctions/systems/consume_item/action/loop

# 0番目の取得
    data modify storage temporary: current set from storage temporary: action_list[0]

    data remove storage temporary: action_list[0]

# typeの値で分岐
    execute if data storage temporary: {current: {type: "effect"}} run function pvp_data:pvpfunctions/systems/consume_item/action/effect with storage temporary: current

    execute if data storage temporary: {current: {type: "buff"}} run function pvp_data:pvpfunctions/systems/consume_item/action/buff

    execute if data storage temporary: {current: {type: "run_command"}} run function pvp_data:pvpfunctions/systems/consume_item/action/run_command with storage temporary: current

# 再帰
    execute if data storage temporary: action_list[0] run function pvp_data:pvpfunctions/systems/consume_item/action/loop
