#> no_drop:dropped/restore/inventory_macro
#
# アイテムを元のスロットに復元します。
#
# @input
#   args
#       id: string
#       Count: byte
#       tag: compound
#       Slot: byte
#
# @within function no_drop:dropped/restore/inventory

# マクロで復元
    $item replace entity @s inventory.$(Slot) with $(id)$(tag) $(Count)
