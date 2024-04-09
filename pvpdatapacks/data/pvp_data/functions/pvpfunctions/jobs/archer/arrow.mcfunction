

# 演出
    execute at @e[tag=Archer.Arrow,tag=!archer.ult] run particle dust 0.016 0.247 0.122 0.7 ~ ~ ~ 0.15 0.15 0.15 2 1
    
    # スキャンの矢
        execute if score @s skill_2_count matches 1.. at @e[tag=Archer.Arrow] run particle dust 0.71 0.831 0 2 ~ ~ ~ 0.15 0.15 0.15 2 1

        execute if score @s skill_2_count matches 1.. if entity @e[tag=Archer.Arrow,nbt={life:1s}] run tag @s add archer.skill2_player

        execute if score @s skill_2_count matches 1.. as @e[tag=Archer.Arrow] if entity @s[nbt={life:1s}] at @s run function pvp_data:pvpfunctions/jobs/archer/skill/2/arrow/land

# 着弾処理

    execute as @e[tag=Archer.Arrow] at @s if entity @s[nbt={life:1s}] run particle dust 0 1 0.45108 2 ~ ~ ~

    execute as @e[tag=Archer.Arrow] if entity @s[nbt={life:5s}] run kill @s

    execute as @e[type=spectral_arrow] if entity @s[nbt={life:1s}] run kill @s

# 矢の付近に自身のスコアと一致するOwnerスコアを持ったマーカーがいたら処理を流す
    execute if entity @e[tag=archer.homing_target] as @e[tag=Archer.Arrow] if score @s skill_2_count matches 4..80 run function pvp_data:pvpfunctions/jobs/archer/skill/2/arrow/homing
    execute if entity @e[tag=archer.homing_target] as @e[tag=Archer.Arrow] run function pvp_data:pvpfunctions/jobs/archer/skill/2/arrow/main