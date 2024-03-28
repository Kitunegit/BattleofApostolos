#> pvp_data:pvpfunctions/jobs/wizard/passive/mp/tick
#
# 魔導士魔導士処理
#
# @internal

# 回復させる
    scoreboard players add @s[scores={passive_count=..3000}] passive_count 1
# 同期
    scoreboard players operation @s system.ui.passive_bar.value = @s passive_count