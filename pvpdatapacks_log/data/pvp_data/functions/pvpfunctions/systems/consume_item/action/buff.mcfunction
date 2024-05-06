#> pvp_data:pvpfunctions/systems/consume_item/action/buff
#
# バフの付与
#
# @within function pvp_data:pvpfunctions/systems/consume_item/action/loop

# overwriteのデフォルト値設定
    execute unless data storage temporary: current.overwrite run data modify storage temporary: current.overwrite set value false

# 関数呼出
    function pvp_data:pvpfunctions/systems/status/effect/apply with storage temporary: current
