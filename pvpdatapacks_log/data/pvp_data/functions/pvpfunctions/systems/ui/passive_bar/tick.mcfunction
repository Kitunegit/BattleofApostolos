#> pvp_data:pvpfunctions/systems/ui/passive_bar/tick
#
# @within function pvp_data:pvpfunctions/systems/ui/main

# デフォルト値の適用
    execute unless score @s system.ui.passive_bar.value = @s system.ui.passive_bar.value run scoreboard players set @s system.ui.passive_bar.value 0

    execute unless score @s system.ui.passive_bar.length = @s system.ui.passive_bar.length run scoreboard players set @s system.ui.passive_bar.length 40

# 定数宣言
    #declare score_holder $value
    scoreboard players operation $value system.ui.passive_bar.value = @s system.ui.passive_bar.value

    #declare score_holder $max
    scoreboard players operation $max system.ui.passive_bar.value = @s system.ui.passive_bar.max

    #declare score_holder $text_length
    scoreboard players operation $text_length system.ui.passive_bar.value = @s system.ui.passive_bar.length

# 値を丸める
    execute if score $value system.ui.passive_bar.value matches ..-1 run scoreboard players set $value system.ui.passive_bar.value 0

    execute if score $value system.ui.passive_bar.value > $max system.ui.passive_bar.value run scoreboard players operation $value system.ui.passive_bar.value = $max system.ui.passive_bar.value

    execute if score $max system.ui.passive_bar.max matches ..0 run scoreboard players set $max system.ui.passive_bar.value 1

    #declare score_holder $filled_length
    execute store result score $filled_length system.ui.passive_bar.value run data get storage ui: passive_bar.base_text.filled

    #declare score_holder $empty_length
    execute store result score $empty_length system.ui.passive_bar.value run data get storage ui: passive_bar.base_text.empty

    #declare score_holder $maximum_length
    scoreboard players set $maximum_length system.ui.passive_bar.value 0

    scoreboard players operation $maximum_length system.ui.passive_bar.value > $filled_length system.ui.passive_bar.value
    scoreboard players operation $maximum_length system.ui.passive_bar.value > $empty_length system.ui.passive_bar.value

    execute if score $text_length system.ui.passive_bar.value > $maximum_length system.ui.passive_bar.value run scoreboard players operation $text_length system.ui.passive_bar.value = $maximum_length system.ui.passive_bar.value

# 境界値の算出
    #declare score_holder $border
    scoreboard players operation $border system.ui.passive_bar.value = $text_length system.ui.passive_bar.value

    scoreboard players operation $border system.ui.passive_bar.value *= $value system.ui.passive_bar.value

    scoreboard players operation $border system.ui.passive_bar.value /= $max system.ui.passive_bar.value

# 文字列の切り出し
    scoreboard players set $2 system.ui.passive_bar.value 2

    scoreboard players operation $border system.ui.passive_bar.value /= $2 system.ui.passive_bar.value

    scoreboard players operation $text_length system.ui.passive_bar.value /= $2 system.ui.passive_bar.value

    execute store result storage ui: passive_bar.border.filled int 2 run scoreboard players get $border system.ui.passive_bar.value

    execute store result storage ui: passive_bar.border.empty int 2 run scoreboard players operation $text_length system.ui.passive_bar.value -= $border system.ui.passive_bar.value

    function pvp_data:pvpfunctions/systems/ui/passive_bar/slice with storage ui: passive_bar.border

# 結合
    function pvp_data:pvpfunctions/systems/ui/passive_bar/concat with storage ui: passive_bar.texts

# 表示
    title @s actionbar {"nbt": "passive_bar.result", "storage": "ui:", "interpret": true}

# リセット
    scoreboard players reset $value system.ui.passive_bar.value

    scoreboard players reset $max system.ui.passive_bar.value

    scoreboard players reset $text_length system.ui.passive_bar.value

    scoreboard players reset $border system.ui.passive_bar.value

    scoreboard players reset $filled_length system.ui.passive_bar.value

    scoreboard players reset $empty_length system.ui.passive_bar.value

    scoreboard players reset $maximum_length system.ui.passive_bar.value

    data remove storage ui: passive_bar.border

    data remove storage ui: passive_bar.texts

    data remove storage ui: passive_bar.result
