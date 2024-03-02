scoreboard objectives remove aj.i
scoreboard objectives remove aj.id
scoreboard objectives remove aj.tween_time
scoreboard objectives remove aj.anim_time
scoreboard objectives remove aj.life_time
scoreboard objectives remove aj.warrior_ult.model.export_version
scoreboard objectives remove aj.warrior_ult.model.rig_loaded
scoreboard objectives remove aj.warrior_ult.model.animation.ult_animation.local_anim_time
scoreboard objectives remove aj.warrior_ult.model.animation.ult_fall.local_anim_time
scoreboard objectives remove aj.warrior_ult.model.animation.ult_animation.loop_mode
scoreboard objectives remove aj.warrior_ult.model.animation.ult_fall.loop_mode
tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},[{"text":"INFO ℹ","color":"green"},{"text":" > ","color":"gray"},{"text":"The warrior_ult.model Rig has been uninstalled successfully.\n"},{"text":"Please remove the Rig's functions from the datapack before reloading.","color":"gray"}]]