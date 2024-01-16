#> no_drop:dropped/restore/equipment/macro
#
# 防具スロットやオフハンドのアイテムを元のスロットに復元します。
#
# @input
#   args
#       id: string
#       Count: byte
#       tag: compound
#       Slot: byte
#       type: string
#
# @within function no_drop:dropped/restore/equipment/

# マクロで復元
    $item replace entity @s $(type) with $(id)$(tag) $(Count)
