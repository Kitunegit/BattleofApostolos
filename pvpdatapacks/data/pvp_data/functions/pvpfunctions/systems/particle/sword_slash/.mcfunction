#> pvp_data:pvpfunctions/systems/particle/sword_slash/
#
# @internal

#
    #declare tag system.particle.sword_slash.display
    #declare tag system.particle.sword_slash.temporary
    summon item_display ~ ~-100 ~ {brightness: {block:15, sky:15}, transformation: {scale: [0f, 4f, 2f], translation: [0f, 0f, 0f], right_rotation: [0f, 0f, 0f, 1f], left_rotation: [0f, 0f, 0f, 1f]}, item: {id: "knowledge_book", Count: 1b, tag: {CustomModelData: 24792}}, Tags: ["system.particle.sword_slash.display", "system.particle.sword_slash.temporary"]}

    execute as @e[tag=system.particle.sword_slash.temporary] rotated 90 90 run function tak_utils:align_display_rot/

    execute as @e[tag=system.particle.sword_slash.temporary] run function tak_utils:multiply_rot_by_random/ {range: [-32f, 32f], command: "execute rotated ~0 ~ run tp @s ~ ~ ~ ~ ~"}

    tag @e[tag=system.particle.sword_slash.temporary] remove system.particle.sword_slash.temporary
