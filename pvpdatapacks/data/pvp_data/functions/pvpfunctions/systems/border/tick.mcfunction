#> pvp_data:pvpfunctions/systems/border/tick
#
# @within function pvp_data:pvpfunctions/systems/main

# true ? continue; : break;
    execute unless data storage border: {config: {enabled: true}} run kill @e[tag=system.border.display,type=item_display]
    execute unless data storage border: {config: {enabled: true}} run return 0

# 中心にエンティティ召喚
    #declare tag system.border.center
    execute unless entity @e[tag=system.border.center] run summon marker 0.0 0.0 0.0 {Tags: ["system.border.center"]}

    data modify storage border: temporary set from storage border: config.center

    data modify storage border: temporary insert 1 value 0.0d

    data modify entity @e[tag=system.border.center,limit=1] Pos set from storage border: temporary

    #declare tag system.border.display
    execute unless entity @e[tag=system.border.display] at @e[tag=system.border.center] run summon item_display ~ ~ ~ {Tags: ["system.border.display"], item: {id: "minecraft:knowledge_book", Count: 1b, tag: {CustomModelData: 24791, Enchantments: [{}]}}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], translation: [0f, 55f, 0f], scale: [1f, 80f, 1f]}, view_range: 2048.0f, teleport_duration: 4}

    tp @e[tag=system.border.display] @e[tag=system.border.center,limit=1]

    execute store result entity @e[tag=system.border.display,limit=1] transformation.scale[0] float 1 run data get storage border: config.radius

    execute store result entity @e[tag=system.border.display,limit=1] transformation.scale[2] float 1 run data get storage border: config.radius

# パーティクル
    scoreboard players set $count system.border 10

    execute as @e[tag=system.border.center] run function pvp_data:pvpfunctions/systems/border/show with storage border: config

# ダメージ
    data modify storage border: temporary set from storage border: config.damage

    data modify storage border: temporary.radius set from storage border: config.radius

    execute as @a[gamemode=!creative,gamemode=!spectator] at @s positioned ~ 0 ~ run function pvp_data:pvpfunctions/systems/border/damage with storage border: temporary

# リセット
    data remove storage border: temporary

    kill @e[tag=system.border.center]

# resize
    #declare score_holder $radius
    execute if score $time system.border matches 1.. store result score $radius system.border run data get storage border: config.radius 10000

    execute if score $time system.border matches 1.. run scoreboard players operation $radius system.border += $size system.border

    execute if score $time system.border matches 1.. if score $radius system.border matches ..9999 run scoreboard players set $radius system.border 10000

    execute if score $time system.border matches 1.. if score $radius system.border matches 810000.. run scoreboard players set $radius system.border 800000

    execute if score $time system.border matches 1.. store result storage border: config.radius double 0.0001 run scoreboard players get $radius system.border

    execute if score $time system.border matches 1.. run scoreboard players remove $time system.border 1

    scoreboard players reset $radius system.border

    execute if score $time system.border matches ..0 run scoreboard players reset $size system.border

    execute if score $time system.border matches ..0 run scoreboard players reset $time system.border
