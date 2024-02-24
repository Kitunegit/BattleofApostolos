#> pvp_data:pvpfunctions/jobs/guardian/passive/tick
#
#  パッシブの常時実行
#
# @internal

# カウントアップ
    scoreboard players add @s[scores={damage.shield.durability=..1000}] passive_cool 1
# 15s経過でシールド付与
    execute if score @s passive_cool matches 400.. run function pvp_data:pvpfunctions/jobs/guardian/passive/shield_apply