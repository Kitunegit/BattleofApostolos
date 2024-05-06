scoreboard players set @s aj.knight_sword.animation.test_ult.local_anim_time 0
tag @s remove aj.knight_sword.animation.test_ult
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.knight_sword.disable_command_keyframes
function animated_java:knight_sword/zzzzzzzz/animations/test_ult/tree/leaf_0
tag @s remove aj.knight_sword.disable_command_keyframes