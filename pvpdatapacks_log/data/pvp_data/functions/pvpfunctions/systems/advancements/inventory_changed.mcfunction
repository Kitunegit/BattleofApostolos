#> pvp_data:pvpfunctions/systems/advancements/inventory_changed
#
# インベントリ更新時に呼び出されます
#
# @internal

# 進捗剥奪
    advancement revoke @s only pvp_data:system/inventory_change

# 弓兵インベントリ更新
    execute if score @s jobscore matches 7 run function pvp_data:pvpfunctions/jobs/archer/passive/operation