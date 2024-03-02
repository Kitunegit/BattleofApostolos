#> pvp_data:pvpfunctions/jobs/warrior/ult/skill_tick
#
# 戦士ウルト効果中処理
#
# @internal

# 音声演出
    execute if score @s ult_count matches 100 at @s run playsound block.anvil.land player @a[distance=..20] ~ ~ ~ 0.7 0.5
    execute if score @s ult_count matches 80 at @s run playsound block.anvil.land player @a[distance=..20] ~ ~ ~ 0.7 0.7
    execute if score @s ult_count matches 60 at @s run playsound block.anvil.land player @a[distance=..20] ~ ~ ~ 0.7 0.8
    execute if score @s ult_count matches 40 at @s run playsound block.anvil.land player @a[distance=..20] ~ ~ ~ 0.7 1
# 視覚演出
    execute if score @s ult_count matches 20..120 at @s run particle block redstone_block ~ ~ ~ 2 0.75 2 0.1 45

