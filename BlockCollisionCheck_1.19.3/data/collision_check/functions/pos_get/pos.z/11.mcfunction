#> collision_check:pos_get/pos.z/11
#
#

# 0.2048以上離れていたら2048を記録、0.2048詰めて次の精度で確認
execute unless entity @s[distance=..0.2048] run scoreboard players add #Pos.Z collision_check 2048
execute unless entity @s[distance=..0.2048] positioned ^ ^ ^0.2048 run function collision_check:pos_get/pos.z/10
# 0.2048以上離れていなかったら、その場所で次の精度で確認
execute if entity @s[distance=..0.2048] run function collision_check:pos_get/pos.z/10