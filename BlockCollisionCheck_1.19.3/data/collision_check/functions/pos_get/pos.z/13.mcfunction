#> collision_check:pos_get/pos.z/13
#
#

# 0.8192以上離れていたら8192を記録、0.8192詰めて次の精度で確認
execute unless entity @s[distance=..0.8192] run scoreboard players add #Pos.Z collision_check 8192
execute unless entity @s[distance=..0.8192] positioned ^ ^ ^0.8192 run function collision_check:pos_get/pos.z/12
# 0.8192以上離れていなかったら、その場所で次の精度で確認
execute if entity @s[distance=..0.8192] run function collision_check:pos_get/pos.z/12