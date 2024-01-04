#> collision_check:pos_get/pos.y/8
#
#

# 0.0256以上離れていたら0256を記録、0.0256詰めて次の精度で確認
execute unless entity @s[distance=..0.0256] run scoreboard players add #Pos.Y collision_check 0256
execute unless entity @s[distance=..0.0256] positioned ^ ^ ^0.0256 run function collision_check:pos_get/pos.y/7
# 0.0256以上離れていなかったら、その場所で次の精度で確認
execute if entity @s[distance=..0.0256] run function collision_check:pos_get/pos.y/7