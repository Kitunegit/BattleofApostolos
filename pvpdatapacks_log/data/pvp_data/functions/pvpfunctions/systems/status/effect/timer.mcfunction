#> pvp_data:pvpfunctions/systems/status/effect/timer
#
# 効果時間のタイマー
#
# @internal

# 減算
    # 攻撃力
        execute if score @s generic.attack.effect_duration matches 1.. run scoreboard players remove @s generic.attack.effect_duration 1

        execute if score @s generic.attack.negative_effect_duration matches 1.. run scoreboard players remove @s generic.attack.negative_effect_duration 1

    # 攻撃速度
        execute if score @s generic.attack_speed.effect_duration matches 1.. run scoreboard players remove @s generic.attack_speed.effect_duration 1

        execute if score @s generic.attack_speed.negative_effect_duration matches 1.. run scoreboard players remove @s generic.attack_speed.negative_effect_duration 1

    # 防御力
        execute if score @s generic.defense.effect_duration matches 1.. run scoreboard players remove @s generic.defense.effect_duration 1

        execute if score @s generic.defense.negative_effect_duration matches 1.. run scoreboard players remove @s generic.defense.negative_effect_duration 1

    # 最大体力
        execute if score @s generic.max_health.effect_duration matches 1.. run scoreboard players remove @s generic.max_health.effect_duration 1

        execute if score @s generic.max_health.negative_effect_duration matches 1.. run scoreboard players remove @s generic.max_health.negative_effect_duration 1

    # 移動速度
        execute if score @s generic.speed.effect_duration matches 1.. run scoreboard players remove @s generic.speed.effect_duration 1

        execute if score @s generic.speed.negative_effect_duration matches 1.. run scoreboard players remove @s generic.speed.negative_effect_duration 1

# ゼロ以下であればリセット
    # 攻撃力
        execute if score @s generic.attack.effect_duration matches ..0 run function pvp_data:pvpfunctions/systems/status/effect/clear {name: "generic.attack"}

        execute if score @s generic.attack.negative_effect_duration matches ..0 run function pvp_data:pvpfunctions/systems/status/effect/clear_negative {name: "generic.attack"}

    # 攻撃速度
        execute if score @s generic.attack_speed.effect_duration matches ..0 run function pvp_data:pvpfunctions/systems/status/effect/clear {name: "generic.attack_speed"}

        execute if score @s generic.attack_speed.effect_duration matches ..0 run function pvp_data:pvpfunctions/systems/status/effect/clear_negative {name: "generic.attack_speed"}

    # 防御力
        execute if score @s generic.defense.effect_duration matches ..0 run function pvp_data:pvpfunctions/systems/status/effect/clear {name: "generic.defense"}

        execute if score @s generic.defense.negative_effect_duration matches ..0 run function pvp_data:pvpfunctions/systems/status/effect/clear_negative {name: "generic.defense"}

    # 最大体力
        execute if score @s generic.max_health.effect_duration matches ..0 run function pvp_data:pvpfunctions/systems/status/effect/clear {name: "generic.max_health"}

        execute if score @s generic.max_health.negative_effect_duration matches ..0 run function pvp_data:pvpfunctions/systems/status/effect/clear_negative {name: "generic.max_health"}

    # 移動速度
        execute if score @s generic.speed.effect_duration matches ..0 run function pvp_data:pvpfunctions/systems/status/effect/clear {name: "generic.speed"}

        execute if score @s generic.speed.negative_effect_duration matches ..0 run function pvp_data:pvpfunctions/systems/status/effect/clear_negative {name: "generic.speed"}
