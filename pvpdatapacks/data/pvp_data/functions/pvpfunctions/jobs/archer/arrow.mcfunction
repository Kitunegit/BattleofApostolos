#軌道のパーティクル
execute at @e[type=arrow,tag=!archer.ult] run particle dust 0.016 0.247 0.122 0.7 ~ ~ ~ 0.15 0.15 0.15 2 1
#スキャンの矢
execute if score @s skill_2_count matches 1.. at @e[type=arrow] run particle dust 0.71 0.831 0 2 ~ ~ ~ 0.15 0.15 0.15 2 1
execute if score @s skill_2_count matches 1.. as @e[type=arrow] if entity @s[nbt={life:1s}] at @s run effect give @e[distance=..10,tag=player] glowing 20 1 true
execute if score @s skill_2_count matches 1.. as @e[type=arrow] if entity @s[nbt={life:1s}] at @s run particle flash ~ ~ ~ 10 10 10 0.5 80
execute if score @s skill_2_count matches 1.. as @e[type=arrow] if entity @s[nbt={life:1s}] at @s as @a[distance=..15,tag=player] at @s run playsound minecraft:entity.warden.attack_impact player @s ~ ~ ~ 1 2
#着弾処理
execute as @e[type=arrow] at @s if entity @s[nbt={life:1s}] run particle dust 0 1 0.45108 2 ~ ~ ~
execute as @e[type=arrow] if entity @s[nbt={life:5s}] run kill @s
execute as @e[type=spectral_arrow] if entity @s[nbt={life:1s}] run kill @s