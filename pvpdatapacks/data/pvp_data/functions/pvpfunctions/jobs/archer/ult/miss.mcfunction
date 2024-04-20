#> pvp_data:pvpfunctions/jobs/archer/ult/miss
#
# ウルト中失敗処理
#
# @internal

# CTをセット
    scoreboard players set @s ult_cool 30
    execute at @s run playsound minecraft:block.wooden_trapdoor.open player @s ~ ~ ~ 1 0.5
    execute at @s run playsound minecraft:block.wooden_trapdoor.close player @s ~ ~ ~ 1 0.5