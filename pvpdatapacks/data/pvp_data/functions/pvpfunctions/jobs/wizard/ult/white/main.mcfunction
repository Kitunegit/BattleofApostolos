#> pvp_data:pvpfunctions/jobs/wizard/ult/white/main
#
# 魔導士白ウルト常時実行処理
#
# @internal

# 開始検知
    execute unless score @s Charge.Time matches 1.. if predicate pvp_data:r_click/cmd24 if score @s ult_cool matches ..0 if score @s r_click matches 1.. run function pvp_data:pvpfunctions/jobs/wizard/ult/white/start
# 発動中処理
    execute if score @s ult_count matches 1.. run function pvp_data:pvpfunctions/jobs/wizard/ult/white/skill_tick