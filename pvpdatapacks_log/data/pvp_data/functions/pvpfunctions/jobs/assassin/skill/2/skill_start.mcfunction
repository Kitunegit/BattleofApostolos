#> pvp_data:pvpfunctions/jobs/assassin/skill/2/skill_start
#
# 暗殺者スキル2開始処理
#
# @internal

#発動演出
    execute at @s run playsound minecraft:block.end_portal_frame.fill player @a[distance=..15] ~ ~ ~ 0.7 0.5
#効果付与
    execute at @s run summon marker ~ ~ ~ {Tags:[black_eyes]}
    execute as @e[tag=black_eyes,type=marker] at @s rotated as @a[limit=1] run tp @s ^ ^ ^1.05
    execute as @e[tag=black_eyes,type=marker] at @s run tp @s ~ ~1 ~
    execute at @e[tag=black_eyes,type=marker] rotated as @s run tp @e[tag=black_eyes,type=marker] ~ ~ ~ facing ^ ^ ^1
    execute as @e[type=marker,tag=black_eyes] run function pvp_data:pvpfunctions/jobs/assassin/skill/2/eyes/main
#その他処理
    item modify entity @s hotbar.2 pvp_data:system/tool_damage/set_damage
    scoreboard players set @s skill_2_cool 300