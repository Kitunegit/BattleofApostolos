#> pvp_data:pvpfunctions/jobs/knight/special/time
#
# 騎士特殊攻撃定期処理
#
# @internal

# カウントアップ
    scoreboard players add @s special_count 1

# 第一波
    execute if score @s special_count matches 1 run function pvp_data:pvpfunctions/jobs/knight/special/slash
    execute if score @s special_count matches 1 at @s run playsound ui.toast.in player @a[distance=..10] ~ ~ ~ 100 1
# 第二波
    execute if score @s special_count matches 10 run function pvp_data:pvpfunctions/jobs/knight/special/slash
    execute if score @s special_count matches 10 at @s run playsound ui.toast.in player @a[distance=..10] ~ ~ ~ 100 1.2
# 第三波
    execute if score @s special_count matches 15 run function pvp_data:pvpfunctions/jobs/knight/special/slash
    execute if score @s special_count matches 15 at @s run playsound ui.toast.in player @a[distance=..10] ~ ~ ~ 100 1.4
# リセット
    execute if score @s special_count matches 15 run tag @s remove Knight.Special
    execute if score @s special_count matches 15 run scoreboard players reset @s special_count