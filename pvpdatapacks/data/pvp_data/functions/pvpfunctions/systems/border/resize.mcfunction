#> pvp_data:pvpfunctions/systems/border/resize
#
# @within function pvp_data:pvpfunctions/systems/border/tick

#
    #declare score_holder $radius
    execute if score $time system.border matches 1.. store result score $radius system.border run data get storage border: config.radius 10000

    execute if score $time system.border matches 1.. run scoreboard players operation $radius system.border += $size system.border

    execute if score $time system.border matches 1.. if score $radius system.border matches ..4999 run scoreboard players set $radius system.border 5000

    execute if score $time system.border matches 1.. if score $radius system.border matches 1600001.. run scoreboard players set $radius system.border 1600000

    execute if score $time system.border matches 1.. store result storage border: config.radius double 0.0001 run scoreboard players get $radius system.border

    execute if score $time system.border matches 1.. run scoreboard players remove $time system.border 1

    scoreboard players reset $radius system.border

    execute if score $time system.border matches ..0 run scoreboard players reset $size system.border

    execute if score $time system.border matches ..0 run scoreboard players reset $time system.border
