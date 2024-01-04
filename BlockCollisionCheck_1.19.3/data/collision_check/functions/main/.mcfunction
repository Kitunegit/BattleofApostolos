#> collision_check:main/
#
#

# 実行座標にマーカー
execute store success score #success collision_check run summon marker ~ ~ ~ {Tags:[collision_pos]}
execute if score #success collision_check matches 0 run scoreboard players set #result collision_check -2

# 座標取得
execute as @e[tag=collision_pos,type=marker] at @s run function collision_check:pos_get/

# ブロック衝突判定
scoreboard players set #result collision_check -1
execute as @s if block ~ ~ ~ #collision_check:nocollision/no_collisions run scoreboard players set #result collision_check 0
execute as @s if score #result collision_check matches -1 if block ~ ~ ~ #collision_check:fixed_collision/fixed_collisions run function collision_check:block_check/fixed_collision
execute as @s if score #result collision_check matches -1 if block ~ ~ ~ #collision_check:change_collision/change_collisions run function collision_check:block_check/change_collision
execute if score #result collision_check matches -1 run scoreboard players set #result collision_check 1

# error
execute if score #result collision_check matches -2 run scoreboard players set #result collision_check -1
execute if score #result collision_check matches -1 run say 読み込み範囲外です

# 終了(衝突無し:#result=0,衝突あり:#result=1)
kill @e[tag=collision_pos,type=marker]
execute store result score @s collision_check run scoreboard players get #result collision_check

# debug
#execute if score #result collision_check matches 0 run say 衝突なし
#execute if score #result collision_check matches 1 run say 衝突あり