scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.wizard.ult_white.animation.animation.local_anim_time 0
scoreboard players set @s aj.wizard.ult_white.animation.animation.loop_mode 0
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:wizard.ult_white/zzzzzzzz/animations/animation/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.wizard.ult_white.animation.animation