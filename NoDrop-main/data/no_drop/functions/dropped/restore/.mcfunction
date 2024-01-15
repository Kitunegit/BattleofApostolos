#> no_drop:dropped/restore/
#
# 条件を満たすアイテムがドロップされた際に実行されます。
#
# @input
#   args
#       Slot: byte
#
# @within function no_drop:dropped/compare/

# 計算
    #declare score_holder $temporary
    $scoreboard players set $temporary no_drop.joined $(Slot)

    execute if score $temporary no_drop.joined matches 100 run data modify storage no_drop: previous.type set value "armor.feet"

    execute if score $temporary no_drop.joined matches 101 run data modify storage no_drop: previous.type set value "armor.legs"

    execute if score $temporary no_drop.joined matches 102 run data modify storage no_drop: previous.type set value "armor.chest"

    execute if score $temporary no_drop.joined matches 103 run data modify storage no_drop: previous.type set value "armor.head"

    execute if score $temporary no_drop.joined matches -106 run data modify storage no_drop: previous.type set value "weapon.offhand"

    execute unless score $temporary no_drop.joined matches 0..35 run function no_drop:dropped/restore/equipment with storage no_drop: previous

    execute if score $temporary no_drop.joined matches 0..8 run function no_drop:dropped/restore/hotbar with storage no_drop: previous

    execute if score $temporary no_drop.joined matches 9..35 run function no_drop:dropped/restore/inventory

# リセット
    scoreboard players reset $temporary no_drop.joined

    scoreboard players reset $constant no_drop.joined

# 最新のデータを保存
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Inventory set from entity @s Inventory
