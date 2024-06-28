#> game_data:jobs/knight/normal_attack/frame_update
#
# 斬撃のフレームのupdate
#
# @internal

# First
    execute as @e[type=minecraft:text_display,tag=particle.knight.first] if score @s system.particle.frame.tick matches 7.. run kill @s
    execute as @e[type=minecraft:text_display,tag=particle.knight.first] run data merge entity @s {"text":'{"font":"slash/knight/first","score":{"name":"@s","objective":"system.particle.frame.tick"}}'}
# second
    execute as @e[type=minecraft:text_display,tag=particle.knight.second] if score @s system.particle.frame.tick matches 6.. run kill @s
    execute as @e[type=minecraft:text_display,tag=particle.knight.second] run data merge entity @s {"text":'{"font":"slash/knight/second","score":{"name":"@s","objective":"system.particle.frame.tick"}}'}
# third
    execute as @e[type=minecraft:text_display,tag=particle.knight.third] if score @s system.particle.frame.tick matches 6.. run kill @s
    execute as @e[type=minecraft:text_display,tag=particle.knight.third] run data merge entity @s {"text":'{"font":"slash/knight/third","score":{"name":"@s","objective":"system.particle.frame.tick"}}'}
    # forth
    execute as @e[type=minecraft:text_display,tag=particle.knight.fourth] if score @s system.particle.frame.tick matches 6.. run kill @s
    execute as @e[type=minecraft:text_display,tag=particle.knight.fourth] run data merge entity @s {"text":'{"font":"slash/knight/fourth","score":{"name":"@s","objective":"system.particle.frame.tick"}}'}