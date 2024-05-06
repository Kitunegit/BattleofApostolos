scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.guardian_ult.export_version dummy
scoreboard objectives add aj.guardian_ult.rig_loaded dummy
scoreboard objectives add aj.guardian_ult.animation.rotation.local_anim_time dummy
scoreboard objectives add aj.guardian_ult.animation.rotation.loop_mode dummy
scoreboard players set $aj.guardian_ult.animation.rotation aj.id 0
scoreboard players set $aj.guardian_ult.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.guardian_ult.export_version aj.i 35171300
scoreboard players reset * aj.guardian_ult.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.guardian_ult.root] run function animated_java:guardian_ult/zzzzzzzz/on_load