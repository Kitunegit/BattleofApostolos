#> collision_check:pos_get/pos.x/0
#
#

# 0.0001以上離れていたら0001を記録
execute if entity @s[distance=..0.0001] run scoreboard players add #Pos.X collision_check 0001