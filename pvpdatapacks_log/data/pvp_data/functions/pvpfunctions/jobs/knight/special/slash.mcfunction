#> pvp_data:pvpfunctions/jobs/knight/special/slash
#
# 騎士ウルト斬撃射出処理
#
# @internal

# 演出
    execute at @s run playsound entity.player.attack.sweep player @a[distance=..10] ~ ~ ~ 100 1.5
    execute at @s run particle minecraft:cloud ~ ~ ~ 0.5 0.7 0.5 0.01 15
# マーカー召喚
    execute at @s run summon marker ^ ^ ^1 {Tags:[Knight.Special_slash]}
# マーカーの方向変更
    execute at @s rotated as @s as @e[tag=Knight.Special_slash,tag=!Knight.Special_slash_facing] run tp @s ^ ^ ^-1 facing ~ ~ ~
    execute as @e[tag=Knight.Special_slash,tag=!Knight.Special_slash_facing] at @s positioned ~ ~1.4 ~ run tp @s ^ ^ ^1.25
    tag @e[tag=Knight.Special_slash,tag=!Knight.Special_slash_facing] add Knight.Special_slash_facing