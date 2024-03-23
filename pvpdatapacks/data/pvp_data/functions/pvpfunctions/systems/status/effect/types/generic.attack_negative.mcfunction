#> pvp_data:pvpfunctions/systems/status/effect/types/generic.attack_negative
#
# 攻撃力の操作
#
# @internal

# デフォルト値の設定
    scoreboard players add @s generic.attack.negative_effect_depth 0

    scoreboard players add @s generic.attack.negative_effect_duration 0

    execute unless score @s generic.attack.base = @s generic.attack.base run scoreboard players set @s generic.attack.base 100

# スコアへ代入
    # 演算タイプ
        execute if data storage temporary: {_: {overwrite: false}} run scoreboard players operation @s generic.attack.negative_effect_depth += $modifier_depth system.status.effect.calc_modifier

        execute if data storage temporary: {_: {overwrite: false}} run scoreboard players operation @s generic.attack.negative_effect_duration += $modifier_duration system.status.effect.calc_modifier

    # 上書きタイプ
        execute if data storage temporary: {_: {overwrite: true}} run scoreboard players operation @s generic.attack.negative_effect_depth = $modifier_depth system.status.effect.calc_modifier

        execute if data storage temporary: {_: {overwrite: true}} run scoreboard players operation @s generic.attack.negative_effect_duration = $modifier_duration system.status.effect.calc_modifier
