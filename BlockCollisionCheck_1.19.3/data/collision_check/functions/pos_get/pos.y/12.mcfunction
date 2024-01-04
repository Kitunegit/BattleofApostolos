#> collision_check:pos_get/pos.y/12
#
#

# 0.4096以上離れていたら4096を記録、0.4096詰めて次の精度で確認
execute unless entity @s[distance=..0.4096] run scoreboard players add #Pos.Y collision_check 4096
execute unless entity @s[distance=..0.4096] positioned ^ ^ ^0.4096 run function collision_check:pos_get/pos.y/11
# 0.4096以上離れていなかったら、その場所で次の精度で確認
execute if entity @s[distance=..0.4096] run function collision_check:pos_get/pos.y/11