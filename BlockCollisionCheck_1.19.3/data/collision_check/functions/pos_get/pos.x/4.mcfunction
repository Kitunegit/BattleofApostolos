#> collision_check:pos_get/pos.x/4
#
#

# 0.0016以上離れていたら0016を記録、0.0016詰めて次の精度で確認
execute unless entity @s[distance=..0.0016] run scoreboard players add #Pos.X collision_check 0016
execute unless entity @s[distance=..0.0016] positioned ^ ^ ^0.0016 run function collision_check:pos_get/pos.x/3
# 0.0016以上離れていなかったら、その場所で次の精度で確認
execute if entity @s[distance=..0.0016] run function collision_check:pos_get/pos.x/3