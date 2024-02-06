#> pvp_data:pvpfunctions/jobs/knight/ult/main
#
# 騎士ウルト常時実行
#
# @within function pvp_data:pvpfunctions/jobs/knight/main

# 開始処理
    execute if predicate pvp_data:r_click/cmd33 if score @s ult_cool matches ..0 if score @s r_click matches 1.. run function pvp_data:pvpfunctions/jobs/knight/ult/start

# 発動中処理
    execute if score @s ult_count matches 1.. run function pvp_data:pvpfunctions/jobs/knight/ult/charge
# CT処理
    execute if score @s ult_cool matches 1 run function pvp_data:pvpfunctions/jobs/knight/ult/ready 