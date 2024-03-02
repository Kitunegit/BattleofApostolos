scoreboard players add @s aj.warrior_ult.model.animation.ult_animation.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.warrior_ult.model.animation.ult_animation.local_anim_time
function animated_java:warrior_ult.model/zzzzzzzz/animations/ult_animation/apply_frame_as_root
execute if score @s aj.warrior_ult.model.animation.ult_animation.local_anim_time matches 130.. run function animated_java:warrior_ult.model/zzzzzzzz/animations/ult_animation/end