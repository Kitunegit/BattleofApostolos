#> pvp_data:pvpfunctions/systems/particle/tick
#
# @internal

#
    execute as @e[tag=system.particle.sword_slash.display] run scoreboard players add @s system.particle.age 1

    kill @e[type=item_display, tag=system.particle.sword_slash.display, scores={system.particle.age=8..}]
