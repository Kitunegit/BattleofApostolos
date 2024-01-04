#> collision_check:pos_get/pos.y/7
#
#

# 0.0128以上離れていたら0128を記録、0.0128詰めて次の精度で確認
execute unless entity @s[distance=..0.0128] run scoreboard players add #Pos.Y collision_check 0128
execute unless entity @s[distance=..0.0128] positioned ^ ^ ^0.0128 run function collision_check:pos_get/pos.y/6
# 0.0128以上離れていなかったら、その場所で次の精度で確認
execute if entity @s[distance=..0.0128] run function collision_check:pos_get/pos.y/6