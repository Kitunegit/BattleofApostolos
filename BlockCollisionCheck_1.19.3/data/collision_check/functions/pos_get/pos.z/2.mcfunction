#> collision_check:pos_get/pos.z/2
#
#

# 0.0004以上離れていたら0004を記録、0.0004詰めて次の精度で確認
execute unless entity @s[distance=..0.0004] run scoreboard players add #Pos.Z collision_check 0004
execute unless entity @s[distance=..0.0004] positioned ^ ^ ^0.0004 run function collision_check:pos_get/pos.z/1
# 0.0004以上離れていなかったら、その場所で次の精度で確認
execute if entity @s[distance=..0.0004] run function collision_check:pos_get/pos.z/1