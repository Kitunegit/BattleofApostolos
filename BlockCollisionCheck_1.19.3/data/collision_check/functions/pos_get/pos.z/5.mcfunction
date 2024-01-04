#> collision_check:pos_get/pos.z/5
#
#

# 0.0032以上離れていたら0032を記録、0.0032詰めて次の精度で確認
execute unless entity @s[distance=..0.0032] run scoreboard players add #Pos.Z collision_check 0032
execute unless entity @s[distance=..0.0032] positioned ^ ^ ^0.0032 run function collision_check:pos_get/pos.z/4
# 0.0032以上離れていなかったら、その場所で次の精度で確認
execute if entity @s[distance=..0.0032] run function collision_check:pos_get/pos.z/4