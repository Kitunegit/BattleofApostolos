execute if score @s aj.warrior_ult.model.animation.ult_animation.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:warrior_ult.model/zzzzzzzz/animations/ult_animation/end_loop
execute if score @s aj.warrior_ult.model.animation.ult_animation.loop_mode = $aj.loop_mode.once aj.i run function animated_java:warrior_ult.model/animations/ult_animation/stop
execute if score @s aj.warrior_ult.model.animation.ult_animation.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:warrior_ult.model/animations/ult_animation/pause