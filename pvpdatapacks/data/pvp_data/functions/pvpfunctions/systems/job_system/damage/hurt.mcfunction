#> pvp_data:pvpfunctions/systems/job_system/damage/hurt
#
# ダメージを与える処理を行います。
#
# @within function pvp_data:pvpfunctions/systems/job_system/damage/apply

# マクロで代入
    $damage @s $(amount) $(type) by @e[tag=damage.apply_source,limit=1]
