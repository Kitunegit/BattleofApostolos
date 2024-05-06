scoreboard players set @s aj.guardian_ult.animation.rotation.local_anim_time 0
tag @s remove aj.guardian_ult.animation.rotation
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.guardian_ult.disable_command_keyframes
function animated_java:guardian_ult/zzzzzzzz/animations/rotation/tree/leaf_0
tag @s remove aj.guardian_ult.disable_command_keyframes