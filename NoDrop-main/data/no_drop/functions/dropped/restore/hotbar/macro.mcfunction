#> no_drop:dropped/restore/hotbar/macro
#
# ホットバーのアイテムを元のスロットに復元します。
#
# @input
#   args
#       id: string
#       Count: byte
#       tag: compound
#       Slot: byte
#
# @within function no_drop:dropped/restore/hotbar/

# マクロで復元
    $item replace entity @s hotbar.$(Slot) with $(id)$(tag) $(Count)
