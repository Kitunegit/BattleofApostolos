

#軌道のパーティクル
    execute at @e[type=arrow,tag=!archer.ult] run particle dust 0.016 0.247 0.122 0.7 ~ ~ ~ 0.15 0.15 0.15 2 1
#スキャンの矢
    execute if score @s skill_2_count matches 1.. at @e[type=arrow] run particle dust 0.71 0.831 0 2 ~ ~ ~ 0.15 0.15 0.15 2 1
    execute if score @s skill_2_count matches 1.. if entity @e[type=arrow,nbt={life:1s}] run tag @s add archer.skill2_player
    execute if score @s skill_2_count matches 1.. as @e[type=arrow] if entity @s[nbt={life:1s}] at @s run function pvp_data:pvpfunctions/jobs/archer/skill/2/arrow/land
#着弾処理
    execute as @e[type=arrow] at @s if entity @s[nbt={life:1s}] run particle dust 0 1 0.45108 2 ~ ~ ~
    #execute as @e[type=arrow] if entity @s[nbt={life:5s}] run kill @s
    execute as @e[type=spectral_arrow] if entity @s[nbt={life:1s}] run kill @s

# 矢の付近に自身のスコアと一致するOwnerスコアを持ったマーカーがいたら処理を流す
    execute if entity @e[type=arrow] if entity @e[tag=archer.target_marker] at @e[tag=archer.target_marker] if score @s PlayerID = @e[tag=archer.target_marker,limit=1,sort=nearest] archer.owner_unique as @e[type=arrow] run function pvp_data:pvpfunctions/jobs/archer/skill/2/arrow/homing