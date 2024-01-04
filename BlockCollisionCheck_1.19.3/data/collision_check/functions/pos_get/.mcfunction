#> collision_check:pos_get/
#
# @within collision_check:main/

# 座標初期値
scoreboard players set #Pos.X collision_check 0
scoreboard players set #Pos.Y collision_check 0
scoreboard players set #Pos.Z collision_check 0

# 座標取得 (二分法)
execute align x facing entity @s feet positioned ^ ^ ^-0.00000001 run function collision_check:pos_get/pos.x/13
execute align y facing entity @s feet positioned ^ ^ ^-0.00000001 run function collision_check:pos_get/pos.y/13
execute align z facing entity @s feet positioned ^ ^ ^-0.00000001 run function collision_check:pos_get/pos.z/13

# 誤差修正
scoreboard players operation #Pos.X collision_check %= #10000 collision_check
scoreboard players operation #Pos.Y collision_check %= #10000 collision_check
scoreboard players operation #Pos.Z collision_check %= #10000 collision_check

# 状態スコアリセット
scoreboard players set #direction collision_check 0
scoreboard players set #up_down collision_check 0
scoreboard players set #special collision_check 0
#向いている方角(1:north, 2:south, 3:east, 4:west)
execute if block ~ ~ ~ #collision_check:blockstate_group/direction[facing=north] run scoreboard players set #direction collision_check 1
execute if block ~ ~ ~ #collision_check:blockstate_group/direction[facing=south] run scoreboard players set #direction collision_check 2
execute if block ~ ~ ~ #collision_check:blockstate_group/direction[facing=east] run scoreboard players set #direction collision_check 3
execute if block ~ ~ ~ #collision_check:blockstate_group/direction[facing=west] run scoreboard players set #direction collision_check 4
#上下(default:downside, 1:upside)
execute if block ~ ~ ~ #collision_check:blockstate_group/up_down[facing=down] run scoreboard players set #up_down collision_check 1
execute if block ~ ~ ~ #collision_check:blockstate_group/up_down[vertical_direction=down] run scoreboard players set #up_down collision_check 1
execute if block ~ ~ ~ #collision_check:blockstate_group/up_down[type=top] run scoreboard players set #up_down collision_check 1
execute if block ~ ~ ~ #collision_check:blockstate_group/up_down[face=ceiling] run scoreboard players set #up_down collision_check 1
execute if block ~ ~ ~ #collision_check:blockstate_group/up_down[half=top] run scoreboard players set #up_down collision_check 1