scoreboard players add @s aj.guardian_ult.animation.rotation.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.guardian_ult.animation.rotation.local_anim_time
function animated_java:guardian_ult/zzzzzzzz/animations/rotation/apply_frame_as_root
execute if score @s aj.guardian_ult.animation.rotation.local_anim_time matches 60.. run function animated_java:guardian_ult/zzzzzzzz/animations/rotation/end