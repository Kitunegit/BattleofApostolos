#> pvp_data:pvpfunctions/jobs/wizard/ult/black/main
#
# 魔導士黒ウルト常時実行処理
#
# @internal

# 開始検知
    execute unless score @s Charge.Time matches 1.. if predicate pvp_data:r_click/cmd25 if score @s ult_cool matches ..0 if score @s r_click matches 1.. run function pvp_data:pvpfunctions/jobs/wizard/ult/black/start
# 発動中処理
    execute if score @s ult_count matches 1.. run function pvp_data:pvpfunctions/jobs/wizard/ult/black/skill_tick