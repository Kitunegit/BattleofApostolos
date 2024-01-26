#> pvp_data:pvpfunctions/systems/status/update
#
# 現在のステータスを読み取って更新します。
#
# @api

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
