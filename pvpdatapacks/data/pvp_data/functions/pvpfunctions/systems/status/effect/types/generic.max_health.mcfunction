#> pvp_data:pvpfunctions/systems/status/effect/types/generic.max_health
#
# 最大体力の操作
#
# @internal

# デフォルト値の設定
    scoreboard players add @s generic.max_health.effect_depth 0

    scoreboard players add @s generic.max_health.effect_duration 0

    execute unless score @s generic.max_health.base = @s generic.max_health.base run scoreboard players set @s generic.max_health.base 20

# スコアへ代入
    # 演算タイプ
        execute if data storage temporary: {_: {overwrite: false}} run scoreboard players operation @s generic.max_health.effect_depth += $modifier_depth system.status.effect.calc_modifier

        execute if data storage temporary: {_: {overwrite: false}} run scoreboard players operation @s generic.max_health.effect_duration += $modifier_duration system.status.effect.calc_modifier

    # 上書きタイプ
        execute if data storage temporary: {_: {overwrite: true}} run scoreboard players operation @s generic.max_health.effect_depth = $modifier_depth system.status.effect.calc_modifier

        execute if data storage temporary: {_: {overwrite: true}} run scoreboard players operation @s generic.max_health.effect_duration = $modifier_duration system.status.effect.calc_modifier

    # 現在の値へ代入
        scoreboard players operation $modifier_depth system.status.effect.calc_modifier = @s generic.max_health.effect_depth

        scoreboard players operation $modifier_depth system.status.effect.calc_modifier += @s generic.max_health.base

        scoreboard players operation @s generic.max_health = $modifier_depth system.status.effect.calc_modifier
