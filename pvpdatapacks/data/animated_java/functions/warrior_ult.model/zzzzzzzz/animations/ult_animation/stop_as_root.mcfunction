scoreboard players set @s aj.warrior_ult.model.animation.ult_animation.local_anim_time 0
tag @s remove aj.warrior_ult.model.animation.ult_animation
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.warrior_ult.model.disable_command_keyframes
function animated_java:warrior_ult.model/zzzzzzzz/animations/ult_animation/tree/leaf_0
tag @s remove aj.warrior_ult.model.disable_command_keyframes