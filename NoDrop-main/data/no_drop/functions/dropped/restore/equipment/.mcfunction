#> no_drop:dropped/restore/equipment/
#
# 防具スロットやオフハンドのアイテムを元のスロットに復元します。
#
# @within no_drop:dropped/restore/

# スロット名をセット
    execute if score $temporary no_drop.joined matches 100 run data modify storage no_drop: previous.type set value "armor.feet"

    execute if score $temporary no_drop.joined matches 101 run data modify storage no_drop: previous.type set value "armor.legs"

    execute if score $temporary no_drop.joined matches 102 run data modify storage no_drop: previous.type set value "armor.chest"

    execute if score $temporary no_drop.joined matches 103 run data modify storage no_drop: previous.type set value "armor.head"

    execute if score $temporary no_drop.joined matches -106 run data modify storage no_drop: previous.type set value "weapon.offhand"

# マクロ
    function no_drop:dropped/restore/equipment/macro with storage no_drop: previous
