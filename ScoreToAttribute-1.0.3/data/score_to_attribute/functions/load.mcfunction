#> score_to_attribute:load

# オブジェクト作成
    # movement_speed
        #declare objective ScoreToAttribute.movement_speed 移動速度
        scoreboard objectives add ScoreToAttribute.movement_speed dummy

    # max_health
        #declare objective ScoreToAttribute.max_health 最大体力
        scoreboard objectives add ScoreToAttribute.max_health dummy

    # attack_damage
        #declare objective ScoreToAttribute.attack_damage 攻撃力
        scoreboard objectives add ScoreToAttribute.attack_damage dummy

    # attack_speed
        #declare objective ScoreToAttribute.attack_speed 攻撃速度
        scoreboard objectives add ScoreToAttribute.attack_speed dummy

    # armor
        #declare objective ScoreToAttribute.armor 防具
        scoreboard objectives add ScoreToAttribute.armor dummy

    # armor_toughness
        #declare objective ScoreToAttribute.armor_toughness 防具強度
        scoreboard objectives add ScoreToAttribute.armor_toughness dummy

    # knockback_resistance
        #declare objective ScoreToAttribute.knockback_resistance ノックバック耐性
        scoreboard objectives add ScoreToAttribute.knockback_resistance dummy

    # max_absorption
        #declare objective ScoreToAttribute.max_absorption 衝撃吸収レベルの上限
        scoreboard objectives add ScoreToAttribute.max_absorption dummy

    # luck
        #declare objective ScoreToAttribute.luck 運
        scoreboard objectives add ScoreToAttribute.luck dummy

# 進捗
    #declare advancement score_to_attribute:player_tick 毎tickトリガーされる進捗

# スコアホルダー
    #declare score_holder $current 現在の値が代入されるスコアホルダー

    #declare score_holder $target 目標となる値が代入されるスコアホルダー
