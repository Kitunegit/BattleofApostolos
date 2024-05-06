#> pvp_data:pvpfunctions/jobs/warrior/ult/skill_tick
#
# 戦士ウルト効果中処理
#
# @internal

# カウントダウン
    scoreboard players remove @s ult_count 1
# 音声演出
    execute if score @s ult_count matches 100 at @s run playsound block.anvil.land player @a[distance=..20] ~ ~ ~ 0.7 0.5
    execute if score @s ult_count matches 80 at @s run playsound block.anvil.land player @a[distance=..20] ~ ~ ~ 0.7 0.7
    execute if score @s ult_count matches 60 at @s run playsound block.anvil.land player @a[distance=..20] ~ ~ ~ 0.7 0.8
    execute if score @s ult_count matches 40 at @s run playsound block.anvil.land player @a[distance=..20] ~ ~ ~ 0.7 1
# 視覚演出
    execute if score @s ult_count matches 20..120 at @s run particle block redstone_block ~ ~ ~ 2 0.75 2 0.1 45

# 飛翔開始
    execute if score @s ult_count matches 20 run function pvp_data:pvpfunctions/jobs/warrior/ult/phase/jump
# 落下開始
    execute if score @s ult_count matches 0 run function pvp_data:pvpfunctions/jobs/warrior/ult/phase/fall

# 失敗処理
    execute if entity @s[tag=Charge.Miss] run function pvp_data:pvpfunctions/jobs/warrior/ult/miss