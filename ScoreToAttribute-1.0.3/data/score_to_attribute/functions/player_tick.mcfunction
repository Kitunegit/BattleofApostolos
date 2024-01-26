#> score_to_attribute:player_tick

# 進捗剥奪
    advancement revoke @s only score_to_attribute:player_tick

# スコア設定時実行
    # movement_speed
        execute if score @s ScoreToAttribute.movement_speed matches ..2147483647 run function score_to_attribute:movement_speed/

    # max_health
        execute if score @s ScoreToAttribute.max_health matches ..2147483647 run function score_to_attribute:max_health/

    # attack_damage
        execute if score @s ScoreToAttribute.attack_damage matches ..2147483647 run function score_to_attribute:attack_damage/

    # attack_speed
        execute if score @s ScoreToAttribute.attack_speed matches ..2147483647 run function score_to_attribute:attack_speed/

    # armor
        execute if score @s ScoreToAttribute.armor matches ..2147483647 run function score_to_attribute:armor/

    # armor_toughness
        execute if score @s ScoreToAttribute.armor_toughness matches ..2147483647 run function score_to_attribute:armor_toughness/

    # knockback_resistance
        execute if score @s ScoreToAttribute.knockback_resistance matches ..2147483647 run function score_to_attribute:knockback_resistance/

    # max_absorption
        execute if score @s ScoreToAttribute.max_absorption matches ..2147483647 run function score_to_attribute:max_absorption/

    # luck
        execute if score @s ScoreToAttribute.luck matches ..2147483647 run function score_to_attribute:luck/
