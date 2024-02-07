#> pvp_data:pvpfunctions/systems/consume_item/action/run_command
#
# コマンドを実行する
#
# @input args
#   content: string
#
# @within function pvp_data:pvpfunctions/systems/consume_item/action/loop

# マクロの使用

    $execute at @s run $(content)
