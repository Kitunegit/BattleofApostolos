#> pvp_data:pvpfunctions/jobs/warrior/ult/phase/jump
#
# 戦士ウルト飛翔処理
#
# @internal

# 飛ばす
    scoreboard players set $strength delta.api.launch 15000
    execute rotated ~ -90 run function delta:api/launch_looking
# 演出
    execute at @s run particle dust 0.494 0.212 0.02 1.2 ~ ~0.5 ~ 2 1.25 2 1 60 force
    execute at @s run playsound minecraft:item.trident.throw player @a[distance=..10] ~ ~ ~ 1 1.2