#> no_drop:dropped/compare/get_same_slot
#
# 対応するスロットを取得します。
#
# @input
#   args
#       Slot: byte
#
# @within function no_drop:dropped/compare/

# マクロで取得
    $data modify storage no_drop: current set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Inventory[{Slot: $(Slot)b}]
