#> pvp_data:pvpfunctions/jobs/knight/special/start
#
# 騎士ウルト斬撃開始処理
#
# @internal

# 発動中のタグ
    tag @s add Knight.Special

# 演出
    execute at @s run particle minecraft:scrape ~ ~ ~ 0.3 0.7 0.3 0.2 35

# CT
    scoreboard players set @s special_cool 120
    item modify entity @s hotbar.0 pvp_data:system/tool_damage/set_damage