#> no_drop:dropped/compare/
#
# 保存されていたインベントリのデータと、最新のインベントリのデータを比較します。
#
# @within
#   function
#       no_drop:dropped/index
#       no_drop:dropped/compare/

# 0番目の要素を取り出す
    data modify storage no_drop: previous set from storage no_drop: Inventory[0]

    data remove storage no_drop: Inventory[0]

# 対応する要素を取り出す
    data modify storage no_drop: current set value "none"

    function no_drop:dropped/compare/get_same_slot with storage no_drop: previous

# 要素の比較
    execute store success storage no_drop: current int 1 run data modify storage no_drop: current set from storage no_drop: previous

    execute if data storage no_drop: {current: 1} run function no_drop:dropped/restore/ with storage no_drop: previous

# 次の要素の処理
    execute unless data storage no_drop: Inventory[] run data remove storage no_drop: previous

    execute unless data storage no_drop: Inventory[] run data remove storage no_drop: current

    execute if data storage no_drop: Inventory[] run function no_drop:dropped/compare/
