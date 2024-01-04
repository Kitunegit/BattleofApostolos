#> collision_check:pos_get/pos.z/9
#
#

# 0.0512以上離れていたら0512を記録、0.0512詰めて次の精度で確認
execute unless entity @s[distance=..0.0512] run scoreboard players add #Pos.Z collision_check 0512
execute unless entity @s[distance=..0.0512] positioned ^ ^ ^0.0512 run function collision_check:pos_get/pos.z/8
# 0.0512以上離れていなかったら、その場所で次の精度で確認
execute if entity @s[distance=..0.0512] run function collision_check:pos_get/pos.z/8