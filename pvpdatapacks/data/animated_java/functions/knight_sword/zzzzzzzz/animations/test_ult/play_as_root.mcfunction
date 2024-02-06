scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.knight_sword.animation.test_ult.local_anim_time 0
scoreboard players set @s aj.knight_sword.animation.test_ult.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:knight_sword/zzzzzzzz/animations/test_ult/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.knight_sword.animation.test_ult