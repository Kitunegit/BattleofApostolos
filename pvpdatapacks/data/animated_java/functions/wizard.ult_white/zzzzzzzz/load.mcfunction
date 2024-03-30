scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.wizard.ult_white.export_version dummy
scoreboard objectives add aj.wizard.ult_white.rig_loaded dummy
scoreboard objectives add aj.wizard.ult_white.animation.animation.local_anim_time dummy
scoreboard objectives add aj.wizard.ult_white.animation.animation.loop_mode dummy
scoreboard players set $aj.wizard.ult_white.animation.animation aj.id 0
scoreboard players set $aj.wizard.ult_white.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.wizard.ult_white.export_version aj.i -1179359131
scoreboard players reset * aj.wizard.ult_white.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.wizard.ult_white.root] run function animated_java:wizard.ult_white/zzzzzzzz/on_load