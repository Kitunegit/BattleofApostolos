#> pvp_data:pvpfunctions/jobs/guardian/ult/ult_tick
#
# 守護者ウルト効果中実行処理
#
# @internal

# 効果時間減少
    scoreboard players remove @s ult_count 1
# 演出位置
    execute at @s run tp @e[limit=1,sort=nearest,tag=guardian.ult_model] ~ ~0 ~
    execute at @s run particle minecraft:block lapis_block ~ ~ ~ 0.8 1 0.8 2 1
# 終了演出
    execute if score @s ult_count matches 1 at @s run playsound block.beacon.deactivate player @s ~ ~ ~ 1 0.4
    execute if score @s ult_count matches 1 at @s run playsound minecraft:block.grindstone.use player @s ~ ~ ~ 0.5 0.8
    execute if score @s ult_count matches 1 as @e[tag=guardian.ult_model,limit=1,sort=nearest] run function animated_java:guardian_ult/remove/this
