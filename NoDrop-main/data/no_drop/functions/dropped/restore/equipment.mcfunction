#> no_drop:dropped/restore/equipment
#
# @input
#   args
#       id: string
#       Count: byte
#       tag: compound
#       Slot: byte
#       type: string
#
# @within function no_drop:dropped/restore/

# 防具スロット等
    $item replace entity @s $(type) with $(id)$(tag) $(Count)
