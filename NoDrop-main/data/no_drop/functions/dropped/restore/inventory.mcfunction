#> no_drop:dropped/restore/inventory
#
# アイテムを元のスロットに復元します。
#
# @within function no_drop:dropped/restore/

# 計算
    #declare score_holder $constant
    scoreboard players set $constant no_drop.joined 9

    scoreboard players operation $temporary no_drop.joined -= $constant no_drop.joined

    execute store result storage no_drop: previous.Slot byte 1 run scoreboard players get $temporary no_drop.joined

    function no_drop:dropped/restore/inventory_macro with storage no_drop: previous
