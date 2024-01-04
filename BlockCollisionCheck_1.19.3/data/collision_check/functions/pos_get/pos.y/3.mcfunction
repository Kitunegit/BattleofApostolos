#> collision_check:pos_get/pos.y/3
#
#

# 0.0008以上離れていたら0008を記録、0.0008詰めて次の精度で確認
execute unless entity @s[distance=..0.0008] run scoreboard players add #Pos.Y collision_check 0008
execute unless entity @s[distance=..0.0008] positioned ^ ^ ^0.0008 run function collision_check:pos_get/pos.y/2
# 0.0008以上離れていなかったら、その場所で次の精度で確認
execute if entity @s[distance=..0.0008] run function collision_check:pos_get/pos.y/2