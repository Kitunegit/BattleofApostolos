#> pvp_data:pvpfunctions/jobs/archer/passive/refill
#
# 矢の補充処理
#
# @internal

# 矢を置く
    item replace entity @s hotbar.8 with arrow{display:{Name:'{"translate":"boa.item.archer.arrow","italic":false,"color":"white"}'}}
# カウントを消費
    scoreboard players remove @s passive_count 1