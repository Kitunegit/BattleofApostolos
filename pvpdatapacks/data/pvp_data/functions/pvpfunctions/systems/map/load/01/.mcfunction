#> pvp_data:pvpfunctions/systems/map/load/01/
#
# @public

#
    execute if score $ticks system.map.timer = $ticks system.map.timer run return fail

    execute unless score $ticks system.map.timer = $ticks system.map.timer run function pvp_data:pvpfunctions/systems/map/load/01/scheduled

    return 1
