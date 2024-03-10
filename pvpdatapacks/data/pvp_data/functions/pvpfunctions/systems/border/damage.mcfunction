#> pvp_data:pvpfunctions/systems/border/damage
#
# @input
#   args
#       radius: double
#       amount: float
#       type: string
#
# @within function pvp_data:pvpfunctions/systems/border/tick

# ダメージ
    $execute unless entity @e[tag=system.border.center,distance=..$(radius)] run damage @s $(amount) $(type)
