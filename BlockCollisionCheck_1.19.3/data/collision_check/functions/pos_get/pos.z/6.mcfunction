#> collision_check:pos_get/pos.z/6
#
#

# 0.0064以上離れていたら0064を記録、0.0064詰めて次の精度で確認
execute unless entity @s[distance=..0.0064] run scoreboard players add #Pos.Z collision_check 0064
execute unless entity @s[distance=..0.0064] positioned ^ ^ ^0.0064 run function collision_check:pos_get/pos.z/5
# 0.0064以上離れていなかったら、その場所で次の精度で確認
execute if entity @s[distance=..0.0064] run function collision_check:pos_get/pos.z/5