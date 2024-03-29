#> pvp_data:pvpfunctions/systems/particle/sword_slash/
#
# @internal

#
    #declare tag system.particle.sword_slash.display
    #declare tag system.particle.sword_slash.temporary
    summon item_display ~ ~-100 ~ {brightness: {block:15, sky:15}, transformation: {scale: [0f, 4f, 2f], translation: [0f, 0f, 0f], right_rotation: [0f, 0f, 0f, 1f], left_rotation: [0f, 0f, 0f, 1f]}, item: {id: "knowledge_book", Count: 1b, tag: {CustomModelData: 24792}}, Tags: ["system.particle.sword_slash.display", "system.particle.sword_slash.temporary"]}

    execute as @e[tag=system.particle.sword_slash.temporary] rotated 90 90 run function tak_utils:align_display_rot/

    tp @e[tag=system.particle.sword_slash.temporary] ~ ~ ~ ~ ~

    #execute as @e[tag=system.particle.sword_slash.temporary] run function tak_utils:multiply_rot_by_random/ {range: [-32f, 32f], command: "tp @s ~ ~ ~ ~ ~"}

#
    #declare tag system.particle.sword_slash.axis
    execute positioned 0.0 0.0 0.0 facing ~ ~ ~1 run summon marker ^ ^ ^1 {Tags: ["system.particle.sword_slash.axis"]}

    data modify storage temporary: rotation.axis set from entity @e[tag=system.particle.sword_slash.axis,limit=1] Pos

    kill @e[tag=system.particle.sword_slash.axis,limit=1]

    execute store result storage temporary: rotation.angle float 0.01745 run random value -90..90

    data modify entity @e[tag=system.particle.sword_slash.temporary,limit=1] transformation.left_rotation set from storage temporary: rotation

#
    data remove storage temporary: rotation

    tag @e[tag=system.particle.sword_slash.temporary,limit=1] remove system.particle.sword_slash.temporary
