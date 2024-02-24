scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.guardian_ult.animation.rotation.local_anim_time 0
scoreboard players set @s aj.guardian_ult.animation.rotation.loop_mode 0
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:guardian_ult/zzzzzzzz/animations/rotation/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.guardian_ult.animation.rotation