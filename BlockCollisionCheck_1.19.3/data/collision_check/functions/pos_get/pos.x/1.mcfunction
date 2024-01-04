#> collision_check:pos_get/pos.x/1
#
#

# 0.0002以上離れていたら0002を記録、0.0002詰めて次の精度で確認
execute unless entity @s[distance=..0.0002] run scoreboard players add #Pos.X collision_check 0002
execute unless entity @s[distance=..0.0002] positioned ^ ^ ^0.0002 run function collision_check:pos_get/pos.x/0
# 0.0002以上離れていなかったら、その場所で次の精度で確認
execute if entity @s[distance=..0.0002] run function collision_check:pos_get/pos.x/0