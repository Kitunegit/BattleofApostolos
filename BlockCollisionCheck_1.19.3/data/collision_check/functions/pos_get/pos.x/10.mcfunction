#> collision_check:pos_get/pos.x/10
#
#

# 0.1024以上離れていたら1024を記録、0.1024詰めて次の精度で確認
execute unless entity @s[distance=..0.1024] run scoreboard players add #Pos.X collision_check 1024
execute unless entity @s[distance=..0.1024] positioned ^ ^ ^0.1024 run function collision_check:pos_get/pos.x/9
# 0.1024以上離れていなかったら、その場所で次の精度で確認
execute if entity @s[distance=..0.1024] run function collision_check:pos_get/pos.x/9