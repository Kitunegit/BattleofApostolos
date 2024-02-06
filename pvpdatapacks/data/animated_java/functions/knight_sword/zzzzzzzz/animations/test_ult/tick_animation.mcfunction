scoreboard players add @s aj.knight_sword.animation.test_ult.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.knight_sword.animation.test_ult.local_anim_time
function animated_java:knight_sword/zzzzzzzz/animations/test_ult/apply_frame_as_root
execute if score @s aj.knight_sword.animation.test_ult.local_anim_time matches 85.. run function animated_java:knight_sword/zzzzzzzz/animations/test_ult/end