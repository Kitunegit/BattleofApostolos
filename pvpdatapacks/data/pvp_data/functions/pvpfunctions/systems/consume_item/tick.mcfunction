#> pvp_data:pvpfunctions/systems/consume_item/tick
#
# @within function pvp_data:pvpfunctions/systems/main

#
    tag @a[advancements={pvp_data:system/consume_item/using_item=false}] remove system.consume_item.using

    advancement revoke @a only pvp_data:system/consume_item/using_item

    scoreboard players add @a[tag=system.consume_item.start_use] system.consume_item.time_since_start_use 1

    execute as @a if score @s system.consume_item.using_time >= @s system.consume_item.time_required unless entity @s[tag=system.consume_item.completed] unless score @s system.consume_item.cool_time matches 1.. run function pvp_data:pvpfunctions/systems/consume_item/complete_use

    execute as @a if score @s system.consume_item.time_since_start_use > @s system.consume_item.using_time run function pvp_data:pvpfunctions/systems/consume_item/stop_use

    scoreboard players remove @a[scores={system.consume_item.cool_time=1..}] system.consume_item.cool_time 1
