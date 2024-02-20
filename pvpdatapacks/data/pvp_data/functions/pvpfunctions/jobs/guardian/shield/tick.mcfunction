#> pvp_data:pvpfunctions/jobs/guardian/shield/tick
#
# シールド関連の常時実行処理です
#
# @internal

# CT短縮
    scoreboard players remove @s[scores={guardian.repair_cool=1..}] guardian.repair_cool 1
# 修復させる
    execute if score @s guardian.repair_cool matches 0 run function pvp_data:pvpfunctions/jobs/guardian/shield/repair