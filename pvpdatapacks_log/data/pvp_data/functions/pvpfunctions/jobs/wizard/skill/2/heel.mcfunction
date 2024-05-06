#> pvp_data:pvpfunctions/jobs/wizard/skill/2/heel
#
# 魔導士 スキル2 処理実行
#
# @internal

# 効果
    effect give @a[tag=wizard.skill_heel] instant_health 1 2 true
# 演出
    execute as @a[tag=wizard.skill_heel] at @s run particle dust 1 1 1 3 ~ ~ ~ 1 1 1 0.1 100
    execute as @a[tag=wizard.skill_heel] at @s run playsound block.beacon.power_select player @a[distance=..10] ~ ~ ~ 1 2
# リセット
    tag @a remove wizard.skill_heel