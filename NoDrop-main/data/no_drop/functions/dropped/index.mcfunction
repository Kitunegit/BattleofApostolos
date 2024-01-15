#> no_drop:dropped/index
#
# 条件を満たすアイテムがドロップされた際に実行されます。
#
# @within function no_drop:player/inventory_changed

# アイテム削除
    kill @e[tag=no_drop.thrown_item]

# 比較
    function no_drop:dropped/compare/
