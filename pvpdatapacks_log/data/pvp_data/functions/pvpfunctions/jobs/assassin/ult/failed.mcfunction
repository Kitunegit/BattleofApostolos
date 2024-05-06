#> pvp_data:pvpfunctions/jobs/assassin/ult/failed
#
# 暗殺者ウルトチャージ中
#
# @internal

# 演出
    effect clear @s blindness
    execute at @s run playsound ui.button.click player @a[distance=..20] ~ ~ ~ 1 1.2
# CT変更
    scoreboard players set @s ult_cool 45