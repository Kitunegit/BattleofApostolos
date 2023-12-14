#軌道のパーティクル
execute at @s run particle dust 0.016 0.247 0.122 0.1 ~ ~ ~ 0.15 0.15 0.15 2 2
execute at @s run particle dust 0.043 0.706 0.341 0.1 ~ ~ ~ 0.15 0.15 0.15 2 1
#スキャンの矢
execute if score @s skill_2_cool matches 300.. run particle dust 0.71 0.831 0 0.75 ~ ~ ~ 0.15 0.15 0.15 2 2
execute at @s if entity @s[nbt={life:1s}] if score @s skill_2_cool matches 300.. run effect give @e[distance=..10,tag=player] glowing 20 1 true
execute at @s if entity @s[nbt={life:1s}] if score @s skill_2_cool matches 300.. run particle flash ~ ~ ~ 10 10 10 0.5 80
#着弾処理
execute at @s if entity @s[nbt={life:1s}] run particle dust 0 1 0.45108 2 ~ ~ ~
execute at @s if entity @s[nbt={life:1s}] run kill @s