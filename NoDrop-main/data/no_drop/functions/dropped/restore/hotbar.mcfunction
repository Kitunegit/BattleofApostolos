#> no_drop:dropped/restore/hotbar
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
# @within function no_drop:dropped/restore/

# マクロで復元
    $item replace entity @s hotbar.$(Slot) with $(id)$(tag) $(Count)
