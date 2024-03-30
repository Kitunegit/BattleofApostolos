scoreboard players set @s aj.wizard.ult_white.animation.animation.local_anim_time 0
tag @s remove aj.wizard.ult_white.animation.animation
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.wizard.ult_white.disable_command_keyframes
function animated_java:wizard.ult_white/zzzzzzzz/animations/animation/tree/leaf_0
tag @s remove aj.wizard.ult_white.disable_command_keyframes