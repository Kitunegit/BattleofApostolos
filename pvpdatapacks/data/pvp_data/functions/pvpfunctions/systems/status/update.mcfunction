#> pvp_data:pvpfunctions/systems/status/update
#
# 現在のステータスを読み取って更新します。
#
# @api

# 現在の値へ代入
    # 準備
        scoreboard objectives add system.status.effect.calc_modifier dummy

        #declare score_holder $temporary

        #declare score_holder $previous

    # 攻撃速度
        scoreboard players operation $temporary system.status.effect.calc_modifier = @s generic.attack_speed.base

        scoreboard players operation $temporary system.status.effect.calc_modifier += @s generic.attack_speed.effect_depth

        scoreboard players operation $previous system.status.effect.calc_modifier = @s generic.attack_speed

        scoreboard players operation @s generic.attack_speed = $temporary system.status.effect.calc_modifier

    # 攻撃力
        scoreboard players operation $temporary system.status.effect.calc_modifier = @s generic.attack.base

        scoreboard players operation $temporary system.status.effect.calc_modifier += @s generic.attack.effect_depth

        scoreboard players operation @s generic.attack = $temporary system.status.effect.calc_modifier

    # 防御力
        scoreboard players operation $temporary system.status.effect.calc_modifier = @s generic.defense.base

        scoreboard players operation $temporary system.status.effect.calc_modifier += @s generic.defense.effect_depth

        scoreboard players operation @s generic.defense = $temporary system.status.effect.calc_modifier

    # 最大体力
        scoreboard players operation $temporary system.status.effect.calc_modifier = @s generic.max_health.base

        scoreboard players operation $temporary system.status.effect.calc_modifier += @s generic.max_health.effect_depth

        scoreboard players operation $previous system.status.effect.calc_modifier = @s generic.max_health

        scoreboard players operation @s generic.max_health = $temporary system.status.effect.calc_modifier

    # 移動速度
        scoreboard players operation $temporary system.status.effect.calc_modifier = @s generic.speed.base

        scoreboard players operation $temporary system.status.effect.calc_modifier += @s generic.speed.effect_depth

        scoreboard players operation $previous system.status.effect.calc_modifier = @s generic.speed

        scoreboard players operation @s generic.speed = $temporary system.status.effect.calc_modifier

    # リセット
        scoreboard objectives remove system.status.effect.calc_modifier

# ScoreToAttribute起動
    # 攻撃速度
        scoreboard players operation @s ScoreToAttribute.attack_speed = @s generic.attack_speed

    # 移動速度
        scoreboard players operation @s ScoreToAttribute.movement_speed = @s generic.speed

    # 最大体力
        # 計算
            scoreboard players operation $temporary generic.max_health = @s generic.max_health

            scoreboard players set $constant generic.max_health 100

            scoreboard players operation $temporary generic.max_health *= $constant generic.max_health

        # 代入
            scoreboard players operation @s ScoreToAttribute.max_health = $temporary generic.max_health

        # リセット
            scoreboard players reset $temporary generic.max_health

    # 即時起動
        # 攻撃速度
            execute if score @s generic.attack_speed = @s generic.attack_speed unless score @s generic.attack_speed = $previous system.status.effect.calc_modifier run function score_to_attribute:attack_speed/

        # 移動速度
            execute if score @s generic.speed = @s generic.speed unless score @s generic.speed = $previous system.status.effect.calc_modifier run function score_to_attribute:movement_speed/

        # 最大体力
            execute if score @s generic.max_health = @s generic.max_health unless score @s generic.max_health = $previous system.status.effect.calc_modifier run function score_to_attribute:max_health/

# UI更新
    function pvp_data:pvpfunctions/systems/ui/effect_changed
