scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.knight_sword.export_version dummy
scoreboard objectives add aj.knight_sword.rig_loaded dummy
scoreboard objectives add aj.knight_sword.animation.test_ult.local_anim_time dummy
scoreboard objectives add aj.knight_sword.animation.test_ult.loop_mode dummy
scoreboard players set $aj.knight_sword.animation.test_ult aj.id 0
scoreboard players set $aj.knight_sword.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.knight_sword.export_version aj.i -1315727174
scoreboard players reset * aj.knight_sword.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.knight_sword.root] run function animated_java:knight_sword/zzzzzzzz/on_load