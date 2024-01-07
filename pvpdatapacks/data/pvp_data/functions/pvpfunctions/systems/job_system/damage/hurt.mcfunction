#> pvp_data:pvpfunctions/systems/job_system/damage/hurt
#
# ダメージを与える処理を行います。
#
# @within
#   function
#       pvp_data:pvpfunctions/systems/job_system/damage/operation
#       pvp_data:pvpfunctions/systems/job_system/damage/apply_fixed

# マクロで代入
    $damage @s $(amount) $(type) by @e[tag=damage.apply_source,limit=1]
