scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.warrior_ult.model.animation.ult_animation.local_anim_time 0
scoreboard players set @s aj.warrior_ult.model.animation.ult_animation.loop_mode 2
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:warrior_ult.model/zzzzzzzz/animations/ult_animation/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.warrior_ult.model.animation.ult_animation