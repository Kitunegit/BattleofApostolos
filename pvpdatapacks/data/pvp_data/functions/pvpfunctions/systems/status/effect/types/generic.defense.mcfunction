#> pvp_data:pvpfunctions/systems/status/effect/types/generic.defense
#
# 防御力の操作
#
# @internal

# デフォルト値の設定
    scoreboard players add @s generic.defense.effect_depth 0

    scoreboard players add @s generic.defense.effect_duration 0

    scoreboard players add @s generic.defense.base 0

# スコアへ代入
    # 演算タイプ
        execute if data storage temporary: {_: {overwrite: false}} run scoreboard players operation @s generic.defense.effect_depth += $modifier_depth system.status.effect.calc_modifier

        execute if data storage temporary: {_: {overwrite: false}} run scoreboard players operation @s generic.defense.effect_duration += $modifier_duration system.status.effect.calc_modifier

    # 上書きタイプ
        execute if data storage temporary: {_: {overwrite: true}} run scoreboard players operation @s generic.defense.effect_depth = $modifier_depth system.status.effect.calc_modifier

        execute if data storage temporary: {_: {overwrite: true}} run scoreboard players operation @s generic.defense.effect_duration = $modifier_duration system.status.effect.calc_modifier
