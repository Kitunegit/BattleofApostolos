#> pvp_data:pvpfunctions/jobs/archer/ult/arrow_main
#
# 矢の常時実行処理
#
# @internal

# 演出
    execute at @s[nbt={life:0s}] run particle dust 0.89 0.953 0.333 1 ^ ^ ^ 0.25 0.25 0.25 5 1
    execute at @s[nbt={life:0s}] run particle dust 0.09 0.553 0.031 1 ^ ^ ^ 0.25 0.25 0.25 5 1
# 着弾処理
    execute if entity @e[nbt={life:100s}] at @s run playsound minecraft:block.wood.place player @a[distance=..5] ~ ~ ~ 1 0.1
    execute if entity @e[nbt={life:100s}] at @s run particle block oak_planks ~ ~ ~
    execute if entity @e[nbt={life:100s}] run kill @s