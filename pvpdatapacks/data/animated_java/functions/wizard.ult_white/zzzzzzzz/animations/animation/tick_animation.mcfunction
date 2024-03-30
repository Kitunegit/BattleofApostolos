scoreboard players add @s aj.wizard.ult_white.animation.animation.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.wizard.ult_white.animation.animation.local_anim_time
function animated_java:wizard.ult_white/zzzzzzzz/animations/animation/apply_frame_as_root
execute if score @s aj.wizard.ult_white.animation.animation.local_anim_time matches 240.. run function animated_java:wizard.ult_white/zzzzzzzz/animations/animation/end