#> pvp_data:pvpfunctions/jobs/wizard/attack/main
#
# 魔導士通常攻撃常時実行処理
#
# @internal

# 検知
    execute unless score @s Charge.Time matches 1.. if predicate pvp_data:r_click/cmd2 if score @s special_cool matches ..0 if score @s r_click matches 1.. if score @s sneaking matches 0 run function pvp_data:pvpfunctions/jobs/wizard/attack/start
# バーストCT短縮
    scoreboard players remove @s[scores={wizard_normal_burst=1..}] wizard_normal_burst 1
# バースト処理
    execute if score @s wizard_normal_burst matches 1.. run function pvp_data:pvpfunctions/jobs/wizard/attack/burst
# 弾道常時実行処理
    execute as @e[type=item_display,tag=MagicCircle] run function pvp_data:pvpfunctions/jobs/wizard/attack/circle
# CT終了処理
    execute if score @s special_cool matches 1 run item modify entity @s hotbar.0 pvp_data:system/tool_damage/all_heel